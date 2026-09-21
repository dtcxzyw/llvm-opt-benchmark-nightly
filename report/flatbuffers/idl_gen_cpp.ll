Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_cpp?download=true
inline.NumInlined: 10427
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11flatbuffers3cpp12CppGenerator15GenTraitsStructERKNS_9StructDefE:.noexc.i
  %i.db = load i64, ptr %i.cu, align 8, !tbaa !32
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.dd, ptr %9, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 74, ptr %i.a, align 8, !tbaa !54
  %i.de = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.de, ptr %9, align 8, !tbaa !37
  %i.df = load i64, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(74) %i.de, ptr noundef nonnull align 1 dereferenceable(74) @.str.520, i64 74, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  store i8 0, ptr %i.dh, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.g, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.di = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.dd
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.m
  %i.dk = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @_ZN11flatbuffers3cpp12CppGenerator15GenFieldsNumberERKNS_9StructDefE(ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(336) %1)
  call void @_ZN11flatbuffers3cpp12CppGenerator13GenFieldNamesERKNS_9StructDefE(ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(336) %1)
  call void @_ZN11flatbuffers3cpp12CppGenerator18GenFieldTypeHelperERKNS_9StructDefE(ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(336) %1)
  br label %._crit_edge.i.i105

bb.n:                                             ; preds = %.noexc.i86
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cu
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.n
  %i.dp = load i64, ptr %i.cu, align 8, !tbaa !32
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dd
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.o
  %i.du = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

._crit_edge.i.i105:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.dw, ptr %10, align 8, !tbaa !31
  store i16 15229, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 2, ptr %i.dx, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i8 0, ptr %i.dy, align 2, !tbaa !32
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.g, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %._crit_edge.i.i105
  %i.dz = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.p
  %i.eb = load i64, ptr %i.dw, align 8, !tbaa !32
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ed, ptr %11, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ee, align 8, !tbaa !53
  store i8 0, ptr %i.ed, align 8, !tbaa !32
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.g, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ef = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ed
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.q
  %i.eh = load i64, ptr %i.ed, align 8, !tbaa !32
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  ret void

bb.r:                                             ; preds = %._crit_edge.i.i105
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dw
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.r
  %i.em = load i64, ptr %i.dw, align 8, !tbaa !32
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ed
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.s
  %i.er = load i64, ptr %i.ed, align 8, !tbaa !32
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.s, %bb.r, %bb.o, %bb.n, %bb.k, %bb.j, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn34.pn = phi { ptr, i32 } [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %i.cm, %bb.k ], [ %i.ej, %bb.r ], [ %i.cc, %bb.i ], [ %i.dm, %bb.n ], [ %i.ch, %bb.j ], [ %i.dr, %bb.o ], [ %i.eo, %bb.s ]
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11flatbuffers3cpp12CppGenerator14GenTypePointerB5cxx11ERKNS_4TypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1649) %1, ptr noundef nonnull align 8 dereferenceable(26) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"struct.flatbuffers::Type", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !305
  switch i32 %i.b, label %._crit_edge.i.i66 [
    i32 13, label %.noexc.i
    i32 18, label %bb.b
    i32 14, label %bb.b
    i32 15, label %._crit_edge.i.i56
  ]

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 21, ptr %i.a, align 8, !tbaa !54
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !37
  %i.e = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.d, ptr noundef nonnull align 1 dereferenceable(21) @.str.269, i64 21, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !53
  %i.g = load ptr, ptr %0, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.v

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !333, !noalias !1766 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i16, ptr %i.m, align 8, !tbaa !306, !noalias !1766
  store i32 %i.j, ptr %4, align 8, !tbaa !305, !alias.scope !1766
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !333, !alias.scope !1766
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !326, !noalias !1766 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.k, align 8, !tbaa !308, !noalias !1766
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !308, !alias.scope !1766
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %i.n, ptr %i.s, align 8, !tbaa !306, !alias.scope !1766
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 691
  %i.u = load i8, ptr %i.t, align 1, !tbaa !56, !range !58, !noundef !59
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %9

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.q, null
  %i.w = add i32 %i.j, -1
  %i.x = icmp ult i32 %i.w, 10
  %i.y = select i1 %.not.i.i, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit, label %9

9:                                                ; preds = %bb.c, %bb.b
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 1468
  %11 = load i32, ptr %10, align 4, !tbaa !311
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %bb.d, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.d:                                             ; preds = %9
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !295, !range !58, !noundef !59
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.e:                                             ; preds = %bb.d
  %.not.i3.i = icmp ne ptr %i.q, null
  %i.ac = add i32 %i.j, -1
  %i.ad = icmp ult i32 %i.ac, 10
  %i.ae = select i1 %.not.i3.i, i1 %i.ad, i1 false
  br label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit: ; preds = %bb.c, %9, %bb.d, %bb.e
  %13 = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %9 ], [ %i.ae, %bb.e ]
  call void @_ZNK11flatbuffers3cpp12CppGenerator11GenTypeWireB5cxx11ERKNS_4TypeEPKcbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1649) %1, ptr noundef nonnull align 8 dereferenceable(26) %4, ptr noundef nonnull @.str.7, i1 noundef zeroext %13, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.af = load i32, ptr %2, align 8, !tbaa !305
  %i.ag = icmp eq i32 %i.af, 18                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ah, ptr %7, align 8, !tbaa !31
  %i.ai = select i1 %i.ag, i64 3, i64 1
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  store i8 60, ptr %i.ah, align 8, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ah, ptr noundef nonnull align 1 dereferenceable(3) @.str.362, i64 3, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.sel.v = phi i64 [ 19, %bb.g ], [ 17, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !53
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.sel.v
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !32
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.361, i64 noundef 21)
          to label %.noexc23 unwind label %bb.q   ; 6 uses

.noexc23:                                         ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !31, !alias.scope !1767
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !53 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc23
  store ptr %i.am, ptr %6, align 8, !tbaa !37, !alias.scope !1767
  %i.at = load i64, ptr %i.an, align 8, !tbaa !32
  store i64 %i.at, ptr %i.al, align 8, !tbaa !32, !alias.scope !1767
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !53, !alias.scope !1767
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !37
  store i64 0, ptr %i.av, align 8, !tbaa !53
  store i8 0, ptr %i.an, align 8, !tbaa !32
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !53, !noalias !1768 ; 2 uses
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !53, !noalias !1768
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc27 unwind label %bb.r

.noexc27:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.j
  %i.bc = load ptr, ptr %3, align 8, !tbaa !37, !noalias !1768
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.bc, i64 noundef %i.ay)
          to label %.noexc28 unwind label %bb.r   ; 6 uses

.noexc28:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.be, ptr %5, align 8, !tbaa !31, !alias.scope !1768
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !37 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.l:                                             ; preds = %.noexc28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !53 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.noexc28
  store ptr %i.bf, ptr %5, align 8, !tbaa !37, !alias.scope !1768
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !32
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !32, !alias.scope !1768
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.l
  %i.bn = phi i64 [ %i.bj, %bb.l ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !53, !alias.scope !1768
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !37
  store i64 0, ptr %i.bo, align 8, !tbaa !53
  store i8 0, ptr %i.bg, align 8, !tbaa !32
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !53, !noalias !1769
  %i.br = icmp eq i64 %i.bq, 4611686018427387903
  br i1 %i.br, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc32 unwind label %bb.s

.noexc32:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.m
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.364, i64 noundef 1)
          to label %.noexc33 unwind label %bb.s   ; 6 uses

.noexc33:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !31, !alias.scope !1769
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !37 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

