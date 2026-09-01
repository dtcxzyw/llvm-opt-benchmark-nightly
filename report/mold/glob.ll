Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/glob?download=true
inline.NumInlined: 1084
inline.NumDeleted: 505
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4mold4Glob7Pattern7compileESt17basic_string_viewIcSt11char_traitsIcEEl:bb.a
bb.am:                                            ; preds = %bb.b
  %i.el = load ptr, ptr %4, align 16, !tbaa !31
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !31  ; 11 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -72
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !21
  %.not26 = icmp eq i32 %i.ep, 0
  br i1 %.not26, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.eq = load ptr, ptr %i.h, align 16, !tbaa !20
  %.not.i40 = icmp eq ptr %i.em, %i.eq
  br i1 %.not.i40, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.em, align 8, !tbaa !21
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 24 ; 2 uses
  store ptr %i.es, ptr %i.er, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 0, ptr %i.et, align 8, !tbaa !30
  store i8 0, ptr %i.es, align 8, !tbaa !14
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i8 0, i64 32, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 72 ; 2 uses
  store ptr %i.ev, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit42

bb.aq:                                            ; preds = %bb.ao
  call void @_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE17_M_realloc_insertIJNS2_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.em, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %.pre114.pre = load ptr, ptr %i.g, align 8, !tbaa !31
  br label %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit42

_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit42: ; preds = %bb.ap, %bb.aq
  %.pre114 = phi ptr [ %i.ev, %bb.ap ], [ %.pre114.pre, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit42, %bb.an
  %i.ew = phi ptr [ %.pre114, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit42 ], [ %i.em, %bb.an ] ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -64 ; 4 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -56 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !30 ; 4 uses
  %i.fa = add i64 %i.ez, 1                        ; 3 uses
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !39 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.ew, i64 -48 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46: ; preds = %bb.ar
  %i.fe = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fe)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.ar
  %i.ff = load i64, ptr %i.fc, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46
  %i.fg = phi i64 [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46 ]
  %i.fh = icmp ugt i64 %i.fa, %i.fg
  br i1 %i.fh, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i64 noundef %i.ez, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i45 = load ptr, ptr %i.ex, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44, %bb.as
  %i.fi = phi ptr [ %.pre.i.i45, %bb.as ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.ez
  store i8 %i.i, ptr %i.fj, align 1, !tbaa !14
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !30
  %i.fk = load ptr, ptr %i.ex, align 8, !tbaa !39
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fa
  store i8 0, ptr %i.fl, align 1, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit36, %bb.z, %bb.u, %bb.t
  %.sroa.054.6 = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47 ], [ %i.ch, %bb.u ], [ %i.ch, %bb.t ], [ %i.k, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit33 ], [ %i.k, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit36 ], [ %i.k, %bb.z ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 2 uses
  %.sroa.24.6 = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47 ], [ %i.cg, %bb.u ], [ %i.cg, %bb.t ], [ %i.j, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit33 ], [ %i.j, %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EE12emplace_backIJNS2_4KindEEEERS3_DpOT_.exit36 ], [ %i.j, %bb.z ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ]
  %i.fm = icmp eq i64 %.sroa.054.6, 0
  br i1 %i.fm, label %_ZN4mold4Glob7PatternD2Ev.exit.loopexit, label %bb.b, !llvm.loop !40

_ZN4mold4Glob7PatternD2Ev.exit.loopexit:          ; preds = %.critedge
  %i.fn = load <2 x ptr>, ptr %4, align 16, !tbaa !31
  %.pre118 = load ptr, ptr %i.h, align 16, !tbaa !20
  br label %_ZN4mold4Glob7PatternD2Ev.exit

