Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/filesys?download=true
inline.NumInlined: 839
inline.NumDeleted: 246
begin_hunk_0_@_ZN2fs14PathStartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.16992 = phi i64 [ %i.ad, %bb.j ], [ %.068, %.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %.16992
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %i.ad = add i64 %.16992, 1                      ; 2 uses
  %exitcond103.not = icmp eq i64 %i.ad, %i.e
  br i1 %exitcond103.not, label %.critedge, label %.lr.ph, !llvm.loop !166

.critedge:                                        ; preds = %.lr.ph, %bb.j, %.preheader
  %.169.lcssa = phi i64 [ %.068, %.preheader ], [ %i.e, %bb.j ], [ %.16992, %.lr.ph ] ; 2 uses
  %i.ae = icmp ult i64 %.065, %i.b
  br i1 %i.ae, label %.lr.ph96, label %.critedge4

.lr.ph96:                                         ; preds = %.critedge, %bb.k
  %.16695 = phi i64 [ %i.ai, %bb.k ], [ %.065, %.critedge ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %.16695
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19
  %i.ah = icmp eq i8 %i.ag, 47
  br i1 %i.ah, label %bb.k, label %.critedge4

bb.k:                                             ; preds = %.lr.ph96
  %i.ai = add i64 %.16695, 1                      ; 2 uses
  %exitcond104.not = icmp eq i64 %i.ai, %i.b
  br i1 %exitcond104.not, label %.thread83, label %.lr.ph96, !llvm.loop !167

.critedge4:                                       ; preds = %.lr.ph96, %.critedge
  %.166.lcssa = phi i64 [ %.065, %.critedge ], [ %.16695, %.lr.ph96 ] ; 2 uses
  %i.aj = icmp eq i64 %.166.lcssa, %i.b
  br i1 %i.aj, label %.thread83, label %bb.l

bb.l:                                             ; preds = %.critedge4
  %i.ak = icmp eq i64 %.169.lcssa, %i.e
  br i1 %i.ak, label %.thread83, label %.backedge

.backedge:                                        ; preds = %bb.l, %.thread
  %.068.be = phi i64 [ %.lcssa102, %.thread ], [ %.169.lcssa, %bb.l ]
  %.065.be = phi i64 [ %i.az, %.thread ], [ %.166.lcssa, %bb.l ]
  br label %bb.d, !llvm.loop !168

bb.m:                                             ; preds = %.preheader88, %bb.q
  %.0 = phi i64 [ %i.ap, %bb.q ], [ 0, %.preheader88 ] ; 4 uses
  %i.al = getelementptr i8, ptr %i.u, i64 %.0
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19
  %i.an = getelementptr i8, ptr %i.v, i64 %.0
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  %.not80 = icmp eq i8 %i.am, %i.ao
  %i.ap = add i64 %.0, 1                          ; 4 uses
  br i1 %.not80, label %bb.n, label %.thread83

bb.n:                                             ; preds = %bb.m
  %i.aq = add i64 %i.ap, %.068                    ; 4 uses
  %exitcond.not = icmp eq i64 %.0, %i.y
  br i1 %exitcond.not, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = icmp eq i8 %i.as, 47
  br i1 %i.at, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = add i64 %i.ap, %.065                    ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.b
  br i1 %i.av, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = icmp eq i8 %i.ax, 47
  br i1 %i.ay, label %.thread, label %bb.m, !llvm.loop !169

.thread:                                          ; preds = %bb.q, %bb.n, %bb.o, %bb.p
  %.lcssa102 = phi i64 [ %i.aq, %bb.q ], [ %umax, %bb.n ], [ %i.aq, %bb.o ], [ %i.aq, %bb.p ]
  %i.az = add i64 %i.ap, %.065
  br label %.backedge

.thread83:                                        ; preds = %.critedge4, %bb.h, %bb.l, %bb.m, %bb.k, %bb.b
  %.5 = phi i1 [ %i.f, %bb.b ], [ false, %bb.m ], [ true, %bb.k ], [ false, %bb.l ], [ false, %bb.h ], [ true, %.critedge4 ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2fs28RemoveRelativePathComponentsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef align 8 captures(address) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not239 = icmp eq i64 %i.h, 0
  br i1 %.not239, label %._crit_edge.thread, label %.preheader155.lr.ph

.preheader155.lr.ph:                              ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not21.i107 = icmp eq ptr %4, %1
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %.not21.i = icmp eq ptr %3, %1
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %.044241 = phi i64 [ 0, %.preheader155.lr.ph ], [ %.145153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ] ; 4 uses
  %.046240 = phi i64 [ %i.h, %.preheader155.lr.ph ], [ %.450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ] ; 9 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not56 = icmp eq i64 %i.w, 0
  br i1 %.not56, label %.critedge, label %bb.c, !llvm.loop !170

bb.c:                                             ; preds = %.preheader155, %bb.b
  %.147370 = phi i64 [ %.046240, %.preheader155 ], [ %i.w, %bb.b ] ; 2 uses
  %i.w = add i64 %.147370, -1                     ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19
  %i.z = icmp eq i8 %i.y, 47
  br i1 %i.z, label %bb.b, label %.critedge, !llvm.loop !170

.critedge:                                        ; preds = %bb.b, %bb.c
  %.147.lcssa = phi i64 [ %i.w, %bb.b ], [ %.147370, %bb.c ] ; 5 uses
  %.not57371 = icmp eq i64 %.147.lcssa, 0
  br i1 %.not57371, label %.split51, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.aa = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %.not57 = icmp eq i64 %i.al, 0
  br i1 %.not57, label %.split51, label %.lr.ph, !llvm.loop !171

.split51:                                         ; preds = %bb.d, %.critedge
  %.248.lcssa = phi i64 [ %.147.lcssa, %.critedge ], [ %i.al, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !18, !noalias !172
  store ptr %i.i, ptr %2, align 8, !tbaa !17, !alias.scope !172
  %i.ac = load ptr, ptr %1, align 8, !tbaa !9, !noalias !172 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.147.lcssa, i64 %i.ab) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !172
  store i64 %spec.select.i.i.i, ptr %i.f, align 8, !tbaa !91, !noalias !172
  %i.ad = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ad, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %.split51
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !9, !alias.scope !172
  %i.af = load i64, ptr %i.f, align 8, !tbaa !91, !noalias !172
  store i64 %i.af, ptr %i.i, align 8, !tbaa !19, !alias.scope !172
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %.split51
  %i.ag = phi ptr [ %i.ae, %.noexc10.i.i ], [ %i.i, %.split51 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !19
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ac, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !91, !noalias !172 ; 2 uses
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !18, !alias.scope !172
  %i.aj = load ptr, ptr %2, align 8, !tbaa !9, !alias.scope !172
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !172
  br label %.critedge2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.248372 = phi i64 [ %i.al, %bb.d ], [ %.147.lcssa, %.lr.ph.preheader ] ; 7 uses
  %i.al = add i64 %.248372, -1                    ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19
  %i.ao = icmp eq i8 %i.an, 47
  br i1 %i.ao, label %.split, label %bb.d, !llvm.loop !171

.split:                                           ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !18, !noalias !175 ; 3 uses
  %i.aq = icmp ugt i64 %.248372, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.g:                                             ; preds = %.split
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43, i64 noundef %.248372, i64 noundef %i.ap) #27, !noalias !175
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.split
  %8 = sub i64 %.147.lcssa, %.248372
  store ptr %i.i, ptr %2, align 8, !tbaa !17, !alias.scope !175
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.248372 ; 2 uses
  %9 = sub nuw i64 %i.ap, %.248372
  %spec.select.i.i.i69 = call noundef i64 @llvm.umin.i64(i64 %8, i64 %9) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26, !noalias !175
  store i64 %spec.select.i.i.i69, ptr %i.e, align 8, !tbaa !91, !noalias !175
  %i.as = icmp ugt i64 %spec.select.i.i.i69, 15
  br i1 %i.as, label %.noexc10.i.i71, label %._crit_edge.i.i.i70

.noexc10.i.i71:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.at = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !9, !alias.scope !175
  %i.au = load i64, ptr %i.e, align 8, !tbaa !91, !noalias !175
  store i64 %i.au, ptr %i.i, align 8, !tbaa !19, !alias.scope !175
  br label %._crit_edge.i.i.i70

._crit_edge.i.i.i70:                              ; preds = %.noexc10.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.av = phi ptr [ %i.at, %.noexc10.i.i71 ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i69, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit72
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i70
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !19
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit72

bb.i:                                             ; preds = %._crit_edge.i.i.i70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr nonnull align 1 %i.ar, i64 %spec.select.i.i.i69, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit72: ; preds = %._crit_edge.i.i.i70, %bb.h, %bb.i
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !91, !noalias !175 ; 2 uses
  store i64 %i.ax, ptr %i.j, align 8, !tbaa !18, !alias.scope !175
  %i.ay = load ptr, ptr %2, align 8, !tbaa !9, !alias.scope !175
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 0, ptr %i.az, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !175
  br label %.critedge2

.critedge2:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit72
  %.248351 = phi i64 [ %.248.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %.248372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit72 ] ; 4 uses
  %.not57349 = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit72 ]
  %i.ba = load i64, ptr %i.j, align 8, !tbaa !18
  switch i64 %i.ba, label %.split152 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.critedge2
  %i.bb = load ptr, ptr %2, align 8, !tbaa !9
  %lhsc = load i8, ptr %i.bb, align 1
  %i.bc = icmp eq i8 %lhsc, 46
  br i1 %i.bc, label %.preheader, label %.split152

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74: ; preds = %.critedge2
  %i.bd = load ptr, ptr %2, align 8, !tbaa !9
  %i.be = load i16, ptr %i.bd, align 1
  %i.bf = icmp ne i16 %i.be, 11822
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread, label %.split152

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74
  %i.bi = add i64 %.044241, 1
  br label %.preheader

.split152:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.critedge2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74
  %.not58.not = icmp eq i64 %.044241, 0
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %.044241, i64 1) ; 2 uses
  br i1 %.not58.not, label %bb.av, label %.preheader

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.split152
  %.145154.ph = phi i64 [ %spec.select, %.split152 ], [ %.044241, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.bi, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread ]
  %.not59375 = icmp eq i64 %.248351, 0
  br i1 %.not59375, label %.critedge4, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader
  %i.bj = load ptr, ptr %1, align 8, !tbaa !9
  br label %.lr.ph378

bb.j:                                             ; preds = %.lr.ph378
  %.not59 = icmp eq i64 %i.bk, 0
  br i1 %.not59, label %.critedge4, label %.lr.ph378, !llvm.loop !178

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %bb.j
  %.349376 = phi i64 [ %i.bk, %bb.j ], [ %.248351, %.lr.ph378.preheader ] ; 2 uses
  %i.bk = add i64 %.349376, -1                    ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = icmp eq i8 %i.bm, 47
  br i1 %i.bn, label %bb.j, label %..critedge4_crit_edge381, !llvm.loop !178

..critedge4_crit_edge381:                         ; preds = %.lr.ph378
  br label %.critedge4, !llvm.loop !178

.critedge4:                                       ; preds = %bb.j, %..critedge4_crit_edge381, %.preheader
  %.349.lcssa = phi i64 [ %.248351, %.preheader ], [ %.349376, %..critedge4_crit_edge381 ], [ %i.bk, %bb.j ] ; 2 uses
  %.not59.lcssa = phi i1 [ true, %.preheader ], [ false, %..critedge4_crit_edge381 ], [ true, %bb.j ]
  br i1 %.not57349, label %bb.k, label %bb.w

bb.k:                                             ; preds = %.critedge4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !18, !noalias !179 ; 3 uses
  %i.bp = icmp ugt i64 %.046240, %i.bo
  br i1 %i.bp, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i75

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43, i64 noundef %.046240, i64 noundef %i.bo) #27
          to label %.noexc unwind label %.loopexit.split-lp167

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i75: ; preds = %bb.k
  store ptr %i.t, ptr %3, align 8, !tbaa !17, !alias.scope !179
  %i.bq = load ptr, ptr %1, align 8, !tbaa !9, !noalias !179
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.046240 ; 2 uses
  %i.bs = sub nuw i64 %i.bo, %.046240             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !179
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !91, !noalias !179
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc10.i.i78, label %._crit_edge.i.i.i77

.noexc10.i.i78:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i75
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc79 unwind label %.loopexit166 ; 2 uses

.noexc79:                                         ; preds = %.noexc10.i.i78
  store ptr %i.bu, ptr %3, align 8, !tbaa !9, !alias.scope !179
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !91, !noalias !179
  store i64 %i.bv, ptr %i.t, align 8, !tbaa !19, !alias.scope !179
  br label %._crit_edge.i.i.i77

._crit_edge.i.i.i77:                              ; preds = %.noexc79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i75
  %i.bw = phi ptr [ %i.bu, %.noexc79 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i75 ] ; 2 uses
  switch i64 %i.bs, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i77
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !19
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !19
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.br, i64 %i.bs, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i77
  %i.by = load i64, ptr %i.d, align 8, !tbaa !91, !noalias !179 ; 2 uses
  store i64 %i.by, ptr %i.u, align 8, !tbaa !18, !alias.scope !179
  %i.bz = load ptr, ptr %3, align 8, !tbaa !9, !alias.scope !179
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !179
  %i.cb = load ptr, ptr %1, align 8, !tbaa !9     ; 6 uses
  %i.cc = icmp eq ptr %i.cb, %i.s
  %i.cd = load ptr, ptr %3, align 8, !tbaa !9     ; 6 uses
  %i.ce = icmp eq ptr %i.cd, %i.t                 ; 2 uses
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.ce, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.ce, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !18  ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.q, !prof !141

bb.q:                                             ; preds = %bb.p
  switch i64 %i.cf, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !19
  store i8 %i.ch, ptr %i.cb, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.ci = load i64, ptr %i.u, align 8, !tbaa !18  ; 2 uses
  store i64 %i.ci, ptr %i.g, align 8, !tbaa !18
  %i.cj = load ptr, ptr %1, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 0, ptr %i.ck, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cd, ptr %1, align 8, !tbaa !9
  %i.cl = load <2 x i64>, ptr %i.u, align 8, !tbaa !19
end_hunk_0
