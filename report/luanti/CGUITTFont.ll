inline.NumInlined: 1171
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gui10CGUITTFontC2EPNS_15IGUIEnvironmentE:bb.a
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !12
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.a, %bb.j, %thread-pre-split
  invoke void @_ZN3gui10CGUITTFont22setInvisibleCharactersEPKw(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull @.str.7)
          to label %bb.k unwind label %bb.c

bb.k:                                             ; preds = %thread-pre-split.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3gui10CGUITTFont22setInvisibleCharactersEPKw(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(248) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.30", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !217, !alias.scope !235
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %wcslen.i.i.i = call noundef i64 @wcslen(ptr nonnull readonly %1), !noalias !235 ; 11 uses
  %.idx.i.i = shl nuw nsw i64 %wcslen.i.i.i, 2    ; 4 uses
  %i.c = icmp ugt i64 %wcslen.i.i.i, 3
  br i1 %i.c, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %wcslen.i.i.i, 1152921504606846975
  br i1 %i.d, label %.noexc.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.e = add nuw nsw i64 %.idx.i.i, 4
  %i.f = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !223, !alias.scope !235
  store i64 %wcslen.i.i.i, ptr %i.a, align 8, !tbaa !23, !alias.scope !235
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.g = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i ], [ %i.a, %bb.b ] ; 10 uses
  switch i64 %wcslen.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i32, ptr %1, align 4, !tbaa !219, !noalias !235
  store i32 %i.h, ptr %i.g, align 4, !tbaa !219
  br label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr nonnull readonly align 4 %1, i64 %.idx.i.i, i1 false)
  br label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit

_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %wcslen.i.i.i, ptr %i.i, align 8, !tbaa !218, !alias.scope !235
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %i.j, align 4, !tbaa !219
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !223  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = icmp eq ptr %i.g, %i.a                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i: ; preds = %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  br i1 %i.o, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  br i1 %i.o, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i
  %i.p = icmp samesign ult i64 %wcslen.i.i.i, 4
  call void @llvm.assume(i1 %i.p)
  switch i64 %wcslen.i.i.i, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.g, align 4, !tbaa !219
  store i32 %i.q, ptr %i.l, align 4, !tbaa !219
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr nonnull align 4 %i.g, i64 %.idx.i.i, i1 false)
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !218
  %.pre30.i = load ptr, ptr %i.k, align 8, !tbaa !223
  %.pre31.pre.i = load ptr, ptr %2, align 8, !tbaa !223
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.pre31.i = phi ptr [ %i.g, %bb.f ], [ %.pre31.pre.i, %bb.h ], [ %i.g, %bb.g ]
  %i.r = phi ptr [ %i.l, %bb.f ], [ %.pre30.i, %bb.h ], [ %i.l, %bb.g ]
  %i.s = phi i64 [ %wcslen.i.i.i, %bb.f ], [ %.pre.i, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.s, ptr %i.t, align 8, !tbaa !218
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.u, align 4, !tbaa !219
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.g, ptr %i.k, align 8, !tbaa !223
  store i64 %wcslen.i.i.i, ptr %i.v, align 8, !tbaa !218
  %i.w = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.w, ptr %i.m, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i
  %i.x = load i64, ptr %i.m, align 8, !tbaa !23
  store ptr %i.g, ptr %i.k, align 8, !tbaa !223
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %wcslen.i.i.i, ptr %i.y, align 8, !tbaa !218
  %i.z = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.z, ptr %i.m, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.l, ptr %2, align 8, !tbaa !223
  store i64 %i.x, ptr %i.a, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i, %bb.i
  %i.aa = phi ptr [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i ], [ %i.l, %bb.i ] ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !218
  store i32 0, ptr %i.aa, align 4, !tbaa !219
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !23
  %i.ad = shl i64 %i.ac, 2
  %i.ae = add i64 %i.ad, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit23.thread25.i, %.thread.i, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK3gui10CGUITTFont19getGlyphIndexByCharEDi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, i32 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.e = zext i32 %1 to i64
  %i.f = tail call i32 @FT_Get_Char_Index(ptr noundef %i.d, i64 noundef %i.e) ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = add i32 %i.f, -1
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.l = getelementptr inbounds nuw [36 x i8], ptr %i.k, i64 %i.j ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !238
  %i.o = icmp ne i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp ne i32 %i.q, 0
  %.not3.i.i.i = select i1 %i.o, i1 true, i1 %i.r
  br i1 %.not3.i.i.i, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit.thread, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit

_ZNK3gui11SGUITTGlyph8isLoadedEv.exit:            ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !238
  %i.u = icmp ne i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp ne i32 %i.w, 0
  %.not3.i3.i.i = select i1 %i.u, i1 true, i1 %i.x
  br i1 %.not3.i3.i.i, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !213  ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %i.aa) ; 2 uses
  %i.ab = add i32 %spec.select, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread, %bb.c
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %3, %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread ] ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !178
  %2 = zext i32 %.1 to i64
  %i.ah = call i32 @FT_Get_Char_Index(ptr noundef %i.ag, i64 noundef %2) ; 3 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = add i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.al = getelementptr inbounds nuw [36 x i8], ptr %i.ak, i64 %i.aj ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !238
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp ne i32 %i.aq, 0
  %.not3.i.i.i30 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %.not3.i.i.i30, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32