bb.o:                                             ; preds = %.noexc33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !53 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %.noexc33
  store ptr %i.bu, ptr %0, align 8, !tbaa !37, !alias.scope !1769
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !32
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !32, !alias.scope !1769
  %.phi.trans.insert.i30 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.pre.i31 = load i64, ptr %.phi.trans.insert.i30, align 8, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.o
  %i.cc = phi i64 [ %i.by, %bb.o ], [ %.pre.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !53, !alias.scope !1769
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !37
  store i64 0, ptr %i.cd, align 8, !tbaa !53
  store i8 0, ptr %i.bv, align 8, !tbaa !32
  %i.cf = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.be
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.p
  %i.ch = load i64, ptr %i.be, align 8, !tbaa !32
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  %i.cj = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.al
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cl = load i64, ptr %i.al, align 8, !tbaa !32
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.cn = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ah
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cp = load i64, ptr %i.ah, align 8, !tbaa !32
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.cr = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers3cpp12CppGenerator19GenTableFieldGetterERKNS_8FieldDefE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.gd = load ptr, ptr %13, align 8, !tbaa !37   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ft
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.gf = load i64, ptr %i.ft, align 8, !tbaa !32
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.gh, ptr %15, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.gh, ptr noundef nonnull align 1 dereferenceable(11) @.str.350, i64 11, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 11, ptr %i.gi, align 8, !tbaa !53
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 27
  store i8 0, ptr %i.gj, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN11flatbuffers3cpp12CppGenerator17GenUnderlyingCastERKNS_8FieldDefEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ag unwind label %bb.bb

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.gk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(477) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc229 unwind label %bb.bc

.noexc229:                                        ; preds = %bb.ag
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit231 unwind label %bb.bc

_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit231: ; preds = %.noexc229
  %i.gl = load ptr, ptr %16, align 8, !tbaa !37   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit231
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !32
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.gq = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gh
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %i.gs = load i64, ptr %i.gh, align 8, !tbaa !32
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.gu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.gu, ptr %17, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gu, ptr noundef nonnull align 1 dereferenceable(12) @.str.129, i64 12, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 12, ptr %i.gv, align 8, !tbaa !53
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 28
  store i8 0, ptr %i.gw, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  %i.gx = load i8, ptr %i.eu, align 1, !tbaa !223, !range !58, !noalias !2086, !noundef !59
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.gz, ptr %18, align 8, !tbaa !31, !alias.scope !2086
  br i1 %i.gy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.gz, ptr noundef nonnull align 1 dereferenceable(11) @.str.959, i64 11, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  %i.ha = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ 11, %bb.ah ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !53, !alias.scope !2086
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ha
  store i8 0, ptr %i.hc, align 1, !tbaa !32, !alias.scope !2086
  %i.hd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(477) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.noexc243 unwind label %bb.bd

.noexc243:                                        ; preds = %bb.ai
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hd, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit245 unwind label %bb.bd

_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit245: ; preds = %.noexc243
  %i.he = load ptr, ptr %18, align 8, !tbaa !37   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gz
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit245
  %i.hg = load i64, ptr %i.gz, align 8, !tbaa !32
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.hi = load ptr, ptr %17, align 8, !tbaa !37   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.gu
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.hk = load i64, ptr %i.gu, align 8, !tbaa !32
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.hm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.hm, ptr %19, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i64 40, ptr %i.g, align 8, !tbaa !54
  %i.hn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc254 unwind label %bb.be ; 3 uses

.noexc254:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  store ptr %i.hn, ptr %19, align 8, !tbaa !37
  %i.ho = load i64, ptr %i.g, align 8, !tbaa !54  ; 3 uses
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.hn, ptr noundef nonnull align 1 dereferenceable(40) @.str.351, i64 40, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !53
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho
  store i8 0, ptr %i.hq, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.fs, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.aj unwind label %bb.bf

bb.aj:                                            ; preds = %.noexc254
  %i.hr = load ptr, ptr %19, align 8, !tbaa !37   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hm
  br i1 %i.hs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.aj
  %i.ht = load i64, ptr %i.hm, align 8, !tbaa !32
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  %i.hv = load i32, ptr %i.h, align 8, !tbaa !305
  switch i32 %i.hv, label %.thread [
    i32 18, label %bb.ak
    i32 14, label %bb.ak
    i32 13, label %bb.cg
  ]

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !53
  %i.hy = icmp eq i64 %i.hx, 2
  br i1 %i.hy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ak
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !37
  %i.ib = load i16, ptr %i.ia, align 1
  %i.ic = icmp ne i16 %i.ib, 23899
  %i.id = zext i1 %i.ic to i32
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !333, !noalias !2087 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ik = load i16, ptr %i.ij, align 8, !tbaa !306, !noalias !2087
  store i32 %i.ig, ptr %20, align 8, !tbaa !305, !alias.scope !2087
  %i.il = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 0, ptr %i.il, align 4, !tbaa !333, !alias.scope !2087
  %i.im = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.in = load ptr, ptr %i.ii, align 8, !tbaa !326, !noalias !2087 ; 2 uses
  %i.io = load <2 x ptr>, ptr %i.ih, align 8, !tbaa !308, !noalias !2087
  store <2 x ptr> %i.io, ptr %i.im, align 8, !tbaa !308, !alias.scope !2087
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i16 %i.ik, ptr %i.ip, align 8, !tbaa !306, !alias.scope !2087
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 691
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !56, !range !58, !noundef !59
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.al, label %55

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not.i.i = icmp ne ptr %i.in, null
  %i.it = add i32 %i.ig, -1
  %i.iu = icmp ult i32 %i.it, 10
  %i.iv = select i1 %.not.i.i, i1 %i.iu, i1 false
  br i1 %i.iv, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit, label %55

55:                                               ; preds = %bb.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %57 = load i32, ptr %56, align 4, !tbaa !311
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %bb.am, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.am:                                            ; preds = %55
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !295, !range !58, !noundef !59
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.an, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.an:                                            ; preds = %bb.am
  %.not.i3.i = icmp ne ptr %i.in, null
  %i.iz = add i32 %i.ig, -1
  %i.ja = icmp ult i32 %i.iz, 10
  %i.jb = select i1 %.not.i3.i, i1 %i.ja, i1 false
  br label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit: ; preds = %bb.an, %bb.am, %55, %bb.al
  %59 = phi i1 [ true, %bb.al ], [ false, %bb.am ], [ false, %55 ], [ %i.jb, %bb.an ]
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 277 ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !130, !range !58, !noundef !59
  %i.je = trunc nuw i8 %i.jd to i1
  invoke void @_ZNK11flatbuffers3cpp12CppGenerator11GenTypeWireB5cxx11ERKNS_4TypeEPKcbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(26) %20, ptr noundef nonnull @.str.7, i1 noundef zeroext %59, i1 noundef zeroext %i.je)
          to label %bb.ao unwind label %bb.bg

bb.ao:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.jf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 10 uses
  store ptr %i.jf, ptr %22, align 8, !tbaa !31
  %i.jg = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 10 uses
  store i64 0, ptr %i.jg, align 8, !tbaa !53
  store i8 0, ptr %i.jf, align 8, !tbaa !32
  %i.jh = load i8, ptr %i.jc, align 1, !tbaa !130, !range !58, !noundef !59
  %i.ji = trunc nuw i8 %i.jh to i1
  %i.jj = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  br i1 %i.ji, label %bb.ap, label %bb.bh

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  %i.jk = load ptr, ptr %21, align 8, !tbaa !37, !noalias !2088
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !53, !noalias !2088 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 10 uses
  store ptr %i.jm, ptr %23, align 8, !tbaa !31, !alias.scope !2089
  %i.jn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 8 uses
  store i64 0, ptr %i.jn, align 8, !tbaa !53, !alias.scope !2089
  store i8 0, ptr %i.jm, align 8, !tbaa !32, !alias.scope !2089
  %i.jo = add i64 %i.jl, 37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.jo)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !53, !alias.scope !2089
  %i.jq = add i64 %i.jp, -4611686018427387867
  %i.jr = icmp ult i64 %i.jq, 37
  br i1 %i.jr, label %.invoke.i.i265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i262: ; preds = %bb.aq
  %i.js = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.582, i64 noundef 37)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i263 unwind label %bb.ar ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i263: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i262
  %i.jt = load i64, ptr %i.jn, align 8, !tbaa !53, !alias.scope !2089
  %i.ju = sub i64 4611686018427387903, %i.jt
  %i.jv = icmp ult i64 %i.ju, %i.jl
  br i1 %i.jv, label %.invoke.i.i265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i264

.invoke.i.i265:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i263, %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i.i266 unwind label %bb.ar

.cont.i.i266:                                     ; preds = %.invoke.i.i265
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i263
  %i.jw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.jk, i64 noundef %i.jl)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i264, %.invoke.i.i265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i262, %bb.ap
  %i.jx = landingpad { ptr, i32 }
          cleanup
  %i.jy = load ptr, ptr %23, align 8, !tbaa !37, !alias.scope !2089 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.jm
  br i1 %i.jz, label %.body267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i259: ; preds = %bb.ar
  %i.ka = load i64, ptr %i.jm, align 8, !tbaa !32, !alias.scope !2089
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #27
  br label %.body267

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i264
  %i.kc = load ptr, ptr %22, align 8, !tbaa !37   ; 6 uses
  %i.kd = icmp eq ptr %i.kc, %i.jf
  %i.ke = load ptr, ptr %23, align 8, !tbaa !37   ; 5 uses
  %i.kf = icmp eq ptr %i.ke, %i.jm                ; 2 uses
  br i1 %i.kd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.kf, label %bb.as, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.kf, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.kg = load i64, ptr %i.jn, align 8, !tbaa !53 ; 3 uses
  %i.kh = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kh)
  switch i64 %i.kg, label %bb.au [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  %i.ki = load i8, ptr %i.ke, align 1, !tbaa !32
  store i8 %i.ki, ptr %i.kc, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr align 1 %i.ke, i64 %i.kg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.au, %bb.at, %bb.as
  %i.kj = load i64, ptr %i.jn, align 8, !tbaa !53 ; 2 uses
  store i64 %i.kj, ptr %i.jg, align 8, !tbaa !53
  %i.kk = load ptr, ptr %22, align 8, !tbaa !37
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kj
  store i8 0, ptr %i.kl, align 1, !tbaa !32
  %.pre.i269 = load ptr, ptr %23, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ke, ptr %22, align 8, !tbaa !37
  %i.km = load <2 x i64>, ptr %i.jn, align 8, !tbaa !32
  store <2 x i64> %i.km, ptr %i.jg, align 8, !tbaa !32
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.kn = load i64, ptr %i.jf, align 8, !tbaa !32
  store ptr %i.ke, ptr %22, align 8, !tbaa !37
  %i.ko = load <2 x i64>, ptr %i.jn, align 8, !tbaa !32
  store <2 x i64> %i.ko, ptr %i.jg, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.kc, null
  br i1 %.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.kc, ptr %23, align 8, !tbaa !37
  store i64 %i.kn, ptr %i.jm, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.jm, ptr %23, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.av, %bb.aw
  %i.kp = phi ptr [ %.pre.i269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.kc, %bb.av ], [ %i.jm, %bb.aw ]
  store i64 0, ptr %i.jn, align 8, !tbaa !53
  store i8 0, ptr %i.kp, align 1, !tbaa !32
  %i.kq = load ptr, ptr %23, align 8, !tbaa !37   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.jm
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ks = load i64, ptr %i.jm, align 8, !tbaa !32
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.bp

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i202, %bb.aa
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ay:                                            ; preds = %bb.ac
  %i.kv = landingpad { ptr, i32 }
          cleanup
  %i.kw = load ptr, ptr %12, align 8, !tbaa !37   ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.ex
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.ay
  %i.ky = load i64, ptr %i.ex, align 8, !tbaa !32
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

bb.ba:                                            ; preds = %.noexc217, %bb.af
  %i.lb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lc = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.ba
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !32
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276, %bb.az
  %.pn93 = phi { ptr, i32 } [ %i.la, %bb.az ], [ %i.lb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276 ], [ %i.lb, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.lh = load ptr, ptr %13, align 8, !tbaa !37   ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.ft
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
  %i.lj = load i64, ptr %i.ft, align 8, !tbaa !32
  %i.lk = add i64 %i.lj, 1
end_hunk_1
begin_hunk_2_@_ZN11flatbuffers3cpp12CppGenerator19GenTableFieldSetterERKNS_8FieldDefE:bb.a
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 785
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !223, !range !58, !noalias !2153, !noundef !59
  %i.mz = trunc nuw i8 %i.my to i1
  %i.na = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  store ptr %i.na, ptr %27, align 8, !tbaa !31, !alias.scope !2153
  br i1 %i.mz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.na, ptr noundef nonnull align 1 dereferenceable(11) @.str.959, i64 11, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.nb = phi i64 [ 0, %bb.ay ], [ 11, %bb.az ]   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.nb, ptr %i.nc, align 8, !tbaa !53, !alias.scope !2153
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nb
  store i8 0, ptr %i.nd, align 1, !tbaa !32, !alias.scope !2153
  %i.ne = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.365, i64 noundef 2)
          to label %.noexc362 unwind label %bb.be ; 6 uses

.noexc362:                                        ; preds = %bb.ba
  %i.nf = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  store ptr %i.nf, ptr %26, align 8, !tbaa !31, !alias.scope !2154
  %i.ng = load ptr, ptr %i.ne, align 8, !tbaa !37 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 5 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

bb.bb:                                            ; preds = %.noexc362
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !53 ; 3 uses
  %i.nl = icmp ult i64 %i.nk, 16
  call void @llvm.assume(i1 %i.nl)
  %i.nm = add nuw nsw i64 %i.nk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nf, ptr noundef nonnull align 8 dereferenceable(1) %i.nh, i64 %i.nm, i1 false)
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %.noexc362
  store ptr %i.ng, ptr %26, align 8, !tbaa !37, !alias.scope !2154
  %i.nn = load i64, ptr %i.nh, align 8, !tbaa !32
  store i64 %i.nn, ptr %i.nf, align 8, !tbaa !32, !alias.scope !2154
  %.phi.trans.insert.i360 = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %.pre.i361 = load i64, ptr %.phi.trans.insert.i360, align 8, !tbaa !53
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359, %bb.bb
  %i.no = phi i64 [ %i.nk, %bb.bb ], [ %.pre.i361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359 ]
  %i.np = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.no, ptr %i.nq, align 8, !tbaa !53, !alias.scope !2154
  store ptr %i.nh, ptr %i.ne, align 8, !tbaa !37
  store i64 0, ptr %i.np, align 8, !tbaa !53
  store i8 0, ptr %i.nh, align 8, !tbaa !32
  %i.nr = load ptr, ptr %27, align 8, !tbaa !37   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.na
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.bc
  %i.nt = load i64, ptr %i.na, align 8, !tbaa !32
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.nv = load ptr, ptr %26, align 8, !tbaa !37
  invoke void @_ZN11flatbuffers3cpp12CppGenerator10GenTypeGetB5cxx11ERKNS_4TypeEPKcS6_S6_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(26) %i.l, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.7, ptr noundef %i.nv, i1 noundef zeroext true)
          to label %._crit_edge.i.i367 unwind label %bb.bf

