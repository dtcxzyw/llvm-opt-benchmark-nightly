Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUITTFont?download=true
inline.NumInlined: 1171
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gui10CGUITTFont4loadEPNS_10SGUITTFaceEjbbb:bb.a
  store i32 127, ptr %i.eb, align 8, !tbaa !177
  %i.ed = call noundef i32 @_ZNK3gui10CGUITTFont19getGlyphIndexByCharEDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext 32) ; 0 uses
  store i32 %i.ec, ptr %i.eb, align 8, !tbaa !177
  br label %bb.y

bb.y:                                             ; preds = %_ZN4core5arrayIN3gui11SGUITTGlyphEE8set_usedEj.exit, %bb.x, %bb.a
  ret i1 %or.cond3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3gui10CGUITTFontC2EPNS_15IGUIEnvironmentE(ptr noundef nonnull align 8 dereferenceable(248) initializes((0, 11), (16, 20), (24, 40), (112, 137), (144, 169), (176, 184)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !22
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.h, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !174
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.o, align 1, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %i.p, align 2, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.q, align 8, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.t, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.u, align 8, !tbaa !171
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.v, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.w, align 8, !tbaa !178
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.x, align 8, !tbaa !179
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.y, align 4, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !181
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.ab, align 8, !tbaa !182
  store i32 0, ptr %i.aa, align 8, !tbaa !184
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.not = icmp eq ptr %2, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br i1 %.not, label %thread-pre-split.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %2, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %thread-pre-split unwind label %bb.c ; 4 uses

bb.c:                                             ; preds = %thread-pre-split.thread, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !185 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !20
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !20
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(12) %i.an) #23, !inline_history !4
  br label %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit

_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit:            ; preds = %bb.c, %bb.d, %bb.e
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !186 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit
  %i.aw = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.ax = shl i64 %i.aw, 2
  %i.ay = add i64 %i.ax, 4
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !187 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !188
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #25
  br label %_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit

_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, %bb.f
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i7, label %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !170
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #25
  br label %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit

_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit: ; preds = %_ZN4core5arrayIN3gui11SGUITTGlyphEED2Ev.exit, %bb.g
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !189 ; 4 uses
  %.not.i.i8 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i8, label %_ZN7irr_ptrIN3gui10SGUITTFaceEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !20
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !20
  %.not.i.i.i9 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i9, label %bb.i, label %_ZN7irr_ptrIN3gui10SGUITTFaceEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(12) %i.bl) #23, !inline_history !0
  br label %_ZN7irr_ptrIN3gui10SGUITTFaceEED2Ev.exit

_ZN7irr_ptrIN3gui10SGUITTFaceEED2Ev.exit:         ; preds = %_ZN4core5arrayIPN3gui15CGUITTGlyphPageEED2Ev.exit, %bb.h, %bb.i
  resume { ptr, i32 } %i.ai

thread-pre-split:                                 ; preds = %bb.b
  store ptr %i.ah, ptr %i.r, align 8, !tbaa !169
  %.not6 = icmp eq ptr %i.ah, null
  br i1 %.not6, label %thread-pre-split.thread, label %bb.j

bb.j:                                             ; preds = %thread-pre-split
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.ah, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !20
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !20
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !181, !alias.scope !259
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %wcslen.i.i.i = call noundef i64 @wcslen(ptr nonnull readonly %1), !noalias !259 ; 11 uses
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
  store ptr %i.f, ptr %2, align 8, !tbaa !186, !alias.scope !259
  store i64 %wcslen.i.i.i, ptr %i.a, align 8, !tbaa !30, !alias.scope !259
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.g = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i ], [ %i.a, %bb.b ] ; 10 uses
  switch i64 %wcslen.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i32, ptr %1, align 4, !tbaa !184, !noalias !259
  store i32 %i.h, ptr %i.g, align 4, !tbaa !184
  br label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr nonnull readonly align 4 %1, i64 %.idx.i.i, i1 false)
  br label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit

_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %wcslen.i.i.i, ptr %i.i, align 8, !tbaa !182, !alias.scope !259
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %i.j, align 4, !tbaa !184
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !186  ; 8 uses
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
  %i.q = load i32, ptr %i.g, align 4, !tbaa !184
  store i32 %i.q, ptr %i.l, align 4, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr nonnull align 4 %i.g, i64 %.idx.i.i, i1 false)
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !182
  %.pre30.i = load ptr, ptr %i.k, align 8, !tbaa !186
  %.pre31.pre.i = load ptr, ptr %2, align 8, !tbaa !186
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.pre31.i = phi ptr [ %i.g, %bb.f ], [ %.pre31.pre.i, %bb.h ], [ %i.g, %bb.g ]
  %i.r = phi ptr [ %i.l, %bb.f ], [ %.pre30.i, %bb.h ], [ %i.l, %bb.g ]
  %i.s = phi i64 [ %wcslen.i.i.i, %bb.f ], [ %.pre.i, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.s, ptr %i.t, align 8, !tbaa !182
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.u, align 4, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.g, ptr %i.k, align 8, !tbaa !186
  store i64 %wcslen.i.i.i, ptr %i.v, align 8, !tbaa !182
  %i.w = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.w, ptr %i.m, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i
  %i.x = load i64, ptr %i.m, align 8, !tbaa !30
  store ptr %i.g, ptr %i.k, align 8, !tbaa !186
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %wcslen.i.i.i, ptr %i.y, align 8, !tbaa !182
  %i.z = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.z, ptr %i.m, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.l, ptr %2, align 8, !tbaa !186
  store i64 %i.x, ptr %i.a, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i, %bb.i
  %i.aa = phi ptr [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i ], [ %i.l, %bb.i ] ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !182
  store i32 0, ptr %i.aa, align 4, !tbaa !184
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !30
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.e = zext i32 %1 to i64
  %i.f = tail call i32 @FT_Get_Char_Index(ptr noundef %i.d, i64 noundef %i.e) ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = add i32 %i.f, -1
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !187
  %i.l = getelementptr inbounds nuw [36 x i8], ptr %i.k, i64 %i.j ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !193
  %i.o = icmp ne i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp ne i32 %i.q, 0
  %.not3.i.i.i = select i1 %i.o, i1 true, i1 %i.r
  br i1 %.not3.i.i.i, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit.thread, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit

_ZNK3gui11SGUITTGlyph8isLoadedEv.exit:            ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !193
  %i.u = icmp ne i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp ne i32 %i.w, 0
  %.not3.i3.i.i = select i1 %i.u, i1 true, i1 %i.x
  br i1 %.not3.i3.i.i, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !177  ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %i.aa) ; 2 uses
  %i.ab = add i32 %spec.select, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread, %bb.c
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %i.bu, %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread ] ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.ah = zext i32 %.1 to i64
  %i.ai = call i32 @FT_Get_Char_Index(ptr noundef %i.ag, i64 noundef %i.ah) ; 3 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = add i32 %i.ai, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !187
  %i.am = getelementptr inbounds nuw [36 x i8], ptr %i.al, i64 %i.ak ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !193
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp ne i32 %i.ar, 0
  %.not3.i.i.i30 = select i1 %i.ap, i1 true, i1 %i.as
  br i1 %.not3.i.i.i30, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32.thread, label %_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32

_ZNK3gui11SGUITTGlyph8isLoadedEv.exit32:          ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !193
  %i.av = icmp ne i32 %i.au, 0
end_hunk_0
begin_hunk_1_@_ZN4core6stringIcEpLEj:bb.a
  %i.r = load i64, ptr %i.p, align 8, !tbaa !30
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZN4core6stringIcED2Ev.exit6

