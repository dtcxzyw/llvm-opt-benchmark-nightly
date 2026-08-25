Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dd_pdd?download=true
inline.NumInlined: 3200
inline.NumDeleted: 779
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2dd12pdd_iteratorC2ERKNS_3pddEb:bb.a
  %i.ab = and i8 %i.aa, -4
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br i1 %2, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN2dd3pddC2ERKS0_.exit
  invoke void @_ZN2dd12pdd_iterator5firstEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN2dd12pdd_monomialD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.t) #27
  tail call void @_ZN6vectorISt4pairIbjELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #27
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.af = load i32, ptr %0, align 8, !tbaa !113
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !80
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 3 uses
  %i.ak = and i32 %i.aj, 1023
  %.not.i.i = icmp eq i32 %i.ak, 1023
  br i1 %.not.i.i, label %_ZN2dd3pddD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = add i32 %i.aj, 1023
  %i.am = and i32 %i.al, 1023
  %i.an = and i32 %i.aj, -1024
  %i.ao = or disjoint i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.ai, align 4
  br label %_ZN2dd3pddD2Ev.exit

_ZN2dd3pddD2Ev.exit:                              ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ad

bb.f:                                             ; preds = %bb.c, %_ZN2dd3pddC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2dd3pdd14pdd_coeffients5beginEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.dd::pdd_coeff_iterator") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !578, !nonnull !283, !align !501
  tail call void @_ZN2dd18pdd_coeff_iteratorC2ERKNS_3pddEb(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2dd3pdd11begin_coeffEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.dd::pdd_coeff_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2dd18pdd_coeff_iteratorC2ERKNS_3pddEb(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_ZNK2dd3pdd14pdd_coeffients3endEv(ptr dead_on_unwind noalias nofree writable sret(%"class.dd::pdd_coeff_iterator") align 8 captures(none) initializes((0, 4), (8, 28), (32, 44), (48, 56), (64, 65)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !578, !nonnull !283, !align !501 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113, !noalias !581 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116, !noalias !581 ; 3 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !113, !alias.scope !581
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !116, !alias.scope !581
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !80, !noalias !581
  %i.g = zext i32 %i.b to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !581 ; 3 uses
  %i.j = and i32 %i.i, 1023
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 1023
  br i1 %.not.i.i.i.i.i, label %_ZNK2dd3pdd9end_coeffEv.exit, label %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit.i.i.i

_ZN2dd3pddC2EjPNS_11pdd_managerE.exit.i.i.i:      ; preds = %bb.a
  %i.k = add i32 %i.i, 1
  %i.l = and i32 %i.k, 1023
  %i.m = and i32 %i.i, -1024
  %i.n = or disjoint i32 %i.l, %i.m
  store i32 %i.n, ptr %i.h, align 4, !noalias !581
  %.pre6.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !80, !noalias !581
  %.phi.trans.insert7.i.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre6.i.i.i, i64 %i.g ; 2 uses
  %.pre8.i.i.i = load i32, ptr %.phi.trans.insert7.i.i.i, align 4, !noalias !581 ; 3 uses
  %.pre9.i.i.i = and i32 %.pre8.i.i.i, 1023
  %i.o = icmp eq i32 %.pre9.i.i.i, 1023
  br i1 %i.o, label %_ZNK2dd3pdd9end_coeffEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit.i.i.i
  %i.p = add i32 %.pre8.i.i.i, 1
  %i.q = and i32 %i.p, 1023
  %i.r = and i32 %.pre8.i.i.i, -1024
  %i.s = or disjoint i32 %i.q, %i.r
  store i32 %i.s, ptr %.phi.trans.insert7.i.i.i, align 4, !noalias !581
  br label %_ZNK2dd3pdd9end_coeffEv.exit

_ZNK2dd3pdd9end_coeffEv.exit:                     ; preds = %bb.a, %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !33, !alias.scope !581
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.u, align 8, !tbaa !39, !alias.scope !581
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !alias.scope !581
  %i.x = and i8 %i.w, -4
  store i8 %i.x, ptr %i.v, align 4, !alias.scope !581
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.y, align 8, !tbaa !36, !alias.scope !581
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.z, align 8, !tbaa !39, !alias.scope !581
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !alias.scope !581
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4, !alias.scope !581
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !36, !alias.scope !581
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.ae, align 8, !tbaa !584, !alias.scope !581
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2dd3pdd9end_coeffEv(ptr dead_on_unwind noalias nofree writable sret(%"class.dd::pdd_coeff_iterator") align 8 captures(none) initializes((0, 4), (8, 28), (32, 44), (48, 56), (64, 65)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116  ; 3 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !113
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !116
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.f = zext i32 %i.a to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = and i32 %i.h, 1023
  %.not.i.i.i.i = icmp eq i32 %i.i, 1023
  br i1 %.not.i.i.i.i, label %_ZN2dd18pdd_coeff_iteratorC2ERKNS_3pddEb.exit, label %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit.i.i

_ZN2dd3pddC2EjPNS_11pdd_managerE.exit.i.i:        ; preds = %bb.a
  %i.j = add i32 %i.h, 1
  %i.k = and i32 %i.j, 1023
  %i.l = and i32 %i.h, -1024
  %i.m = or disjoint i32 %i.k, %i.l
  store i32 %i.m, ptr %i.g, align 4
  %.pre6.i.i = load ptr, ptr %i.c, align 8, !tbaa !80
  %.phi.trans.insert7.i.i = getelementptr inbounds nuw [16 x i8], ptr %.pre6.i.i, i64 %i.f ; 2 uses
  %.pre8.i.i = load i32, ptr %.phi.trans.insert7.i.i, align 4 ; 3 uses
  %.pre9.i.i = and i32 %.pre8.i.i, 1023
  %i.n = icmp eq i32 %.pre9.i.i, 1023
  br i1 %i.n, label %_ZN2dd18pdd_coeff_iteratorC2ERKNS_3pddEb.exit, label %bb.b

bb.b:                                             ; preds = %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit.i.i
  %i.o = add i32 %.pre8.i.i, 1
  %i.p = and i32 %i.o, 1023
  %i.q = and i32 %.pre8.i.i, -1024
  %i.r = or disjoint i32 %i.p, %i.q
  store i32 %i.r, ptr %.phi.trans.insert7.i.i, align 4
  br label %_ZN2dd18pdd_coeff_iteratorC2ERKNS_3pddEb.exit

_ZN2dd18pdd_coeff_iteratorC2ERKNS_3pddEb.exit:    ; preds = %bb.a, %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit.i.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -4
  store i8 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.y, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, -4
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.ac, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.ad, align 8, !tbaa !584
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2dd18pdd_coeff_iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(65) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.dd::coeff_value", align 8  ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.e, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.split, label %.split

.split:                                           ; preds = %bb.a
  %.promoted = load i32, ptr %i.f, align 4, !tbaa !71 ; 2 uses
  %i.h = icmp eq i32 %.promoted, 0
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.split, label %_ZN6vectorIjLb0EjE4backEv.exit.lr.ph

_ZN6vectorIjLb0EjE4backEv.exit.lr.ph:             ; preds = %.split
  %2 = zext i32 %.promoted to i64
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !80   ; 3 uses
  br label %_ZN6vectorIjLb0EjE4backEv.exit

_ZNK6vectorIjLb0EjE5emptyEv.exit:                 ; preds = %_ZNK2dd11pdd_manager6is_valEj.exit.thread
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.split, label %_ZN6vectorIjLb0EjE4backEv.exit, !llvm.loop !587

_ZN6vectorIjLb0EjE4backEv.exit:                   ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.lr.ph, %_ZNK6vectorIjLb0EjE5emptyEv.exit
  %indvars.iv36 = phi i64 [ %2, %_ZN6vectorIjLb0EjE4backEv.exit.lr.ph ], [ %3, %_ZNK6vectorIjLb0EjE5emptyEv.exit ]
  %3 = add nsw i64 %indvars.iv36, -1              ; 4 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %indvars = trunc nuw i64 %3 to i32              ; 2 uses
  store i32 %indvars, ptr %i.f, align 4, !tbaa !71
  %i.k = zext i32 %5 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !86   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !84   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader

bb.b:                                             ; preds = %_ZN6vectorIjLb0EjE4backEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !86   ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZNK2dd11pdd_manager6is_valEj.exit, label %_ZNK2dd11pdd_manager6is_valEj.exit.thread

_ZNK2dd11pdd_manager6is_valEj.exit:               ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !88
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZNK2dd11pdd_manager6is_valEj.exit.thread, label %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader

_ZNK2dd11pdd_manager6is_valEj.exit.thread:        ; preds = %bb.b, %_ZNK2dd11pdd_manager6is_valEj.exit
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.z = zext i32 %i.u to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !39
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK6vectorIjLb0EjE5emptyEv.exit, label %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader, !llvm.loop !587

_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader: ; preds = %_ZN6vectorIjLb0EjE4backEv.exit, %_ZNK2dd11pdd_manager6is_valEj.exit.thread, %_ZNK2dd11pdd_manager6is_valEj.exit
  br label %_ZNK2dd11pdd_manager6is_valEj.exit.thread15

_ZNK2dd11pdd_manager6is_valEj.exit.thread15:      ; preds = %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %i.ad = phi i32 [ %i.az, %_ZN6vectorIjLb0EjE9push_backERKj.exit ], [ %indvars, %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.at, %_ZN6vectorIjLb0EjE9push_backERKj.exit ], [ %i.i, %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader ] ; 2 uses
  %i.af = phi ptr [ %i.au, %_ZN6vectorIjLb0EjE9push_backERKj.exit ], [ %i.d, %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader ] ; 3 uses
  %i.ag = phi i32 [ %.pre, %_ZN6vectorIjLb0EjE9push_backERKj.exit ], [ %i.r, %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader ]
  %.0 = phi i32 [ %i.bc, %_ZN6vectorIjLb0EjE9push_backERKj.exit ], [ %i.n, %_ZNK2dd11pdd_manager6is_valEj.exit.thread15.preheader ] ; 2 uses
  %i.ah = zext i32 %.0 to i64                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ah ; 3 uses
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %bb.c, label %_ZNK2dd11pdd_manager6is_valEj.exit9.thread16

bb.c:                                             ; preds = %_ZNK2dd11pdd_manager6is_valEj.exit.thread15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !86
  %.not.i.i8 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i8, label %_ZNK2dd11pdd_manager6is_valEj.exit9, label %.critedge

_ZNK2dd11pdd_manager6is_valEj.exit9:              ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.critedge, label %_ZNK2dd11pdd_manager6is_valEj.exit9.thread16

_ZNK2dd11pdd_manager6is_valEj.exit9.thread16:     ; preds = %_ZNK2dd11pdd_manager6is_valEj.exit.thread15, %_ZNK2dd11pdd_manager6is_valEj.exit9
  %i.ap = icmp eq ptr %i.af, null
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK2dd11pdd_manager6is_valEj.exit9.thread16
  %i.aq = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !71
  %i.as = icmp eq i32 %i.ad, %i.ar
  br i1 %i.as, label %bb.e, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.e:                                             ; preds = %bb.d, %_ZNK2dd11pdd_manager6is_valEj.exit9.thread16
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !71
  %.pre24 = load ptr, ptr %i.b, align 8, !tbaa !80
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.d, %bb.e
  %i.at = phi ptr [ %.pre24, %bb.e ], [ %i.ae, %bb.d ] ; 3 uses
  %i.au = phi ptr [ %.pre.i, %bb.e ], [ %i.af, %bb.d ] ; 3 uses
  %i.av = phi i32 [ %.pre2.i, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  store i32 %.0, ptr %i.ay, align 4, !tbaa !71
  %i.az = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !71
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ah
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !84 ; 2 uses
  %.phi.trans.insert = zext i32 %i.bc to i64
  %.phi.trans.insert22.a = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.phi.trans.insert
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert22.a, i64 8
  %.pre = load i32, ptr %.phi.trans.insert23, align 4, !tbaa !84
  br label %_ZNK2dd11pdd_manager6is_valEj.exit.thread15, !llvm.loop !588

.critedge:                                        ; preds = %bb.c, %_ZNK2dd11pdd_manager6is_valEj.exit9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.bg ; 5 uses
  store i32 0, ptr %1, align 8, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, -4                        ; 2 uses
  store i8 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store i32 1, ptr %i.bm, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 6 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -4
  store i8 %i.bp, ptr %i.bn, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !36
  %i.br = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !73 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bt = load i8, ptr %i.bs, align 4
  %i.bu = and i8 %i.bt, 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.bw = load i32, ptr %i.bh, align 8, !tbaa !39
  store i32 %i.bw, ptr %1, align 8, !tbaa !39
  store i8 %i.bk, ptr %i.bi, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.g:                                             ; preds = %.critedge
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.g, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = and i8 %i.bz, 1
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.cc = load i32, ptr %i.bx, align 8, !tbaa !39
  store i32 %i.cc, ptr %i.bm, align 8, !tbaa !39
  %i.cd = load i8, ptr %i.bn, align 4
  %i.ce = and i8 %i.cd, -2
  store i8 %i.ce, ptr %i.bn, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bx)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.h, %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK6vectorIjLb0EjE5emptyEv.exit10, label %bb.j

bb.j:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !71
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i8
  br label %_ZNK6vectorIjLb0EjE5emptyEv.exit10

_ZNK6vectorIjLb0EjE5emptyEv.exit10:               ; preds = %_ZN8rationalC2ERKS_.exit, %bb.j
  %i.cm = phi i8 [ 1, %_ZN8rationalC2ERKS_.exit ], [ %i.cl, %bb.j ] ; 2 uses
  store i8 %i.cm, ptr %i.cf, align 8, !tbaa !589
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !71
  %i.cp = load i32, ptr %1, align 8, !tbaa !71
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !71
  store i32 %i.co, ptr %1, align 8, !tbaa !71
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !72
  %i.cs = load ptr, ptr %i.bl, align 8, !tbaa !72
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !72
  store ptr %i.cr, ptr %i.bl, align 8, !tbaa !72
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 4             ; 2 uses
  %i.cv = load i8, ptr %i.bi, align 4             ; 2 uses
  %i.cw = and i8 %i.cu, -4
  %i.cx = and i8 %i.cv, -4
  %i.cy = and i8 %i.cv, 3
  %i.cz = or disjoint i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.ct, align 4
  %i.da = and i8 %i.cu, 3
  %i.db = or disjoint i8 %i.cx, %i.da
  store i8 %i.db, ptr %i.bi, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !71
  %i.de = load i32, ptr %i.bm, align 8, !tbaa !71
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !71
  store i32 %i.dd, ptr %i.bm, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !72
  %i.dh = load ptr, ptr %i.bq, align 8, !tbaa !72
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !72
  store ptr %i.dg, ptr %i.bq, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 4             ; 2 uses
  %i.dk = load i8, ptr %i.bn, align 4             ; 2 uses
  %i.dl = and i8 %i.dj, -4
  %i.dm = and i8 %i.dk, -4
  %i.dn = and i8 %i.dk, 3
  %i.do = or disjoint i8 %i.dn, %i.dl
  store i8 %i.do, ptr %i.di, align 4
  %i.dp = and i8 %i.dj, 3
  %i.dq = or disjoint i8 %i.dm, %i.dp
  store i8 %i.dq, ptr %i.bn, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.cm, ptr %i.dr, align 8, !tbaa !589
  %i.ds = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !73 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(33) %1)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit10
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_ZN2dd11coeff_valueD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit10
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #28
  unreachable

_ZN2dd11coeff_valueD2Ev.exit:                     ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.l

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.split:    ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit, %.split, %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.dv, align 8, !tbaa !584
  br label %bb.l
end_hunk_0