_ZN4mold4Glob7PatternD2Ev.exit:                   ; preds = %_ZN4mold4Glob7PatternD2Ev.exit.loopexit, %bb.a
  %i.fo = phi ptr [ %.pre118, %_ZN4mold4Glob7PatternD2Ev.exit.loopexit ], [ null, %bb.a ]
  %i.fp = phi <2 x ptr> [ %i.fn, %_ZN4mold4Glob7PatternD2Ev.exit.loopexit ], [ splat (ptr null), %bb.a ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.fp, ptr %0, align 8, !tbaa !31
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.fr, align 8, !tbaa !41
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.fs, align 8, !tbaa !32
  br label %.critedge30

.critedge30:                                      ; preds = %bb.i, %bb.ae, %bb.n, %bb.q, %.critedge28, %_ZN4mold4Glob7PatternD2Ev.exit
  %i.ft = phi ptr [ %i.s, %bb.i ], [ %.pre120, %bb.ae ], [ %i.s, %bb.n ], [ %i.s, %bb.q ], [ %i.s, %.critedge28 ], [ null, %_ZN4mold4Glob7PatternD2Ev.exit ] ; 2 uses
  %i.fu = load ptr, ptr %4, align 16, !tbaa !46   ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.fu, %i.ft
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge30, %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gb, %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i ], [ %i.fu, %.critedge30 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !39 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !14
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #17
  br label %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gb, %i.ft
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4mold4Glob7Pattern5TokenEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !46
  br label %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exit.i

_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exitthread-pre-split.i, %.critedge30
  %i.gc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exitthread-pre-split.i ], [ %i.fu, %.critedge30 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ge = load ptr, ptr %i.gd, align 16, !tbaa !20
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #17
  br label %_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EED2Ev.exit

_ZNSt6vectorIN4mold4Glob7Pattern5TokenESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4mold4Glob7Pattern5TokenEEvT_S5_.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind
define dso_local noundef zeroext i1 @_ZNK4mold4Glob7Pattern5matchESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, ptr %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30   ; 4 uses
  %.not.i = icmp ult i64 %1, %i.k
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.n = sub i64 0, %i.k
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.o, ptr %i.i, i64 %i.k)
  %i.p = icmp eq i32 %bcmp.i, 0
  br i1 %i.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread: ; preds = %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit, %bb.b, %bb.a
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 72                  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %2 to i64
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread
  %.056.ph.ph = phi i64 [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread ], [ %.us-phi135, %.outer.outer.backedge ] ; 7 uses
  %.051.ph.ph = phi i64 [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread ], [ %.051.ph.ph.be, %.outer.outer.backedge ] ; 12 uses
  %.047.ph.ph = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread ], [ %.047.ph.ph.be, %.outer.outer.backedge ]
  %.041.ph.ph = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread ], [ %.041.ph.ph.be, %.outer.outer.backedge ]
  %.not62 = icmp eq i64 %.051.ph.ph, -1
  %.not63 = icmp ugt i64 %.051.ph.ph, %1          ; 2 uses
  %or.cond = select i1 %.not62, i1 true, i1 %.not63
  %or.cond.fr = freeze i1 %or.cond
  %i.x = icmp ult i64 %.051.ph.ph, %1             ; 4 uses
  %i.y = icmp ult i64 %.056.ph.ph, %i.t           ; 2 uses
  %or.cond154 = select i1 %i.x, i1 true, i1 %i.y
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.056.ph.ph ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.051.ph.ph
  %i.ac = sub nuw i64 %1, %.051.ph.ph             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.051.ph.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  %.047.ph = phi i64 [ %.047.ph.ph, %.outer.outer ], [ %.047.ph.be, %.outer.backedge ] ; 13 uses
  %.041.ph = phi i64 [ %.041.ph.ph, %.outer.outer ], [ %.041.ph.be, %.outer.backedge ] ; 21 uses
  %i.ag = icmp ult i64 %.041.ph, %1               ; 7 uses
  %i.ah = icmp ult i64 %.047.ph, %i.t             ; 3 uses
  %or.cond153 = select i1 %i.ag, i1 true, i1 %i.ah ; 2 uses
  br i1 %or.cond.fr, label %.outer.split.us, label %.outer.split.preheader, !llvm.loop !48

.outer.split.preheader:                           ; preds = %.outer
  br i1 %or.cond153, label %.critedge.peel, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82

.critedge.peel:                                   ; preds = %.outer.split.preheader
  br i1 %i.ah, label %bb.e, label %.thread97.peel