._crit_edge.i.i367:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  %i.nx = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.nx, ptr %29, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.nx, ptr noundef nonnull align 1 dereferenceable(10) @.str.335, i64 10, i1 false)
  %i.ny = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 10, ptr %i.ny, align 8, !tbaa !53
  %i.nz = getelementptr inbounds nuw i8, ptr %29, i64 26
  store i8 0, ptr %i.nz, align 2, !tbaa !32
  %i.oa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(477) %i.nw, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %.noexc371 unwind label %bb.bg

.noexc371:                                        ; preds = %._crit_edge.i.i367
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.oa, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit373 unwind label %bb.bg

_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit373: ; preds = %.noexc371
  %i.ob = load ptr, ptr %29, align 8, !tbaa !37   ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.nx
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit373
  %i.od = load i64, ptr %i.nx, align 8, !tbaa !32
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.oe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  %i.of = load i32, ptr %i.l, align 8, !tbaa !305 ; 2 uses
  %i.og = icmp eq i32 %i.of, 16
  br i1 %i.og, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  invoke void @_ZN11flatbuffers3cpp12CppGenerator22GenTableUnionAsGettersERKNS_8FieldDefEb(ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i1 noundef zeroext true)
          to label %thread-pre-split unwind label %bb.bh

bb.be:                                            ; preds = %bb.ba
  %i.oh = landingpad { ptr, i32 }
          cleanup
  %i.oi = load ptr, ptr %27, align 8, !tbaa !37   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.na
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377: ; preds = %bb.be
  %i.ok = load i64, ptr %i.na, align 8, !tbaa !32
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

bb.bg:                                            ; preds = %.noexc371, %._crit_edge.i.i367
  %i.on = landingpad { ptr, i32 }
          cleanup
  %i.oo = load ptr, ptr %29, align 8, !tbaa !37   ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.nx
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %bb.bg
  %i.oq = load i64, ptr %i.nx, align 8, !tbaa !32
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.ee

bb.bh:                                            ; preds = %bb.bd
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

thread-pre-split:                                 ; preds = %bb.bd
  %.pr = load i32, ptr %i.l, align 8, !tbaa !305
  br label %bb.bi

bb.bi:                                            ; preds = %thread-pre-split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %i.ot = phi i32 [ %.pr, %thread-pre-split ], [ %i.of, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376 ] ; 2 uses
  switch i32 %i.ot, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread649 [
    i32 18, label %bb.bj
    i32 14, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !53
  %i.ow = icmp eq i64 %i.ov, 2
  br i1 %i.ow, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread649

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bj
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !37
  %i.oz = load i16, ptr %i.oy, align 1
  %i.pa = icmp ne i16 %i.oz, 23899
  %i.pb = zext i1 %i.pa to i32
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread649

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !333, !noalias !2155 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.pi = load i16, ptr %i.ph, align 8, !tbaa !306, !noalias !2155
  store i32 %i.pe, ptr %30, align 8, !tbaa !305, !alias.scope !2155
  %i.pj = getelementptr inbounds nuw i8, ptr %30, i64 4
  store i32 0, ptr %i.pj, align 4, !tbaa !333, !alias.scope !2155
  %i.pk = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.pl = load ptr, ptr %i.pg, align 8, !tbaa !326, !noalias !2155 ; 2 uses
  %i.pm = load <2 x ptr>, ptr %i.pf, align 8, !tbaa !308, !noalias !2155
  store <2 x ptr> %i.pm, ptr %i.pk, align 8, !tbaa !308, !alias.scope !2155
  %i.pn = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i16 %i.pi, ptr %i.pn, align 8, !tbaa !306, !alias.scope !2155
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 691
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !56, !range !58, !noundef !59
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %bb.bk, label %50

bb.bk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not.i.i = icmp ne ptr %i.pl, null
  %i.pr = add i32 %i.pe, -1
  %i.ps = icmp ult i32 %i.pr, 10
  %i.pt = select i1 %.not.i.i, i1 %i.ps, i1 false
  br i1 %i.pt, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit, label %50

50:                                               ; preds = %bb.bk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %52 = load i32, ptr %51, align 4, !tbaa !311
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %bb.bl, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.bl:                                            ; preds = %50
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.pv = load i8, ptr %i.pu, align 8, !tbaa !295, !range !58, !noundef !59
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.bm, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.bm:                                            ; preds = %bb.bl
  %.not.i3.i = icmp ne ptr %i.pl, null
  %i.px = add i32 %i.pe, -1
  %i.py = icmp ult i32 %i.px, 10
  %i.pz = select i1 %.not.i3.i, i1 %i.py, i1 false
  br label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit: ; preds = %bb.bm, %bb.bl, %50, %bb.bk
  %54 = phi i1 [ true, %bb.bk ], [ false, %bb.bl ], [ false, %50 ], [ %i.pz, %bb.bm ]
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 277 ; 2 uses
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !130, !range !58, !noundef !59
  %i.qc = trunc nuw i8 %i.qb to i1
  invoke void @_ZNK11flatbuffers3cpp12CppGenerator11GenTypeWireB5cxx11ERKNS_4TypeEPKcbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(26) %30, ptr noundef nonnull @.str.7, i1 noundef zeroext %54, i1 noundef zeroext %i.qc)
          to label %.noexc.i384 unwind label %bb.bw

.noexc.i384:                                      ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  %i.qd = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.qd, ptr %32, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 42, ptr %i.e, align 8, !tbaa !54
  %i.qe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc385 unwind label %bb.bx ; 3 uses

.noexc385:                                        ; preds = %.noexc.i384
  store ptr %i.qe, ptr %32, align 8, !tbaa !37
  %i.qf = load i64, ptr %i.e, align 8, !tbaa !54  ; 3 uses
  store i64 %i.qf, ptr %i.qd, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.qe, ptr noundef nonnull align 1 dereferenceable(42) @.str.356, i64 42, i1 false)
  %i.qg = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.qf, ptr %i.qg, align 8, !tbaa !53
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qf
  store i8 0, ptr %i.qh, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.nw, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bn unwind label %bb.by

bb.bn:                                            ; preds = %.noexc385
  %i.qi = load ptr, ptr %32, align 8, !tbaa !37   ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.qd
  br i1 %i.qj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %bb.bn
  %i.qk = load i64, ptr %i.qd, align 8, !tbaa !32
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.qm = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 10 uses
  store ptr %i.qm, ptr %33, align 8, !tbaa !31
  %i.qn = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 10 uses
  store i64 0, ptr %i.qn, align 8, !tbaa !53
  store i8 0, ptr %i.qm, align 8, !tbaa !32
  %i.qo = load i8, ptr %i.qa, align 1, !tbaa !130, !range !58, !noundef !59
  %i.qp = trunc nuw i8 %i.qo to i1
  %i.qq = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  br i1 %i.qp, label %bb.bo, label %bb.bz

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  %i.qr = load ptr, ptr %31, align 8, !tbaa !37, !noalias !2156
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !53, !noalias !2156 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 10 uses
  store ptr %i.qt, ptr %34, align 8, !tbaa !31, !alias.scope !2157
  %i.qu = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 8 uses
  store i64 0, ptr %i.qu, align 8, !tbaa !53, !alias.scope !2157
  store i8 0, ptr %i.qt, align 8, !tbaa !32, !alias.scope !2157
  %i.qv = add i64 %i.qs, 44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef %i.qv)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qw = load i64, ptr %i.qu, align 8, !tbaa !53, !alias.scope !2157
  %i.qx = add i64 %i.qw, -4611686018427387860
  %i.qy = icmp ult i64 %i.qx, 44
  br i1 %i.qy, label %.invoke.i.i396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i393: ; preds = %bb.bp
  %i.qz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.611, i64 noundef 44)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i394 unwind label %bb.bq ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i394: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i393
  %i.ra = load i64, ptr %i.qu, align 8, !tbaa !53, !alias.scope !2157
  %i.rb = sub i64 4611686018427387903, %i.ra
  %i.rc = icmp ult i64 %i.rb, %i.qs
  br i1 %i.rc, label %.invoke.i.i396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i395

.invoke.i.i396:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i394, %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i.i397 unwind label %bb.bq

