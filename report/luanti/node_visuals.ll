Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/node_visuals?download=true
inline.NumInlined: 1465
inline.NumDeleted: 729
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN11NodeVisualsD2Ev:bb.a
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorI9FrameSpecSaIS0_EED2Ev.exit17.5, %.preheader.5
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !75 ; 4 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i18.5 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i18.5, label %_ZNSt6vectorI9FrameSpecSaIS0_EED2Ev.exit19.5, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !79
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #25
  br label %_ZNSt6vectorI9FrameSpecSaIS0_EED2Ev.exit19.5

_ZNSt6vectorI9FrameSpecSaIS0_EED2Ev.exit19.5:     ; preds = %bb.bn, %bb.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef 24) #25
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorI9FrameSpecSaIS0_EED2Ev.exit19.5, %bb.bl
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !84 ; 3 uses
  %.not = icmp eq ptr %i.hj, null
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 88 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !86
  %i.hm = add nsw i32 %i.hl, -1                   ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !86
  %.not.i = icmp eq i32 %i.hm, 0
  br i1 %.not.i, label %bb.bq, label %_ZNK17IReferenceCounted4dropEv.exit

bb.bq:                                            ; preds = %bb.bp
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 80 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !46
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(12) %i.hn) #26, !inline_history !0
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.bq, %bb.bp, %bb.bo
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettings(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i64 0, ptr %i.d, align 8, !tbaa !88
  store i8 0, ptr %i.c, align 8, !tbaa !68
  %i.e = load ptr, ptr %1, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !88
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.3, i64 noundef 21)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !87
  %i.m = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !88   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.n, ptr %i.b, align 8, !tbaa !90
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.p, ptr %5, align 8, !tbaa !89
  %i.q = load i64, ptr %i.b, align 8, !tbaa !90
  store i64 %i.q, ptr %i.l, align 8, !tbaa !68
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.r = phi ptr [ %i.p, %.noexc ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.m, align 1, !tbaa !68
  store i8 %i.s, ptr %i.r, align 1, !tbaa !68
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.t = load i64, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !88
  %i.v = load ptr, ptr %5, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.x, ptr %6, align 8, !tbaa !87
  %i.y = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.z = load i64, ptr %i.d, align 8, !tbaa !88   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.z, ptr %i.a, align 8, !tbaa !90
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i46, label %._crit_edge.i.i45

.noexc.i46:                                       ; preds = %bb.g
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.n   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i46
  store ptr %i.ab, ptr %6, align 8, !tbaa !89
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !90
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !68
  br label %._crit_edge.i.i45

._crit_edge.i.i45:                                ; preds = %.noexc47, %bb.g
  %i.ad = phi ptr [ %i.ab, %.noexc47 ], [ %i.x, %bb.g ] ; 2 uses
  switch i64 %i.z, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i45
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !68
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !68
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.y, i64 %i.z, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i45
  %i.af = load i64, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !88
  %i.ah = load ptr, ptr %6, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 19 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 98
  %i.am = load i8, ptr %i.al, align 2, !tbaa !126
  %i.an = icmp ne i8 %i.am, 6                     ; 2 uses
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %3, align 4, !tbaa !131   ; 2 uses
  %7 = icmp eq i32 %i.ao, 1                       ; 2 uses
  %8 = icmp eq i32 %i.ao, 2
  br i1 %8, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit

bb.l:                                             ; preds = %bb.k
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 9)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit_crit_edge unwind label %bb.o ; 0 uses

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit_crit_edge: ; preds = %bb.l
  %.pre72.pre = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 2 uses
  br i1 %7, label %.preheader65.split, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.preheader

bb.m:                                             ; preds = %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.n:                                             ; preds = %.noexc.i46
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.o:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %bb.k
  br i1 %7, label %.preheader65.split, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.preheader: ; preds = %bb.j, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit
  %.pre7287 = phi ptr [ %.pre72.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit_crit_edge ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %i.ak, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %.pre7287, i64 144
  %.val43 = load ptr, ptr %4, align 8
  %.val44 = load i64, ptr %i.d, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.at, ptr %.val43, i64 %.val44)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.1 unwind label %bb.p

.preheader65.split:                               ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit_crit_edge, %.preheader65.split.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit
  %.024.shrunk88 = phi i1 [ %i.an, %.preheader65.split.loopexit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ false, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit_crit_edge ]
  %9 = phi ptr [ %.pre, %.preheader65.split.loopexit ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %.pre72.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit_crit_edge ]
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 528
  %.val40 = load ptr, ptr %5, align 8
  %.val41 = load i64, ptr %i.u, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.au, ptr %.val40, i64 %.val41)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.preheader
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.preheader
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 208
  %.val43.1 = load ptr, ptr %4, align 8
  %.val44.1 = load i64, ptr %i.d, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.ax, ptr %.val43.1, i64 %.val44.1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.2 unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.1
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 272
  %.val43.2 = load ptr, ptr %4, align 8
  %.val44.2 = load i64, ptr %i.d, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.az, ptr %.val43.2, i64 %.val44.2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.3 unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.2
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 336
  %.val43.3 = load ptr, ptr %4, align 8
  %.val44.3 = load i64, ptr %i.d, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bb, ptr %.val43.3, i64 %.val44.3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.4 unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.3
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 400
  %.val43.4 = load ptr, ptr %4, align 8
  %.val44.4 = load i64, ptr %i.d, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bd, ptr %.val43.4, i64 %.val44.4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.5 unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.4
  %i.be = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 464
  %.val43.5 = load ptr, ptr %4, align 8
  %.val44.5 = load i64, ptr %i.d, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bf, ptr %.val43.5, i64 %.val44.5)
          to label %.preheader65.split.loopexit unwind label %bb.p