_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32:          ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !238
  %i.au = icmp ne i32 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp ne i32 %i.aw, 0
  %.not3.i3.i.i31 = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %.not3.i3.i.i31, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.az = load i32, ptr %i.ac, align 4, !tbaa !200
  %i.ba = load i32, ptr %i.ad, align 8, !tbaa !228
  call void @_ZN3gui11SGUITTGlyph7preloadEjP11FT_FaceRec_PNS_10CGUITTFontEji(ptr noundef nonnull align 4 dereferenceable(36) %i.al, i32 noundef %i.ah, ptr noundef %i.ay, ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %i.ba)
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !139
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 152
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !201
  %i.bg = call noundef ptr @_ZNK3gui11SGUITTGlyph16createGlyphImageERK10FT_Bitmap_PN5video12IVideoDriverE(ptr nonnull align 4 poison, ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef %i.bf) ; 3 uses
  %i.bh = load i32, ptr %i.al, align 4, !tbaa !173
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !172
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.al, ptr %i.a, align 8, !tbaa !239
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !240
  %.not33 = icmp eq ptr %i.bg, null
  br i1 %.not33, label %_ZN3gui15CGUITTGlyphPage18pushGlyphToBePagedEPKNS_11SGUITTGlyphEPN5video6IImageE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !67 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !241
  %.not.i.i = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.al, ptr %i.bn, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bg, ptr %i.bq, align 8, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !67
  br label %_ZN3gui15CGUITTGlyphPage18pushGlyphToBePagedEPKNS_11SGUITTGlyphEPN5video6IImageE.exit

bb.i:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  call void @_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE17_M_realloc_insertIJRPKNS0_11SGUITTGlyphERPN5video6IImageEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN3gui15CGUITTGlyphPage18pushGlyphToBePagedEPKNS_11SGUITTGlyphEPN5video6IImageE.exit

_ZN3gui15CGUITTGlyphPage18pushGlyphToBePagedEPKNS_11SGUITTGlyphEPN5video6IImageE.exit: ; preds = %bb.f, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread

_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread:   ; preds = %bb.e, %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32, %_ZN3gui15CGUITTGlyphPage18pushGlyphToBePagedEPKNS_11SGUITTGlyphEPN5video6IImageE.exit, %bb.d
  %3 = add i32 %.1, 1                             ; 2 uses
  %4 = icmp ult i32 %3, %i.ab
  br i1 %4, label %bb.d, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit.thread, !llvm.loop !242

_ZNK3gui11SGUITTGlyph8isLoadedEv.exit.thread:     ; preds = %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread, %bb.b, %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit, %bb.a
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3gui10CGUITTFontD2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(248) %0, ptr nofree readnone captures(none) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3gui10CGUITTFont12reset_imagesEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN4core5arrayIN3gui11SGUITTGlyphEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZN4core5arrayIN3gui11SGUITTGlyphEE5clearEv.exit

_ZN4core5arrayIN3gui11SGUITTGlyphEE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.h, align 8, !tbaa !214
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !201  ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4core5arrayIN3gui11SGUITTGlyphEE5clearEv.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !12
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !12
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #23, !inline_history !65
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.d, %bb.c, %_ZN4core5arrayIN3gui11SGUITTGlyphEE5clearEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !221  ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !12
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !12
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.z) #23, !inline_history !222
  br label %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit

_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit:            ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !223 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.al = shl i64 %i.ak, 2
  %i.am = add i64 %i.al, 4
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i2, label %_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !225
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #25
  br label %_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit

_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !172 ; 3 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i3, label %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !206
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #25
  br label %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit

_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit: ; preds = %_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !226 ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i4, label %_ZN7irr_ptrIN3gui10SGUITTFaceEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !12
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !12
  %.not.i.i.i5 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i5, label %bb.j, label %_ZN7irr_ptrIN3gui10SGUITTFaceEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.ba) #23, !inline_history !29
  br label %_ZN7irr_ptrIN3gui10SGUITTFaceEED2Ev.exit

_ZN7irr_ptrIN3gui10SGUITTFaceEED2Ev.exit:         ; preds = %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3gui10CGUITTFont12reset_imagesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 36
  %i.i = and i64 %i.h, 4294967295
  %.not11 = icmp eq i64 %i.i, 0
  br i1 %.not11, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !172  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = and i64 %i.p, 34359738360
  %.not813 = icmp eq i64 %i.q, 0
  br i1 %.not813, label %._crit_edge, label %.lr.ph15

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.r = phi ptr [ %i.x, %.lr.ph ], [ %i.d, %bb.a ]
  %.0612 = phi i32 [ %i.v, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.s = zext i32 %.0612 to i64
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = add i32 %.0612, 1                        ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !233
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 36
  %i.ac = trunc i64 %i.ab to i32
  %.not = icmp eq i32 %i.v, %i.ac
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !243

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.lcssa9 = phi ptr [ %i.m, %.preheader ], [ %i.bb, %bb.g ] ; 2 uses
  %.lcssa = phi i64 [ %i.o, %.preheader ], [ %i.bf, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !206
  %.not.i.i.i.i = icmp eq ptr %.lcssa9, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.j, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %.lcssa
end_hunk_0
