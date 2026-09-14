Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Os?download=true
inline.NumInlined: 761
inline.NumDeleted: 211
begin_hunk_0_@_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.h, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge9, !llvm.loop !0

._crit_edge9:                                     ; preds = %bb.b, %._crit_edge, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %.sroa.06.08, %._crit_edge ], [ %i.b, %bb.a ], [ %i.b, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %.sroa.06.0.lcssa to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !15
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge9
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !38
  %i.p = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.p, ptr %i.i, align 8, !tbaa !36
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %._crit_edge9
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.i, %._crit_edge9 ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %.sroa.06.0.lcssa, align 1, !tbaa !36
  store i8 %i.r, ptr %i.q, align 1, !tbaa !36
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.06.0.lcssa, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  store i64 %i.s, ptr %i.j, align 8, !tbaa !35
  %i.t = load ptr, ptr %0, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4V3Os17filenameNonDirExtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.b = load ptr, ptr %1, align 8, !tbaa !38, !noalias !149 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %.not.i9 = icmp samesign eq i64 %i.d, 0
  br i1 %.not.i9, label %._crit_edge11, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %i.f, %i.b
  br i1 %.not.i, label %._crit_edge11, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.06.0.i10 = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.06.0.i10, i64 -1 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !36, !noalias !148
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge11, !llvm.loop !0

._crit_edge11:                                    ; preds = %bb.b, %._crit_edge, %bb.a
  %.sroa.06.0.lcssa.i = phi ptr [ %.sroa.06.0.i10, %._crit_edge ], [ %i.b, %bb.a ], [ %i.b, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !33, !alias.scope !148
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.j, align 8, !tbaa !35, !alias.scope !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !148
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %.sroa.06.0.lcssa.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !15, !noalias !148
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge11
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !38, !alias.scope !148
  %i.p = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !148
  store i64 %i.p, ptr %i.i, align 8, !tbaa !36, !alias.scope !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %._crit_edge11
  %i.q = phi ptr [ %i.o, %.noexc.i.i ], [ %i.i, %._crit_edge11 ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %.sroa.06.0.lcssa.i, align 1, !tbaa !36
  store i8 %i.r, ptr %i.q, align 1, !tbaa !36
  br label %_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.06.0.lcssa.i, i64 %i.m, i1 false)
  br label %_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !148 ; 2 uses
  store i64 %i.s, ptr %i.j, align 8, !tbaa !35, !alias.scope !148
  %i.t = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !148
  %i.v = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 46, i64 noundef 0) #28 ; 5 uses
  %.not = icmp eq i64 %i.v, -1
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.w = load i64, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31, i64 noundef %i.v, i64 noundef %i.w) #30
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.e
  store i64 %i.v, ptr %i.j, align 8, !tbaa !35
  %i.y = load ptr, ptr %0, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 0, ptr %i.z, align 1, !tbaa !36
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.i
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !36
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.aa

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZN4V3Os14filenameNonDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4V3Os18filenameSubstituteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not207 = icmp eq i64 %i.e, 0
  br i1 %.not207, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph205, %bb.ai
  %i.n = phi i64 [ %i.e, %.lr.ph205 ], [ %i.fg, %bb.ai ] ; 16 uses
  %.055203 = phi i64 [ 0, %.lr.ph205 ], [ %i.ff, %bb.ai ] ; 9 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !38     ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.055203
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36    ; 2 uses
  %i.r = icmp eq i8 %i.q, 36
  br i1 %i.r, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.055203, 1                  ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.n
  br i1 %i.t, label %bb.d, label %bb.af

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36
  switch i8 %i.v, label %.thread274 [
    i8 123, label %.thread
    i8 40, label %bb.e
  ]

.thread:                                          ; preds = %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.w = phi i1 [ false, %.thread ], [ true, %bb.d ] ; 4 uses
  %i.x = phi i1 [ true, %.thread ], [ false, %bb.d ] ; 2 uses
  %i.y = add nuw i64 %.055203, 2                  ; 7 uses
  %i.z = add i64 %.055203, 3                      ; 11 uses
  %i.aa = icmp ult i64 %i.z, %i.n
  br i1 %i.aa, label %.lr.ph.split, label %.critedge

.thread274:                                       ; preds = %bb.d
  %i.ab = add nuw i64 %.055203, 1                 ; 4 uses
  %i.ac = add nuw i64 %.055203, 2                 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.n
  br i1 %i.ad, label %.lr.ph.split.us.preheader, label %.critedge.thread.thread