_ZN4core6stringIcED2Ev.exit6:                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui15CGUITTGlyphPageC2EPN5video12IVideoDriverERKN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  store ptr %1, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 8, !tbaa !29
  store i8 0, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp eq ptr %i.f, %2
  br i1 %i.i, label %_ZN4core6stringIcEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4core6stringIcEC2ERKS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.g, align 8, !tbaa !30
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #25
  br label %.body

_ZN4core6stringIcEC2ERKS1_.exit:                  ; preds = %bb.b, %bb.a
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #23
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !198  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !199
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #25
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %.body, %bb.d
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !201
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #25
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core4rectIiEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %bb.e
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !202 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !203
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #25
  br label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8vector2dIiEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3gui10CGUITTFont11setFallbackEPNS_8IGUIFontE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(248) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 536, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN3gui10CGUITTFont11setFallbackEPNS_8IGUIFontE) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.split.i, label %.split5.i

.split.i:                                         ; preds = %bb.c
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %.split.i
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !20
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE5resetEPS1_.exit.sink.split.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit

.split5.i:                                        ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !22
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !20
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.q, null
  br i1 %.not.i6.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %bb.e

bb.e:                                             ; preds = %.split5.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !20
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !20
  %.not.i.i7.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i7.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE5resetEPS1_.exit.sink.split.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit

_ZN7irr_ptrIN3gui8IGUIFontEE5resetEPS1_.exit.sink.split.i: ; preds = %bb.e, %bb.d
  %.sink.i = phi ptr [ %i.f, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.sink13.i = load ptr, ptr %.sink.i, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %.sink.i) #23, !inline_history !266
  br label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit:      ; preds = %.split.i, %bb.d, %.split5.i, %bb.e, %_ZN7irr_ptrIN3gui8IGUIFontEE5resetEPS1_.exit.sink.split.i
  store ptr %1, ptr %i.a, align 8, !tbaa !185
  ret void
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3gui10CGUITTFont13setMonochromeEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) initializes((8, 9)) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.b, align 8, !tbaa !174
  tail call void @_ZN3gui10CGUITTFont12reset_imagesEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3gui10CGUITTFont14setFontHintingEbb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) initializes((9, 11)) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = zext i1 %2 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.a, ptr %i.c, align 1, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.b, ptr %i.d, align 2, !tbaa !176
  tail call void @_ZN3gui10CGUITTFont12reset_imagesEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3gui10CGUITTFont4drawERKN4core6stringIwEERKNS1_4rectIiEEN5video6SColorEbbPS8_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.video::SColor", align 4     ; 2 uses
  %8 = alloca %class.EnrichedString, align 8      ; 10 uses
  store i32 %3, ptr %7, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.a = load ptr, ptr %1, align 8, !tbaa !207    ; 2 uses
  %i.b = tail call noundef i64 @wcslen(ptr noundef nonnull %i.a) #28
  call void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %8, i64 %i.b, ptr nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %7)
  invoke void @_ZN3gui10CGUITTFont4drawERK14EnrichedStringRKN4core4rectIiEEbbPS7_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !199
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %8, align 8, !tbaa !207    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN14EnrichedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !30
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.o) #25
  br label %_ZN14EnrichedStringD2Ev.exit

_ZN14EnrichedStringD2Ev.exit:                     ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  resume { ptr, i32 } %i.p
}

declare void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3gui10CGUITTFont4drawERK14EnrichedStringRKN4core4rectIiEEbbPS7_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string.30", align 8 ; 11 uses
  %i.b = alloca [2 x i32], align 4                ; 7 uses
  %7 = alloca %"class.core::string.41", align 8   ; 13 uses
  %8 = alloca %"class.core::rect", align 8        ; 6 uses
  %9 = alloca %"class.core::array.43", align 8    ; 19 uses
  %10 = alloca %"class.core::array.45", align 8   ; 16 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK14EnrichedString9getColorsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.bz, label %.preheader292

.preheader292:                                    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = and i64 %i.l, 34359738360
  %.not318 = icmp eq i64 %i.m, 0
  br i1 %.not318, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader292
  %i.n = lshr exact i64 %i.l, 3
  %wide.trip.count = and i64 %i.n, 4294967295
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit, %.preheader292
  %i.o = load i64, ptr %2, align 4, !tbaa !65     ; 2 uses
  %.sroa.0245.0.extract.trunc = trunc i64 %i.o to i32 ; 3 uses
  %.sroa.19.0.extract.shift = lshr i64 %i.o, 32
  %.sroa.19.0.extract.trunc = trunc nuw i64 %.sroa.19.0.extract.shift to i32 ; 3 uses
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %bb.b, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !202  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !301
  %.not.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4core8vector2dIiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8vector2dIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph
  store ptr %i.s, ptr %i.t, align 8, !tbaa !301
  br label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE5clearEv.exit: ; preds = %.lr.ph, %_ZSt8_DestroyIPN4core8vector2dIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !200  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !302
  %.not.i.i149 = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i149, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE5clearEv.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !302
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4core4rectIiEESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !303
  %.not.i.i150 = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i.i150, label %_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN5video6SColorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5video6SColorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE5clearEv.exit
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !303
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPN5video6SColorES1_EvT_S3_RSaIT0_E.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267

bb.b:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207
  %i.af = tail call i64 @_ZNK3gui10CGUITTFont12getDimensionEPKw(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.ae) ; 2 uses
  %.sroa.0243.0.extract.trunc = trunc i64 %i.af to i32 ; 3 uses
  %.sroa.4244.0.extract.shift = lshr i64 %i.af, 32
  %.sroa.4244.0.extract.trunc = trunc nuw i64 %.sroa.4244.0.extract.shift to i32
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !304
  %i.ai = load i32, ptr %2, align 4, !tbaa !305
  %i.aj = add i32 %i.ai, %.sroa.0243.0.extract.trunc
  %i.ak = sub i32 %i.ah, %i.aj
  %i.al = sdiv i32 %i.ak, 2
  %i.am = add nsw i32 %i.al, %.sroa.0245.0.extract.trunc
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0245.0 = phi i32 [ %i.am, %bb.c ], [ %.sroa.0245.0.extract.trunc, %bb.b ] ; 2 uses
  br i1 %4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !306
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !307
  %i.ar = add i32 %i.aq, %.sroa.4244.0.extract.trunc
  %i.as = sub i32 %i.ao, %i.ar
  %i.at = sdiv i32 %i.as, 2
  %i.au = add nsw i32 %i.at, %.sroa.19.0.extract.trunc
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %._crit_edge
  %.sroa.0245.1 = phi i32 [ %.sroa.0245.0, %bb.e ], [ %.sroa.0245.0, %bb.d ], [ %.sroa.0245.0.extract.trunc, %._crit_edge ]
  %.sroa.19.0 = phi i32 [ %i.au, %bb.e ], [ %.sroa.19.0.extract.trunc, %bb.d ], [ %.sroa.19.0.extract.trunc, %._crit_edge ]
  %.sroa.0260.0 = phi i32 [ %.sroa.0243.0.extract.trunc, %bb.e ], [ %.sroa.0243.0.extract.trunc, %bb.d ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.av = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK14EnrichedString9getStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !207 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ax, ptr %6, align 8, !tbaa !181, !alias.scope !308
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

bb.g:                                             ; preds = %bb.f
  %wcslen.i.i.i = call noundef i64 @wcslen(ptr nonnull readonly %i.aw), !noalias !308 ; 8 uses
  %.idx.i.i = shl nuw nsw i64 %wcslen.i.i.i, 2    ; 4 uses
  %i.az = icmp ugt i64 %wcslen.i.i.i, 3
  br i1 %i.az, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp ugt i64 %wcslen.i.i.i, 1152921504606846975
  br i1 %i.ba, label %.noexc.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.h
  %i.bb = add nuw nsw i64 %.idx.i.i, 4
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #27 ; 2 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !186, !alias.scope !308
  store i64 %wcslen.i.i.i, ptr %i.ax, align 8, !tbaa !30, !alias.scope !308
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %bb.g
  %.pre8.i.i.i = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i ], [ %i.ax, %bb.g ] ; 4 uses
  switch i64 %wcslen.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bd = load i32, ptr %i.aw, align 4, !tbaa !184, !noalias !308
  store i32 %i.bd, ptr %.pre8.i.i.i, align 4, !tbaa !184
  br label %.lr.ph308

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr nonnull readonly align 4 %i.aw, i64 %.idx.i.i, i1 false)
  br label %.lr.ph308

