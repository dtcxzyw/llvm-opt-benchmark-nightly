Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/metadata?download=true
inline.NumInlined: 1534
inline.NumDeleted: 728
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %.not14.i.7, label %bb.av, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.av:                                            ; preds = %.lr.ph.i.7
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !28  ; 4 uses
  %.not.i100.7 = icmp eq i8 %i.hp, 0
  br i1 %.not.i100.7, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %bb.av
  %i.hq = add i8 %i.hp, -65
  %or.cond.i.i.8 = icmp ult i8 %i.hq, 26
  %i.hr = add nuw nsw i8 %i.hp, 32
  %i.hs = select i1 %or.cond.i.i.8, i8 %i.hr, i8 %i.hp
  %.not14.i.8 = icmp eq i8 %i.hs, 116
  br i1 %.not14.i.8, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit: ; preds = %.lr.ph.i.8
  %i.ht = getelementptr i8, ptr %i.ga, i64 9
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !28
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %bb.aw, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.aw:                                            ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !34
  %i.hx = and i64 %i.hw, -4
  %i.hy = icmp eq i64 %i.hx, 4611686018427387900
  br i1 %i.hy, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #38
          to label %.noexc101 unwind label %.loopexit.split-lp

.noexc101:                                        ; preds = %bb.ax
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.aw
  %i.hz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread: ; preds = %bb.av, %bb.ar, %bb.at, %bb.aq, %bb.ap, %bb.as, %bb.au, %bb.ao, %.thread150, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.lr.ph.i.8, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit
  switch i8 %i.i, label %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit [
    i8 95, label %.thread145
    i8 47, label %.thread145
    i8 46, label %.thread145
    i8 45, label %.thread145
    i8 41, label %.thread145
    i8 40, label %.thread145
    i8 38, label %.thread145
    i8 32, label %.thread145
    i8 44, label %.thread145
  ]

_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit:   ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread
  %i.ia = load i64, ptr %i.b, align 8, !tbaa !34  ; 4 uses
  %i.ib = add i64 %i.ia, 1                        ; 3 uses
  %i.ic = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.a
  br i1 %i.id, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106: ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit
  %i.ie = icmp ult i64 %i.ia, 16
  tail call void @llvm.assume(i1 %i.ie)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit
  %i.if = load i64, ptr %i.a, align 8, !tbaa !28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106
  %i.ig = phi i64 [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106 ]
  %i.ih = icmp ugt i64 %i.ib, %i.ig
  br i1 %i.ih, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ia, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc107 unwind label %.loopexit163

.noexc107:                                        ; preds = %bb.ay
  %.pre.i105 = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104, %.noexc107
  %i.ii = phi ptr [ %.pre.i105, %.noexc107 ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ia
  store i8 %i.i, ptr %i.ij, align 1, !tbaa !28
  store i64 %i.ib, ptr %i.b, align 8, !tbaa !34
  %i.ik = load ptr, ptr %0, align 8, !tbaa !27
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ib
  store i8 0, ptr %i.il, align 1, !tbaa !28
  br label %.thread145

.thread145:                                       ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %bb.ah, %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_1clEcPKcRmSD_RS8_.exit", %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit58", %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit", %bb.i, %bb.c, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108
  %.5.ph = phi i64 [ %i.aj, %bb.i ], [ %i.m, %bb.c ], [ %i.fz, %bb.an ], [ %storemerge168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108 ], [ %i.bb, %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit" ], [ %i.fc, %bb.ah ], [ %i.dq, %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_1clEcPKcRmSD_RS8_.exit" ], [ %i.ce, %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit58" ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ]
  %i.im = add i64 %.5.ph, 1                       ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.im ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !28  ; 2 uses
  %.not = icmp eq i8 %i.io, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %.lr.ph, !llvm.loop !274

bb.az:                                            ; preds = %.loopexit163, %.loopexit.split-lp, %bb.ai, %bb.am
  %.pn41 = phi { ptr, i32 } [ %i.fd, %bb.ai ], [ %i.fr, %bb.am ], [ %lpad.loopexit, %.loopexit163 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ip = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.a
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.az
  %i.ir = load i64, ptr %i.a, align 8, !tbaa !28
  %i.is = add i64 %i.ir, 1
  tail call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  resume { ptr, i32 } %.pn41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %.thread145, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef ptr @_ZN5osgeo4proj8metadataL21get_ascii_replacementEPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !28
  switch i8 %i.a, label %.thread33 [
    i8 -61, label %bb.b
    i8 -60, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.16, i64 noundef 2) #39
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.17, i64 noundef 2) #39
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.18, i64 noundef 2) #39
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.l, label %.thread33

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #39
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.20, i64 noundef 2) #39
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.21, i64 noundef 2) #39
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.22, i64 noundef 2) #39
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.23, i64 noundef 2) #39
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.24, i64 noundef 2) #39
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.25, i64 noundef 2) #39
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %.thread33