.preheader65.split.loopexit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit.split.5
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !91
  br label %.preheader65.split

.preheader.split.preheader:                       ; preds = %.preheader
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 912
  %.val37 = load ptr, ptr %6, align 8
  %.val38 = load i64, ptr %i.ag, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bh, ptr %.val37, i64 %.val38)
          to label %.preheader.split.1 unwind label %bb.w

bb.q:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.preheader65.split
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %.preheader65.split
  %i.bj = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 592
  %.val40.1 = load ptr, ptr %5, align 8
  %.val41.1 = load i64, ptr %i.u, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bk, ptr %.val40.1, i64 %.val41.1)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 656
  %.val40.2 = load ptr, ptr %5, align 8
  %.val41.2 = load i64, ptr %i.u, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bm, ptr %.val40.2, i64 %.val41.2)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 720
  %.val40.3 = load ptr, ptr %5, align 8
  %.val41.3 = load i64, ptr %i.u, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bo, ptr %.val40.3, i64 %.val41.3)
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 784
  %.val40.4 = load ptr, ptr %5, align 8
  %.val41.4 = load i64, ptr %i.u, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bq, ptr %.val40.4, i64 %.val41.4)
          to label %bb.v unwind label %bb.q

bb.v:                                             ; preds = %bb.u
  %i.br = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 848
  %.val40.5 = load ptr, ptr %5, align 8
  %.val41.5 = load i64, ptr %i.u, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.bs, ptr %.val40.5, i64 %.val41.5)
          to label %.preheader unwind label %bb.q

.preheader:                                       ; preds = %bb.v
  br i1 %.024.shrunk88, label %.preheader.split.preheader, label %.split

.split:                                           ; preds = %.preheader.split.5, %.preheader
  %i.bt = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.x
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.split
  %i.bv = load i64, ptr %i.x, align 8, !tbaa !68
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bx = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.l
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = load i64, ptr %i.l, align 8, !tbaa !68
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.cb = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.c
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !68
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.w:                                             ; preds = %.preheader.split.5, %.preheader.split.4, %.preheader.split.3, %.preheader.split.2, %.preheader.split.1, %.preheader.split.preheader
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.preheader.split.1:                               ; preds = %.preheader.split.preheader
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 976
  %.val37.1 = load ptr, ptr %6, align 8
  %.val38.1 = load i64, ptr %i.ag, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.ch, ptr %.val37.1, i64 %.val38.1)
          to label %.preheader.split.2 unwind label %bb.w

.preheader.split.2:                               ; preds = %.preheader.split.1
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1040
  %.val37.2 = load ptr, ptr %6, align 8
  %.val38.2 = load i64, ptr %i.ag, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.cj, ptr %.val37.2, i64 %.val38.2)
          to label %.preheader.split.3 unwind label %bb.w

.preheader.split.3:                               ; preds = %.preheader.split.2
  %i.ck = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1104
  %.val37.3 = load ptr, ptr %6, align 8
  %.val38.3 = load i64, ptr %i.ag, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.cl, ptr %.val37.3, i64 %.val38.3)
          to label %.preheader.split.4 unwind label %bb.w

.preheader.split.4:                               ; preds = %.preheader.split.3
  %i.cm = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1168
  %.val37.4 = load ptr, ptr %6, align 8
  %.val38.4 = load i64, ptr %i.ag, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.cn, ptr %.val37.4, i64 %.val38.4)
          to label %.preheader.split.5 unwind label %bb.w

.preheader.split.5:                               ; preds = %.preheader.split.4
  %i.co = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1232
  %.val37.5 = load ptr, ptr %6, align 8
  %.val38.5 = load i64, ptr %i.ag, align 8
  invoke fastcc void @"_ZZN11NodeVisuals17preUpdateTexturesEP14ITextureSourceRSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS8_ESt8equal_toIS8_ESaIS8_EERK15TextureSettingsENK3$_0clERK7TileDefRKS8_"(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(60) %i.cp, ptr %.val37.5, i64 %.val38.5)
          to label %.split unwind label %bb.w

bb.x:                                             ; preds = %bb.p, %bb.q, %bb.w, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.o ], [ %i.av, %bb.p ], [ %i.bi, %bb.q ], [ %i.cf, %bb.w ] ; 2 uses
  %i.cq = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.x
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

end_hunk_0