_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit: ; preds = %._crit_edge.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %wcslen.i.i.i, ptr %i.be, align 8, !tbaa !182, !alias.scope !308
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i, i64 %.idx.i.i
  store i32 0, ptr %i.bf, align 4, !tbaa !184
  br label %._crit_edge309

.lr.ph308:                                        ; preds = %bb.i, %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %wcslen.i.i.i, ptr %i.bg, align 8, !tbaa !182, !alias.scope !308
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i, i64 %.idx.i.i
  store i32 0, ptr %i.bh, align 4, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !208
  %i.bk = sdiv i64 %i.bj, 64
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.not138 = icmp eq ptr %5, null
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.m

._crit_edge309:                                   ; preds = %bb.az, %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !142 ; 2 uses
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !143 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = and i64 %i.cg, 34359738360
  %.not5.i = icmp eq i64 %i.ch, 0
  br i1 %.not5.i, label %_ZNK3gui10CGUITTFont18update_glyph_pagesEv.exit.thread, label %.lr.ph.i

_ZNK3gui10CGUITTFont18update_glyph_pagesEv.exit.thread: ; preds = %._crit_edge309
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ci, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit

.lr.ph.i:                                         ; preds = %._crit_edge309, %bb.l
  %i.cj = phi ptr [ %i.cs, %bb.l ], [ %i.cd, %._crit_edge309 ] ; 2 uses
  %i.ck = phi ptr [ %i.ct, %bb.l ], [ %i.cc, %._crit_edge309 ]
  %.06.i = phi i32 [ %i.cu, %bb.l ], [ 0, %._crit_edge309 ] ; 2 uses
  %i.cl = zext i32 %.06.i to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !139 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !61
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !61
  %.not4.i = icmp eq ptr %i.cp, %i.cr
  br i1 %.not4.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  invoke void @_ZN3gui15CGUITTGlyphPage13updateTextureEv(ptr noundef nonnull align 8 dereferenceable(152) %i.cn)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !142
  %.pre7.i = load ptr, ptr %i.f, align 8, !tbaa !143
  br label %bb.l

bb.l:                                             ; preds = %.noexc, %.lr.ph.i
  %i.cs = phi ptr [ %i.cj, %.lr.ph.i ], [ %.pre7.i, %.noexc ] ; 3 uses
  %i.ct = phi ptr [ %i.ck, %.lr.ph.i ], [ %.pre.i, %.noexc ] ; 3 uses
  %i.cu = add i32 %.06.i, 1                       ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = lshr exact i64 %i.cx, 3
  %i.cz = trunc i64 %i.cy to i32
  %.not.i = icmp eq i32 %i.cu, %i.cz
  br i1 %.not.i, label %_ZNK3gui10CGUITTFont18update_glyph_pagesEv.exit, label %.lr.ph.i, !llvm.loop !5

bb.m:                                             ; preds = %.lr.ph308, %bb.az
  %i.da = phi i64 [ %wcslen.i.i.i, %.lr.ph308 ], [ %i.mb, %bb.az ] ; 2 uses
  %.0111307 = phi i64 [ 0, %.lr.ph308 ], [ %i.mc, %bb.az ] ; 9 uses
  %.0113306 = phi i32 [ 0, %.lr.ph308 ], [ %.1114, %bb.az ] ; 2 uses
  %.sroa.19.1305 = phi i32 [ %.sroa.19.0, %.lr.ph308 ], [ %.sroa.19.3, %bb.az ] ; 11 uses
  %.sroa.0245.2304 = phi i32 [ %.sroa.0245.1, %.lr.ph308 ], [ %.sroa.0245.4, %bb.az ] ; 10 uses
  %i.db = load ptr, ptr %6, align 8, !tbaa !186   ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.0111307
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !184 ; 10 uses
  switch i32 %i.dd, label %bb.q [
    i32 13, label %bb.n
    i32 10, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.de = add nuw i64 %.0111307, 1                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !184
  %i.dh = icmp eq i32 %i.dg, 10
  %spec.select = select i1 %i.dh, i64 %i.de, i64 %.0111307
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1112.ph = phi i64 [ %.0111307, %bb.m ], [ %spec.select, %bb.n ] ; 2 uses
  %i.di = add i32 %.sroa.19.1305, %i.bm           ; 2 uses
  %i.dj = load i32, ptr %2, align 4, !tbaa !305   ; 3 uses
  br i1 %3, label %bb.p, label %bb.az

bb.p:                                             ; preds = %bb.o
  %i.dk = load i32, ptr %i.bn, align 4, !tbaa !304
  %i.dl = add i32 %i.dj, %.sroa.0260.0
  %i.dm = sub i32 %i.dk, %i.dl
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = add nsw i32 %i.dn, %i.dj
  br label %bb.az

bb.q:                                             ; preds = %bb.m
  %i.dp = invoke noundef i32 @_ZNK3gui10CGUITTFont19getGlyphIndexByCharEDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext %i.dd)
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc152:                                        ; preds = %bb.q
  %.not.i151 = icmp eq i32 %i.dp, 0
  br i1 %.not.i151, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc152
  %i.dq = add i32 %i.dp, -1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %i.bo, align 8, !tbaa !187
  %i.dt = getelementptr inbounds nuw [36 x i8], ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !209
  %i.dw = sdiv i32 %i.dv, 64
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit

bb.s:                                             ; preds = %.noexc152
  %i.dx = load ptr, ptr %i.bp, align 8, !tbaa !185 ; 3 uses
  %.not8.i = icmp eq ptr %i.dx, null
  br i1 %.not8.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !211
  store i32 0, ptr %i.bq, align 4, !tbaa !211
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull %i.a)
          to label %.noexc153 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6

.noexc153:                                        ; preds = %bb.t
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.eb to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit

bb.u:                                             ; preds = %bb.s
  %i.ec = icmp ugt i32 %i.dd, 8191
  %i.ed = load i64, ptr %i.br, align 8, !tbaa !212 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3gui10CGUITTFont4drawERK14EnrichedStringRKN4core4rectIiEEbbPS7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i164, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i165, i64 16, i1 false), !tbaa.struct !318, !alias.scope !319
  %i.ig = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i165, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i164, i64 16 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq ptr %i.ig, %i.ho
  br i1 %.not.i.i.i.i.i166, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i163, !llvm.loop !279

_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i163, %.noexc169
  %.0.lcssa.i.i.i.i.i167 = phi ptr [ %i.ie, %.noexc169 ], [ %i.ih, %.lr.ph.i.i.i.i.i163 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i167, i64 16
  %.not.i23.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ij = load ptr, ptr %i.hp, align 8, !tbaa !201
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = sub i64 %i.ik, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.il) #25
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ie, ptr %i.hl, align 8, !tbaa !200
  store ptr %i.ii, ptr %i.hn, align 8, !tbaa !302
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.ic
  store ptr %i.im, ptr %i.hp, align 8, !tbaa !201
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core4rectIiEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ak
  %i.in = getelementptr inbounds nuw i8, ptr %i.fs, i64 64 ; 2 uses
  %i.io = load ptr, ptr %i.bx, align 8, !tbaa !303
  %i.ip = load ptr, ptr %i.c, align 8, !tbaa !198 ; 2 uses
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = ashr exact i64 %i.is, 2
  %i.iu = icmp ult i64 %.0111307, %i.it           ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.0111307 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fs, i64 72 ; 3 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !303 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fs, i64 80 ; 3 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !199
  %.not.i170 = icmp eq ptr %i.ix, %i.iz
  br i1 %.not.i170, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE9push_backERKS2_.exit
  br i1 %i.iu, label %.then, label %.cont

