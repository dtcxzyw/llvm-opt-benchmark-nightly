Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/itemdef?download=true
inline.NumInlined: 1929
inline.NumDeleted: 846
begin_hunk_0_@_ZNK12ItemImageDef9serializeERSot:bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.m
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !34
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNK19TileAnimationParams17extractFirstFrameERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #4

declare void @_ZNK19TileAnimationParams9serializeERSot(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12ItemImageDef11deSerializeERSit(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i16 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !33     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  switch i64 %i.h, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.d, align 1, !tbaa !34
  store i8 %i.j, ptr %i.a, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.k = load i64, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = load ptr, ptr %0, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !34
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !34
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !34
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !34
  store ptr %i.d, ptr %0, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !34
  store <2 x i64> %i.u, ptr %i.t, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.a, ptr %3, align 8, !tbaa !33
  store i64 %i.r, ptr %i.e, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %3, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.v = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.a, %bb.e ], [ %i.e, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !35
  store i8 0, ptr %i.v, align 1, !tbaa !34
  %i.x = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !34
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ac = icmp ult i16 %2, 51
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN19TileAnimationParams11deSerializeERSit(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %1, i16 noundef zeroext %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void
}

declare void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN19TileAnimationParams11deSerializeERSit(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14ItemDefinitionC2Ev(ptr noundef nonnull align 8 dereferenceable(982) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.i, align 8, !tbaa !35
  store i8 0, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.l, align 8, !tbaa !35
  store i8 0, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.p, align 8, !tbaa !35
  store i8 0, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.t, align 8, !tbaa !35
  store i8 0, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.u, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.x, align 8, !tbaa !35
  store i8 0, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.y, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.ab, align 8, !tbaa !35
  store i8 0, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i8 0, ptr %i.ad, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i64 1, ptr %i.ah, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 0, ptr %i.an, align 8, !tbaa !35
  store i8 0, ptr %i.am, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 744
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ao, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %i.ap, align 8, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 761
  store i8 1, ptr %i.aq, align 1, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i64 0, ptr %i.at, align 8, !tbaa !35
  store i8 0, ptr %i.as, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 800
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.au, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i8 0, ptr %i.av, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 817
  store i8 1, ptr %i.aw, align 1, !tbaa !68
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 0, ptr %i.az, align 8, !tbaa !35
  store i8 0, ptr %i.ay, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 856
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ba, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i8 0, ptr %i.bb, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 873
  store i8 1, ptr %i.bc, align 1, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 888
  store i64 0, ptr %i.bf, align 8, !tbaa !35
  store i8 0, ptr %i.be, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 912
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bg, align 8, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i8 0, ptr %i.bh, align 8, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 929
  store i8 1, ptr %i.bi, align 1, !tbaa !68
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 0, ptr %i.bl, align 8, !tbaa !35
  store i8 0, ptr %i.bk, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 977
  store i8 0, ptr %i.bm, align 1, !tbaa !70
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 979
  store i8 2, ptr %i.bn, align 1, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 980
  store i8 2, ptr %i.bo, align 4, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 981
  store i8 2, ptr %i.bp, align 1, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr null, ptr %i.bq, align 8, !tbaa !90
  %i.br = load i8, ptr %i.ae, align 8, !tbaa !54, !range !25, !noundef !91
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.a, label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 0, ptr %i.ae, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef %i.bv)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #28
  unreachable

bb.c:                                             ; preds = %bb.a, %._crit_edge.i.i.i.i.i
  tail call void @_ZN14ItemDefinition5resetEv(ptr noundef nonnull align 8 dereferenceable(982) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14ItemDefinition12resetInitialEv(ptr noundef nonnull align 8 dereferenceable(982) initializes((584, 592)) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr null, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !54, !range !25, !noundef !91
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalI13WearBarParamsEaSESt9nullopt_t.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 0, ptr %i.b, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef %i.g)
          to label %_ZNSt8optionalI13WearBarParamsEaSESt9nullopt_t.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #28
  unreachable

_ZNSt8optionalI13WearBarParamsEaSESt9nullopt_t.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN14ItemDefinition5resetEv(ptr noundef nonnull align 8 dereferenceable(982) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !34
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #27
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !63
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !54, !range !25, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %i.e)
          to label %_ZNSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28
  unreachable

_ZNSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14ItemDefinitionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(982) %0, ptr noundef nonnull align 8 dereferenceable(982) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !35
  store i8 0, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.i, align 8, !tbaa !35
  store i8 0, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.l, align 8, !tbaa !35
  store i8 0, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.p, align 8, !tbaa !35
  store i8 0, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.t, align 8, !tbaa !35
  store i8 0, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.u, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.x, align 8, !tbaa !35
  store i8 0, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.y, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.ab, align 8, !tbaa !35
  store i8 0, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i64 1, ptr %i.aj, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.al, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 0, ptr %i.ap, align 8, !tbaa !35
  store i8 0, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 744
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.aq, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i8 0, ptr %i.ar, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 761
  store i8 1, ptr %i.as, align 1, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 4 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i64 0, ptr %i.av, align 8, !tbaa !35
  store i8 0, ptr %i.au, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 800
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.aw, align 8, !tbaa !65
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i8 0, ptr %i.ax, align 8, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 817
  store i8 1, ptr %i.ay, align 1, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 4 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 0, ptr %i.bb, align 8, !tbaa !35
  store i8 0, ptr %i.ba, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 856
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bc, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i8 0, ptr %i.bd, align 8, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 873
  store i8 1, ptr %i.be, align 1, !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 4 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 888
  store i64 0, ptr %i.bh, align 8, !tbaa !35
  store i8 0, ptr %i.bg, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 912
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bi, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i8 0, ptr %i.bj, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 929
  store i8 1, ptr %i.bk, align 1, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 0, ptr %i.bn, align 8, !tbaa !35
  store i8 0, ptr %i.bm, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 977
  store i8 0, ptr %i.bo, align 1, !tbaa !70
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 979
  store i8 2, ptr %i.bp, align 1, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 980
  store i8 2, ptr %i.bq, align 4, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 981
  store i8 2, ptr %i.br, align 1, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr null, ptr %i.bs, align 8, !tbaa !90
  %i.bt = load i8, ptr %i.ag, align 8, !tbaa !54, !range !25, !noundef !91
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.a, label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i.i.i.i
  store i8 0, ptr %i.ag, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef %i.bw)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #28
  unreachable

bb.c:                                             ; preds = %bb.a, %._crit_edge.i.i.i.i.i
  tail call void @_ZN14ItemDefinition5resetEv(ptr noundef nonnull align 8 dereferenceable(982) %0)
  %i.bz = invoke noundef nonnull align 8 dereferenceable(982) ptr @_ZN14ItemDefinitionaSERKS_(ptr noundef nonnull align 8 dereferenceable(982) %0, ptr noundef nonnull align 8 dereferenceable(982) %1)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bm
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.cd = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.ce = add i64 %i.cd, 1
  tail call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !33 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bg
  br i1 %i.cg, label %_ZN9SoundSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = load i64, ptr %i.bg, align 8, !tbaa !34
  %i.ci = add i64 %i.ch, 1
  tail call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZN9SoundSpecD2Ev.exit

_ZN9SoundSpecD2Ev.exit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cj = load ptr, ptr %i.az, align 8, !tbaa !33 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ba
  br i1 %i.ck, label %_ZN9SoundSpecD2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %_ZN9SoundSpecD2Ev.exit
  %i.cl = load i64, ptr %i.ba, align 8, !tbaa !34
  %i.cm = add i64 %i.cl, 1
  tail call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %_ZN9SoundSpecD2Ev.exit25

_ZN9SoundSpecD2Ev.exit25:                         ; preds = %_ZN9SoundSpecD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  %i.cn = load ptr, ptr %i.at, align 8, !tbaa !33 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.au
  br i1 %i.co, label %_ZN9SoundSpecD2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %_ZN9SoundSpecD2Ev.exit25
  %i.cp = load i64, ptr %i.au, align 8, !tbaa !34
  %i.cq = add i64 %i.cp, 1
  tail call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #27
  br label %_ZN9SoundSpecD2Ev.exit28

_ZN9SoundSpecD2Ev.exit28:                         ; preds = %_ZN9SoundSpecD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  %i.cr = load ptr, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ao
  br i1 %i.cs, label %_ZN9SoundSpecD2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %_ZN9SoundSpecD2Ev.exit28
  %i.ct = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.cu = add i64 %i.ct, 1
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #27
  br label %_ZN9SoundSpecD2Ev.exit31

_ZN9SoundSpecD2Ev.exit31:                         ; preds = %_ZN9SoundSpecD2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  tail call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ah) #26
  tail call void @_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.af) #26
  %i.cv = load i8, ptr %i.ae, align 8, !tbaa !52, !range !25, !noundef !91
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.f, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZN9SoundSpecD2Ev.exit31
  store i8 0, ptr %i.ae, align 8, !tbaa !52
  tail call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.ad) #26
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit: ; preds = %_ZN9SoundSpecD2Ev.exit31, %bb.f
  %i.cx = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.aa
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit
  %i.cz = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.da = add i64 %i.cz, 1
  tail call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %i.db = load ptr, ptr %i.v, align 8, !tbaa !33  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.w
  br i1 %i.dc, label %_ZN12ItemImageDefD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !34
  %i.de = add i64 %i.dd, 1
  tail call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #27
  br label %_ZN12ItemImageDefD2Ev.exit