.lr.ph.split.us.preheader:                        ; preds = %.thread274, %.critedge2.us
  %7 = phi i64 [ %i.aj, %.critedge2.us ], [ %i.ac, %.thread274 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !36  ; 2 uses
  %i.ag = sext i8 %i.af to i32
  %i.ah = call i32 @isalnum(i32 noundef %i.ag) #32
  %.not62.us354 = icmp ne i32 %i.ah, 0
  %i.ai = icmp eq i8 %i.af, 95
  %or.cond.us355 = or i1 %i.ai, %.not62.us354
  br i1 %or.cond.us355, label %.critedge2.us, label %.critedge.loopexit

.critedge2.us:                                    ; preds = %.lr.ph.split.us.preheader
  %i.aj = add nuw i64 %7, 1                       ; 2 uses
  %exitcond233.not = icmp eq i64 %i.aj, %i.n
  br i1 %exitcond233.not, label %.critedge.loopexit, label %.lr.ph.split.us.preheader, !llvm.loop !150

.lr.ph.split:                                     ; preds = %bb.e
  br i1 %i.x, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.w, label %.critedge.loopexit.a, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !36
  %.not63.us165200 = icmp eq i8 %i.al, 125
  br i1 %.not63.us165200, label %.critedge.thread289, label %.critedge2.us167.preheader

.critedge2.us167.preheader:                       ; preds = %.lr.ph.split.split.us.split
  %i.am = add i64 %i.n, -1                        ; 4 uses
  %exitcond231.not348 = icmp eq i64 %i.z, %i.am
  br i1 %exitcond231.not348, label %.critedge, label %.lr.ph349, !llvm.loop !150

.lr.ph349:                                        ; preds = %.critedge2.us167.preheader
  br label %bb.f, !llvm.loop !150

bb.f:                                             ; preds = %.lr.ph349, %.critedge2.us167
  %i.an = phi i64 [ %i.z, %.lr.ph349 ], [ %i.ao, %.critedge2.us167 ] ; 2 uses
  %i.ao = add nuw i64 %i.an, 1                    ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !36
  %.not63.us165 = icmp eq i8 %i.aq, 125
  br i1 %.not63.us165, label %..critedge.loopexit327_crit_edge, label %.critedge2.us167, !llvm.loop !150

.critedge2.us167:                                 ; preds = %bb.f
  %exitcond231.not = icmp eq i64 %i.ao, %i.am
  br i1 %exitcond231.not, label %.critedge2.us167..critedge.loopexit327_crit_edge, label %bb.f, !llvm.loop !150

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.w, label %.lr.ph.split.split.split.us, label %.critedge.thread.thread

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !36
  %.not64.us181191 = icmp eq i8 %i.as, 41
  br i1 %.not64.us181191, label %.critedge.thread, label %.critedge2.us182.preheader

.critedge2.us182.preheader:                       ; preds = %.lr.ph.split.split.split.us
  %i.at = add i64 %i.n, -1                        ; 4 uses
  %exitcond.not344 = icmp eq i64 %i.z, %i.at
  br i1 %exitcond.not344, label %.critedge, label %.lr.ph, !llvm.loop !150

.lr.ph:                                           ; preds = %.critedge2.us182.preheader
  br label %bb.g, !llvm.loop !150

bb.g:                                             ; preds = %.lr.ph, %.critedge2.us182
  %i.au = phi i64 [ %i.z, %.lr.ph ], [ %i.av, %.critedge2.us182 ] ; 2 uses
  %i.av = add nuw i64 %i.au, 1                    ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !36
  %.not64.us181 = icmp eq i8 %i.ax, 41
  br i1 %.not64.us181, label %..critedge.loopexit328_crit_edge, label %.critedge2.us182, !llvm.loop !150

.critedge2.us182:                                 ; preds = %bb.g
  %exitcond.not = icmp eq i64 %i.av, %i.at
  br i1 %exitcond.not, label %.critedge2.us182..critedge.loopexit328_crit_edge, label %bb.g, !llvm.loop !150

.critedge.loopexit:                               ; preds = %.lr.ph.split.us.preheader, %.critedge2.us
  %.lcssa.ph = phi i64 [ %7, %.lr.ph.split.us.preheader ], [ %i.n, %.critedge2.us ]
  %.054.lcssa.ph = add i64 %.lcssa.ph, -1         ; 2 uses
  br label %.critedge.thread.thread

.critedge.loopexit.a:                             ; preds = %.lr.ph.split.split.us
  %i.ay = add i64 %i.n, -1
  br label %.critedge

.critedge2.us167..critedge.loopexit327_crit_edge: ; preds = %.critedge2.us167
  br label %.critedge, !llvm.loop !150

..critedge.loopexit327_crit_edge:                 ; preds = %bb.f
  br label %.critedge, !llvm.loop !150

.critedge2.us182..critedge.loopexit328_crit_edge: ; preds = %.critedge2.us182
  br label %.critedge, !llvm.loop !150

..critedge.loopexit328_crit_edge:                 ; preds = %bb.g
  br label %.critedge, !llvm.loop !150

.critedge:                                        ; preds = %.critedge2.us182.preheader, %.critedge2.us182..critedge.loopexit328_crit_edge, %..critedge.loopexit328_crit_edge, %.critedge2.us167.preheader, %.critedge2.us167..critedge.loopexit327_crit_edge, %..critedge.loopexit327_crit_edge, %.critedge.loopexit.a, %bb.e
  %.054.lcssa = phi i64 [ %i.y, %bb.e ], [ %i.ay, %.critedge.loopexit.a ], [ %i.am, %.critedge2.us167.preheader ], [ %i.am, %.critedge2.us167..critedge.loopexit327_crit_edge ], [ %i.an, %..critedge.loopexit327_crit_edge ], [ %i.at, %.critedge2.us182..critedge.loopexit328_crit_edge ], [ %i.au, %..critedge.loopexit328_crit_edge ], [ %i.at, %.critedge2.us182.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.z, %bb.e ], [ %i.n, %.critedge.loopexit.a ], [ %i.n, %.critedge2.us167.preheader ], [ %i.n, %.critedge2.us167..critedge.loopexit327_crit_edge ], [ %i.ao, %..critedge.loopexit327_crit_edge ], [ %i.n, %.critedge2.us182..critedge.loopexit328_crit_edge ], [ %i.av, %..critedge.loopexit328_crit_edge ], [ %i.n, %.critedge2.us182.preheader ] ; 2 uses
  br i1 %i.x, label %.critedge.thread289, label %bb.h

.critedge.thread289:                              ; preds = %.lr.ph.split.split.us.split, %.critedge
  %.lcssa295 = phi i64 [ %.lcssa, %.critedge ], [ %i.z, %.lr.ph.split.split.us.split ] ; 2 uses
  %.054.lcssa294 = phi i64 [ %.054.lcssa, %.critedge ], [ %i.y, %.lr.ph.split.split.us.split ]
  %i.az = phi i1 [ %i.w, %.critedge ], [ false, %.lr.ph.split.split.us.split ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa295
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %.not65 = icmp eq i8 %i.bb, 125
  br i1 %.not65, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge.thread289, %.critedge
  %.lcssa288 = phi i64 [ %.lcssa, %.critedge ], [ %.lcssa295, %.critedge.thread289 ] ; 2 uses
  %.054.lcssa287 = phi i64 [ %.054.lcssa, %.critedge ], [ %.054.lcssa294, %.critedge.thread289 ] ; 2 uses
  %i.bc = phi i1 [ %i.w, %.critedge ], [ %i.az, %.critedge.thread289 ]
  br i1 %i.bc, label %.critedge.thread, label %.critedge.thread.thread

.critedge.thread:                                 ; preds = %.lr.ph.split.split.split.us, %bb.h
  %.054.lcssa287301 = phi i64 [ %.054.lcssa287, %bb.h ], [ %i.y, %.lr.ph.split.split.split.us ]
  %.lcssa288298 = phi i64 [ %.lcssa288, %bb.h ], [ %i.z, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa288298
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !36
  %.not66 = icmp eq i8 %i.be, 41
  br i1 %.not66, label %.critedge.thread.thread, label %bb.i

bb.i:                                             ; preds = %.critedge.thread, %.critedge.thread289
  %i.bf = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 2)
          to label %bb.j unwind label %bb.n       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %2, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bh, i64 noundef %i.bj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.l
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bk) #30
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.o:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.l, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !36
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn71 = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.aj

.critedge.thread.thread:                          ; preds = %.thread274, %.lr.ph.split.split, %.critedge.loopexit, %.critedge.thread, %bb.h
  %8 = phi i64 [ %i.y, %bb.h ], [ %i.y, %.critedge.thread ], [ %i.ab, %.thread274 ], [ %i.y, %.lr.ph.split.split ], [ %i.ab, %.critedge.loopexit ] ; 3 uses
  %9 = phi i64 [ %i.s, %bb.h ], [ %i.s, %.critedge.thread ], [ %.055203, %.thread274 ], [ %i.s, %.lr.ph.split.split ], [ %.055203, %.critedge.loopexit ] ; 4 uses
  %.not113278290306 = phi i64 [ %.lcssa288, %bb.h ], [ %.lcssa288298, %.critedge.thread ], [ %i.ab, %.thread274 ], [ %i.z, %.lr.ph.split.split ], [ %.054.lcssa.ph, %.critedge.loopexit ]
  %.054.lcssa291304 = phi i64 [ %.054.lcssa287, %bb.h ], [ %.054.lcssa287301, %.critedge.thread ], [ %i.ab, %.thread274 ], [ %i.y, %.lr.ph.split.split ], [ %.054.lcssa.ph, %.critedge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %.not = icmp ult i64 %9, %i.n
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.critedge.thread.thread
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32, i64 noundef %8, i64 noundef %i.n) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.critedge.thread.thread
  %i.bt = sub i64 %.054.lcssa291304, %9
  store ptr %i.f, ptr %3, align 8, !tbaa !33, !alias.scope !154
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 %8 ; 2 uses
  %i.bv = sub nuw i64 %i.n, %8
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bv) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !154
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !15, !noalias !154
  %i.bw = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bw, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc75 unwind label %.loopexit ; 2 uses