bb.e:                                             ; preds = %.critedge.peel
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.047.ph ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !21
  switch i32 %i.aj, label %.thread97.peel [
    i32 0, label %bb.i
    i32 1, label %.split.us
    i32 2, label %bb.h
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br i1 %i.ag, label %bb.g, label %.thread97.peel

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.041.ph
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !35
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  %.not110.peel = icmp eq i64 %i.at, 0
  br i1 %.not110.peel, label %.thread97.peel, label %.split140.us

bb.h:                                             ; preds = %bb.e
  br i1 %i.ag, label %.split144.us, label %.thread97.peel

bb.i:                                             ; preds = %bb.e
  %i.au = icmp ugt i64 %.041.ph, %1
  br i1 %i.au, label %.split148.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.peel

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.peel: ; preds = %bb.i
  %i.av = sub nuw i64 %1, %.041.ph                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.041.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !30 ; 4 uses
  %.sroa.speculated.i.i.peel = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ba) ; 2 uses
  %.not.i68.peel = icmp ugt i64 %i.ba, %i.av
  br i1 %.not.i68.peel, label %.thread97.peel, label %bb.j

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.peel
  %i.bb = icmp eq i64 %.sroa.speculated.i.i.peel, 0
  br i1 %i.bb, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.peel

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.peel: ; preds = %bb.j
  %bcmp.i.i.peel = tail call i32 @bcmp(ptr %i.aw, ptr %i.ay, i64 %.sroa.speculated.i.i.peel)
  %i.bc = icmp eq i32 %bcmp.i.i.peel, 0
  br i1 %i.bc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %.thread97.peel

.thread97.peel:                                   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.peel, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.peel, %bb.h, %bb.g, %bb.f, %bb.e, %.critedge.peel
  br i1 %or.cond154, label %.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82

.outer.split.us:                                  ; preds = %.outer
  br i1 %i.ah, label %bb.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82.loopexit.loopexit.split.loop.exit286

bb.k:                                             ; preds = %.outer.split.us
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.047.ph ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !21
  switch i32 %i.be, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82 [
    i32 0, label %bb.o
    i32 1, label %.split.us
    i32 2, label %bb.n
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %i.ag, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.041.ph
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = zext i8 %i.bh to i64                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !35
  %i.bm = and i64 %i.bi, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = and i64 %i.bn, %i.bl
  %.not110.us = icmp eq i64 %i.bo, 0
  br i1 %.not110.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82, label %.split140.us

bb.n:                                             ; preds = %bb.k
  br i1 %i.ag, label %.split144.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82

bb.o:                                             ; preds = %bb.k
  %i.bp = icmp ugt i64 %.041.ph, %1
  br i1 %i.bp, label %.split148.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.us

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.us: ; preds = %bb.o
  %i.bq = sub nuw i64 %1, %.041.ph                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %.041.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !39
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !30 ; 4 uses
  %.sroa.speculated.i.i.us = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bv) ; 2 uses
  %.not.i68.us = icmp ugt i64 %i.bv, %i.bq
  br i1 %.not.i68.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82, label %bb.p

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.us
  %i.bw = icmp eq i64 %.sroa.speculated.i.i.us, 0
  br i1 %i.bw, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.us

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.us: ; preds = %bb.p
  %bcmp.i.i.us = tail call i32 @bcmp(ptr %i.br, ptr %i.bt, i64 %.sroa.speculated.i.i.us)
  %i.bx = icmp eq i32 %bcmp.i.i.us, 0
  br i1 %i.bx, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82

.critedge:                                        ; preds = %.thread97.peel, %.critedge.backedge
  br i1 %i.y, label %bb.q, label %.critedge.backedge

bb.q:                                             ; preds = %.critedge
  %i.by = load i32, ptr %i.z, align 8, !tbaa !21
  switch i32 %i.by, label %.critedge.backedge [
    i32 0, label %bb.r
    i32 1, label %.split.us
    i32 2, label %bb.ac
    i32 3, label %bb.ad
  ]

bb.r:                                             ; preds = %bb.q
  br i1 %.not63, label %.split148.us, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

.split148.us:                                     ; preds = %bb.o, %bb.i, %bb.r
  %.us-phi149 = phi i64 [ %.051.ph.ph, %bb.r ], [ %.041.ph, %bb.i ], [ %.041.ph, %bb.o ]
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i64 noundef %.us-phi149, i64 noundef %1) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.r
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ca = load i64, ptr %i.af, align 8, !tbaa !30 ; 4 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ca) ; 2 uses
  %.not.i68 = icmp ugt i64 %i.ca, %i.ac
  br i1 %.not.i68, label %.critedge.backedge, label %bb.s

bb.s:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.cb = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.cb, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.s
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.bz, i64 %.sroa.speculated.i.i)
  %i.cc = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit, label %.critedge.backedge