.cont.i.i397:                                     ; preds = %.invoke.i.i396
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i394
  %i.rd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.qr, i64 noundef %i.qs)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit400 unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i395, %.invoke.i.i396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i393, %bb.bo
  %i.re = landingpad { ptr, i32 }
          cleanup
  %i.rf = load ptr, ptr %34, align 8, !tbaa !37, !alias.scope !2157 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.qt
  br i1 %i.rg, label %.body398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i390: ; preds = %bb.bq
  %i.rh = load i64, ptr %i.qt, align 8, !tbaa !32, !alias.scope !2157
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #27
  br label %.body398

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit400: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i395
  %i.rj = load ptr, ptr %33, align 8, !tbaa !37   ; 6 uses
  %i.rk = icmp eq ptr %i.rj, %i.qm
  %i.rl = load ptr, ptr %34, align 8, !tbaa !37   ; 5 uses
  %i.rm = icmp eq ptr %i.rl, %i.qt                ; 2 uses
  br i1 %i.rk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit400
  br i1 %i.rm, label %bb.br, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit400
  br i1 %i.rm, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.rn = load i64, ptr %i.qu, align 8, !tbaa !53 ; 3 uses
  %i.ro = icmp ult i64 %i.rn, 16
  call void @llvm.assume(i1 %i.ro)
  switch i64 %i.rn, label %bb.bt [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  %i.rp = load i8, ptr %i.rl, align 1, !tbaa !32
  store i8 %i.rp, ptr %i.rj, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rj, ptr align 1 %i.rl, i64 %i.rn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.rq = load i64, ptr %i.qu, align 8, !tbaa !53 ; 2 uses
  store i64 %i.rq, ptr %i.qn, align 8, !tbaa !53
  %i.rr = load ptr, ptr %33, align 8, !tbaa !37
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rq
  store i8 0, ptr %i.rs, align 1, !tbaa !32
  %.pre.i402 = load ptr, ptr %34, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.rl, ptr %33, align 8, !tbaa !37
  %i.rt = load <2 x i64>, ptr %i.qu, align 8, !tbaa !32
  store <2 x i64> %i.rt, ptr %i.qn, align 8, !tbaa !32
  br label %bb.bv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ru = load i64, ptr %i.qm, align 8, !tbaa !32
  store ptr %i.rl, ptr %33, align 8, !tbaa !37
  %i.rv = load <2 x i64>, ptr %i.qu, align 8, !tbaa !32
  store <2 x i64> %i.rv, ptr %i.qn, align 8, !tbaa !32
  %.not.i401 = icmp eq ptr %i.rj, null
  br i1 %.not.i401, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.rj, ptr %34, align 8, !tbaa !37
  store i64 %i.ru, ptr %i.qt, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.qt, ptr %34, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bu, %bb.bv
  %i.rw = phi ptr [ %.pre.i402, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.rj, %bb.bu ], [ %i.qt, %bb.bv ]
  store i64 0, ptr %i.qu, align 8, !tbaa !53
  store i8 0, ptr %i.rw, align 1, !tbaa !32
  %i.rx = load ptr, ptr %34, align 8, !tbaa !37   ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.qt
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.rz = load i64, ptr %i.qt, align 8, !tbaa !32
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.ch

bb.bw:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496

bb.bx:                                            ; preds = %.noexc.i384
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.by:                                            ; preds = %.noexc385
  %i.sd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.se = load ptr, ptr %32, align 8, !tbaa !37   ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.qd
  br i1 %i.sf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.by
  %i.sg = load i64, ptr %i.qd, align 8, !tbaa !32
end_hunk_2
begin_hunk_3_@_ZN11flatbuffers3cpp12CppGenerator13GenVerifyCallERKNS_8FieldDefEPKc:._crit_edge.i.i
  %i.lt = load i64, ptr %i.lm, align 8, !tbaa !32
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.ap:                                            ; preds = %.noexc.i331
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lw = load ptr, ptr %23, align 8, !tbaa !37   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.lm
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %bb.ap
  %i.ly = load i64, ptr %i.lm, align 8, !tbaa !32
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !53
  %i.mc = icmp eq i64 %i.mb, 1
  br i1 %i.mc, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.aq
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !37
  %lhsc = load i8, ptr %i.me, align 1
  %.not = icmp eq i8 %lhsc, 48
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread541, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.aq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 277
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !130, !range !58, !noundef !59
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %.noexc.i341, label %.noexc.i351

.noexc.i341:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.mi = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.mi, ptr %24, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store i64 81, ptr %i.j, align 8, !tbaa !54
  %i.mj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) ; 3 uses
  store ptr %i.mj, ptr %24, align 8, !tbaa !37
  %i.mk = load i64, ptr %i.j, align 8, !tbaa !54  ; 3 uses
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %i.mj, ptr noundef nonnull align 1 dereferenceable(81) @.str.625, i64 81, i1 false)
  %i.ml = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !53
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mk
  store i8 0, ptr %i.mm, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.q, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %.noexc.i341
  %i.mn = load ptr, ptr %24, align 8, !tbaa !37   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.mi
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %bb.ar
  %i.mp = load i64, ptr %i.mi, align 8, !tbaa !32
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.as:                                            ; preds = %.noexc.i341
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ms = load ptr, ptr %24, align 8, !tbaa !37   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.mi
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %bb.as
  %i.mu = load i64, ptr %i.mi, align 8, !tbaa !32
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

.noexc.i351:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.mw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.mw, ptr %25, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store i64 53, ptr %i.i, align 8, !tbaa !54
  %i.mx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) ; 3 uses
  store ptr %i.mx, ptr %25, align 8, !tbaa !37
  %i.my = load i64, ptr %i.i, align 8, !tbaa !54  ; 3 uses
  store i64 %i.my, ptr %i.mw, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.mx, ptr noundef nonnull align 1 dereferenceable(53) @.str.626, i64 53, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !53
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.my
  store i8 0, ptr %i.na, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.q, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.noexc.i351
  %i.nb = load ptr, ptr %25, align 8, !tbaa !37   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.mw
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354: ; preds = %bb.at
  %i.nd = load i64, ptr %i.mw, align 8, !tbaa !32
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.au:                                            ; preds = %.noexc.i351
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ng = load ptr, ptr %25, align 8, !tbaa !37   ; 2 uses
  %i.nh = icmp eq ptr %i.ng, %i.mw
  br i1 %i.nh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %bb.au
  %i.ni = load i64, ptr %i.mw, align 8, !tbaa !32
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread541: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.nk = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.nk, ptr %26, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i64 41, ptr %i.h, align 8, !tbaa !54
  %i.nl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) ; 3 uses
  store ptr %i.nl, ptr %26, align 8, !tbaa !37
  %i.nm = load i64, ptr %i.h, align 8, !tbaa !54  ; 3 uses
  store i64 %i.nm, ptr %i.nk, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.nl, ptr noundef nonnull align 1 dereferenceable(41) @.str.627, i64 41, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.nm, ptr %i.nn, align 8, !tbaa !53
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm
  store i8 0, ptr %i.no, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.q, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread541
  %i.np = load ptr, ptr %26, align 8, !tbaa !37   ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.nk
  br i1 %i.nq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.av
  %i.nr = load i64, ptr %i.nk, align 8, !tbaa !32
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.ns) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.aw:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread541
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %26, align 8, !tbaa !37   ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.nk
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %bb.aw
  %i.nw = load i64, ptr %i.nk, align 8, !tbaa !32
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !53
  %i.oa = icmp eq i64 %i.nz, 2
  br i1 %i.oa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread542

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ax
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !37
  %i.od = load i16, ptr %i.oc, align 1
  %i.oe = icmp ne i16 %i.od, 23899
  %i.of = zext i1 %i.oe to i32
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread542

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2181)
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !333, !noalias !2181 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.om = load i16, ptr %i.ol, align 8, !tbaa !306, !noalias !2181
  store i32 %i.oi, ptr %27, align 8, !tbaa !305, !alias.scope !2181
  %i.on = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 0, ptr %i.on, align 4, !tbaa !333, !alias.scope !2181
  %i.oo = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.op = load ptr, ptr %i.ok, align 8, !tbaa !326, !noalias !2181 ; 2 uses
  %i.oq = load <2 x ptr>, ptr %i.oj, align 8, !tbaa !308, !noalias !2181
  store <2 x ptr> %i.oq, ptr %i.oo, align 8, !tbaa !308, !alias.scope !2181
  %i.or = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i16 %i.om, ptr %i.or, align 8, !tbaa !306, !alias.scope !2181
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 691
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !56, !range !58, !noundef !59
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.ay, label %42

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not.i.i = icmp ne ptr %i.op, null
  %i.ov = add i32 %i.oi, -1
  %i.ow = icmp ult i32 %i.ov, 10
  %i.ox = select i1 %.not.i.i, i1 %i.ow, i1 false
  br i1 %i.ox, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit, label %42

42:                                               ; preds = %bb.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %44 = load i32, ptr %43, align 4, !tbaa !311
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %bb.az, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.az:                                            ; preds = %42
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.oz = load i8, ptr %i.oy, align 8, !tbaa !295, !range !58, !noundef !59
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.ba, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.ba:                                            ; preds = %bb.az
  %.not.i3.i = icmp ne ptr %i.op, null
  %i.pb = add i32 %i.oi, -1
  %i.pc = icmp ult i32 %i.pb, 10
  %i.pd = select i1 %.not.i3.i, i1 %i.pc, i1 false
  br label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit: ; preds = %bb.ay, %42, %bb.az, %bb.ba
  %46 = phi i1 [ true, %bb.ay ], [ false, %bb.az ], [ false, %42 ], [ %i.pd, %bb.ba ]
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 277 ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !130, !range !58, !noundef !59
  %i.pg = trunc nuw i8 %i.pf to i1
  call void @_ZNK11flatbuffers3cpp12CppGenerator11GenTypeWireB5cxx11ERKNS_4TypeEPKcbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(26) %27, ptr noundef nonnull @.str.7, i1 noundef zeroext %46, i1 noundef zeroext %i.pg)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  %i.ph = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 10 uses
  store ptr %i.ph, ptr %29, align 8, !tbaa !31
  %i.pi = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 10 uses
  store i64 0, ptr %i.pi, align 8, !tbaa !53
  store i8 0, ptr %i.ph, align 8, !tbaa !32
  %i.pj = load i8, ptr %i.pe, align 1, !tbaa !130, !range !58, !noundef !59
  %i.pk = trunc nuw i8 %i.pj to i1
  %i.pl = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  br i1 %i.pk, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  %i.pm = load ptr, ptr %28, align 8, !tbaa !37, !noalias !2182
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !53, !noalias !2182 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 10 uses
  store ptr %i.po, ptr %30, align 8, !tbaa !31, !alias.scope !2183
  %i.pp = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 8 uses
  store i64 0, ptr %i.pp, align 8, !tbaa !53, !alias.scope !2183
  store i8 0, ptr %i.po, align 8, !tbaa !32, !alias.scope !2183
  %i.pq = add i64 %i.pn, 33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %i.pq)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !53, !alias.scope !2183
  %i.ps = add i64 %i.pr, -4611686018427387871
  %i.pt = icmp ult i64 %i.ps, 33
  br i1 %i.pt, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bc
  %i.pu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.628, i64 noundef 33)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.bd ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.pv = load i64, ptr %i.pp, align 8, !tbaa !53, !alias.scope !2183
  %i.pw = sub i64 4611686018427387903, %i.pv
  %i.px = icmp ult i64 %i.pw, %i.pn
  br i1 %i.px, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i.i unwind label %bb.bd

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.py = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.pm, i64 noundef %i.pn)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.bb
  %i.pz = landingpad { ptr, i32 }
          cleanup
  %i.qa = load ptr, ptr %30, align 8, !tbaa !37, !alias.scope !2183 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.po
  br i1 %i.qb, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bd
  %i.qc = load i64, ptr %i.po, align 8, !tbaa !32, !alias.scope !2183
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qd) #27
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.qe = load ptr, ptr %29, align 8, !tbaa !37   ; 6 uses
  %i.qf = icmp eq ptr %i.qe, %i.ph
  %i.qg = load ptr, ptr %30, align 8, !tbaa !37   ; 5 uses
  %i.qh = icmp eq ptr %i.qg, %i.po                ; 2 uses
  br i1 %i.qf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.qh, label %bb.be, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  br i1 %i.qh, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.qi = load i64, ptr %i.pp, align 8, !tbaa !53 ; 3 uses
  %i.qj = icmp ult i64 %i.qi, 16
  call void @llvm.assume(i1 %i.qj)
  switch i64 %i.qi, label %bb.bg [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  %i.qk = load i8, ptr %i.qg, align 1, !tbaa !32
  store i8 %i.qk, ptr %i.qe, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qe, ptr align 1 %i.qg, i64 %i.qi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ql = load i64, ptr %i.pp, align 8, !tbaa !53 ; 2 uses
  store i64 %i.ql, ptr %i.pi, align 8, !tbaa !53
  %i.qm = load ptr, ptr %29, align 8, !tbaa !37
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.ql
  store i8 0, ptr %i.qn, align 1, !tbaa !32
  %.pre.i = load ptr, ptr %30, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.qg, ptr %29, align 8, !tbaa !37
  %i.qo = load <2 x i64>, ptr %i.pp, align 8, !tbaa !32
  store <2 x i64> %i.qo, ptr %i.pi, align 8, !tbaa !32
  br label %bb.bi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.qp = load i64, ptr %i.ph, align 8, !tbaa !32
  store ptr %i.qg, ptr %29, align 8, !tbaa !37
  %i.qq = load <2 x i64>, ptr %i.pp, align 8, !tbaa !32
  store <2 x i64> %i.qq, ptr %i.pi, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.qe, null
  br i1 %.not.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.qe, ptr %30, align 8, !tbaa !37
  store i64 %i.qp, ptr %i.po, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.po, ptr %30, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bh, %bb.bi
  %i.qr = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.qe, %bb.bh ], [ %i.po, %bb.bi ]
  store i64 0, ptr %i.pp, align 8, !tbaa !53
  store i8 0, ptr %i.qr, align 1, !tbaa !32
  %i.qs = load ptr, ptr %30, align 8, !tbaa !37   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.po
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.qu = load i64, ptr %i.po, align 8, !tbaa !32
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.br