_ZN12ItemImageDefD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !33  ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.s
  br i1 %i.dg, label %_ZN12ItemImageDefD2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37: ; preds = %_ZN12ItemImageDefD2Ev.exit
  %i.dh = load i64, ptr %i.s, align 8, !tbaa !34
  %i.di = add i64 %i.dh, 1
  tail call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #27
  br label %_ZN12ItemImageDefD2Ev.exit39

_ZN12ItemImageDefD2Ev.exit39:                     ; preds = %_ZN12ItemImageDefD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37
  %i.dj = load ptr, ptr %i.n, align 8, !tbaa !33  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.o
  br i1 %i.dk, label %_ZN12ItemImageDefD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %_ZN12ItemImageDefD2Ev.exit39
  %i.dl = load i64, ptr %i.o, align 8, !tbaa !34
  %i.dm = add i64 %i.dl, 1
  tail call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #27
  br label %_ZN12ItemImageDefD2Ev.exit42

_ZN12ItemImageDefD2Ev.exit42:                     ; preds = %_ZN12ItemImageDefD2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !33  ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.k
  br i1 %i.do, label %_ZN12ItemImageDefD2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %_ZN12ItemImageDefD2Ev.exit42
  %i.dp = load i64, ptr %i.k, align 8, !tbaa !34
  %i.dq = add i64 %i.dp, 1
  tail call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #27
  br label %_ZN12ItemImageDefD2Ev.exit45

_ZN12ItemImageDefD2Ev.exit45:                     ; preds = %_ZN12ItemImageDefD2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.h
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZN12ItemImageDefD2Ev.exit45
  %i.dt = load i64, ptr %i.h, align 8, !tbaa !34
  %i.du = add i64 %i.dt, 1
  tail call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZN12ItemImageDefD2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.e
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.dx = load i64, ptr %i.e, align 8, !tbaa !34
  %i.dy = add i64 %i.dx, 1
  tail call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.b
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.eb = load i64, ptr %i.b, align 8, !tbaa !34
  %i.ec = add i64 %i.eb, 1
  tail call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  resume { ptr, i32 } %i.ca
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(982) ptr @_ZN14ItemDefinitionaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(982) %0, ptr noundef nonnull align 8 dereferenceable(982) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, short>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, short>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14ItemDefinition5resetEv(ptr noundef nonnull align 8 dereferenceable(982) %0)
  %i.b = load i8, ptr %1, align 8, !tbaa !100
  store i8 %i.b, ptr %0, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !224
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !224
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !224
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !224
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !225
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i16 %i.ab, ptr %i.ac, align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 346
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !102, !range !25, !noundef !91
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 346
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 347
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !103, !range !25, !noundef !91
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 347
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !52, !range !25, !noundef !91
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.ap = load i8, ptr %i.ao, align 8, !range !25
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(232) %i.ak, ptr noundef nonnull align 8 dereferenceable(232) %i.aj)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 408
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 464
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 8 dereferenceable(56) %i.aw)
  br label %_ZNSt8optionalI14PointabilitiesEaSERKS1_.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN14PointabilitiesC2ERKS_(ptr noundef nonnull align 8 dereferenceable(232) %i.ak, ptr noundef nonnull align 8 dereferenceable(232) %i.aj)
  store i8 1, ptr %i.al, align 8, !tbaa !52
  br label %_ZNSt8optionalI14PointabilitiesEaSERKS1_.exit