.thread33:                                        ; preds = %bb.a, %bb.d, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %.thread33, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.v = phi ptr [ @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, %bb.b ], [ null, %.thread33 ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 16), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 144), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 32), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 112), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 48), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 128), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 64), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 96), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 80), %bb.g ]
  ret ptr %i.v
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_b(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !28      ; 2 uses
  %.not472 = icmp eq i8 %i.a, 0                   ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !28      ; 2 uses
  %.not86473 = icmp eq i8 %i.b, 0
  %or.cond454474 = select i1 %.not472, i1 %.not86473, i1 false
  br i1 %or.cond454474, label %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253.thread335", label %.critedge

.critedge:                                        ; preds = %bb.a, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253"
  %i.c = phi i8 [ %i.px, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ %i.b, %bb.a ] ; 7 uses
  %.not479 = phi i1 [ %.not, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ %.not472, %bb.a ]
  %i.d = phi i8 [ %i.pv, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = phi ptr [ %i.pu, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ %0, %bb.a ] ; 23 uses
  %.075478 = phi i8 [ %.176, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ 0, %bb.a ] ; 10 uses
  %.077477 = phi i8 [ %.178, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ 0, %bb.a ] ; 10 uses
  %.0476 = phi i64 [ %.6, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ 0, %bb.a ] ; 18 uses
  %.0292475 = phi i64 [ %.5297, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ 0, %bb.a ] ; 38 uses
  %i.f = add i8 %i.d, -65
  %or.cond.i = icmp ult i8 %i.f, 26
  %i.g = add nuw nsw i8 %i.d, 32
  %i.h = select i1 %or.cond.i, i8 %i.g, i8 %i.d   ; 10 uses
  %i.i = getelementptr i8, ptr %1, i64 %.0292475  ; 41 uses
  %i.j = add i8 %i.c, -65
  %or.cond.i95 = icmp ult i8 %i.j, 26
  %i.k = add nuw nsw i8 %i.c, 32
  %i.l = select i1 %or.cond.i95, i8 %i.k, i8 %i.c ; 11 uses
  %i.m = icmp eq i8 %i.h, 32
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.n = getelementptr i8, ptr %i.e, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28
  %i.p = icmp eq i8 %i.o, 43
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.e, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = icmp eq i8 %i.r, 32
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = add i64 %.0476, 3                        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28
  %.not87 = icmp eq i8 %i.v, 0
  br i1 %.not87, label %bb.e, label %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253", !llvm.loop !275

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.critedge
  %i.w = icmp eq i8 %i.l, 32
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = icmp eq i8 %i.y, 43
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.i, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = icmp eq i8 %i.ab, 32
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = add i64 %.0292475, 3                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %.not88 = icmp eq i8 %i.af, 0
  br i1 %.not88, label %bb.i, label %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253", !llvm.loop !275

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.not14.i.a = icmp ne i8 %i.d, 0
  %.not14.i = icmp eq i8 %i.h, 95
  %or.cond455 = and i1 %.not14.i.a, %.not14.i
  br i1 %or.cond455, label %bb.j, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit119.thread

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !28  ; 4 uses
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.j
  %i.ai = add i8 %i.ah, -65
  %or.cond.i.i.1 = icmp ult i8 %i.ai, 26
  %i.aj = add nuw nsw i8 %i.ah, 32
  %i.ak = select i1 %or.cond.i.i.1, i8 %i.aj, i8 %i.ah
  %.not14.i.1 = icmp eq i8 %i.ak, 105
  br i1 %.not14.i.1, label %bb.k, label %.lr.ph.i109.preheader.thread

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28  ; 4 uses
  %.not.i.1 = icmp eq i8 %i.am, 0
  br i1 %.not.i.1, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.k
  %i.an = add i8 %i.am, -65
  %or.cond.i.i.2 = icmp ult i8 %i.an, 26
  %i.ao = add nuw nsw i8 %i.am, 32
  %i.ap = select i1 %or.cond.i.i.2, i8 %i.ao, i8 %i.am
  %.not14.i.2 = icmp eq i8 %i.ap, 110
  br i1 %.not14.i.2, label %bb.l, label %.lr.ph.i109.preheader.thread

bb.l:                                             ; preds = %.lr.ph.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28  ; 4 uses
  %.not.i.2 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.2, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.l
  %i.as = add i8 %i.ar, -65
  %or.cond.i.i.3 = icmp ult i8 %i.as, 26
  %i.at = add nuw nsw i8 %i.ar, 32
  %i.au = select i1 %or.cond.i.i.3, i8 %i.at, i8 %i.ar
  %.not14.i.3 = icmp eq i8 %i.au, 116
  br i1 %.not14.i.3, label %bb.m, label %.lr.ph.i109.preheader.thread

bb.m:                                             ; preds = %.lr.ph.i.3
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !28  ; 4 uses
  %.not.i.3 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.3, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.m
  %i.ax = add i8 %i.aw, -65
  %or.cond.i.i.4 = icmp ult i8 %i.ax, 26
  %i.ay = add nuw nsw i8 %i.aw, 32
  %i.az = select i1 %or.cond.i.i.4, i8 %i.ay, i8 %i.aw
  %.not14.i.4 = icmp eq i8 %i.az, 108
  br i1 %.not14.i.4, label %bb.n, label %.lr.ph.i109.preheader.thread

bb.n:                                             ; preds = %.lr.ph.i.4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28  ; 4 uses
  %.not.i.4 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.4, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.n
  %i.bc = add i8 %i.bb, -65
  %or.cond.i.i.5 = icmp ult i8 %i.bc, 26
  %i.bd = add nuw nsw i8 %i.bb, 32
  %i.be = select i1 %or.cond.i.i.5, i8 %i.bd, i8 %i.bb
  %.not14.i.5 = icmp eq i8 %i.be, 102
  br i1 %.not14.i.5, label %bb.o, label %.lr.ph.i109.preheader.thread

bb.o:                                             ; preds = %.lr.ph.i.5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28  ; 4 uses
  %.not.i.5 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.5, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.o
  %i.bh = add i8 %i.bg, -65
  %or.cond.i.i.6 = icmp ult i8 %i.bh, 26
  %i.bi = add nuw nsw i8 %i.bg, 32
  %i.bj = select i1 %or.cond.i.i.6, i8 %i.bi, i8 %i.bg
  %.not14.i.6 = icmp eq i8 %i.bj, 101
  br i1 %.not14.i.6, label %bb.p, label %.lr.ph.i109.preheader.thread

bb.p:                                             ; preds = %.lr.ph.i.6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !28  ; 4 uses
  %.not.i.6 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.6, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.p
  %i.bm = add i8 %i.bl, -65
  %or.cond.i.i.7 = icmp ult i8 %i.bm, 26
  %i.bn = add nuw nsw i8 %i.bl, 32
  %i.bo = select i1 %or.cond.i.i.7, i8 %i.bn, i8 %i.bl
  %.not14.i.7 = icmp eq i8 %i.bo, 101
  br i1 %.not14.i.7, label %bb.q, label %.lr.ph.i109.preheader.thread

bb.q:                                             ; preds = %.lr.ph.i.7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !28  ; 4 uses
  %.not.i.7 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.7, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %bb.q
  %i.br = add i8 %i.bq, -65
  %or.cond.i.i.8 = icmp ult i8 %i.br, 26
  %i.bs = add nuw nsw i8 %i.bq, 32
  %i.bt = select i1 %or.cond.i.i.8, i8 %i.bs, i8 %i.bq
  %.not14.i.8 = icmp eq i8 %i.bt, 116
  br i1 %.not14.i.8, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit, label %.lr.ph.i109.preheader.thread

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit: ; preds = %.lr.ph.i.8
  %i.bu = getelementptr i8, ptr %i.e, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bw = icmp eq i8 %i.bv, 0
  %.not17.i96 = icmp ne i8 %i.c, 0
  %or.cond456.not469 = select i1 %i.bw, i1 %.not17.i96, i1 false
  %.not14.i102 = icmp eq i8 %i.l, 95
  %or.cond457 = select i1 %or.cond456.not469, i1 %.not14.i102, i1 false
  br i1 %or.cond457, label %bb.r, label %.lr.ph.i109.preheader.thread

bb.r:                                             ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !28  ; 4 uses
  %.not.i104 = icmp eq i8 %i.by, 0
  br i1 %.not.i104, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i97.1

.lr.ph.i97.1:                                     ; preds = %bb.r
  %i.bz = add i8 %i.by, -65
  %or.cond.i.i100.1 = icmp ult i8 %i.bz, 26
  %i.ca = add nuw nsw i8 %i.by, 32
  %i.cb = select i1 %or.cond.i.i100.1, i8 %i.ca, i8 %i.by
  %.not14.i102.1 = icmp eq i8 %i.cb, 102
  br i1 %.not14.i102.1, label %bb.s, label %.lr.ph.i109.preheader.thread

bb.s:                                             ; preds = %.lr.ph.i97.1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !28  ; 4 uses
  %.not.i104.1 = icmp eq i8 %i.cd, 0
  br i1 %.not.i104.1, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i97.2

.lr.ph.i97.2:                                     ; preds = %bb.s
  %i.ce = add i8 %i.cd, -65
  %or.cond.i.i100.2 = icmp ult i8 %i.ce, 26
  %i.cf = add nuw nsw i8 %i.cd, 32
  %i.cg = select i1 %or.cond.i.i100.2, i8 %i.cf, i8 %i.cd
  %.not14.i102.2 = icmp eq i8 %i.cg, 101
  br i1 %.not14.i102.2, label %bb.t, label %.lr.ph.i109.preheader.thread

bb.t:                                             ; preds = %.lr.ph.i97.2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !28  ; 4 uses
  %.not.i104.2 = icmp eq i8 %i.ci, 0
  br i1 %.not.i104.2, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i97.3

.lr.ph.i97.3:                                     ; preds = %bb.t
  %i.cj = add i8 %i.ci, -65
  %or.cond.i.i100.3 = icmp ult i8 %i.cj, 26
  %i.ck = add nuw nsw i8 %i.ci, 32
  %i.cl = select i1 %or.cond.i.i100.3, i8 %i.ck, i8 %i.ci
  %.not14.i102.3 = icmp eq i8 %i.cl, 101
  br i1 %.not14.i102.3, label %bb.u, label %.lr.ph.i109.preheader.thread

bb.u:                                             ; preds = %.lr.ph.i97.3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !28  ; 4 uses
  %.not.i104.3 = icmp eq i8 %i.cn, 0
  br i1 %.not.i104.3, label %.lr.ph.i109.preheader.thread, label %.lr.ph.i97.4

.lr.ph.i97.4:                                     ; preds = %bb.u
  %i.co = add i8 %i.cn, -65
  %or.cond.i.i100.4 = icmp ult i8 %i.co, 26
  %i.cp = add nuw nsw i8 %i.cn, 32
  %i.cq = select i1 %or.cond.i.i100.4, i8 %i.cp, i8 %i.cn
  %.not14.i102.4 = icmp eq i8 %i.cq, 116
  br i1 %.not14.i102.4, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit107, label %.lr.ph.i109.preheader.thread

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit107: ; preds = %.lr.ph.i97.4
  %i.cr = getelementptr i8, ptr %i.i, i64 5
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253.thread335", label %.lr.ph.i109.preheader.thread

.lr.ph.i109.preheader.thread:                     ; preds = %bb.s, %bb.t, %bb.u, %bb.r, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit107, %.lr.ph.i97.4, %.lr.ph.i97.3, %.lr.ph.i97.2, %.lr.ph.i97.1, %.lr.ph.i.8, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %bb.j, %bb.p, %bb.n, %bb.k, %bb.l, %bb.o, %bb.m, %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28  ; 4 uses
  %.not.i116 = icmp eq i8 %i.cv, 0
  br i1 %.not.i116, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit119.thread.thread, label %.lr.ph.i109.1

.lr.ph.i109.1:                                    ; preds = %.lr.ph.i109.preheader.thread
  %i.cw = add i8 %i.cv, -65
  %or.cond.i.i112.1 = icmp ult i8 %i.cw, 26
  %i.cx = add nuw nsw i8 %i.cv, 32
  %i.cy = select i1 %or.cond.i.i112.1, i8 %i.cx, i8 %i.cv
  %.not14.i114.1 = icmp eq i8 %i.cy, 102
  br i1 %.not14.i114.1, label %bb.v, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit119.thread.thread

bb.v:                                             ; preds = %.lr.ph.i109.1
end_hunk_0