.body:                                            ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

bb.bj:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  %i.qw = load ptr, ptr %28, align 8, !tbaa !37, !noalias !2184
  %i.qx = load i64, ptr %i.pl, align 8, !tbaa !53, !noalias !2184 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 10 uses
  store ptr %i.qy, ptr %31, align 8, !tbaa !31, !alias.scope !2185
  %i.qz = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 8 uses
  store i64 0, ptr %i.qz, align 8, !tbaa !53, !alias.scope !2185
  store i8 0, ptr %i.qy, align 8, !tbaa !32, !alias.scope !2185
  %i.ra = add i64 %i.qx, 31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef %i.ra)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.rb = load i64, ptr %i.qz, align 8, !tbaa !53, !alias.scope !2185
  %i.rc = add i64 %i.rb, -4611686018427387873
  %i.rd = icmp ult i64 %i.rc, 31
  br i1 %i.rd, label %.invoke.i.i379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i376: ; preds = %bb.bk
  %i.re = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.629, i64 noundef 31)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i377 unwind label %bb.bl ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i377: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i376
  %i.rf = load i64, ptr %i.qz, align 8, !tbaa !53, !alias.scope !2185
  %i.rg = sub i64 4611686018427387903, %i.rf
  %i.rh = icmp ult i64 %i.rg, %i.qx
  br i1 %i.rh, label %.invoke.i.i379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i378

.invoke.i.i379:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i377, %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i.i380 unwind label %bb.bl

.cont.i.i380:                                     ; preds = %.invoke.i.i379
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i377
  %i.ri = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef %i.qw, i64 noundef %i.qx)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit383 unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i378, %.invoke.i.i379, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i376, %bb.bj
  %i.rj = landingpad { ptr, i32 }
          cleanup
  %i.rk = load ptr, ptr %31, align 8, !tbaa !37, !alias.scope !2185 ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.qy
  br i1 %i.rl, label %.body381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i373: ; preds = %bb.bl
  %i.rm = load i64, ptr %i.qy, align 8, !tbaa !32, !alias.scope !2185
end_hunk_3
begin_hunk_4_@_ZN11flatbuffers3cpp12CppGenerator8GenParamERKNS_8FieldDefEbPKc:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

bb.m:                                             ; preds = %.noexc131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bi
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.m
  %i.db = load i64, ptr %i.bi, align 8, !tbaa !32
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.dd = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bf
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.df = load i64, ptr %i.bf, align 8, !tbaa !32
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

bb.n:                                             ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !333, !noalias !2441 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !321, !noalias !2441 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !326, !noalias !2441 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.do = load i16, ptr %i.dn, align 8, !tbaa !306, !noalias !2441
  store i32 %i.di, ptr %12, align 8, !tbaa !305, !alias.scope !2441
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 0, ptr %i.dp, align 4, !tbaa !333, !alias.scope !2441
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.dq, align 8, !tbaa !321, !alias.scope !2441
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.dm, ptr %i.dr, align 8, !tbaa !326, !alias.scope !2441
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %i.do, ptr %i.ds, align 8, !tbaa !306, !alias.scope !2441
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  store ptr %i.dt, ptr %13, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 9 uses
  store i64 0, ptr %i.du, align 8, !tbaa !53
  store i8 0, ptr %i.dt, align 8, !tbaa !32
  %i.dv = icmp eq i32 %i.di, 15
  br i1 %i.dv, label %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit, label %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread

_ZN11flatbuffers8IsStructERKNS_4TypeE.exit:       ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 272
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !247, !range !58, !noundef !59
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %._crit_edge.i.i164, label %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread

._crit_edge.i.i164:                               ; preds = %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.dz, ptr %15, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ea, align 8, !tbaa !53
  store i8 0, ptr %i.dz, align 8, !tbaa !32
  invoke void @_ZNK11flatbuffers13BaseGenerator15WrapInNameSpaceERKNS_10DefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %._crit_edge.i.i164
  %i.eb = load ptr, ptr %13, align 8, !tbaa !37   ; 6 uses
  %i.ec = icmp eq ptr %i.eb, %i.dt
  %i.ed = load ptr, ptr %14, align 8, !tbaa !37   ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee                ; 2 uses
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.ef, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.ef, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !53 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  switch i64 %i.eh, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !32
  store i8 %i.ej, ptr %i.eb, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.ed, i64 %i.eh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.ek = load i64, ptr %i.eg, align 8, !tbaa !53 ; 2 uses
  store i64 %i.ek, ptr %i.du, align 8, !tbaa !53
  %i.el = load ptr, ptr %13, align 8, !tbaa !37
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1, !tbaa !32
  %.pre.i = load ptr, ptr %14, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ed, ptr %13, align 8, !tbaa !37
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.eo = load <2 x i64>, ptr %i.en, align 8, !tbaa !32
  store <2 x i64> %i.eo, ptr %i.du, align 8, !tbaa !32
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ep = load i64, ptr %i.dt, align 8, !tbaa !32
  store ptr %i.ed, ptr %13, align 8, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.er = load <2 x i64>, ptr %i.eq, align 8, !tbaa !32
  store <2 x i64> %i.er, ptr %i.du, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.eb, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.eb, ptr %14, align 8, !tbaa !37
  store i64 %i.ep, ptr %i.ee, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ee, ptr %14, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.es = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.eb, %bb.s ], [ %i.ee, %bb.t ]
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.et, align 8, !tbaa !53
  store i8 0, ptr %i.es, align 1, !tbaa !32
  %i.eu = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !32
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  %i.ez = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.dz
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.fb = load i64, ptr %i.dz, align 8, !tbaa !32
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.af

bb.u:                                             ; preds = %._crit_edge.i.i164
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.dz
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.u
  %i.fg = load i64, ptr %i.dz, align 8, !tbaa !32
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ax

_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread: ; preds = %bb.n, %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 691
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !56, !range !58, !noundef !59
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.v, label %33

bb.v:                                             ; preds = %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread
  %.not.i.i = icmp ne ptr %i.dm, null
  %i.fl = add i32 %i.di, -1
  %i.fm = icmp ult i32 %i.fl, 10
  %i.fn = and i1 %i.fm, %.not.i.i
  br i1 %i.fn, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit, label %33

33:                                               ; preds = %bb.v, %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %35 = load i32, ptr %34, align 4, !tbaa !311
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %bb.w, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.w:                                             ; preds = %33
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !295, !range !58, !noundef !59
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.x, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.x:                                             ; preds = %bb.w
  %.not.i3.i = icmp ne ptr %i.dm, null
  %i.fr = add i32 %i.di, -1
  %i.fs = icmp ult i32 %i.fr, 10
  %i.ft = and i1 %i.fs, %.not.i3.i
  br label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit: ; preds = %bb.x, %bb.w, %33, %bb.v
  %37 = phi i1 [ true, %bb.v ], [ false, %bb.w ], [ false, %33 ], [ %i.ft, %bb.x ]
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 277
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !130, !range !58, !noundef !59
  %i.fw = trunc nuw i8 %i.fv to i1
  invoke void @_ZNK11flatbuffers3cpp12CppGenerator11GenTypeWireB5cxx11ERKNS_4TypeEPKcbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(1649) %0, ptr noundef nonnull align 8 dereferenceable(26) %12, ptr noundef nonnull @.str.7, i1 noundef zeroext %37, i1 noundef zeroext %i.fw)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  %i.fx = load ptr, ptr %13, align 8, !tbaa !37   ; 6 uses
  %i.fy = icmp eq ptr %i.fx, %i.dt
  %i.fz = load ptr, ptr %16, align 8, !tbaa !37   ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga                ; 2 uses
  br i1 %i.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i182: ; preds = %bb.y
  br i1 %i.gb, label %bb.z, label %.thread.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i177: ; preds = %bb.y
  br i1 %i.gb, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i178

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i182
  %i.gc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !53 ; 3 uses
  %i.ge = icmp ult i64 %i.gd, 16
  call void @llvm.assume(i1 %i.ge)
  switch i64 %i.gd, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i180
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gf = load i8, ptr %i.fz, align 1, !tbaa !32
  store i8 %i.gf, ptr %i.fx, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i180

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr align 1 %i.fz, i64 %i.gd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i180: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !53 ; 2 uses
  store i64 %i.gg, ptr %i.du, align 8, !tbaa !53
  %i.gh = load ptr, ptr %13, align 8, !tbaa !37
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  store i8 0, ptr %i.gi, align 1, !tbaa !32
  %.pre.i181 = load ptr, ptr %16, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit184