bb.f:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.g, label %_ZNSt8optionalI14PointabilitiesEaSERKS1_.exit

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.al, align 8, !tbaa !52
  tail call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.ak) #26
  br label %_ZNSt8optionalI14PointabilitiesEaSERKS1_.exit

_ZNSt8optionalI14PointabilitiesEaSERKS1_.exit:    ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEaSERKSE_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8optionalI14PointabilitiesEaSERKS1_.exit
  %i.az = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #29 ; 15 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !90 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.az, ptr noundef nonnull align 8 dereferenceable(112) %i.ba, i64 12, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 4 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 2 uses
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !105
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 2 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !107
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.bb, ptr %3, align 8, !tbaa !109
  %i.bj = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i.i unwind label %bb.p ; 3 uses

.noexc.i.i.i:                                     ; preds = %bb.i, %.noexc.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc.i.i.i ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.be, align 8, !tbaa !111
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.bj, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.bn, %bb.j ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !112 ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.k, label %bb.j, !llvm.loop !2

bb.k:                                             ; preds = %bb.j
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !111
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !107
  store i64 %i.bp, ptr %i.bg, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !111
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i: ; preds = %bb.k, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 4 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !104
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 2 uses
  store ptr null, ptr %i.br, align 8, !tbaa !96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 2 uses
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !105
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 96 ; 2 uses
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !106
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 104 ; 2 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !107
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !96 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i5.i, label %_ZN16ToolCapabilitiesC2ERKS_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.bx, ptr %2, align 8, !tbaa !114
  %i.by = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i6.i unwind label %bb.o ; 3 uses

.noexc.i.i6.i:                                    ; preds = %bb.l, %.noexc.i.i6.i
  %.0.i.i.i.i.i.i7.i = phi ptr [ %i.ca, %.noexc.i.i6.i ], [ %i.by, %bb.l ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i7.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i.i.i8.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i8.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i6.i, !llvm.loop !1

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i6.i
  store ptr %.0.i.i.i.i.i.i7.i, ptr %i.bs, align 8, !tbaa !111
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i9.i = phi ptr [ %i.by, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.cc, %bb.m ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i9.i, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !112 ; 2 uses
  %.not.i.i8.i.i.i.i10.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i8.i.i.i.i10.i, label %bb.n, label %bb.m, !llvm.loop !2

bb.n:                                             ; preds = %bb.m
  store ptr %.0.i.i7.i.i.i.i9.i, ptr %i.bt, align 8, !tbaa !111
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !107
  store i64 %i.ce, ptr %i.bu, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store ptr %i.by, ptr %i.br, align 8, !tbaa !111
  br label %_ZN16ToolCapabilitiesC2ERKS_.exit

bb.o:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bb) #26
  br label %.body

_ZN16ToolCapabilitiesC2ERKS_.exit:                ; preds = %bb.n, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEEC2ERKSD_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %i.az, ptr %i.cg, align 8, !tbaa !90
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEaSERKSE_.exit

bb.p:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ch, %bb.p ], [ %i.cf, %bb.o ]
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 112) #27
  resume { ptr, i32 } %eh.lpad-body

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEaSERKSE_.exit: ; preds = %_ZN16ToolCapabilitiesC2ERKS_.exit, %_ZNSt8optionalI14PointabilitiesEaSERKS1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @_ZNSt22_Optional_payload_baseI13WearBarParamsE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.cj, ptr noundef nonnull align 8 dereferenceable(64) %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 656
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.cq = load i16, ptr %i.co, align 8
  store i16 %i.cq, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 978
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !115, !range !25, !noundef !91
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 978
  store i8 %i.cs, ptr %i.ct, align 2, !tbaa !115
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %i.cv, ptr noundef nonnull align 8 dereferenceable(50) %i.cu)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.cw, ptr noundef nonnull align 8 dereferenceable(18) %i.cx, i64 18, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 768
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %i.cz, ptr noundef nonnull align 8 dereferenceable(50) %i.cy)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.da, ptr noundef nonnull align 8 dereferenceable(18) %i.db, i64 18, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 824
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %i.dd, ptr noundef nonnull align 8 dereferenceable(50) %i.dc)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.de, ptr noundef nonnull align 8 dereferenceable(18) %i.df, i64 18, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 880
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %i.dh, ptr noundef nonnull align 8 dereferenceable(50) %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.di, ptr noundef nonnull align 8 dereferenceable(18) %i.dj, i64 18, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !116
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 936
  store float %i.dl, ptr %i.dm, align 8, !tbaa !116
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dr = load i32, ptr %i.dp, align 8, !tbaa !117
  store i32 %i.dr, ptr %i.dq, align 8, !tbaa !117
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 979
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dt, ptr noundef nonnull align 1 dereferenceable(3) %i.ds, i64 3, i1 false), !tbaa.struct !226
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEaSERKSE_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14ItemDefinition5resetEv(ptr noundef nonnull align 8 dereferenceable(982) initializes((0, 1), (16, 24), (48, 56), (80, 88), (112, 120), (136, 137), (160, 168), (184, 185), (208, 216), (232, 233), (256, 264), (280, 281), (304, 312), (328, 348)) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.SoundSpec, align 8          ; 10 uses
  %2 = alloca %struct.SoundSpec, align 8          ; 10 uses
  %3 = alloca %struct.SoundSpec, align 8          ; 10 uses
  %4 = alloca %struct.SoundSpec, align 8          ; 10 uses
  store i8 0, ptr %0, align 8, !tbaa !100
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !35
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !33
  store i8 0, ptr %i.c, align 1, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !35
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !33
  store i8 0, ptr %i.f, align 1, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.h, align 8, !tbaa !35
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !33
  store i8 0, ptr %i.i, align 1, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.k, align 8, !tbaa !227
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.l, align 8, !tbaa !35
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !33
  store i8 0, ptr %i.m, align 1, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.o, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.p, align 8, !tbaa !35
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !33
  store i8 0, ptr %i.q, align 1, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.s, align 8, !tbaa !227
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.t, align 8, !tbaa !35
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !33
  store i8 0, ptr %i.u, align 1, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.w, align 8, !tbaa !227
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.x, align 8, !tbaa !35
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !33
  store i8 0, ptr %i.y, align 1, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %i.aa, align 8, !tbaa !35
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !33
  store i8 0, ptr %i.ab, align 1, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 -1, ptr %i.ac, align 8, !tbaa !117
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 332
  store <2 x float> splat (float 1.000000e+00), ptr %i.ad, align 4, !tbaa !65
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 340
  store float 1.000000e+00, ptr %.sroa.552.0..sroa_idx, align 4, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i16 99, ptr %i.ae, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 346
  store i8 0, ptr %i.af, align 2, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 347
  store i8 0, ptr %i.ag, align 1, !tbaa !103
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !52, !range !25, !noundef !91
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.b, label %_ZNSt8optionalI14PointabilitiesEaSESt9nullopt_t.exit

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %i.ah, align 8, !tbaa !52
  tail call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.ak) #26
  br label %_ZNSt8optionalI14PointabilitiesEaSESt9nullopt_t.exit