.noexc75:                                         ; preds = %.noexc10.i.i
  store ptr %i.bx, ptr %3, align 8, !tbaa !38, !alias.scope !154
  %i.by = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !154
  store i64 %i.by, ptr %i.f, align 8, !tbaa !36, !alias.scope !154
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bz = phi ptr [ %i.bx, %.noexc75 ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.ca = load i8, ptr %i.bu, align 1, !tbaa !36
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !36
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr nonnull align 1 %i.bu, i64 %spec.select.i.i.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !154 ; 2 uses
  store i64 %i.cb, ptr %i.g, align 8, !tbaa !35, !alias.scope !154
  %i.cc = load ptr, ptr %3, align 8, !tbaa !38, !alias.scope !154
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 0, ptr %i.cd, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.h, ptr %4, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !35
  store i8 0, ptr %i.h, align 8, !tbaa !36
  %i.ce = load i64, ptr %i.g, align 8, !tbaa !35
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.thread114, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.j, ptr %6, align 8, !tbaa !33
  store i64 0, ptr %i.k, align 8, !tbaa !35
  store i8 0, ptr %i.j, align 8, !tbaa !36
  invoke void @_ZN4V3Os9getenvStrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.cg = load ptr, ptr %4, align 8, !tbaa !38    ; 6 uses
  %i.ch = icmp eq ptr %i.cg, %i.h
  %i.ci = load ptr, ptr %5, align 8, !tbaa !38    ; 5 uses
  %i.cj = icmp eq ptr %i.ci, %i.l                 ; 2 uses
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.u
  br i1 %i.cj, label %bb.v, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.u
  br i1 %i.cj, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ck = load i64, ptr %i.m, align 8, !tbaa !35  ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  switch i64 %i.ck, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !36
  store i8 %i.cm, ptr %i.cg, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ci, i64 %i.ck, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cn = load i64, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  store i64 %i.cn, ptr %i.i, align 8, !tbaa !35
  %i.co = load ptr, ptr %4, align 8, !tbaa !38
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !36
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ci, ptr %4, align 8, !tbaa !38
  %i.cq = load <2 x i64>, ptr %i.m, align 8, !tbaa !36
  store <2 x i64> %i.cq, ptr %i.i, align 8, !tbaa !36
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cr = load i64, ptr %i.h, align 8, !tbaa !36
  store ptr %i.ci, ptr %4, align 8, !tbaa !38
  %i.cs = load <2 x i64>, ptr %i.m, align 8, !tbaa !36
  store <2 x i64> %i.cs, ptr %i.i, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cg, ptr %5, align 8, !tbaa !38
  store i64 %i.cr, ptr %i.l, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %5, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.y, %bb.z
  %i.ct = phi ptr [ %i.cg, %bb.y ], [ %i.l, %bb.z ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.m, align 8, !tbaa !35
  store i8 0, ptr %i.ct, align 1, !tbaa !36
  %i.cu = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.l
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cw = load i64, ptr %i.l, align 8, !tbaa !36
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  %i.cy = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.j
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.da = load i64, ptr %i.j, align 8, !tbaa !36
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81

.loopexit:                                        ; preds = %.noexc10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.j
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.aa
  %i.df = load i64, ptr %i.j, align 8, !tbaa !36
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pr = load i64, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.dh = icmp eq i64 %.pr, 0
  br i1 %i.dh, label %.thread114, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81
  %i.di = load i64, ptr %i.c, align 8, !tbaa !35
  %i.dj = sub i64 4611686018427387903, %i.di
  %i.dk = icmp ult i64 %i.dj, %.pr
  br i1 %i.dk, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #30
          to label %.noexc86 unwind label %.loopexit.split-lp116

.noexc86:                                         ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ab
  %i.dl = load ptr, ptr %4, align 8, !tbaa !38
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dl, i64 noundef %.pr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit115 ; 0 uses

.loopexit115:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ad
  %lpad.loopexit117 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp116:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.thread114:                                       ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81
  %i.dn = load ptr, ptr %1, align 8, !tbaa !38
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %9
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !36
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !35  ; 4 uses
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.b
  br i1 %i.dt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.thread114
  %i.du = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.du)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.thread114
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dw = phi i64 [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.dx = icmp ugt i64 %i.dr, %i.dw
  br i1 %i.dx, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc88 unwind label %.loopexit115

.noexc88:                                         ; preds = %bb.ad
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc88
  %i.dy = phi ptr [ %.pre.i.i, %.noexc88 ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq
  store i8 %i.dp, ptr %i.dz, align 1, !tbaa !36
  store i64 %i.dr, ptr %i.c, align 8, !tbaa !35
  %i.ea = load ptr, ptr %0, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dr
  store i8 0, ptr %i.eb, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.257 = phi i64 [ %9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %.not113278290306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ]
  %i.ec = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.h
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ee = load i64, ptr %i.h, align 8, !tbaa !36
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.eg = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.f
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.ei = load i64, ptr %i.f, align 8, !tbaa !36
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ai

bb.ae:                                            ; preds = %.loopexit115, %.loopexit.split-lp116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.pn68 = phi { ptr, i32 } [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %lpad.loopexit117, %.loopexit115 ], [ %lpad.loopexit.split-lp118, %.loopexit.split-lp116 ] ; 2 uses
  %i.ek = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.h
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ae
  %i.em = load i64, ptr %i.h, align 8, !tbaa !36
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.eo = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.f
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.eq = load i64, ptr %i.f, align 8, !tbaa !36
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.aj

bb.af:                                            ; preds = %bb.c, %bb.b
  %i.es = load i64, ptr %i.c, align 8, !tbaa !35  ; 4 uses
  %i.et = add i64 %i.es, 1                        ; 3 uses
  %i.eu = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.b
  br i1 %i.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i104: ; preds = %bb.af
  %i.ew = icmp ult i64 %i.es, 16
  call void @llvm.assume(i1 %i.ew)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %bb.af
  %i.ex = load i64, ptr %i.b, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i102: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i104
  %i.ey = phi i64 [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i104 ]
  %i.ez = icmp ugt i64 %i.et, %i.ey
  br i1 %i.ez, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i102
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.es, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc105 unwind label %bb.ah

.noexc105:                                        ; preds = %bb.ag
  %.pre.i.i103 = load ptr, ptr %0, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i102, %.noexc105
  %i.fa = phi ptr [ %.pre.i.i103, %.noexc105 ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i102 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es
  store i8 %i.q, ptr %i.fb, align 1, !tbaa !36
  store i64 %i.et, ptr %i.c, align 8, !tbaa !35
  %i.fc = load ptr, ptr %0, align 8, !tbaa !38
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.et
  store i8 0, ptr %i.fd, align 1, !tbaa !36
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.358 = phi i64 [ %.257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.055203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit106 ]
  %i.ff = add i64 %.358, 1                        ; 2 uses
  %i.fg = load i64, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  %i.fh = icmp ult i64 %i.ff, %i.fg
  br i1 %i.fh, label %bb.b, label %._crit_edge206, !llvm.loop !153

bb.aj:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.ah
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.ah ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bl, %bb.n ], [ %.pn68.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  %i.fi = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.b
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.aj
  %i.fk = load i64, ptr %i.b, align 8, !tbaa !36
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  resume { ptr, i32 } %.pn71.pn.pn

._crit_edge206:                                   ; preds = %bb.ai, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112)) #12

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  br label %_ZN7V3Error1sEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  resume { ptr, i32 } %i.e

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.25, ptr nonnull @.str.26, i32 481, ptr null)
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !33, !alias.scope !157
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !35, !alias.scope !157
  store i8 0, ptr %i.e, align 8, !tbaa !36, !alias.scope !157
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !35, !alias.scope !157
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !35, !alias.scope !157
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #30
          to label %.cont.i unwind label %bb.c
end_hunk_0