.thread.i183:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i182
  store ptr %i.fz, ptr %13, align 8, !tbaa !37
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gk = load <2 x i64>, ptr %i.gj, align 8, !tbaa !32
  store <2 x i64> %i.gk, ptr %i.du, align 8, !tbaa !32
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i178: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i177
  %i.gl = load i64, ptr %i.dt, align 8, !tbaa !32
  store ptr %i.fz, ptr %13, align 8, !tbaa !37
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gn = load <2 x i64>, ptr %i.gm, align 8, !tbaa !32
  store <2 x i64> %i.gn, ptr %i.du, align 8, !tbaa !32
  %.not.i179 = icmp eq ptr %i.fx, null
  br i1 %.not.i179, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i178
  store ptr %i.fx, ptr %16, align 8, !tbaa !37
  store i64 %i.gl, ptr %i.ga, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit184

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i178, %.thread.i183
  store ptr %i.ga, ptr %16, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i180, %bb.ac, %bb.ad
  %i.go = phi ptr [ %.pre.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i180 ], [ %i.fx, %bb.ac ], [ %i.ga, %bb.ad ]
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.gp, align 8, !tbaa !53
  store i8 0, ptr %i.go, align 1, !tbaa !32
  %i.gq = load ptr, ptr %16, align 8, !tbaa !37   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit184
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !32
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.ax

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.gw = load i32, ptr %12, align 8, !tbaa !305
  %.not.i188 = icmp eq i32 %i.gw, 15
  br i1 %.not.i188, label %bb.ag, label %._crit_edge.i.i218

bb.ag:                                            ; preds = %bb.af
  %i.gx = load ptr, ptr %i.dq, align 8, !tbaa !321 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 248
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !110 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 256
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !110 ; 2 uses
  %.not1314.i = icmp eq ptr %i.gz, %i.hb
  br i1 %.not1314.i, label %._crit_edge.i.i218, label %.lr.ph.i

bb.ah:                                            ; preds = %.lr.ph.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.hc, %i.hb
  br i1 %.not13.i, label %._crit_edge.i.i218, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %bb.ah
  %.sroa.09.015.i = phi ptr [ %i.hc, %bb.ah ], [ %i.gz, %bb.ag ] ; 2 uses
  %i.hd = load ptr, ptr %.sroa.09.015.i, align 8, !tbaa !112
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 273
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !312, !range !58, !noundef !59
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %_ZN11flatbuffers3cpp12CppGenerator10TypeHasKeyERKNS_4TypeE.exit, label %bb.ah

_ZN11flatbuffers3cpp12CppGenerator10TypeHasKeyERKNS_4TypeE.exit: ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.hh, ptr %17, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hh, ptr noundef nonnull align 1 dereferenceable(10) @.str.683, i64 10, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 10, ptr %i.hi, align 8, !tbaa !53
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 26
  store i8 0, ptr %i.hj, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  %i.hk = load ptr, ptr %13, align 8, !tbaa !37, !noalias !2442
  %i.hl = load i64, ptr %i.du, align 8, !tbaa !53, !noalias !2442 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.hm, ptr %19, align 8, !tbaa !31, !alias.scope !2443
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 0, ptr %i.hn, align 8, !tbaa !53, !alias.scope !2443
  store i8 0, ptr %i.hm, align 8, !tbaa !32, !alias.scope !2443
  %i.ho = add i64 %i.hl, 12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.ho)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %_ZN11flatbuffers3cpp12CppGenerator10TypeHasKeyERKNS_4TypeE.exit
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !53, !alias.scope !2443
  %i.hq = add i64 %i.hp, -4611686018427387892
  %i.hr = icmp ult i64 %i.hq, 12
  br i1 %i.hr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.hs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.500, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.aj ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ht = load i64, ptr %i.hn, align 8, !tbaa !53, !alias.scope !2443
  %i.hu = sub i64 4611686018427387903, %i.ht
  %i.hv = icmp ult i64 %i.hu, %i.hl
  br i1 %i.hv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i.i unwind label %bb.aj

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.hw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.hk, i64 noundef %i.hl)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZN11flatbuffers3cpp12CppGenerator10TypeHasKeyERKNS_4TypeE.exit
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %19, align 8, !tbaa !37, !alias.scope !2443 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hm
  br i1 %i.hz, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  %i.ia = load i64, ptr %i.hn, align 8, !tbaa !53, !noalias !2444
  %i.ib = add i64 %i.ia, -4611686018427387901
  %i.ic = icmp ult i64 %i.ib, 3
  br i1 %i.ic, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ak:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc195 unwind label %bb.an

.noexc195:                                        ; preds = %bb.ak
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.id = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.686, i64 noundef 3)
          to label %.noexc196 unwind label %bb.an ; 6 uses

.noexc196:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ie = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.ie, ptr %18, align 8, !tbaa !31, !alias.scope !2444
end_hunk_4
begin_hunk_5_@_ZZN11flatbuffers3cpp12CppGenerator11GenBuildersERKNS_9StructDefEENKUlPKNS_8FieldDefEE_clES7_:bb.a
bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !53, !alias.scope !2495
  %i.rd = and i64 %i.rc, -32
  %i.re = icmp eq i64 %i.rd, 4611686018427387872
  br i1 %i.re, label %.invoke.i.i374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i371: ; preds = %bb.cd
  %i.rf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.705, i64 noundef 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i372 unwind label %bb.ce ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i372: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i371
  %i.rg = load i64, ptr %i.ra, align 8, !tbaa !53, !alias.scope !2495
  %i.rh = sub i64 4611686018427387903, %i.rg
  %i.ri = icmp ult i64 %i.rh, %i.qy
  br i1 %i.ri, label %.invoke.i.i374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i373

.invoke.i.i374:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i372, %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i.i375 unwind label %bb.ce

.cont.i.i375:                                     ; preds = %.invoke.i.i374
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i372
  %i.rj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.qw, i64 noundef %i.qy)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit378 unwind label %bb.ce ; 0 uses

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i373, %.invoke.i.i374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367
  %i.rk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rl = load ptr, ptr %34, align 8, !tbaa !37, !alias.scope !2495 ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.qz
  br i1 %i.rm, label %.body376, label %.body376.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit378: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i373
  call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  %i.rn = load i64, ptr %i.ra, align 8, !tbaa !53, !noalias !2496
  %i.ro = and i64 %i.rn, -2
  %i.rp = icmp eq i64 %i.ro, 4611686018427387902
  br i1 %i.rp, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i379

bb.cf:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit378
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc383 unwind label %bb.ck

.noexc383:                                        ; preds = %bb.cf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i379: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit378
  %i.rq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.701, i64 noundef 2)
          to label %.noexc384 unwind label %bb.ck ; 6 uses

.noexc384:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i379
  %i.rr = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  store ptr %i.rr, ptr %33, align 8, !tbaa !31, !alias.scope !2496
  %i.rs = load ptr, ptr %i.rq, align 8, !tbaa !37 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 16 ; 5 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

bb.cg:                                            ; preds = %.noexc384
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !53 ; 3 uses
  %i.rx = icmp ult i64 %i.rw, 16
  call void @llvm.assume(i1 %i.rx)
  %i.ry = add nuw nsw i64 %i.rw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rr, ptr noundef nonnull align 8 dereferenceable(1) %i.rt, i64 %i.ry, i1 false)
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %.noexc384
  store ptr %i.rs, ptr %33, align 8, !tbaa !37, !alias.scope !2496
  %i.rz = load i64, ptr %i.rt, align 8, !tbaa !32
  store i64 %i.rz, ptr %i.rr, align 8, !tbaa !32, !alias.scope !2496
  %.phi.trans.insert.i381 = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %.pre.i382 = load i64, ptr %.phi.trans.insert.i381, align 8, !tbaa !53
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380, %bb.cg
  %i.sa = phi i64 [ %i.rw, %bb.cg ], [ %.pre.i382, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380 ]
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sc = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.sa, ptr %i.sc, align 8, !tbaa !53, !alias.scope !2496
  store ptr %i.rt, ptr %i.rq, align 8, !tbaa !37
  store i64 0, ptr %i.sb, align 8, !tbaa !53
  store i8 0, ptr %i.rt, align 8, !tbaa !32
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.j, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.ci unwind label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.sd = load ptr, ptr %33, align 8, !tbaa !37   ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.rr
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.ci
  %i.sf = load i64, ptr %i.rr, align 8, !tbaa !32
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386
  %i.sh = load ptr, ptr %34, align 8, !tbaa !37   ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.qz
  br i1 %i.si, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388
  %i.sj = load i64, ptr %i.qz, align 8, !tbaa !32
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.sl = load ptr, ptr %31, align 8, !tbaa !37   ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.sn = icmp eq ptr %i.sl, %i.sm
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391
  %i.so = load i64, ptr %i.sm, align 8, !tbaa !32
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef %i.sp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.dr

bb.cj:                                            ; preds = %._crit_edge.i.i361
  %i.sq = landingpad { ptr, i32 }
          cleanup
  %i.sr = load ptr, ptr %32, align 8, !tbaa !37   ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.qq
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %bb.cj
  %i.st = load i64, ptr %i.qq, align 8, !tbaa !32
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i379, %bb.cf
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

bb.cl:                                            ; preds = %bb.ch
  %i.sw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sx = load ptr, ptr %33, align 8, !tbaa !37   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.rr
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.cl
  %i.sz = load i64, ptr %i.rr, align 8, !tbaa !32
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398, %bb.ck
  %.pn96 = phi { ptr, i32 } [ %i.sv, %bb.ck ], [ %i.sw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398 ], [ %i.sw, %bb.cl ] ; 2 uses
  %i.tb = load ptr, ptr %34, align 8, !tbaa !37   ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.qz
  br i1 %i.tc, label %.body376, label %.body376.sink.split

.body376.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %bb.ce
  %.sink681 = phi ptr [ %i.rl, %bb.ce ], [ %i.tb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ]
  %.pn96.pn.ph = phi { ptr, i32 } [ %i.rk, %bb.ce ], [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ]
  %i.td = load i64, ptr %i.qz, align 8, !tbaa !32
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %.sink681, i64 noundef %i.te) #27
  br label %.body376

