Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter_Material?download=true
inline.NumInlined: 464
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z7ai_trimRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = load i64, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr %i.o, ptr %i.q)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %i.t = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.l, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = icmp eq ptr %i.r, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i64 %i.v, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  store i8 0, ptr %i.z, align 1
  br label %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %.noexc
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.aa, %i.t
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef %i.ab)
          to label %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f

_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ac = load ptr, ptr %0, align 8, !noalias !18 ; 2 uses
  %i.ad = load i64, ptr %i.l, align 8, !noalias !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !21
  store i64 %i.af, ptr %2, align 8, !noalias !24
  store i64 %i.ag, ptr %3, align 8, !noalias !24
  invoke void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.b, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ah

bb.g:                                             ; preds = %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !21
  %.sroa.0.0.copyload.i.i = load ptr, ptr %4, align 8
  %i.am = load ptr, ptr %0, align 8               ; 2 uses
  %i.an = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  store i64 %i.ap, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  store i8 0, ptr %i.aq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.051 = phi i64 [ %i.w, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.031.050 = phi ptr [ %i.v, %bb.e ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %i.g = load i8, ptr %.sroa.031.050, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @isspace(i32 noundef %i.h) #20
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #20
  %.not.i.i16 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i16, label %.loopexit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isspace(i32 noundef %i.p) #20
  %.not.i.i17 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i17, label %.loopexit.loopexit.split.loop.exit56, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 @isspace(i32 noundef %i.t) #20
  %.not.i.i18 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i18, label %.loopexit.loopexit.split.loop.exit58, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 4
  %i.w = add nsw i64 %.051, -1
  %i.x = icmp sgt i64 %.051, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %scevgep to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %.sroa.031.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.y = sub i64 %i.a, %.pre-phi
  switch i64 %i.y, label %.loopexit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.z = load i8, ptr %.sroa.031.0.lcssa, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i32 @isspace(i32 noundef %i.aa) #20
  %.not.i.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i19, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.031.1 = phi ptr [ %i.ac, %bb.g ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ad = load i8, ptr %.sroa.031.1, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call i32 @isspace(i32 noundef %i.ae) #20
  %.not.i.i20 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i20, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.031.1, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.031.2 = phi ptr [ %i.ag, %bb.i ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.031.2, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = tail call i32 @isspace(i32 noundef %i.ai) #20
  %.not.i.i21 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i21, label %.loopexit, label %2

2:                                                ; preds = %bb.j
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit56:             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit58:             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit56, %.loopexit.loopexit.split.loop.exit58, %._crit_edge, %2, %bb.j, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.031.1, %bb.h ], [ %1, %._crit_edge ], [ %.sroa.031.0.lcssa, %bb.f ], [ %1, %2 ], [ %.sroa.031.2, %bb.j ], [ %i.am, %.loopexit.loopexit.split.loop.exit58 ], [ %i.ak, %.loopexit.loopexit.split.loop.exit ], [ %i.al, %.loopexit.loopexit.split.loop.exit56 ], [ %.sroa.031.050, %.lr.ph ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %2, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.f = phi ptr [ %i.ae, %bb.h ], [ %.sroa.0.0.copyload.i.i, %bb.a ] ; 10 uses
  %i.g = phi i64 [ %i.ah, %bb.h ], [ %i.a, %bb.a ] ; 2 uses
  %.030 = phi i64 [ %i.af, %bb.h ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #20
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -1
  store ptr %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isspace(i32 noundef %i.p) #20
  %.not.i.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.f, i64 -1
  %.cast = ptrtoint ptr %i.r to i64
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -2
  store ptr %i.s, ptr %1, align 8
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = tail call i32 @isspace(i32 noundef %i.v) #20
  %.not.i.i3 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 -2
  %.cast16 = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.f, i64 -3
  store ptr %i.y, ptr %1, align 8
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = tail call i32 @isspace(i32 noundef %i.ab) #20
  %.not.i.i4 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 -3
  %.cast17 = ptrtoint ptr %i.ad to i64
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 4 uses
  store ptr %i.ae, ptr %1, align 8
  %i.af = add nsw i64 %.030, -1
  %i.ag = icmp sgt i64 %.030, 1
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %bb.h
  %.sroa.0.0.copyload.i2.i6.pre = load ptr, ptr %2, align 8
  %i.ai = ptrtoint ptr %.sroa.0.0.copyload.i2.i6.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.aj = phi i64 [ %i.ai, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ak = phi i64 [ %i.ah, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 5 uses
  %i.al = phi ptr [ %i.ae, %._crit_edge.loopexit ], [ %.sroa.0.0.copyload.i.i, %bb.a ] ; 3 uses
  %i.am = sub i64 %i.ak, %i.aj
  switch i64 %i.am, label %.loopexit [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge
  %i.an = inttoptr i64 %i.ak to ptr
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = tail call i32 @isspace(i32 noundef %i.aq) #20
  %.not.i.i7 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i7, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 -1 ; 3 uses
  store ptr %i.as, ptr %1, align 8
  %i.at = ptrtoint ptr %i.as to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.au = phi ptr [ %i.as, %bb.j ], [ %i.al, %._crit_edge ]
  %i.av = phi i64 [ %i.at, %bb.j ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = tail call i32 @isspace(i32 noundef %i.az) #20
  %.not.i.i8 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i8, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 3 uses
  store ptr %i.bb, ptr %1, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.bd = phi ptr [ %i.bb, %bb.l ], [ %i.al, %._crit_edge ]
  %i.be = phi i64 [ %i.bc, %bb.l ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = tail call i32 @isspace(i32 noundef %i.bi) #20
  %.not.i.i9 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i9, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %i.bd, i64 -1
  store ptr %i.bk, ptr %1, align 8
  %.pre = load i64, ptr %2, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.n, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.sink = phi i64 [ %i.be, %bb.m ], [ %i.av, %bb.k ], [ %i.ak, %bb.i ], [ %i.aj, %._crit_edge ], [ %.cast17, %bb.g ], [ %.cast16, %bb.e ], [ %.cast, %bb.c ], [ %.pre, %bb.n ], [ %i.g, %.lr.ph ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{ptr @_ZN18AMFNodeElementBaseD2Ev}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!8 = distinct !{!8, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!11 = distinct !{!11, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!14 = distinct !{!14, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
end_hunk_0