_ZNSt8optionalI14PointabilitiesEaSESt9nullopt_t.exit: ; preds = %bb.a, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90 ; 6 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt8optionalI14PointabilitiesEaSESt9nullopt_t.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef %i.aq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef %i.av)
          to label %_ZN16ToolCapabilitiesD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #28
  unreachable

_ZN16ToolCapabilitiesD2Ev.exit:                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 112) #27
  br label %bb.f

bb.f:                                             ; preds = %_ZN16ToolCapabilitiesD2Ev.exit, %_ZNSt8optionalI14PointabilitiesEaSESt9nullopt_t.exit
  store ptr null, ptr %i.al, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !54, !range !25, !noundef !91
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.g, label %_ZNSt8optionalI13WearBarParamsE5resetEv.exit

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 0, ptr %i.ay, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef %i.bd)
          to label %_ZNSt8optionalI13WearBarParamsE5resetEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #28
  unreachable

_ZNSt8optionalI13WearBarParamsE5resetEv.exit:     ; preds = %bb.f, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !97 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8optionalI13WearBarParamsE5resetEv.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.bj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.bi, %_ZNSt8optionalI13WearBarParamsE5resetEv.exit ] ; 4 uses
  %i.bj = load ptr, ptr %.06.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !33 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #27
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt8optionalI13WearBarParamsE5resetEv.exit
  %i.bq = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !63
  %i.bt = shl i64 %i.bs, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.bt, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.bu, ptr %1, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.bu, align 8, !tbaa !34
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bw, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %i.bx, align 8, !tbaa !67
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 1, ptr %i.by, align 1, !tbaa !68
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 0, ptr %i.cb, align 8, !tbaa !35
  store i8 0, ptr %i.ca, align 1, !tbaa !34
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %i.bv, align 8, !tbaa !35
  store i8 0, ptr %.pre.i.i, align 1, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.cc, ptr noundef nonnull align 8 dereferenceable(18) %i.bw, i64 18, i1 false)
  %i.cd = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bu
  br i1 %i.ce, label %_ZN9SoundSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE5clearEv.exit
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #27
  br label %_ZN9SoundSpecD2Ev.exit

_ZN9SoundSpecD2Ev.exit:                           ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE5clearEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ch, ptr %2, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.ch, align 8, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.cj, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.ck, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 1, ptr %i.cl, align 1, !tbaa !68
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i64 0, ptr %i.co, align 8, !tbaa !35
  store i8 0, ptr %i.cn, align 1, !tbaa !34
  %.pre.i.i8 = load ptr, ptr %2, align 8, !tbaa !33
  store i64 0, ptr %i.ci, align 8, !tbaa !35
  store i8 0, ptr %.pre.i.i8, align 1, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.cp, ptr noundef nonnull align 8 dereferenceable(18) %i.cj, i64 18, i1 false)
  %i.cq = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ch
  br i1 %i.cr, label %_ZN9SoundSpecD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %_ZN9SoundSpecD2Ev.exit
  %i.cs = load i64, ptr %i.ch, align 8, !tbaa !34
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #27
  br label %_ZN9SoundSpecD2Ev.exit14

_ZN9SoundSpecD2Ev.exit14:                         ; preds = %_ZN9SoundSpecD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.cu, ptr %3, align 8, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.cu, align 8, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.cw, align 8, !tbaa !65
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 0, ptr %i.cx, align 8, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 49
  store i8 1, ptr %i.cy, align 1, !tbaa !68
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 0, ptr %i.db, align 8, !tbaa !35
  store i8 0, ptr %i.da, align 1, !tbaa !34
  %.pre.i.i22 = load ptr, ptr %3, align 8, !tbaa !33
  store i64 0, ptr %i.cv, align 8, !tbaa !35
  store i8 0, ptr %.pre.i.i22, align 1, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.dc, ptr noundef nonnull align 8 dereferenceable(18) %i.cw, i64 18, i1 false)
  %i.dd = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cu
  br i1 %i.de, label %_ZN9SoundSpecD2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %_ZN9SoundSpecD2Ev.exit14
  %i.df = load i64, ptr %i.cu, align 8, !tbaa !34
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #27
  br label %_ZN9SoundSpecD2Ev.exit28