.body376:                                         ; preds = %.body376.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %bb.ce
  %.pn96.pn = phi { ptr, i32 } [ %i.rk, %bb.ce ], [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ %.pn96.pn.ph, %.body376.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.tf = load ptr, ptr %31, align 8, !tbaa !37   ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %.body376
  %i.ti = load i64, ptr %i.tg, align 8, !tbaa !32
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.tj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %.body376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397
  %.pn96.pn.pn = phi { ptr, i32 } [ %i.sq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397 ], [ %.pn96.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %.pn96.pn, %.body376 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467

_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread.thread: ; preds = %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i280, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %i.tk = getelementptr inbounds nuw i8, ptr %i.f, i64 691
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !56, !range !58, !noundef !59
  %i.tm = trunc nuw i8 %i.tl to i1
  br i1 %i.tm, label %bb.cm, label %49

bb.cm:                                            ; preds = %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread.thread
  %.not.i.i = icmp ne ptr %i.kh, null
  %i.tn = add i32 %i.kd, -1
  %i.to = icmp ult i32 %i.tn, 10
  %i.tp = and i1 %i.to, %.not.i.i
  br i1 %i.tp, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit, label %49

49:                                               ; preds = %bb.cm, %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.thread.thread
  %50 = getelementptr inbounds nuw i8, ptr %i.f, i64 1468
  %51 = load i32, ptr %50, align 4, !tbaa !311
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %bb.cn, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.cn:                                            ; preds = %49
  %i.tq = getelementptr inbounds nuw i8, ptr %i.f, i64 1472
  %i.tr = load i8, ptr %i.tq, align 8, !tbaa !295, !range !58, !noundef !59
  %i.ts = trunc nuw i8 %i.tr to i1
  br i1 %i.ts, label %bb.co, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

bb.co:                                            ; preds = %bb.cn
  %.not.i3.i = icmp ne ptr %i.kh, null
  %i.tt = add i32 %i.kd, -1
  %i.tu = icmp ult i32 %i.tt, 10
  %i.tv = and i1 %i.tu, %.not.i3.i
  br label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit

_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit: ; preds = %bb.co, %bb.cn, %49, %bb.cm
  %53 = phi i1 [ true, %bb.cm ], [ false, %bb.cn ], [ false, %49 ], [ %i.tv, %bb.co ]
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 277 ; 3 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !130, !range !58, !noundef !59
  %i.ty = trunc nuw i8 %i.tx to i1
  invoke void @_ZNK11flatbuffers3cpp12CppGenerator11GenTypeWireB5cxx11ERKNS_4TypeEPKcbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(1649) %i.f, ptr noundef nonnull align 8 dereferenceable(26) %18, ptr noundef nonnull @.str.7, i1 noundef zeroext %53, i1 noundef zeroext %i.ty)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  %i.tz = load i32, ptr %i.x, align 8, !tbaa !317
  %i.ua = icmp eq i32 %i.tz, 18
  br i1 %i.ua, label %bb.cq, label %bb.cw

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.706, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.j, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.ub = load ptr, ptr %36, align 8, !tbaa !37   ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407: ; preds = %bb.cs
  %i.ue = load i64, ptr %i.uc, align 8, !tbaa !32
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.dp

bb.ct:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454

bb.cu:                                            ; preds = %bb.cq
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

bb.cv:                                            ; preds = %bb.cr
  %i.ui = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uj = load ptr, ptr %36, align 8, !tbaa !37   ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ul = icmp eq ptr %i.uj, %i.uk
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %bb.cv
  %i.um = load i64, ptr %i.uk, align 8, !tbaa !32
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.un) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410, %bb.cu
  %.pn90 = phi { ptr, i32 } [ %i.uh, %bb.cu ], [ %i.ui, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410 ], [ %i.ui, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.dq

bb.cw:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.707, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.cx unwind label %bb.dg

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  %i.uo = load i8, ptr %i.tw, align 1, !tbaa !130, !range !58, !noundef !59
  %i.up = trunc nuw i8 %i.uo to i1
  %i.uq = select i1 %i.up, ptr @.str.367, ptr @.str.7
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull %i.uq, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.cy unwind label %bb.dh

bb.cy:                                            ; preds = %bb.cx
  %i.ur = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(477) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %.noexc413 unwind label %bb.di

.noexc413:                                        ; preds = %bb.cy
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ur, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit415 unwind label %bb.di

_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit415: ; preds = %.noexc413
  %i.us = load ptr, ptr %40, align 8, !tbaa !37   ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.uu = icmp eq ptr %i.us, %i.ut
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit415
  %i.uv = load i64, ptr %i.ut, align 8, !tbaa !32
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  %i.ux = load ptr, ptr %38, align 8, !tbaa !37   ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %i.va = load i64, ptr %i.uy, align 8, !tbaa !32
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.vb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.708, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.cz unwind label %bb.dj

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  %i.vc = load i8, ptr %i.tw, align 1, !tbaa !130, !range !58, !noundef !59
  %i.vd = trunc nuw i8 %i.vc to i1                ; 3 uses
  br i1 %i.vd, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.361, ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.dc unwind label %bb.dk

bb.db:                                            ; preds = %bb.cz
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.dc unwind label %bb.dk

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ve = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(477) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %.noexc422 unwind label %bb.dl

.noexc422:                                        ; preds = %bb.dc
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ve, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit424 unwind label %bb.dl

_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit424: ; preds = %.noexc422
  %i.vf = load ptr, ptr %44, align 8, !tbaa !37   ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.vh = icmp eq ptr %i.vf, %i.vg
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit424
  %i.vi = load i64, ptr %i.vg, align 8, !tbaa !32
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %_ZN11flatbuffers10CodeWriter8SetValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit424, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425
  br i1 %i.vd, label %bb.dd, label %.critedge

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  %i.vk = load ptr, ptr %42, align 8, !tbaa !37   ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.vm = icmp eq ptr %i.vk, %i.vl
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %.critedge
  %i.vn = load i64, ptr %i.vl, align 8, !tbaa !32
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @.str.709, ptr noundef nonnull align 1 dereferenceable(1) %47)
          to label %bb.de unwind label %bb.dn

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  invoke void @_ZN11flatbuffers10CodeWriterpLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(477) %i.j, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.df unwind label %bb.do

bb.df:                                            ; preds = %bb.de
  %i.vp = load ptr, ptr %46, align 8, !tbaa !37   ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.vr = icmp eq ptr %i.vp, %i.vq
  br i1 %i.vr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %bb.df
  %i.vs = load i64, ptr %i.vq, align 8, !tbaa !32
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  br label %bb.dp