.then:                                            ; preds = %bb.an
  %.then.val = load i32, ptr %i.iv, align 4, !tbaa !65
  br label %.cont

.cont:                                            ; preds = %bb.an, %.then
  %i.ja = phi i32 [ %.then.val, %.then ], [ -1, %bb.an ]
  store i32 %i.ja, ptr %i.ix, align 4, !tbaa !65
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store ptr %i.jb, ptr %i.iw, align 8, !tbaa !303
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit

bb.ao:                                            ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE9push_backERKS2_.exit
  %i.jc = load ptr, ptr %i.in, align 8, !tbaa !198 ; 7 uses
  %i.jd = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.je = ptrtoint ptr %i.jc to i64               ; 4 uses
  %i.jf = sub i64 %i.jd, %i.je                    ; 3 uses
  %i.jg = icmp eq i64 %i.jf, 9223372036854775804
  br i1 %i.jg, label %.invoke, label %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ao
  %i.jh = ashr exact i64 %i.jf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i171 = call i64 @llvm.umax.i64(i64 %i.jh, i64 1)
  %i.ji = add nsw i64 %.sroa.speculated.i.i.i171, %i.jh ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.jh
  %i.jk = call i64 @llvm.umin.i64(i64 %i.ji, i64 2305843009213693951)
  %i.jl = select i1 %i.jj, i64 2305843009213693951, i64 %i.jk ; 3 uses
  %.not.i.i.i172 = icmp ne i64 %i.jl, 0
  call void @llvm.assume(i1 %.not.i.i.i172)
  %i.jm = shl nuw nsw i64 %i.jl, 2
  %i.jn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jm) #27
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc181:                                        ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.jo = ptrtoaddr ptr %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jf
  br i1 %i.iu, label %.noexc181.then, label %.noexc181.cont

.noexc181.then:                                   ; preds = %.noexc181
  %.then.val337 = load i32, ptr %i.iv, align 4, !tbaa !65
  br label %.noexc181.cont

.noexc181.cont:                                   ; preds = %.noexc181, %.noexc181.then
  %i.jq = phi i32 [ %.then.val337, %.noexc181.then ], [ -1, %.noexc181 ]
  store i32 %i.jq, ptr %i.jp, align 4, !tbaa !65
  %.not10.i.i.i.i.i173 = icmp eq ptr %i.jc, %i.ix
  br i1 %.not10.i.i.i.i.i173, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i174.preheader

.lr.ph.i.i.i.i.i174.preheader:                    ; preds = %.noexc181.cont
  %i.jr = add i64 %i.jd, -4
  %i.js = sub i64 %i.jr, %i.je                    ; 2 uses
  %i.jt = lshr i64 %i.js, 2
  %i.ju = add nuw nsw i64 %i.jt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.js, 28
  %i.jv = sub i64 %i.je, %i.jo
  %diff.check = icmp ugt i64 %i.jv, -32
  %or.cond523 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond523, label %.lr.ph.i.i.i.i.i174.preheader536, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i174.preheader
  %n.vec = and i64 %i.ju, 9223372036854775800     ; 3 uses
  %i.jw = shl i64 %n.vec, 2                       ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jn, i64 %i.jw  ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jc, i64 %i.jw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jn, i64 %i.jz ; 2 uses
  %next.gep446 = getelementptr i8, ptr %i.jc, i64 %i.jz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.ka = getelementptr i8, ptr %next.gep446, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep446, align 4, !tbaa !65, !alias.scope !321
  %wide.load447 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !65, !alias.scope !321
  %i.kb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !65, !alias.scope !320
  store <4 x i32> %wide.load447, ptr %i.kb, align 4, !tbaa !65, !alias.scope !320
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ju, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i174.preheader536

.lr.ph.i.i.i.i.i174.preheader536:                 ; preds = %.lr.ph.i.i.i.i.i174.preheader, %middle.block
  %.012.i.i.i.i.i175.ph = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i174.preheader ], [ %i.jx, %middle.block ]
  %.0911.i.i.i.i.i176.ph = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i174.preheader ], [ %i.jy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i174

.lr.ph.i.i.i.i.i174:                              ; preds = %.lr.ph.i.i.i.i.i174.preheader536, %.lr.ph.i.i.i.i.i174
  %.012.i.i.i.i.i175 = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i174 ], [ %.012.i.i.i.i.i175.ph, %.lr.ph.i.i.i.i.i174.preheader536 ] ; 2 uses
  %.0911.i.i.i.i.i176 = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i174 ], [ %.0911.i.i.i.i.i176.ph, %.lr.ph.i.i.i.i.i174.preheader536 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.kd = load i32, ptr %.0911.i.i.i.i.i176, align 4, !tbaa !65, !alias.scope !321
  store i32 %i.kd, ptr %.012.i.i.i.i.i175, align 4, !tbaa !65, !alias.scope !320
  %i.ke = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i176, i64 4 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i175, i64 4 ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.ke, %i.ix
  br i1 %.not.i.i.i.i.i177, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i174, !llvm.loop !284

_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i174, %middle.block, %.noexc181.cont
  %.0.lcssa.i.i.i.i.i178 = phi ptr [ %i.jn, %.noexc181.cont ], [ %i.jx, %middle.block ], [ %i.kf, %.lr.ph.i.i.i.i.i174 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i178, i64 4
  %.not.i23.i.i179 = icmp eq ptr %i.jc, null
  br i1 %.not.i23.i.i179, label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.kh = load ptr, ptr %i.iy, align 8, !tbaa !199
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.kj) #25
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ap, %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.jn, ptr %i.in, align 8, !tbaa !198
  store ptr %i.kg, ptr %i.iw, align 8, !tbaa !303
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jl
  store ptr %i.kk, ptr %i.iy, align 8, !tbaa !199
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.af, %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.t, %bb.q, %bb.ac, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.thread270:                                       ; preds = %bb.ad, %bb.ae
  %i.kl = load ptr, ptr %i.bp, align 8, !tbaa !185 ; 3 uses
  %.not278 = icmp eq ptr %i.kl, null
  br i1 %.not278, label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %i.dd, ptr %i.b, align 4, !tbaa !211
  store i32 0, ptr %i.by, align 4, !tbaa !211
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !22
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = invoke i64 %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, i32 noundef signext %i.dd, i32 noundef signext %.0113306)
          to label %bb.ar unwind label %bb.aw     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %.sroa.0231.0.extract.trunc = trunc i64 %i.kp to i32
  %.sroa.5232.0.extract.shift = lshr i64 %i.kp, 32
  %.sroa.5232.0.extract.trunc = trunc nuw i64 %.sroa.5232.0.extract.shift to i32
  %i.kq = add nsw i32 %.sroa.0245.2304, %.sroa.0231.0.extract.trunc ; 2 uses
  %i.kr = add nsw i32 %.sroa.19.1305, %.sroa.5232.0.extract.trunc ; 2 uses
  %i.ks = load ptr, ptr %i.bp, align 8, !tbaa !185 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.bz, ptr %7, align 8, !tbaa !322
  store i64 0, ptr %i.ca, align 8, !tbaa !323
  store i32 0, ptr %i.bz, align 8, !tbaa !211
  %i.kt = call i64 @wcslen(ptr noundef nonnull %i.b) #28
  %i.ku = and i64 %i.kt, 4294967295               ; 5 uses
  %.not279 = icmp eq i64 %i.ku, 0
  br i1 %.not279, label %_ZN4core6stringIwEC2IwEEPKT_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ku, i32 noundef signext 0)
          to label %._crit_edge.i unwind label %bb.au

