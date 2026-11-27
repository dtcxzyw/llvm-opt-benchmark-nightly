Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/EmbedTexturesProcess?download=true
inline.NumInlined: 439
inline.NumDeleted: 146
begin_hunk_0_@_ZN6Assimp20EmbedTexturesProcess7ExecuteEP7aiScene:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.am = invoke noundef zeroext i1 @_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %3, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.n
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ap = load i64, ptr %i.n, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load i32, ptr %i.p, align 8
  %i.as = add i32 %i.ar, -1
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.as) #19
  store i32 %i.at, ptr %2, align 4
  %i.au = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef %.02945, i32 noundef %.02840) ; 0 uses
  %i.av = add i32 %i.z, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %3, align 8               ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.n
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.m
  %i.az = load i64, ptr %i.n, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.aw

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l, %.lr.ph
  %i.bb = phi i32 [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.av, %bb.l ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.bc = add nuw i32 %.02840, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bc, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

bb.o:                                             ; preds = %bb.a, %bb.b, %._crit_edge52
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !38 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNK6Assimp20EmbedTexturesProcess18tryToFindValidPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8
  store i16 25202, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.i, align 2
  %i.j = load ptr, ptr %3, align 8
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %i.j, ptr noundef nonnull %i.g)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.e, !inline_history !35 ; 8 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.q = load i64, ptr %i.g, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6Assimp6Logger5errorIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(48) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.11)
          to label %bb.ag unwind label %bb.aa

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %4, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.e
  %i.w = load i64, ptr %i.g, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.af

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %i.n, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.g unwind label %bb.aa      ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp ugt i64 %i.ab, -5
  %i.ad = and i64 %i.ab, -4
  %i.ae = add i64 %i.ad, 4
  %i.af = select i1 %i.ac, i64 -1, i64 %i.ae
  %i.ag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #21
          to label %bb.h unwind label %bb.aa      ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.n, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0, i32 noundef 0)
          to label %bb.i unwind label %bb.aa      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.n, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 1)
          to label %bb.j unwind label %bb.aa      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = zext i32 %i.av to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.az) #21
          to label %bb.l unwind label %bb.aa      ; 2 uses

bb.l:                                             ; preds = %bb.k
  store ptr %i.ba, ptr %i.aw, align 8
  %i.bb = load i32, ptr %i.at, align 8
  %i.bc = add i32 %i.bb, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ax, i64 %i.be, i1 false)
  %i.bf = icmp eq ptr %i.ax, null
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #21
          to label %bb.o unwind label %bb.aa      ; 6 uses

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bi, i8 0, i64 9, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1028) %7, i8 0, i64 1028, i1 false)
  %8 = and i64 %i.ab, 4294967295
  store i64 %8, ptr %i.bg, align 8
  store ptr %i.ag, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bj = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 46, i64 noundef -1) #19
  %i.bk = add i64 %i.bj, 1                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !39 ; 3 uses
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef %i.bk, i64 noundef %i.bm) #22
          to label %.noexc55 unwind label %bb.ab, !noalias !39

.noexc55:                                         ; preds = %bb.p
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.bo, ptr %5, align 8, !alias.scope !39
  %i.bp = load ptr, ptr %2, align 8, !noalias !39
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk ; 2 uses
  %i.br = sub nuw i64 %i.bm, %i.bk                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !39
  store i64 %i.br, ptr %i.a, align 8, !noalias !39
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %bb.ab  ; 2 uses

.noexc56:                                         ; preds = %.noexc10.i.i
  store ptr %i.bt, ptr %5, align 8, !alias.scope !39
  %i.bu = load i64, ptr %i.a, align 8, !noalias !39
  store i64 %i.bu, ptr %i.bo, align 8, !alias.scope !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bv = phi ptr [ %i.bt, %.noexc56 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.br, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i8, ptr %i.bq, align 1
  store i8 %i.bw, ptr %i.bv, align 1
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bq, i64 %i.br, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i
  %i.bx = load i64, ptr %i.a, align 8, !noalias !39 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.bx, ptr %i.by, align 8, !alias.scope !39
  %i.bz = load ptr, ptr %5, align 8, !alias.scope !39
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_Z10ai_tolowerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr %5, align 8               ; 6 uses
  %i.cc = icmp eq ptr %i.cb, %i.bo
  %i.cd = load ptr, ptr %6, align 8               ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce                ; 2 uses
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.t
  br i1 %i.cf, label %bb.u, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.t
  br i1 %i.cf, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  switch i64 %i.ch, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.cj = load i8, ptr %i.cd, align 1
  store i8 %i.cj, ptr %i.cb, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.ck = load i64, ptr %i.cg, align 8            ; 2 uses
  store i64 %i.ck, ptr %i.by, align 8
  %i.cl = load ptr, ptr %5, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 0, ptr %i.cm, align 1
  %.pre.i = load ptr, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cd, ptr %5, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = load <2 x i64>, ptr %i.cn, align 8
  store <2 x i64> %i.co, ptr %i.by, align 8
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cp = load i64, ptr %i.bo, align 8
  store ptr %i.cd, ptr %5, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cr = load <2 x i64>, ptr %i.cq, align 8
  store <2 x i64> %i.cr, ptr %i.by, align 8
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cb, ptr %6, align 8
  store i64 %i.cp, ptr %i.ce, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ce, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.x, %bb.y
  %i.cs = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cb, %bb.x ], [ %i.ce, %bb.y ]
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ct, align 8
  store i8 0, ptr %i.cs, align 1
  %i.cu = load ptr, ptr %6, align 8               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cx = load i64, ptr %i.cv, align 8
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4
  %.pre78 = load ptr, ptr %5, align 8             ; 3 uses
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.db = load i32, ptr %.pre78, align 1
  %i.dc = icmp ne i32 %i.db, 1734701162
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.z:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 4, ptr noundef nonnull @.str.14, i64 noundef 3)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge unwind label %bb.ad ; 0 uses

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge: ; preds = %bb.z
  %.pre = load i64, ptr %i.by, align 8
  %.pre77 = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.aa:                                            ; preds = %bb.f, %bb.k, %bb.g, %bb.h, %bb.i, %bb.j, %bb.d, %bb.c, %bb.n
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ab:                                            ; preds = %.noexc10.i.i, %bb.p
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.ac:                                            ; preds = %bb.s
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dk = phi ptr [ %.pre77, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %.pre78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pre78, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.dl = phi i64 [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.dl, i64 8)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.dn = call ptr @strncpy(ptr noundef nonnull %i.dm, ptr noundef %i.dk, i64 noundef %spec.store.select) #19 ; 0 uses
  %i.do = load ptr, ptr %i.aw, align 8
end_hunk_0