end_hunk_5
begin_hunk_6_@_ZN11flatbuffers3cpp12CppGenerator14GenCreateParamB5cxx11ERKNS_8FieldDefE:._crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1256
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  %i.bji = load ptr, ptr %63, align 8, !tbaa !37  ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.bjk = icmp eq ptr %i.bji, %i.bjj
  br i1 %i.bjk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258
  %i.bjl = load i64, ptr %i.bjj, align 8, !tbaa !32
  %i.bjm = add i64 %i.bjl, 1
  call void @_ZdlPvm(ptr noundef %i.bji, i64 noundef %i.bjm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1259
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #28
  %i.bjn = load ptr, ptr %62, align 8, !tbaa !37  ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.bjp = icmp eq ptr %i.bjn, %i.bjo
  br i1 %i.bjp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1261
  %i.bjq = load i64, ptr %i.bjo, align 8, !tbaa !32
  %i.bjr = add i64 %i.bjq, 1
  call void @_ZdlPvm(ptr noundef %i.bjn, i64 noundef %i.bjr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1262
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit720

bb.ka:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1194, %bb.jk
  %i.bjs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279

bb.kb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1202, %bb.jn
  %i.bjt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276

bb.kc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1210, %bb.jq
  %i.bju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273

bb.kd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1218, %bb.jt
  %i.bjv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270

bb.ke:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1226, %bb.jw
  %i.bjw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267

bb.kf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1234, %bb.jz
  %i.bjx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bjy = load ptr, ptr %70, align 8, !tbaa !37  ; 2 uses
  %i.bjz = icmp eq ptr %i.bjy, %i.bho
  br i1 %i.bjz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265: ; preds = %bb.kf
  %i.bka = load i64, ptr %i.bho, align 8, !tbaa !32
  %i.bkb = add i64 %i.bka, 1
  call void @_ZdlPvm(ptr noundef %i.bjy, i64 noundef %i.bkb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267: ; preds = %bb.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265, %bb.ke
  %.pn267 = phi { ptr, i32 } [ %i.bjw, %bb.ke ], [ %i.bjx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1265 ], [ %i.bjx, %bb.kf ] ; 2 uses
  %i.bkc = load ptr, ptr %71, align 8, !tbaa !37  ; 2 uses
  %i.bkd = icmp eq ptr %i.bkc, %i.bgy
  br i1 %i.bkd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267
  %i.bke = load i64, ptr %i.bgy, align 8, !tbaa !32
  %i.bkf = add i64 %i.bke, 1
  call void @_ZdlPvm(ptr noundef %i.bkc, i64 noundef %i.bkf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1268, %bb.kd
  %.pn267.pn = phi { ptr, i32 } [ %i.bjv, %bb.kd ], [ %.pn267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1268 ], [ %.pn267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267 ] ; 2 uses
  %i.bkg = load ptr, ptr %72, align 8, !tbaa !37  ; 2 uses
  %i.bkh = icmp eq ptr %i.bkg, %i.bgg
  br i1 %i.bkh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270
  %i.bki = load i64, ptr %i.bgg, align 8, !tbaa !32
  %i.bkj = add i64 %i.bki, 1
  call void @_ZdlPvm(ptr noundef %i.bkg, i64 noundef %i.bkj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1271, %bb.kc
  %.pn267.pn.pn = phi { ptr, i32 } [ %i.bju, %bb.kc ], [ %.pn267.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1271 ], [ %.pn267.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1270 ] ; 2 uses
  %i.bkk = load ptr, ptr %73, align 8, !tbaa !37  ; 2 uses
  %i.bkl = icmp eq ptr %i.bkk, %i.bfq
  br i1 %i.bkl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273
  %i.bkm = load i64, ptr %i.bfq, align 8, !tbaa !32
  %i.bkn = add i64 %i.bkm, 1
  call void @_ZdlPvm(ptr noundef %i.bkk, i64 noundef %i.bkn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1274, %bb.kb
  %.pn267.pn.pn.pn = phi { ptr, i32 } [ %i.bjt, %bb.kb ], [ %.pn267.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1274 ], [ %.pn267.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273 ] ; 2 uses
  %i.bko = load ptr, ptr %74, align 8, !tbaa !37  ; 2 uses
  %i.bkp = icmp eq ptr %i.bko, %i.bey
  br i1 %i.bkp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1277: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276
  %i.bkq = load i64, ptr %i.bey, align 8, !tbaa !32
  %i.bkr = add i64 %i.bkq, 1
  call void @_ZdlPvm(ptr noundef %i.bko, i64 noundef %i.bkr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1277, %bb.ka
  %.pn267.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bjs, %bb.ka ], [ %.pn267.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1277 ], [ %.pn267.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276 ] ; 2 uses
  %i.bks = load ptr, ptr %75, align 8, !tbaa !37  ; 2 uses
  %i.bkt = icmp eq ptr %i.bks, %i.beg
  br i1 %i.bkt, label %.body1191, label %.body1191.sink.split

.body1191.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279, %bb.jj
  %.sink2920 = phi ptr [ %i.bes, %bb.jj ], [ %i.bks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279 ]
  %.pn267.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ber, %bb.jj ], [ %.pn267.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279 ]
  %i.bku = load i64, ptr %i.beg, align 8, !tbaa !32
  %i.bkv = add i64 %i.bku, 1
  call void @_ZdlPvm(ptr noundef %.sink2920, i64 noundef %i.bkv) #27
  br label %.body1191

.body1191:                                        ; preds = %.body1191.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279, %bb.jj
  %.pn267.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ber, %bb.jj ], [ %.pn267.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1279 ], [ %.pn267.pn.pn.pn.pn.pn.ph, %.body1191.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #28
  br label %bb.kg

bb.kg:                                            ; preds = %.body1191, %.body1123
  %.pn267.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn267.pn.pn.pn.pn.pn, %.body1191 ], [ %.pn263.pn.pn, %.body1123 ] ; 2 uses
  %i.bkw = load ptr, ptr %64, align 8, !tbaa !37  ; 2 uses
  %i.bkx = icmp eq ptr %i.bkw, %i.ayw
  br i1 %i.bkx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1283: ; preds = %bb.kg
  %i.bky = load i64, ptr %i.ayw, align 8, !tbaa !32
  %i.bkz = add i64 %i.bky, 1
  call void @_ZdlPvm(ptr noundef %i.bkw, i64 noundef %i.bkz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285: ; preds = %bb.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1283, %.body1101
  %.pn267.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn261, %.body1101 ], [ %.pn267.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1283 ], [ %.pn267.pn.pn.pn.pn.pn.pn, %bb.kg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  %i.bla = load ptr, ptr %63, align 8, !tbaa !37  ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.blc = icmp eq ptr %i.bla, %i.blb
  br i1 %i.blc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285
  %i.bld = load i64, ptr %i.blb, align 8, !tbaa !32
  %i.ble = add i64 %i.bld, 1
  call void @_ZdlPvm(ptr noundef %i.bla, i64 noundef %i.ble) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1286
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #28
  br label %bb.kh

bb.kh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288, %bb.jc
  %.pn267.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn267.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288 ], [ %i.bdi, %bb.jc ] ; 2 uses
  %i.blf = load ptr, ptr %62, align 8, !tbaa !37  ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.blh = icmp eq ptr %i.blf, %i.blg
  br i1 %i.blh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1289: ; preds = %bb.kh
  %i.bli = load i64, ptr %i.blg, align 8, !tbaa !32
  %i.blj = add i64 %i.bli, 1
  call void @_ZdlPvm(ptr noundef %i.blf, i64 noundef %i.blj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1291: ; preds = %bb.kh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1289, %bb.jb
  %.pn267.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bdh, %bb.jb ], [ %.pn267.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1289 ], [ %.pn267.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  br label %bb.on

bb.ki:                                            ; preds = %bb.ci
  %.not336 = icmp eq ptr %i.sz, null
  br i1 %.not336, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit.thread2089, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.blk = getelementptr inbounds nuw i8, ptr %1, i64 691
  %i.bll = load i8, ptr %i.blk, align 1, !tbaa !56, !range !58, !noundef !59
  %i.blm = trunc nuw i8 %i.bll to i1
  %i.bln = add i32 %i.sv, -1
  %i.blo = icmp ult i32 %i.bln, 10
  %or.cond = and i1 %i.blo, %i.blm
  br i1 %or.cond, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit.thread2089, label %132

132:                                              ; preds = %bb.kj
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 1468
  %134 = load i32, ptr %133, align 4, !tbaa !311
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %bb.kk, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit.thread.a

bb.kk:                                            ; preds = %132
  %i.blp = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %i.blq = load i8, ptr %i.blp, align 8, !tbaa !295, !range !58, !noundef !59
  %i.blr = trunc nuw i8 %i.blq to i1
  %i.bls = add i32 %i.sv, -1
  %i.blt = icmp ult i32 %i.bls, 10
  %or.cond2885 = and i1 %i.blt, %i.blr
  br i1 %or.cond2885, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit.thread2089, label %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit.thread.a

_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit.thread.a: ; preds = %132, %bb.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #28
  %i.blu = getelementptr inbounds nuw i8, ptr %i.sz, i64 208
  invoke void @_ZNK11flatbuffers3cpp12CppGenerator12GenTypeBasicB5cxx11ERKNS_4TypeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull align 8 dereferenceable(1649) %1, ptr noundef nonnull align 8 dereferenceable(26) %i.blu, i1 noundef zeroext false)
          to label %bb.kl unwind label %bb.kt

bb.kl:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit.thread.a
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #28
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %82, ptr noundef nonnull @.str.853, ptr noundef nonnull align 8 dereferenceable(32) %76)
          to label %bb.km unwind label %bb.ku

bb.km:                                            ; preds = %bb.kl
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.854)
          to label %bb.kn unwind label %bb.kv

bb.kn:                                            ; preds = %bb.km
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ko unwind label %bb.kw

bb.ko:                                            ; preds = %bb.kn
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @.str.715)
          to label %bb.kp unwind label %bb.kx

bb.kp:                                            ; preds = %bb.ko
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %78, ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.kq unwind label %bb.ky

bb.kq:                                            ; preds = %bb.kp
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %77, ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull @.str.855)
          to label %bb.kr unwind label %bb.kz

bb.kr:                                            ; preds = %bb.kq
  %i.blv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %77)
          to label %bb.ks unwind label %bb.la     ; 0 uses

bb.ks:                                            ; preds = %bb.kr
  %i.blw = load ptr, ptr %77, align 8, !tbaa !37  ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.bly = icmp eq ptr %i.blw, %i.blx
  br i1 %i.bly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1292: ; preds = %bb.ks
  %i.blz = load i64, ptr %i.blx, align 8, !tbaa !32
  %i.bma = add i64 %i.blz, 1
  call void @_ZdlPvm(ptr noundef %i.blw, i64 noundef %i.bma) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1294: ; preds = %bb.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1292
  %i.bmb = load ptr, ptr %78, align 8, !tbaa !37  ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.bmd = icmp eq ptr %i.bmb, %i.bmc
  br i1 %i.bmd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1294
  %i.bme = load i64, ptr %i.bmc, align 8, !tbaa !32
  %i.bmf = add i64 %i.bme, 1
  call void @_ZdlPvm(ptr noundef %i.bmb, i64 noundef %i.bmf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1295
  %i.bmg = load ptr, ptr %79, align 8, !tbaa !37  ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.bmi = icmp eq ptr %i.bmg, %i.bmh
  br i1 %i.bmi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1297
  %i.bmj = load i64, ptr %i.bmh, align 8, !tbaa !32
  %i.bmk = add i64 %i.bmj, 1
  call void @_ZdlPvm(ptr noundef %i.bmg, i64 noundef %i.bmk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1298
  %i.bml = load ptr, ptr %80, align 8, !tbaa !37  ; 2 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.bmn = icmp eq ptr %i.bml, %i.bmm
  br i1 %i.bmn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1300
  %i.bmo = load i64, ptr %i.bmm, align 8, !tbaa !32
  %i.bmp = add i64 %i.bmo, 1
  call void @_ZdlPvm(ptr noundef %i.bml, i64 noundef %i.bmp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1301
  %i.bmq = load ptr, ptr %81, align 8, !tbaa !37  ; 2 uses
  %i.bmr = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.bms = icmp eq ptr %i.bmq, %i.bmr
  br i1 %i.bms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1303
  %i.bmt = load i64, ptr %i.bmr, align 8, !tbaa !32
  %i.bmu = add i64 %i.bmt, 1
  call void @_ZdlPvm(ptr noundef %i.bmq, i64 noundef %i.bmu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1304
  %i.bmv = load ptr, ptr %82, align 8, !tbaa !37  ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.bmx = icmp eq ptr %i.bmv, %i.bmw
  br i1 %i.bmx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1306
  %i.bmy = load i64, ptr %i.bmw, align 8, !tbaa !32
  %i.bmz = add i64 %i.bmy, 1
  call void @_ZdlPvm(ptr noundef %i.bmv, i64 noundef %i.bmz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1307
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28
  %i.bna = load ptr, ptr %76, align 8, !tbaa !37  ; 2 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.bnc = icmp eq ptr %i.bna, %i.bnb
  br i1 %i.bnc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1309
  %i.bnd = load i64, ptr %i.bnb, align 8, !tbaa !32
  %i.bne = add i64 %i.bnd, 1
  call void @_ZdlPvm(ptr noundef %i.bna, i64 noundef %i.bne) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1310
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit720

bb.kt:                                            ; preds = %_ZNK11flatbuffers3cpp12CppGenerator23VectorElementUserFacingERKNS_4TypeE.exit.thread.a
  %i.bnf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1333

bb.ku:                                            ; preds = %bb.kl
  %i.bng = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1330

bb.kv:                                            ; preds = %bb.km
  %i.bnh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1327

bb.kw:                                            ; preds = %bb.kn
  %i.bni = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1324

bb.kx:                                            ; preds = %bb.ko
  %i.bnj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1321

bb.ky:                                            ; preds = %bb.kp
  %i.bnk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318

bb.kz:                                            ; preds = %bb.kq
  %i.bnl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1315

bb.la:                                            ; preds = %bb.kr
  %i.bnm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bnn = load ptr, ptr %77, align 8, !tbaa !37  ; 2 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.bnp = icmp eq ptr %i.bnn, %i.bno
  br i1 %i.bnp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1313: ; preds = %bb.la
  %i.bnq = load i64, ptr %i.bno, align 8, !tbaa !32
  %i.bnr = add i64 %i.bnq, 1
  call void @_ZdlPvm(ptr noundef %i.bnn, i64 noundef %i.bnr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1315: ; preds = %bb.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1313, %bb.kz
  %.pn337 = phi { ptr, i32 } [ %i.bnl, %bb.kz ], [ %i.bnm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1313 ], [ %i.bnm, %bb.la ] ; 2 uses
  %i.bns = load ptr, ptr %78, align 8, !tbaa !37  ; 2 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.bnu = icmp eq ptr %i.bns, %i.bnt
  br i1 %i.bnu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1315
  %i.bnv = load i64, ptr %i.bnt, align 8, !tbaa !32
  %i.bnw = add i64 %i.bnv, 1
  call void @_ZdlPvm(ptr noundef %i.bns, i64 noundef %i.bnw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316, %bb.ky
  %.pn337.pn = phi { ptr, i32 } [ %i.bnk, %bb.ky ], [ %.pn337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1316 ], [ %.pn337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1315 ] ; 2 uses
  %i.bnx = load ptr, ptr %79, align 8, !tbaa !37  ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.bnz = icmp eq ptr %i.bnx, %i.bny
end_hunk_6