_ZN9SoundSpecD2Ev.exit28:                         ; preds = %_ZN9SoundSpecD2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.dh, ptr %4, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.dh, align 8, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.dj, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 0, ptr %i.dk, align 8, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 49
  store i8 1, ptr %i.dl, align 1, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 888
  store i64 0, ptr %i.do, align 8, !tbaa !35
  store i8 0, ptr %i.dn, align 1, !tbaa !34
  %.pre.i.i36 = load ptr, ptr %4, align 8, !tbaa !33
  store i64 0, ptr %i.di, align 8, !tbaa !35
  store i8 0, ptr %.pre.i.i36, align 1, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.dp, ptr noundef nonnull align 8 dereferenceable(18) %i.dj, i64 18, i1 false)
  %i.dq = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dh
  br i1 %i.dr, label %_ZN9SoundSpecD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %_ZN9SoundSpecD2Ev.exit28
  %i.ds = load i64, ptr %i.dh, align 8, !tbaa !34
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #27
  br label %_ZN9SoundSpecD2Ev.exit42

_ZN9SoundSpecD2Ev.exit42:                         ; preds = %_ZN9SoundSpecD2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 936
  store float -1.000000e+00, ptr %i.du, align 8, !tbaa !116
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 0, ptr %i.dw, align 8, !tbaa !35
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !33
  store i8 0, ptr %i.dx, align 1, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 977
  store <4 x i8> <i8 0, i8 0, i8 2, i8 2>, ptr %i.dy, align 1, !tbaa !34
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 981
  store i8 2, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14ItemDefinitionD2Ev(ptr noundef nonnull align 8 dead_on_return(982) dereferenceable(982) initializes((0, 1), (16, 24), (48, 56), (80, 88), (112, 120), (136, 137), (160, 168), (184, 185), (208, 216), (232, 233), (256, 264), (280, 281), (304, 312), (328, 348)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14ItemDefinition5resetEv(ptr noundef nonnull align 8 dereferenceable(982) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN9SoundSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !34
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN9SoundSpecD2Ev.exit

_ZN9SoundSpecD2Ev.exit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN9SoundSpecD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN9SoundSpecD2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZN9SoundSpecD2Ev.exit3

_ZN9SoundSpecD2Ev.exit3:                          ; preds = %_ZN9SoundSpecD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN9SoundSpecD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN9SoundSpecD2Ev.exit3
  %i.w = load i64, ptr %i.u, align 8, !tbaa !34
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZN9SoundSpecD2Ev.exit6

_ZN9SoundSpecD2Ev.exit6:                          ; preds = %_ZN9SoundSpecD2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN9SoundSpecD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN9SoundSpecD2Ev.exit6
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZN9SoundSpecD2Ev.exit9

_ZN9SoundSpecD2Ev.exit9:                          ; preds = %_ZN9SoundSpecD2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9SoundSpecD2Ev.exit9, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ah, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.ag, %_ZN9SoundSpecD2Ev.exit9 ] ; 4 uses
  %i.ah = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #27
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZN9SoundSpecD2Ev.exit9
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !63
  %i.ar = shl i64 %i.aq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.ar, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !62 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !63
  %i.aw = shl i64 %i.av, 3
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !54, !range !25, !noundef !91
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.c, label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i8 0, ptr %i.ax, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef %i.bc)
          to label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #28
  unreachable

_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev.exit, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !52, !range !25, !noundef !91
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.e, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %i.bf, align 8, !tbaa !52
  tail call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.bi) #26
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !33 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !34
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !33 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN12ItemImageDefD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #27
  br label %_ZN12ItemImageDefD2Ev.exit

_ZN12ItemImageDefD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !33 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN12ItemImageDefD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN12ItemImageDefD2Ev.exit
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !34
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #27
  br label %_ZN12ItemImageDefD2Ev.exit17

_ZN12ItemImageDefD2Ev.exit17:                     ; preds = %_ZN12ItemImageDefD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !33 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN12ItemImageDefD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %_ZN12ItemImageDefD2Ev.exit17
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  tail call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #27
  br label %_ZN12ItemImageDefD2Ev.exit20

_ZN12ItemImageDefD2Ev.exit20:                     ; preds = %_ZN12ItemImageDefD2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN12ItemImageDefD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %_ZN12ItemImageDefD2Ev.exit20
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.cm = add i64 %i.cl, 1
  tail call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #27
  br label %_ZN12ItemImageDefD2Ev.exit23

_ZN12ItemImageDefD2Ev.exit23:                     ; preds = %_ZN12ItemImageDefD2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !33 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN12ItemImageDefD2Ev.exit23
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !34
  %i.cs = add i64 %i.cr, 1
  tail call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZN12ItemImageDefD2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !33 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !34
  %i.cy = add i64 %i.cx, 1
  tail call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !33 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !34
  %i.de = add i64 %i.dd, 1
  tail call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK14ItemDefinition9serializeERSot(ptr noundef nonnull align 8 dereferenceable(982) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 1                 ; 4 uses
  %i.m = alloca [2 x i8], align 2                 ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [2 x i8], align 2                 ; 4 uses
  %i.r = alloca [12 x i8], align 1                ; 6 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [1 x i8], align 1                 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  store i8 6, ptr %i.t, align 1, !tbaa !34
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.t, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  %i.v = load i8, ptr %0, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  store i8 %i.v, ptr %i.s, align 1, !tbaa !34
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.s, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !35
  call void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %i.aa, ptr %i.y)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.af = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@_ZN14ItemDefinition11deSerializeERSit:bb.a

bb.bw:                                            ; preds = %.noexc168
  %i.na = load i8, ptr %i.e, align 1, !tbaa !34   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 976
  %.sroa.0207.0.insert.ext = zext i8 %i.na to i16
  %.sroa.0207.0.insert.insert = or disjoint i16 %.sroa.0207.0.insert.ext, 256
  store i16 %.sroa.0207.0.insert.insert, ptr %i.nb, align 8
  %i.nc = icmp eq i8 %i.na, 0
  br i1 %i.nc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 977
  store i8 0, ptr %i.nd, align 1, !tbaa !70
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.bu
  %i.ne = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.bz unwind label %bb.ci

