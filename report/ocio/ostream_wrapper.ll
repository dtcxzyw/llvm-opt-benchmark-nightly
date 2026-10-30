Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ostream_wrapper?download=true
inline.NumInlined: 133
inline.NumDeleted: 74
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4YAML15ostream_wrapperD2Ev:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %i.q = add i64 %i.n, 1
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ult i64 %i.l, %i.r
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.t = sub nuw i64 %i.r, %i.l
  tail call void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t)
  %.pre = load i64, ptr %i.o, align 8, !tbaa !32
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !23
  %.pre24 = load i64, ptr %i.m, align 8, !tbaa !22
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.c, %bb.d
  %i.u = phi i64 [ %i.n, %bb.c ], [ %.pre24, %bb.d ]
  %i.v = phi ptr [ %i.i, %bb.c ], [ %.pre23, %bb.d ]
  %i.w = phi i64 [ %i.p, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.u ; 2 uses
  %i.z = icmp sgt i64 %i.w, 1
  br i1 %i.z, label %bb.e, label %bb.f, !prof !24

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.x, i64 %i.w, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %i.aa = icmp eq i64 %i.w, 1
  br i1 %i.aa, label %bb.g, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !25
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %i.ac = load ptr, ptr %1, align 8, !tbaa !31    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %.not1920 = icmp samesign eq i64 %i.ae, 0
  br i1 %.not1920, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.promoted = load i64, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %.promoted22 = load i64, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.al = add i64 %.promoted, 1                   ; 2 uses
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !22
  %i.am = add i64 %.promoted22, 1                 ; 2 uses
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !26
  %i.an = icmp eq i8 %i.ak, 10
  br i1 %i.an, label %bb.h, label %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol

bb.h:                                             ; preds = %.prol.preheader
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !27
  store i64 0, ptr %i.ah, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 8, !tbaa !28
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol

_ZN4YAML15ostream_wrapper10update_posEc.exit.prol: ; preds = %bb.h, %.prol.preheader
  %i.aq = phi i64 [ %i.am, %.prol.preheader ], [ 0, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol, %.lr.ph
  %.unr = phi i64 [ %.promoted22, %.lr.ph ], [ %i.aq, %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol ]
  %.unr29 = phi i64 [ %.promoted, %.lr.ph ], [ %i.al, %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol ]
  %.sroa.012.021.unr = phi ptr [ %i.ac, %.lr.ph ], [ %i.ar, %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol ]
  %i.as = icmp eq i64 %i.ae, 1
  br i1 %i.as, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit
  ret void

.lr.ph.new:                                       ; preds = %.prol.loopexit, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1
  %i.at = phi i64 [ %i.bj, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr, %.prol.loopexit ]
  %i.au = phi i64 [ %i.be, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr29, %.prol.loopexit ] ; 2 uses
  %.sroa.012.021 = phi ptr [ %i.bk, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.sroa.012.021.unr, %.prol.loopexit ] ; 3 uses
  %i.av = load i8, ptr %.sroa.012.021, align 1, !tbaa !25
  %i.aw = add i64 %i.au, 1
  store i64 %i.aw, ptr %i.ag, align 8, !tbaa !22
  %i.ax = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !26
  %i.ay = icmp eq i8 %i.av, 10
  br i1 %i.ay, label %bb.i, label %_ZN4YAML15ostream_wrapper10update_posEc.exit

bb.i:                                             ; preds = %.lr.ph.new
  %i.az = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ai, align 8, !tbaa !27
  store i64 0, ptr %i.ah, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 8, !tbaa !28
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit

_ZN4YAML15ostream_wrapper10update_posEc.exit:     ; preds = %.lr.ph.new, %bb.i
  %i.bb = phi i64 [ %i.ax, %.lr.ph.new ], [ 0, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = add i64 %i.au, 2                        ; 2 uses
  store i64 %i.be, ptr %i.ag, align 8, !tbaa !22
  %i.bf = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.ah, align 8, !tbaa !26
  %i.bg = icmp eq i8 %i.bd, 10
  br i1 %i.bg, label %bb.j, label %_ZN4YAML15ostream_wrapper10update_posEc.exit.1

bb.j:                                             ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.bh = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ai, align 8, !tbaa !27
  store i64 0, ptr %i.ah, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 8, !tbaa !28
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit.1

_ZN4YAML15ostream_wrapper10update_posEc.exit.1:   ; preds = %bb.j, %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.bj = phi i64 [ %i.bf, %_ZN4YAML15ostream_wrapper10update_posEc.exit ], [ 0, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 2 ; 2 uses
  %.not19.1 = icmp eq ptr %i.bk, %i.af
  br i1 %.not19.1, label %._crit_edge, label %.lr.ph.new
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4YAML15ostream_wrapper10update_posEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, i8 noundef signext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !26
  %i.g = icmp eq i8 %1, 10
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !27
  store i64 0, ptr %i.d, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.k, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit.a

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit.a: ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, i64 noundef %2) ; 0 uses
  %.not18 = icmp eq i64 %2, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = add i64 %2, 1
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %i.n = icmp ult i64 %i.i, %i.m
  br i1 %i.n, label %bb.c, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw i64 %i.m, %i.i
  tail call void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o)
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  %.pre19 = load i64, ptr %i.j, align 8, !tbaa !22
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %bb.b, %bb.c
  %i.p = phi i64 [ %i.k, %bb.b ], [ %.pre19, %bb.c ]
  %i.q = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p ; 2 uses
  %i.s = icmp sgt i64 %2, 1
  br i1 %i.s, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %1, i64 %2, i1 false)
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  switch i64 %2, label %.lr.ph [
    i64 1, label %bb.f
    i64 0, label %._crit_edge
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.t, ptr %i.r, align 1, !tbaa !25
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d, %bb.f, %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.promoted = load i64, ptr %i.u, align 8, !tbaa !22
  %.promoted17 = load i64, ptr %i.v, align 8, !tbaa !26
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit, %bb.e, %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit.a
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.y = phi i64 [ %.promoted17, %.lr.ph ], [ %i.ah, %_ZN4YAML15ostream_wrapper10update_posEc.exit ]
  %i.z = phi i64 [ %.promoted, %.lr.ph ], [ %i.ac, %_ZN4YAML15ostream_wrapper10update_posEc.exit ]
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %_ZN4YAML15ostream_wrapper10update_posEc.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !25
  %i.ac = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !22
  %i.ad = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !26
  %i.ae = icmp eq i8 %i.ab, 10
  br i1 %i.ae, label %bb.h, label %_ZN4YAML15ostream_wrapper10update_posEc.exit

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.w, align 8, !tbaa !27
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.w, align 8, !tbaa !27
  store i64 0, ptr %i.v, align 8, !tbaa !26
  store i8 0, ptr %i.x, align 8, !tbaa !28
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit

_ZN4YAML15ostream_wrapper10update_posEc.exit:     ; preds = %bb.g, %bb.h
  %i.ah = phi i64 [ %i.ad, %bb.g ], [ 0, %bb.h ]
  %i.ai = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !33
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !13
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #12 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !25
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #13
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34: ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !9, i64 16}
!13 = !{!10, !9, i64 8}
!14 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !10, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIcSaIcEE", !15, i64 0}
!17 = !{!"p1 _ZTSSo", !8, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"bool", !4, i64 0}
!20 = !{!"_ZTSN4YAML15ostream_wrapperE", !16, i64 0, !17, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !19, i64 56}
!21 = !{!20, !17, i64 24}
!22 = !{!20, !18, i64 32}
!23 = !{!9, !9, i64 0}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!4, !4, i64 0}
!26 = !{!20, !18, i64 48}
!27 = !{!20, !18, i64 40}
!28 = !{!20, !19, i64 56}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !18, i64 8, !4, i64 16}
!31 = !{!30, !9, i64 0}
end_hunk_0
