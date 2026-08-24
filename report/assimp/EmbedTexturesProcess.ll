Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/EmbedTexturesProcess?download=true
inline.NumInlined: 439
inline.NumDeleted: 146
begin_hunk_0_@_ZN6Assimp20EmbedTexturesProcess7ExecuteEP7aiScene:bb.a
  store i64 %i.aj, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.ak = phi ptr [ %i.ai, %.noexc.i ], [ %i.n, %bb.g ] ; 2 uses
  switch i64 %i.ag, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.al = load i8, ptr %i.m, align 4
  store i8 %i.al, ptr %i.ak, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 4 %i.m, i64 %i.ag, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.am = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.am, ptr %i.o, align 8
  %i.an = load ptr, ptr %3, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ap = invoke noundef zeroext i1 @_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.n
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.as = load i64, ptr %i.n, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i32, ptr %i.p, align 8
  %i.av = add i32 %i.au, -1
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.av) #19
  store i32 %i.aw, ptr %2, align 4
  %i.ax = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef %.02939, i32 noundef %.02838) ; 0 uses
  %i.ay = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ay, ptr %i.b, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.n
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.m
  %i.bc = load i64, ptr %i.n, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.az

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l, %.lr.ph
  %i.be = phi i32 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ay, %bb.l ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.bf = add nuw i32 %.02838, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

bb.o:                                             ; preds = %bb.a, %bb.b, %._crit_edge43
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6Assimp20EmbedTexturesProcess10addTextureEP7aiSceneRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.d, label %bb.ai, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
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
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.d, !inline_history !10 ; 8 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
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
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp6Logger5errorIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(48) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.11)
          to label %bb.ai unwind label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %4, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.d
  %i.w = load i64, ptr %i.g, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ah

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load ptr, ptr %i.n, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.g unwind label %bb.z       ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ugt i64 %i.ac, -5
  %i.ae = and i64 %i.ac, -4
  %i.af = add i64 %i.ae, 4
  %i.ag = select i1 %i.ad, i64 -1, i64 %i.af
  %i.ah = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #21
          to label %bb.h unwind label %bb.aa      ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.n, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0, i32 noundef 0)
          to label %bb.i unwind label %bb.aa      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.n, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.ah, i64 noundef %i.ac, i64 noundef 1)
          to label %bb.j unwind label %bb.aa      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = zext i32 %i.aw to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #21
          to label %bb.l unwind label %bb.ab      ; 2 uses

bb.l:                                             ; preds = %bb.k
  store ptr %i.bb, ptr %i.ax, align 8
  %i.bc = zext i32 %i.av to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.ay, i64 %i.bd, i1 false)
  %i.be = icmp eq ptr %i.ay, null
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #21
          to label %bb.o unwind label %bb.ac      ; 6 uses

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1028) %i.bh, i8 0, i64 1028, i1 false)
  %i.bi = trunc i64 %i.ac to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bf, i8 0, i64 17, i1 false)
  store i32 %i.bi, ptr %i.bf, align 8
  store ptr %i.ah, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bj = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 46, i64 noundef -1) #19
  %i.bk = add i64 %i.bj, 1                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !11 ; 3 uses
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i64 noundef %i.bk, i64 noundef %i.bm) #22
          to label %.noexc55 unwind label %bb.ad

.noexc55:                                         ; preds = %bb.p
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.bo, ptr %5, align 8, !alias.scope !11
  %i.bp = load ptr, ptr %2, align 8, !noalias !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bk ; 2 uses
  %i.br = sub nuw i64 %i.bm, %i.bk                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !11
  store i64 %i.br, ptr %i.a, align 8, !noalias !11
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %bb.ad  ; 2 uses

.noexc56:                                         ; preds = %.noexc10.i.i
  store ptr %i.bt, ptr %5, align 8, !alias.scope !11
  %i.bu = load i64, ptr %i.a, align 8, !noalias !11
  store i64 %i.bu, ptr %i.bo, align 8, !alias.scope !11
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
  %i.bx = load i64, ptr %i.a, align 8, !noalias !11 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.bx, ptr %i.by, align 8, !alias.scope !11
  %i.bz = load ptr, ptr %5, align 8, !alias.scope !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_Z10ai_tolowerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.t unwind label %bb.ae

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
  %.pre79 = load ptr, ptr %5, align 8             ; 3 uses
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.db = load i32, ptr %.pre79, align 1
  %i.dc = icmp ne i32 %i.db, 1734701162
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 4, ptr noundef nonnull @.str.14, i64 noundef 3)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge unwind label %bb.af ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.pre = load i64, ptr %i.by, align 8
  %.pre78 = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.z:                                             ; preds = %bb.f
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aa:                                            ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ab:                                            ; preds = %bb.k
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %bb.n
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %.noexc10.i.i, %bb.p
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.ae:                                            ; preds = %bb.s
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ag

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dn = phi ptr [ %.pre78, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %.pre79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pre79, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.do = phi i64 [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.do, i64 8)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dq = call ptr @strncpy(ptr noundef nonnull %i.dp, ptr noundef %i.dn, i64 noundef %spec.store.select) #19 ; 0 uses
  %i.dr = load ptr, ptr %i.ax, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.bc
  store ptr %i.bf, ptr %i.ds, align 8
  %i.dt = load ptr, ptr %5, align 8               ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bo
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.dv = load i64, ptr %i.bo, align 8
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn43 = phi { ptr, i32 } [ %i.dm, %bb.af ], [ %i.dl, %bb.ae ] ; 2 uses
  %i.dx = load ptr, ptr %5, align 8               ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.bo
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ag
  %i.dz = load i64, ptr %i.bo, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.ad
  %.pn43.pn = phi { ptr, i32 } [ %i.dk, %bb.ad ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn43, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aa, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.ab, %bb.z, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn49 = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.dg, %bb.z ], [ %i.dh, %bb.aa ], [ %i.di, %bb.ab ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.dj, %bb.ac ]
  %i.eb = load ptr, ptr %3, align 8               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ah
  %i.ee = load i64, ptr %i.ec, align 8
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn49

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  %i.eg = load ptr, ptr %3, align 8               ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ai
  %i.ej = load i64, ptr %i.eh, align 8
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA41_KcRjRA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(41) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(11) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #19
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(41) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA41_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #19
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA41_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA11_KcERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(11) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA41_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #19
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA41_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6Assimp20EmbedTexturesProcess18tryToFindValidPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %2, align 8
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef %i.e), !inline_history !14
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.m, ptr %i.b, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i
end_hunk_0