bb.bz:                                            ; preds = %bb.by
  %.not213 = icmp eq i32 %i.ne, -1
  br i1 %.not213, label %bb.df, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 824
  invoke void @_ZN9SoundSpec17deSerializeSimpleERSit(ptr noundef nonnull align 8 dereferenceable(50) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %1, i16 noundef zeroext %2)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 880
  invoke void @_ZN9SoundSpec17deSerializeSimpleERSit(ptr noundef nonnull align 8 dereferenceable(50) %i.ng, ptr noundef nonnull align 8 dereferenceable(16) %1, i16 noundef zeroext %2)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  %i.nh = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %.not214 = icmp eq i32 %i.nh, -1
  br i1 %.not214, label %bb.df, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i8 0, ptr %i.d, align 1
  %i.ni = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %.noexc176 unwind label %bb.ci ; 0 uses

.noexc176:                                        ; preds = %bb.ce
  %i.nj = load ptr, ptr %1, align 8, !tbaa !37
  %i.nk = getelementptr i8, ptr %i.nj, i64 -24
  %i.nl = load i64, ptr %i.nk, align 8
  %i.nm = getelementptr inbounds i8, ptr %1, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !46
  %i.np = and i32 %i.no, 2
  %.not.i175 = icmp eq i32 %i.np, 0
  br i1 %.not.i175, label %bb.cf, label %.invoke

bb.cf:                                            ; preds = %.noexc176
  %i.nq = load i8, ptr %i.d, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %.not = icmp eq i8 %i.nq, 0
  br i1 %.not, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 0, ptr %i.c, align 1
  %i.nr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %.noexc180 unwind label %bb.ci ; 0 uses

.noexc180:                                        ; preds = %bb.cg
  %i.ns = load ptr, ptr %1, align 8, !tbaa !37
  %i.nt = getelementptr i8, ptr %i.ns, i64 -24
  %i.nu = load i64, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds i8, ptr %1, i64 %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !46
  %i.ny = and i32 %i.nx, 2
  %.not.i179 = icmp eq i32 %i.ny, 0
  br i1 %.not.i179, label %bb.ch, label %.invoke

bb.ch:                                            ; preds = %.noexc180
  %i.nz = load i8, ptr %i.c, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 976
  %.sroa.0.0.insert.ext = zext i8 %i.nz to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %i.oa, align 8
  br label %bb.cj

bb.ci:                                            ; preds = %.invoke, %bb.bv, %bb.cl, %bb.cj, %bb.ce, %bb.cc, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.ax, %bb.aw, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE5clearEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %bb.av, %bb.bf, %bb.bg, %bb.ca, %bb.cb, %bb.cm, %bb.cg
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.cj:                                            ; preds = %bb.ch, %bb.cf
  %i.oc = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ck unwind label %bb.ci

bb.ck:                                            ; preds = %bb.cj
  %.not215 = icmp eq i32 %i.oc, -1
  br i1 %.not215, label %bb.df, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i8 0, ptr %i.b, align 1
  %i.od = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %.noexc186 unwind label %bb.ci ; 0 uses

.noexc186:                                        ; preds = %bb.cl
  %i.oe = load ptr, ptr %1, align 8, !tbaa !37
  %i.of = getelementptr i8, ptr %i.oe, i64 -24
  %i.og = load i64, ptr %i.of, align 8
  %i.oh = getelementptr inbounds i8, ptr %1, i64 %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !46
  %i.ok = and i32 %i.oj, 2
  %.not.i185 = icmp eq i32 %i.ok, 0
  br i1 %.not.i185, label %bb.cm, label %.invoke

bb.cm:                                            ; preds = %.noexc186
  %i.ol = load i8, ptr %i.b, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.om = icmp ne i8 %i.ol, 0
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 978
  %i.oo = zext i1 %i.om to i8
  store i8 %i.oo, ptr %i.on, align 2, !tbaa !115
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 979
  invoke void @_ZN16TouchInteraction11deSerializeERSi(ptr noundef nonnull align 1 dereferenceable(3) %i.op, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.cn unwind label %bb.ci

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.oq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !35
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %16, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 4)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.ot = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ot, i8 0, i64 176, i1 false), !alias.scope !246
  %i.ou = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr %i.ou, ptr %17, align 8, !tbaa !127, !alias.scope !246
  %i.ov = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.ov, align 8, !tbaa !128, !alias.scope !246
  %i.ow = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ow, i8 0, i64 16, i1 false), !alias.scope !246
  store float 1.000000e+00, ptr %i.ot, align 8, !tbaa !64, !alias.scope !246
  %i.ox = getelementptr inbounds nuw i8, ptr %17, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, i8 0, i64 16, i1 false), !alias.scope !246
  %i.oy = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.oz = getelementptr inbounds nuw i8, ptr %17, i64 104
  store ptr %i.oz, ptr %i.oy, align 8, !tbaa !127, !alias.scope !246
  %i.pa = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i64 1, ptr %i.pa, align 8, !tbaa !128, !alias.scope !246
  %i.pb = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.pc = getelementptr inbounds nuw i8, ptr %17, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, i8 0, i64 16, i1 false), !alias.scope !246
  store float 1.000000e+00, ptr %i.pc, align 8, !tbaa !64, !alias.scope !246
  %i.pd = getelementptr inbounds nuw i8, ptr %17, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, i8 0, i64 16, i1 false), !alias.scope !246
  %i.pe = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.pf = getelementptr inbounds nuw i8, ptr %17, i64 160
  store ptr %i.pf, ptr %i.pe, align 8, !tbaa !127, !alias.scope !246
  %i.pg = getelementptr inbounds nuw i8, ptr %17, i64 120
  store i64 1, ptr %i.pg, align 8, !tbaa !128, !alias.scope !246
  %i.ph = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.pi = getelementptr inbounds nuw i8, ptr %17, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ph, i8 0, i64 16, i1 false), !alias.scope !246
  store float 1.000000e+00, ptr %i.pi, align 8, !tbaa !64, !alias.scope !246
  %i.pj = getelementptr inbounds nuw i8, ptr %17, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i8 0, i64 16, i1 false), !alias.scope !246
  %i.pk = getelementptr inbounds nuw i8, ptr %17, i64 168
  %i.pl = getelementptr inbounds nuw i8, ptr %17, i64 216
  store ptr %i.pl, ptr %i.pk, align 8, !tbaa !127, !alias.scope !246
  %i.pm = getelementptr inbounds nuw i8, ptr %17, i64 176
  store i64 1, ptr %i.pm, align 8, !tbaa !128, !alias.scope !246
  %i.pn = getelementptr inbounds nuw i8, ptr %17, i64 184
  %i.po = getelementptr inbounds nuw i8, ptr %17, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i8 0, i64 16, i1 false), !alias.scope !246
  store float 1.000000e+00, ptr %i.po, align 8, !tbaa !64, !alias.scope !246
  %i.pp = getelementptr inbounds nuw i8, ptr %17, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, i8 0, i64 16, i1 false), !alias.scope !246
  %i.pq = getelementptr inbounds nuw i8, ptr %17, i64 224 ; 3 uses
  store i8 1, ptr %i.pq, align 8, !tbaa !52, !alias.scope !246
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @_ZNSt22_Optional_payload_baseI14PointabilitiesE14_M_move_assignEOS1_(ptr noundef nonnull align 8 dereferenceable(232) %i.pr, ptr noundef nonnull align 8 dereferenceable(232) %17) #26
  %i.ps = load i8, ptr %i.pq, align 8, !tbaa !52, !range !25, !noundef !91
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.cr, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