._crit_edge.i:                                    ; preds = %bb.as
  %i.kv = load ptr, ptr %7, align 8, !tbaa !207
  %i.kw = shl nuw nsw i64 %i.ku, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kv, ptr nonnull align 4 %i.b, i64 %i.kw, i1 false), !tbaa !211
  %.pre = load i64, ptr %i.ca, align 8, !tbaa !323
  %i.kx = icmp ugt i64 %.pre, %i.ku
  br i1 %i.kx, label %bb.at, label %_ZN4core6stringIwEC2IwEEPKT_.exit

bb.at:                                            ; preds = %._crit_edge.i
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ku, i32 noundef signext 0)
          to label %_ZN4core6stringIwEC2IwEEPKT_.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kz = load ptr, ptr %7, align 8, !tbaa !207   ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.bz
  br i1 %i.la, label %.body, label %.body.sink.split

_ZN4core6stringIwEC2IwEEPKT_.exit:                ; preds = %bb.ar, %bb.at, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.lb = add nsw i32 %i.kq, -1
  %i.lc = add nsw i32 %i.kr, -1
  %.sroa.5.0.insert.ext = zext i32 %i.lc to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0230.0.insert.ext = zext i32 %i.lb to i64
  %.sroa.0230.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0230.0.insert.ext
  store i64 %.sroa.0230.0.insert.insert, ptr %8, align 8, !tbaa !65
  %i.ld = load i64, ptr %i.bn, align 4, !tbaa !65
  store i64 %i.ld, ptr %i.cb, align 8, !tbaa !65
  %i.le = load ptr, ptr %i.bx, align 8, !tbaa !303
  %i.lf = load ptr, ptr %i.c, align 8, !tbaa !198 ; 2 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = ashr exact i64 %i.li, 2
  %i.lk = icmp ult i64 %.0111307, %i.lj
  br i1 %i.lk, label %_ZN4core6stringIwEC2IwEEPKT_.exit.then, label %_ZN4core6stringIwEC2IwEEPKT_.exit.cont

_ZN4core6stringIwEC2IwEEPKT_.exit.then:           ; preds = %_ZN4core6stringIwEC2IwEEPKT_.exit
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %.0111307
  %.sroa.034.0.copyload.then.val = load i32, ptr %i.ll, align 4, !tbaa !65
  br label %_ZN4core6stringIwEC2IwEEPKT_.exit.cont

_ZN4core6stringIwEC2IwEEPKT_.exit.cont:           ; preds = %_ZN4core6stringIwEC2IwEEPKT_.exit, %_ZN4core6stringIwEC2IwEEPKT_.exit.then
  %.sroa.034.0.copyload = phi i32 [ %.sroa.034.0.copyload.then.val, %_ZN4core6stringIwEC2IwEEPKT_.exit.then ], [ -1, %_ZN4core6stringIwEC2IwEEPKT_.exit ]
  %i.lm = load ptr, ptr %i.ks, align 8, !tbaa !22
  %i.ln = load ptr, ptr %i.lm, align 8
  invoke void %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 %.sroa.034.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %5)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %_ZN4core6stringIwEC2IwEEPKT_.exit.cont
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.lo = load ptr, ptr %7, align 8, !tbaa !207   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.bz
  br i1 %i.lp, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i182

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i182: ; preds = %bb.av
  %i.lq = load i64, ptr %i.bz, align 8, !tbaa !30
  %i.lr = shl i64 %i.lq, 2
  %i.ls = add i64 %i.lr, 4
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #25
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit

bb.aw:                                            ; preds = %bb.aq
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %_ZN4core6stringIwEC2IwEEPKT_.exit.cont
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.lv = load ptr, ptr %7, align 8, !tbaa !207   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.bz
  br i1 %i.lw, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.kz, %bb.au ], [ %i.lv, %bb.ax ]
  %.pn141.ph = phi { ptr, i32 } [ %i.ky, %bb.au ], [ %i.lu, %bb.ax ]
  %i.lx = load i64, ptr %i.bz, align 8, !tbaa !30
  %i.ly = shl i64 %i.lx, 2
  %i.lz = add i64 %i.ly, 4
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.lz) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ax, %bb.au
  %.pn141 = phi { ptr, i32 } [ %i.ky, %bb.au ], [ %i.lu, %bb.ax ], [ %.pn141.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ay

bb.ay:                                            ; preds = %.body, %bb.aw
  %.pn141.pn = phi { ptr, i32 } [ %.pn141, %.body ], [ %i.lt, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %.cont, %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit, %_ZN4core6stringIwED2Ev.exit, %.thread270, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit
  %.sroa.0245.3 = phi i32 [ %i.kq, %_ZN4core6stringIwED2Ev.exit ], [ %.sroa.0245.2304, %.thread270 ], [ %i.fm, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0245.2304, %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit ], [ %.sroa.0245.2304, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit ], [ %i.fm, %.cont ], [ %.sroa.0245.2304, %bb.ab ], [ %.sroa.0245.2304, %bb.aa ], [ %.sroa.0245.2304, %bb.z ]
  %.sroa.19.2 = phi i32 [ %i.kr, %_ZN4core6stringIwED2Ev.exit ], [ %.sroa.19.1305, %.thread270 ], [ %i.fn, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.1305, %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit ], [ %.sroa.19.1305, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit ], [ %i.fn, %.cont ], [ %.sroa.19.1305, %bb.ab ], [ %.sroa.19.1305, %bb.aa ], [ %.sroa.19.1305, %bb.z ]
  %i.ma = add i32 %.sroa.0245.3, %.0.i
  %.pre341 = load i64, ptr %i.bg, align 8, !tbaa !182
  br label %bb.az

bb.az:                                            ; preds = %bb.o, %bb.p, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit
  %i.mb = phi i64 [ %i.da, %bb.p ], [ %i.da, %bb.o ], [ %.pre341, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.1112266 = phi i64 [ %.1112.ph, %bb.p ], [ %.1112.ph, %bb.o ], [ %.0111307, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0245.4 = phi i32 [ %i.do, %bb.p ], [ %i.dj, %bb.o ], [ %i.ma, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.19.3 = phi i32 [ %i.di, %bb.p ], [ %i.di, %bb.o ], [ %.sroa.19.2, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit ]
  %.1114 = phi i32 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.dd, %_ZNSt6vectorIN5video6SColorESaIS1_EE9push_backERKS1_.exit ]
  %i.mc = add i64 %.1112266, 1                    ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  br i1 %i.md, label %bb.m, label %._crit_edge309, !llvm.loop !285

_ZNK3gui10CGUITTFont18update_glyph_pagesEv.exit:  ; preds = %bb.l
  %.pre349 = and i64 %i.cx, 34359738360
  %i.me = icmp eq i64 %.pre349, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.mf = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.mf, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.mg = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %10, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.mg, align 8, !tbaa !325
  br i1 %i.me, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit, label %.lr.ph316

.lr.ph316:                                        ; preds = %_ZNK3gui10CGUITTFont18update_glyph_pagesEv.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 220
  br label %bb.bc

._crit_edge317:                                   ; preds = %.loopexit287
  %.pre346 = load ptr, ptr %10, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre346, null
  br i1 %.not.i.i.i.i, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge317
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !201
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %.pre346 to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %.pre346, i64 noundef %i.mr) #25
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit

_ZN4core5arrayINS_4rectIiEEED2Ev.exit:            ; preds = %_ZNK3gui10CGUITTFont18update_glyph_pagesEv.exit.thread, %_ZNK3gui10CGUITTFont18update_glyph_pagesEv.exit, %._crit_edge317, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ms = load ptr, ptr %9, align 8, !tbaa !202   ; 3 uses
  %.not.i.i.i.i189 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i189, label %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !203
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #25
  br label %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit

_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit:        ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.my = load ptr, ptr %6, align 8, !tbaa !186   ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.ax
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit
  %i.na = load i64, ptr %i.ax, align 8, !tbaa !30
  %i.nb = shl i64 %i.na, 2
  %i.nc = add i64 %i.nb, 4
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bz

bb.bc:                                            ; preds = %.lr.ph316, %.loopexit287
  %i.nd = phi ptr [ %i.cs, %.lr.ph316 ], [ %i.uc, %.loopexit287 ] ; 2 uses
  %i.ne = phi ptr [ %i.ct, %.lr.ph316 ], [ %i.ud, %.loopexit287 ]
  %indvars.iv334 = phi i64 [ 0, %.lr.ph316 ], [ %indvars.iv.next335, %.loopexit287 ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %indvars.iv334
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !139 ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN3gui10CGUITTFont4drawERK14EnrichedStringRKN4core4rectIiEEbbPS7_:bb.a
  %i.sl = call noundef i32 @llvm.smin.i32(i32 %i.sk, i32 255)
  %i.sm = shl nuw i32 %i.sl, 24
  %i.sn = load ptr, ptr %i.d, align 8, !tbaa !169 ; 2 uses
  %i.so = load ptr, ptr %i.ng, align 8, !tbaa !59
  %i.sp = load ptr, ptr %i.sn, align 8, !tbaa !22
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 408
  %i.sr = load ptr, ptr %i.sq, align 8
  invoke void %i.sr(ptr noundef nonnull align 8 dereferenceable(8) %i.sn, ptr noundef %i.so, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef %5, i32 %i.sm, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.bw

.preheader:                                       ; preds = %._crit_edge312
  %i.ss = load ptr, ptr %i.mh, align 8, !tbaa !301
  %i.st = load ptr, ptr %9, align 8, !tbaa !202   ; 4 uses
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = ptrtoint ptr %i.st to i64
  %i.sw = sub i64 %i.su, %i.sv
  %i.sx = lshr exact i64 %i.sw, 3                 ; 2 uses
  %i.sy = and i64 %i.sx, 4294967295               ; 4 uses
  %.not322 = icmp eq i64 %i.sy, 0
  br i1 %.not322, label %.loopexit, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader
  %i.sz = load i32, ptr %i.ml, align 8, !tbaa !172 ; 2 uses
  %min.iters.check469 = icmp samesign ult i64 %i.sy, 4
  br i1 %min.iters.check469, label %scalar.ph468.preheader, label %vector.ph470

vector.ph470:                                     ; preds = %.lr.ph314
  %n.vec471 = and i64 %i.sx, 4294967292           ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.sz, i64 0 ; 2 uses
  %i.ta = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.tb = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph470
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next479, %vector.body472 ] ; 3 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %index473 ; 2 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %index473
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.tc, align 4, !tbaa !65
  %wide.vec475 = load <4 x i32>, ptr %i.te, align 4, !tbaa !65
  %interleaved.vec = sub nsw <4 x i32> %wide.vec, %i.ta
  store <4 x i32> %interleaved.vec, ptr %i.tc, align 4, !tbaa !65
  %interleaved.vec478 = sub nsw <4 x i32> %wide.vec475, %i.tb
  store <4 x i32> %interleaved.vec478, ptr %i.te, align 4, !tbaa !65
  %index.next479 = add nuw i64 %index473, 4       ; 2 uses
  %i.tf = icmp eq i64 %index.next479, %n.vec471
  br i1 %i.tf, label %middle.block480, label %vector.body472, !llvm.loop !297

middle.block480:                                  ; preds = %vector.body472
  %cmp.n481 = icmp eq i64 %i.sy, %n.vec471
  br i1 %cmp.n481, label %.loopexit, label %scalar.ph468.preheader

scalar.ph468.preheader:                           ; preds = %.lr.ph314, %middle.block480
  %.0313.ph = phi i64 [ 0, %.lr.ph314 ], [ %n.vec471, %middle.block480 ]
  %i.tg = insertelement <2 x i32> poison, i32 %i.sz, i64 0
  %i.th = shufflevector <2 x i32> %i.tg, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %scalar.ph468

bb.bw:                                            ; preds = %.loopexit, %_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i, %._crit_edge312
  %i.ti = landingpad { ptr, i32 }
          cleanup
  %i.tj = load ptr, ptr %10, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i.i195 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i.i195, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit196, label %bb.bx

scalar.ph468:                                     ; preds = %scalar.ph468.preheader, %scalar.ph468
  %.0313 = phi i64 [ %i.tn, %scalar.ph468 ], [ %.0313.ph, %scalar.ph468.preheader ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %.0313 ; 2 uses
  %i.tl = load <2 x i32>, ptr %i.tk, align 4, !tbaa !65
  %i.tm = sub nsw <2 x i32> %i.tl, %i.th
  store <2 x i32> %i.tm, ptr %i.tk, align 4, !tbaa !65
  %i.tn = add nuw nsw i64 %.0313, 1               ; 2 uses
  %exitcond333.not = icmp eq i64 %i.tn, %i.sy
  br i1 %exitcond333.not, label %.loopexit, label %scalar.ph468, !llvm.loop !298

.loopexit:                                        ; preds = %scalar.ph468, %middle.block480, %.preheader, %bb.bv
  %i.to = load ptr, ptr %i.d, align 8, !tbaa !169 ; 2 uses
  %i.tp = load ptr, ptr %i.ng, align 8, !tbaa !59
  %i.tq = load ptr, ptr %i.to, align 8, !tbaa !22
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 408
  %i.ts = load ptr, ptr %i.tr, align 8
  invoke void %i.ts(ptr noundef nonnull align 8 dereferenceable(8) %i.to, ptr noundef %i.tp, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef %5, i32 %i.nx, i1 noundef zeroext true)
          to label %bb.bd unwind label %bb.bw, !llvm.loop !299

bb.bx:                                            ; preds = %bb.bw
  %i.tt = load ptr, ptr %i.mk, align 8, !tbaa !201
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = ptrtoint ptr %i.tj to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.tw) #25
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit196

_ZN4core5arrayINS_4rectIiEEED2Ev.exit196:         ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.tx = load ptr, ptr %9, align 8, !tbaa !202   ; 3 uses
  %.not.i.i.i.i197 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i.i.i197, label %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198, label %bb.by

bb.by:                                            ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit196
  %i.ty = load ptr, ptr %i.mi, align 8, !tbaa !203
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = ptrtoint ptr %i.tx to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.ub) #25
  br label %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198

_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198:     ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit196, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit287.loopexit:                            ; preds = %bb.bd
  %.pre344 = load ptr, ptr %i.g, align 8, !tbaa !142
  %.pre345 = load ptr, ptr %i.f, align 8, !tbaa !143
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.bc
  %i.uc = phi ptr [ %.pre345, %.loopexit287.loopexit ], [ %i.nd, %bb.bc ] ; 2 uses
  %i.ud = phi ptr [ %.pre344, %.loopexit287.loopexit ], [ %i.ne, %bb.bc ] ; 2 uses
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %i.ue = ptrtoint ptr %i.ud to i64
  %i.uf = ptrtoint ptr %i.uc to i64
  %i.ug = sub i64 %i.ue, %i.uf
  %i.uh = lshr exact i64 %i.ug, 3
  %i.ui = and i64 %i.uh, 4294967295
  %i.uj = icmp samesign ult i64 %indvars.iv.next335, %i.ui
  br i1 %i.uj, label %bb.bc, label %._crit_edge317, !llvm.loop !300

bb.bz:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ay, %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %.pn141.pn, %bb.ay ], [ %i.ti, %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit198 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.uk = load ptr, ptr %6, align 8, !tbaa !186   ; 2 uses
  %i.ul = icmp eq ptr %i.uk, %i.ax
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i199: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.um = load i64, ptr %i.ax, align 8, !tbaa !30
  %i.un = shl i64 %i.um, 2
  %i.uo = add i64 %i.un, 4
  call void @_ZdlPvm(ptr noundef %i.uk, i64 noundef %i.uo) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit201: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn144.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !207    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !30
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK14EnrichedString9getColorsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZNK3gui10CGUITTFont12getDimensionEPKw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.30", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !181, !alias.scope !334
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %wcslen.i.i.i = call noundef i64 @wcslen(ptr nonnull readonly %1), !noalias !334 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %wcslen.i.i.i, 2    ; 3 uses
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
  store ptr %i.f, ptr %2, align 8, !tbaa !186, !alias.scope !334
  store i64 %wcslen.i.i.i, ptr %i.a, align 8, !tbaa !30, !alias.scope !334
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %bb.b
  %.pre8.i.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %wcslen.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.g = load i32, ptr %1, align 4, !tbaa !184, !noalias !334
  store i32 %i.g, ptr %.pre8.i.i.i, align 4, !tbaa !184
  br label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr nonnull readonly align 4 %1, i64 %.idx.i.i, i1 false)
  br label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit

_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %wcslen.i.i.i, ptr %i.h, align 8, !tbaa !182, !alias.scope !334
  %i.i = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i, i64 %.idx.i.i
  store i32 0, ptr %i.i, align 4, !tbaa !184
  %i.j = invoke i64 @_ZNK3gui10CGUITTFont12getDimensionERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !186    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.a, align 8, !tbaa !30
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i64 %i.j

bb.g:                                             ; preds = %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !186    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3: ; preds = %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !30
  %i.t = shl i64 %i.s, 2
  %i.u = add i64 %i.t, 4
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit5: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.30") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(248) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !181
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %wcslen.i.i = tail call noundef i64 @wcslen(ptr nonnull %2) ; 6 uses
  %.idx.i = shl nuw nsw i64 %wcslen.i.i, 2        ; 3 uses
  %i.c = icmp ugt i64 %wcslen.i.i, 3
  br i1 %i.c, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %wcslen.i.i, 1152921504606846975
  br i1 %i.d, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.e = add nuw nsw i64 %.idx.i, 4
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !186
  store i64 %wcslen.i.i, ptr %i.a, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i, %bb.b
  %.pre8.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %wcslen.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i32, ptr %2, align 4, !tbaa !184
  store i32 %i.g, ptr %.pre8.i.i, align 4, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i, ptr nonnull align 4 %2, i64 %.idx.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %wcslen.i.i, ptr %i.h, align 8, !tbaa !182
  %i.i = getelementptr inbounds nuw i8, ptr %.pre8.i.i, i64 %.idx.i
  store i32 0, ptr %i.i, align 4, !tbaa !184
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZNK3gui10CGUITTFont10getKerningEDiDi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, i32 noundef zeroext %1, i32 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  %i.e = icmp eq i32 %2, 0
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !168
  %i.h = tail call i32 @FT_Set_Pixel_Sizes(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load i32, ptr %i.i, align 8, !tbaa !179  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.l = load i32, ptr %i.k, align 4, !tbaa !180  ; 3 uses
  %i.m = tail call noundef i32 @_ZNK3gui10CGUITTFont19getGlyphIndexByCharEDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext %1) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !185  ; 3 uses
  %.not19 = icmp eq ptr %i.p, null
  br i1 %.not19, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef signext %1, i32 noundef signext %2) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.t to i32
  %.sroa.8.0.extract.shift = lshr i64 %i.t, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !335
  %i.x = and i64 %i.w, 64
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.y = tail call noundef i32 @_ZNK3gui10CGUITTFont19getGlyphIndexByCharEDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext %2)
  %i.z = call i32 @FT_Get_Kerning(ptr noundef nonnull %i.u, i32 noundef %i.y, i32 noundef %i.m, i32 noundef 0, ptr noundef nonnull %3) ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !335
  %i.ad = and i64 %i.ac, 1
  %.not14 = icmp eq i64 %i.ad, 0
  %i.ae = load i64, ptr %3, align 8, !tbaa !336   ; 2 uses
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sdiv i64 %i.ae, 64
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !337
  %i.ai = sdiv i64 %i.ah, 64
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !337
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.in = phi i64 [ %i.ak, %bb.h ], [ %i.ai, %bb.g ]
  %.pn18.in = phi i64 [ %i.ae, %bb.h ], [ %i.af, %bb.g ]
  %.pn18 = trunc i64 %.pn18.in to i32
  %.sroa.0.0 = add i32 %i.j, %.pn18
  %.pn = trunc i64 %.pn.in to i32
  %.sroa.8.0 = add i32 %i.l, %.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.d, %bb.c, %bb.e
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.i ], [ %.sroa.8.0.extract.trunc, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.i ], [ %.sroa.0.0.extract.trunc, %bb.d ], [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ 0, %bb.a ]
  %.sroa.8.0.insert.ext = zext i32 %.sroa.8.1 to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZNK3gui10CGUITTFont12getDimensionERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !208
  %i.d = sdiv i64 %i.c, 64
  %i.e = trunc i64 %i.d to i32
  %i.f = add i32 %i.e, 1                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !182  ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.m = call i32 @llvm.umax.i32(i32 %.sroa.031.2, i32 %.sroa.0.1)
  %i.n = zext i32 %i.m to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.031.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  %.sroa.6.0.lcssa = phi i32 [ %i.f, %bb.a ], [ %.sroa.6.1, %._crit_edge.loopexit ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0.lcssa to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.031.0.lcssa
  ret i64 %.sroa.031.0.insert.insert

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.o = phi i64 [ %i.h, %.lr.ph ], [ %i.at, %bb.l ]
  %.045 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.l ]
  %.01644 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.l ] ; 5 uses
  %.sroa.6.043 = phi i32 [ %i.f, %.lr.ph ], [ %.sroa.6.1, %bb.l ] ; 2 uses
  %.sroa.0.042 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.l ] ; 2 uses
  %.sroa.031.041 = phi i32 [ 0, %.lr.ph ], [ %.sroa.031.2, %bb.l ] ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.01644
  %i.r = load i32, ptr %i.q, align 4, !tbaa !184  ; 6 uses
  switch i32 %i.r, label %bb.e [
    i32 13, label %bb.c
    i32 10, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.01644, 1                   ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !184
  %i.v = icmp eq i32 %i.u, 10
  %spec.select39 = select i1 %i.v, i64 %i.s, i64 %.01644
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117.ph = phi i64 [ %.01644, %bb.b ], [ %spec.select39, %bb.c ]
  %i.w = add i32 %.sroa.6.043, %i.f
  %spec.select40 = call i32 @llvm.umax.i32(i32 %.sroa.031.041, i32 %.sroa.0.042)
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.x = call i64 @_ZNK3gui10CGUITTFont10getKerningEDiDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext %i.r, i32 noundef zeroext %.045)
  %.sroa.0.0.extract.trunc = trunc i64 %i.x to i32
  %i.y = add i32 %.sroa.0.042, %.sroa.0.0.extract.trunc
  %i.z = call noundef i32 @_ZNK3gui10CGUITTFont19getGlyphIndexByCharEDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext %i.r) ; 2 uses
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i32 %i.z, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !187
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !209
  %i.ag = sdiv i32 %i.af, 64
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !185 ; 3 uses
  %.not8.i = icmp eq ptr %i.ah, null
  br i1 %.not8.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.r, ptr %i.a, align 4, !tbaa !211
  store i32 0, ptr %i.k, align 4, !tbaa !211
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.a), !inline_history !6
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.al to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit

bb.i:                                             ; preds = %bb.g
  %i.am = icmp ugt i32 %i.r, 8191
  %i.an = load i64, ptr %i.l, align 8, !tbaa !212 ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = sdiv i64 %i.an, 64
  %i.ap = trunc i64 %i.ao to i32
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = sdiv i64 %i.an, 128
  %i.ar = trunc i64 %i.aq to i32
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit

_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.ag, %bb.f ], [ %.sroa.0.0.extract.trunc.i, %bb.h ], [ %i.ap, %bb.j ], [ %i.ar, %bb.k ]
  %i.as = add i32 %i.y, %.0.i
  %.pre = load i64, ptr %i.g, align 8, !tbaa !182
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit
  %i.at = phi i64 [ %.pre, %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit ], [ %i.o, %bb.d ] ; 2 uses
  %.11737 = phi i64 [ %.01644, %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit ], [ %.117.ph, %bb.d ]
  %.sroa.031.2 = phi i32 [ %.sroa.031.041, %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit ], [ %spec.select40, %bb.d ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %i.as, %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit ], [ 0, %bb.d ] ; 2 uses
  %.sroa.6.1 = phi i32 [ %.sroa.6.043, %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit ], [ %i.w, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.r, %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit ], [ 0, %bb.d ]
  %i.au = add i64 %.11737, 1                      ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !338
}