.critedge.backedge:                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.ac, %bb.ae, %bb.ad, %bb.q, %.critedge
  br label %.critedge, !llvm.loop !49

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withES2_.exit: ; preds = %bb.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.peel, %bb.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.us
  %.us-phi150 = phi i64 [ %.047.ph, %bb.p ], [ %.047.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.us ], [ %.047.ph, %bb.j ], [ %.047.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.peel ], [ %.056.ph.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.056.ph.ph, %bb.s ]
  %.us-phi151 = phi i64 [ %.041.ph, %bb.p ], [ %.041.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.us ], [ %.041.ph, %bb.j ], [ %.041.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.peel ], [ %.051.ph.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.051.ph.ph, %bb.s ]
  %.us-phi152 = phi i64 [ %i.bv, %bb.p ], [ %i.bv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.us ], [ %i.ba, %bb.j ], [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.peel ], [ %i.ca, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.ca, %bb.s ]
  %i.cd = add i64 %.us-phi152, %.us-phi151
  br label %.outer.backedge

.split.us:                                        ; preds = %bb.e, %bb.k, %bb.q
  %.us-phi135 = phi i64 [ %.056.ph.ph, %bb.q ], [ %.047.ph, %bb.k ], [ %.047.ph, %bb.e ] ; 3 uses
  %.us-phi136 = phi i64 [ %.051.ph.ph, %bb.q ], [ %.041.ph, %bb.k ], [ %.041.ph, %bb.e ] ; 8 uses
  %.us-phi137 = phi i1 [ %i.x, %bb.q ], [ %i.ag, %bb.k ], [ %i.ag, %bb.e ]
  %i.ce = add nuw nsw i64 %.us-phi135, 1          ; 4 uses
  %i.cf = icmp ult i64 %i.ce, %i.t
  br i1 %i.cf, label %bb.t, label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %.split.us, %bb.ab, %bb.t
  %.051.ph.ph.be.in = phi i64 [ %.us-phi136, %bb.t ], [ %.1.i.i, %bb.ab ], [ %.us-phi136, %.split.us ]
  %.047.ph.ph.be = phi i64 [ %i.ce, %bb.t ], [ %i.db, %bb.ab ], [ %i.ce, %.split.us ]
  %.041.ph.ph.be = phi i64 [ %.us-phi136, %bb.t ], [ %i.da, %bb.ab ], [ %.us-phi136, %.split.us ]
  %.051.ph.ph.be = add nsw i64 %.051.ph.ph.be.in, 1
  br label %.outer.outer, !llvm.loop !48

bb.t:                                             ; preds = %.split.us
  %i.cg = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.ce ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !21
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.u, label %.outer.outer.backedge

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !39 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !30 ; 6 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not27.i.i = icmp ugt i64 %.us-phi136, %1
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.w:                                             ; preds = %bb.u
  br i1 %.us-phi137, label %bb.x, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.co = sub nuw i64 %1, %.us-phi136             ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.co, %i.cm
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %.us-phi136
  %i.cq = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cr = sext i8 %i.cq to i32
  %invariant.op = sub i64 1, %i.cm
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.co, %.lr.ph.i.i ], [ %i.cz, %bb.aa ]
  %.02032.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.cx, %bb.aa ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.cs = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.cs, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.y
  %i.ct = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.cr, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #4 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.ct, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i71 = tail call i32 @bcmp(ptr nonnull %i.ct, ptr nonnull %i.ck, i64 %i.cm)
  %i.cu = icmp eq i32 %bcmp.i.i71, 0
  br i1 %i.cu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cv, %i.w
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.aa:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.v, %i.cy                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.cz, %i.cm
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.y, !llvm.loop !51

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.w, %bb.x, %bb.v, %bb.aa, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.y
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82, !llvm.loop !48

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.v, %bb.z
  %.1.i.i = phi i64 [ %.us-phi136, %bb.v ], [ %i.cw, %bb.z ] ; 3 uses
  %.not = icmp eq i64 %.1.i.i, -1
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withES2_.exit.thread82, label %bb.ab, !llvm.loop !48

bb.ab:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.da = add i64 %.1.i.i, %i.cm
  %i.db = add nsw i64 %.us-phi135, 2
  br label %.outer.outer.backedge

bb.ac:                                            ; preds = %bb.q
  br i1 %i.x, label %.split144.us, label %.critedge.backedge

.split144.us:                                     ; preds = %bb.ac, %bb.h, %bb.n
  %.us-phi145 = phi i64 [ %.047.ph, %bb.n ], [ %.047.ph, %bb.h ], [ %.056.ph.ph, %bb.ac ]
  %.us-phi146 = phi i64 [ %.041.ph, %bb.n ], [ %.041.ph, %bb.h ], [ %.051.ph.ph, %bb.ac ]
  %i.dc = add nuw nsw i64 %.us-phi146, 1
  br label %.outer.backedge

end_hunk_0