bb.cr:                                            ; preds = %bb.cq
  store i8 0, ptr %i.pq, align 8, !tbaa !52
  call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %17) #26
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit: ; preds = %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  invoke void @_ZN14Pointabilities11deSerializeERSi(ptr noundef nonnull align 8 dereferenceable(224) %i.pr, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.cx

bb.ct:                                            ; preds = %bb.cn
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

bb.cu:                                            ; preds = %bb.cp
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %16) #26
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn72 = phi { ptr, i32 } [ %i.pw, %bb.cv ], [ %i.pv, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.dg

bb.cx:                                            ; preds = %bb.cs, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1
  %i.px = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %.noexc190 unwind label %bb.dc ; 0 uses

.noexc190:                                        ; preds = %bb.cx
  %i.py = load ptr, ptr %1, align 8, !tbaa !37
  %i.pz = getelementptr i8, ptr %i.py, i64 -24
  %i.qa = load i64, ptr %i.pz, align 8
  %i.qb = getelementptr inbounds i8, ptr %1, i64 %i.qa
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !46
  %i.qe = and i32 %i.qd, 2
  %.not.i189 = icmp eq i32 %i.qe, 0
  br i1 %.not.i189, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.noexc190
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc191 unwind label %bb.dc

.noexc191:                                        ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %.noexc190
  %i.qf = load i8, ptr %i.a, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not74 = icmp eq i8 %i.qf, 0
  br i1 %.not74, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN13WearBarParams11deserializeERSi(ptr dead_on_unwind nonnull writable sret(%struct.WearBarParams) align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.qh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8optionalI13WearBarParamsEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.qg, ptr noundef nonnull align 8 dereferenceable(49) %18) #26 ; 0 uses
  call void @_ZN13WearBarParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.de

bb.dc:                                            ; preds = %bb.cy, %bb.cx
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.dd:                                            ; preds = %bb.da
  %i.qj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.dg

bb.de:                                            ; preds = %bb.db, %bb.cz
  %i.qk = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.de
  %i.qn = load i64, ptr %i.ql, align 8, !tbaa !34
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.df

bb.df:                                            ; preds = %bb.ck, %bb.cd, %bb.bz, %bb.bs, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.qp = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.df
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !34
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.dg:                                            ; preds = %bb.dd, %bb.dc, %bb.cw
  %.pn75 = phi { ptr, i32 } [ %i.qj, %bb.dd ], [ %i.qi, %bb.dc ], [ %.pn72, %bb.cw ] ; 2 uses
  %i.qu = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.dg
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !34
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199, %bb.ct
  %.pn75.pn = phi { ptr, i32 } [ %i.pu, %bb.ct ], [ %.pn75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199 ], [ %.pn75, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.dh

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %bb.bj, %bb.bk, %bb.bt, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %bb.ah
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ah ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %.pn75.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %i.lk, %bb.bj ], [ %i.ob, %bb.ci ], [ %i.ll, %bb.bk ], [ %i.mq, %bb.bt ]
  %i.qz = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.dh
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !34
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.di

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %.pn82.pn = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.pn78.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ]
  resume { ptr, i32 } %.pn82.pn

bb.dj:                                            ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !29
  %i.d = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !31
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !33
  %i.i = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.i, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !34
  store i8 %i.k, ptr %i.j, align 1, !tbaa !34
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !34
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !272

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !29
  %i.d = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !31
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !33
  %i.i = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.i, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !34
  store i8 %i.k, ptr %i.j, align 1, !tbaa !34
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !35
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i16, ptr %i.u, align 8, !tbaa !274
  store i16 %i.v, ptr %i.t, align 8, !tbaa !274
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseI13WearBarParamsE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !54, !range !25, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i8, ptr %i.d, align 8, !range !25
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i8, ptr %i.h, align 8, !tbaa !137
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.i, ptr %i.j, align 8, !tbaa !137
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.k, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %0, ptr %2, align 8, !tbaa !165
  %i.r = call noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.noexc.i.i.i.i.i ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !111
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112  ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.g, label %bb.f, !llvm.loop !2

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !107
  store i64 %i.x, ptr %i.o, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store ptr %i.r, ptr %i.l, align 8, !tbaa !111
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit: ; preds = %bb.d, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !137
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !137
  store i8 1, ptr %i.a, align 8, !tbaa !54
  br label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.i, label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.a, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !96
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %i.ac)
          to label %_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable

_ZNSt22_Optional_payload_baseI13WearBarParamsE8_M_resetEv.exit: ; preds = %bb.i, %bb.h, %_ZNSt22_Optional_payload_baseI13WearBarParamsE12_M_constructIJRKS0_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<float, std::pair<const float, video::SColor>, std::_Select1st<std::pair<const float, video::SColor>>, std::less<float>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !167
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !165
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !168
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !105
  store ptr %i.j, ptr %i.d, align 8, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !1

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !107
  store i64 %i.u, ptr %i.l, align 8, !tbaa !107
  store ptr %i.o, ptr %i.a, align 8, !tbaa !111
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !169
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !167
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit ]
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169, !nonnull !91, !align !163
  %i.c = load ptr, ptr %0, align 8, !tbaa !167
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !168
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112  ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !275

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.m, null
  %spec.store.select.i.i.i = select i1 %.not12.i.i.i, ptr %storemerge.i.i.i, ptr %i.m
  store ptr %spec.store.select.i.i.i, ptr %i.a, align 8, !tbaa !168
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !110
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !167
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
end_hunk_2
begin_hunk_3_@_ZN18SerializationErrorD0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !177
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !177
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !177
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !177
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_Z7readF32PKh(ptr noundef %0) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %.pre = load i32, ptr @g_serialize_f32_type, align 4, !tbaa !176
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %i.a = phi i32 [ %i.f, %bb.d ], [ %.pre, %bb.a ]
  %.0.copyload.i = load i32, ptr %0, align 1      ; 2 uses
  switch i32 %i.a, label %bb.e [
    i32 2, label %bb.b
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.c = bitcast i32 %i.b to float
  br label %bb.j

bb.c:                                             ; preds = %tailrecurse
  %i.d = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.e = tail call nsz noundef float @_Z12u32Tof32Slowj(i32 noundef %i.d)
  br label %bb.j

bb.d:                                             ; preds = %tailrecurse
  %i.f = tail call noundef i32 @_Z25getFloatSerializationTypev() ; 2 uses
  store i32 %i.f, ptr @g_serialize_f32_type, align 4, !tbaa !176
  br label %tailrecurse

bb.e:                                             ; preds = %tailrecurse
  %i.g = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #25
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !34
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @__cxa_free_exception(ptr %i.g) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn13 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %.pn13

bb.j:                                             ; preds = %bb.c, %bb.b
  %.09 = phi nsz float [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  ret float %.09

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare noundef float @_Z12u32Tof32Slowj(i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseI14PointabilitiesE14_M_move_assignEOS1_(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(225) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !52, !range !25, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.e = load i8, ptr %i.d, align 8, !range !25
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSM_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSM_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit5.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit5.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSM_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit6.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit5.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #28
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit6.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit5.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSM_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_ZN14PointabilitiesaSEOS_.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit6.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

bb.g:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN14PointabilitiesC2EOS_(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #26
  store i8 1, ptr %i.a, align 8, !tbaa !52
  br label %_ZN14PointabilitiesaSEOS_.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %_ZN14PointabilitiesaSEOS_.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.a, align 8, !tbaa !52
  tail call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(225) %0) #26
  br label %_ZN14PointabilitiesaSEOS_.exit

_ZN14PointabilitiesaSEOS_.exit:                   ; preds = %bb.j, %bb.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEaSEOSF_.exit6.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSM_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !143

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141  ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE19_M_deallocate_nodesEPSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i
  %.06.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !98 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !34
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 56) #27
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE19_M_deallocate_nodesEPSC_.exit, label %.lr.ph.i, !llvm.loop !3

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE19_M_deallocate_nodesEPSC_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !127    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE19_M_deallocate_nodesEPSC_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !128
  %i.p = shl i64 %i.o, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE19_M_deallocate_nodesEPSC_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !146
  %i.s = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !144
  store ptr %i.v, ptr %i.l, align 8, !tbaa !144
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, %bb.d
  %i.w = phi ptr [ %i.l, %bb.d ], [ %i.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ] ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !128  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141 ; 3 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !141
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !145
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !145
  %.not.i12 = icmp eq ptr %i.ab, null
  br i1 %.not.i12, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !153
  %i.ah = urem i64 %i.ag, %i.y
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ah
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !154
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !142
  store i64 1, ptr %i.x, align 8, !tbaa !128
  store ptr null, ptr %i.t, align 8, !tbaa !144
  store ptr %i.t, ptr %1, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14PointabilitiesC2EOS_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !141  ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !145
  store i64 %i.j, ptr %i.h, align 8, !tbaa !145
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !146
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr null, ptr %i.m, align 8, !tbaa !144
  %i.n = load ptr, ptr %1, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.m, ptr %0, align 8, !tbaa !127
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !144
  store ptr %i.q, ptr %i.m, align 8, !tbaa !144
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi ptr [ %i.m, %bb.b ], [ %i.a, %bb.a ]
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !153
  %i.u = urem i64 %i.t, %i.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  store ptr %i.e, ptr %i.v, align 8, !tbaa !154
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit: ; preds = %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !142
  store i64 1, ptr %i.c, align 8, !tbaa !128
  store ptr null, ptr %i.o, align 8, !tbaa !144
  store ptr %i.o, ptr %1, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !127  ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !128 ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !128
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !141 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !98
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !145
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !145
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !146
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr null, ptr %i.al, align 8, !tbaa !144
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !127
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit
  store ptr %i.al, ptr %i.x, align 8, !tbaa !127
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !144
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !144
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit
  %i.aq = phi ptr [ %i.al, %bb.e ], [ %i.z, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit ]
  %.not.i.i.i.i5 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i5, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !153
  %i.at = urem i64 %i.as, %i.ac
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  store ptr %i.ad, ptr %i.au, align 8, !tbaa !154
end_hunk_3