declare i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK3gui10CGUITTFont19getCharacterFromPosEPKwi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string.30", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !181, !alias.scope !341
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %wcslen.i.i.i = call noundef i64 @wcslen(ptr nonnull readonly %1), !noalias !341 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %wcslen.i.i.i, 2    ; 4 uses
  %i.d = icmp ugt i64 %wcslen.i.i.i, 3
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ugt i64 %wcslen.i.i.i, 1152921504606846975
  br i1 %i.e, label %.noexc.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.f = add nuw nsw i64 %.idx.i.i, 4
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !186, !alias.scope !341
  store i64 %wcslen.i.i.i, ptr %i.b, align 8, !tbaa !30, !alias.scope !341
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i ], [ %i.b, %bb.b ] ; 6 uses
  switch i64 %wcslen.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i32, ptr %1, align 4, !tbaa !184, !noalias !341
  store i32 %i.i, ptr %i.h, align 4, !tbaa !184
  br label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %1, i64 %.idx.i.i, i1 false)
  br label %.lr.ph.i

_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit: ; preds = %._crit_edge.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !182, !alias.scope !341
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  store i32 0, ptr %i.k, align 4, !tbaa !184
  br label %_ZNK3gui10CGUITTFont19getCharacterFromPosERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEi.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %wcslen.i.i.i, ptr %i.l, align 8, !tbaa !182, !alias.scope !341
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  store i32 0, ptr %i.m, align 4, !tbaa !184
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %.01432.i = phi i32 [ 0, %.lr.ph.i ], [ %i.r, %bb.m ]
  %.01531.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ap, %bb.m ] ; 2 uses
  %.01730.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %bb.m ]
  %.sroa.020.029.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.r = load i32, ptr %.sroa.020.029.i, align 4, !tbaa !184 ; 5 uses
  %i.s = invoke noundef i32 @_ZNK3gui10CGUITTFont19getGlyphIndexByCharEDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext %i.r)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.t = add i32 %i.s, -1
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !187
  %i.w = getelementptr inbounds nuw [36 x i8], ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !209
  %i.z = sdiv i32 %i.y, 64
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit.i

bb.h:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !185 ; 3 uses
  %.not8.i.i = icmp eq ptr %i.aa, null
  br i1 %.not8.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.r, ptr %i.a, align 4, !tbaa !211
  store i32 0, ptr %i.p, align 4, !tbaa !211
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.a)
          to label %.noexc4 unwind label %bb.n, !inline_history !342

.noexc4:                                          ; preds = %bb.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ae to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit.i

bb.j:                                             ; preds = %bb.h
  %i.af = icmp ugt i32 %i.r, 8191
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !212 ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = sdiv i64 %i.ag, 64
  %i.ai = trunc i64 %i.ah to i32
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aj = sdiv i64 %i.ag, 128
  %i.ak = trunc i64 %i.aj to i32
  br label %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit.i

_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit.i: ; preds = %bb.l, %bb.k, %.noexc4, %bb.g
  %.0.i.i = phi i32 [ %i.z, %bb.g ], [ %.sroa.0.0.extract.trunc.i.i, %.noexc4 ], [ %i.ai, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = invoke i64 @_ZNK3gui10CGUITTFont10getKerningEDiDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext %i.r, i32 noundef zeroext %.01432.i)
          to label %.noexc5 unwind label %bb.n

.noexc5:                                          ; preds = %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit.i
  %i.am = add i32 %.0.i.i, %.01730.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.al to i32
  %i.an = add nsw i32 %i.am, %.sroa.0.0.extract.trunc.i ; 2 uses
  %.not.i = icmp slt i32 %i.an, %2
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !186 ; 3 uses
  br i1 %.not.i, label %bb.m, label %_ZNK3gui10CGUITTFont19getCharacterFromPosERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEi.exit

bb.m:                                             ; preds = %.noexc5
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 4 ; 2 uses
  %i.ap = add i32 %.01531.i, 1
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !182
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %i.aq
  %.not27.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not27.i, label %_ZNK3gui10CGUITTFont19getCharacterFromPosERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEi.exit, label %bb.f

_ZNK3gui10CGUITTFont19getCharacterFromPosERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEi.exit: ; preds = %bb.m, %.noexc5, %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit
  %i.as = phi ptr [ %i.h, %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit ], [ %.pre.pre, %.noexc5 ], [ %.pre.pre, %bb.m ] ; 2 uses
  %.2.i = phi i32 [ -1, %_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw.exit ], [ -1, %bb.m ], [ %.01531.i, %.noexc5 ]
  %i.at = icmp eq ptr %i.as, %i.b
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK3gui10CGUITTFont19getCharacterFromPosERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEi.exit
  %i.au = load i64, ptr %i.b, align 8, !tbaa !30
  %i.av = shl i64 %i.au, 2
  %i.aw = add i64 %i.av, 4
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNK3gui10CGUITTFont19getCharacterFromPosERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEi.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.2.i

bb.n:                                             ; preds = %_ZNK3gui10CGUITTFont21getWidthFromCharacterEDi.exit.i, %bb.i, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %3, align 8, !tbaa !186   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i6: ; preds = %bb.n
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !30
  %i.bb = shl i64 %i.ba, 2
  %i.bc = add i64 %i.bb, 4
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit8: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK3gui10CGUITTFont19getCharacterFromPosERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !182
  %.not2728 = icmp eq i64 %i.c, 0
  br i1 %.not2728, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.01432 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.i ]
  %.01531 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.i ] ; 2 uses
  %.01730 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.i ]
  %.sroa.020.029 = phi ptr [ %i.d, %.lr.ph ], [ %i.af, %bb.i ] ; 2 uses
  %i.i = load i32, ptr %.sroa.020.029, align 4, !tbaa !184 ; 5 uses
  %i.j = call noundef i32 @_ZNK3gui10CGUITTFont19getGlyphIndexByCharEDi(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef zeroext %i.i) ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %i.l
end_hunk_3
