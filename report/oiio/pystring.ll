inline.NumInlined: 1032
inline.NumDeleted: 183
begin_hunk_0_@_ZN8pystring8do_stripERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_:bb.a
  %indvars.iv.next83 = add nsw i64 %indvars.iv82117, -1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next83
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.am = sext i8 %i.al to i32
  %i.an = tail call noundef ptr @memchr(ptr noundef %i.x, i32 noundef %i.am, i64 noundef %i.ah) #23
  %.not60 = icmp eq ptr %i.an, null
  br i1 %.not60, label %.critedge2.loopexit101.split.loop.exit, label %bb.i, !llvm.loop !69

.critedge2.loopexit.split.loop.exit109:           ; preds = %.lr.ph121
  %i.ao = trunc nsw i64 %indvars.iv90120 to i32
  br label %.critedge2

.critedge2.loopexit101.split.loop.exit:           ; preds = %.lr.ph118
  %i.ap = trunc nsw i64 %indvars.iv82117 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.i, %bb.e, %.preheader67, %.preheader, %.critedge2.loopexit101.split.loop.exit, %.critedge2.loopexit.split.loop.exit109, %.critedge4, %.critedge
  %.352 = phi i32 [ %i.e, %.critedge4 ], [ %i.e, %.critedge ], [ %smin92, %.preheader ], [ %i.ao, %.critedge2.loopexit.split.loop.exit109 ], [ %i.ap, %.critedge2.loopexit101.split.loop.exit ], [ %smin, %.preheader67 ], [ %smin92, %bb.e ], [ %smin, %bb.i ] ; 2 uses
  %.4 = phi i32 [ %.3, %.critedge4 ], [ %.1, %.critedge ], [ %.1, %.preheader ], [ %.1, %.critedge2.loopexit.split.loop.exit109 ], [ %.3, %.critedge2.loopexit101.split.loop.exit ], [ %.3, %.preheader67 ], [ %.1, %bb.e ], [ %.3, %bb.i ] ; 3 uses
  %i.aq = icmp eq i32 %.4, 0
  %i.ar = icmp eq i32 %.352, %i.e
  %or.cond = and i1 %i.ar, %i.aq
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.critedge2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !26
  %i.at = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.d, ptr %i.b, align 8, !tbaa !27
  %i.au = icmp ugt i64 %i.d, 15
  br i1 %i.au, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.av = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !12
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !27
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.j
  %i.ax = phi ptr [ %i.av, %.noexc.i ], [ %i.as, %bb.j ] ; 2 uses
  switch i64 %i.d, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !20
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.at, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.k, %bb.l
  %i.az = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !19
  %i.bb = load ptr, ptr %0, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.q

bb.m:                                             ; preds = %.critedge2
  %i.bd = sext i32 %.4 to i64                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.be = icmp ult i64 %i.d, %i.bd
  br i1 %i.be, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %i.bd, i64 noundef %i.d) #25, !noalias !70
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.m
  %i.bf = sub nsw i32 %.352, %.4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !26, !alias.scope !70
  %i.bi = load ptr, ptr %1, align 8, !tbaa !12, !noalias !70
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bd ; 2 uses
  %i.bk = sub nuw i64 %i.d, %i.bd
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bk) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !70
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !27, !noalias !70
  %i.bl = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bl, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !12, !alias.scope !70
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !70
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !20, !alias.scope !70
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bo = phi ptr [ %i.bm, %.noexc10.i.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !20
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bj, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.o, %bb.p
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !70 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !19, !alias.scope !70
  %i.bs = load ptr, ptr %0, align 8, !tbaa !12, !alias.scope !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !70
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring9partitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 3 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 5                   ; 2 uses
  %i.j = icmp ult i64 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 3, %i.i
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.k)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.h, 96
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.m) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = load ptr, ptr %1, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.s, i64 noundef 0, i64 noundef %i.u) #24 ; 4 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.x = load i64, ptr %i.t, align 8, !tbaa !19
  %i.y = add i64 %i.x, %i.v
  %sext = shl i64 %i.r, 32
  %i.z = ashr exact i64 %sext, 32
  %i.aa = icmp ugt i64 %i.y, %i.z
  %i.ab = and i64 %i.v, 2147483648
  %i.ac = icmp ne i64 %i.ab, 0
  %or.cond = or i1 %i.ac, %i.aa
  br i1 %or.cond, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %bb.f

_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread: ; preds = %bb.e, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ad = load ptr, ptr %2, align 8, !tbaa !7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL12empty_stringB5cxx11E)
  %i.ag = load ptr, ptr %2, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8pystringL12empty_stringB5cxx11E)
  br label %bb.x

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ai = and i64 %i.v, 2147483647                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !73
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !26, !alias.scope !73
  %i.al = load ptr, ptr %0, align 8, !tbaa !12, !noalias !73 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !73
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !27, !noalias !73
  %i.am = icmp samesign ugt i64 %spec.select.i.i.i, 15
  br i1 %i.am, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.f
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !12, !alias.scope !73
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !27, !noalias !73
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !20, !alias.scope !73
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.f
  %i.ap = phi ptr [ %i.an, %.noexc10.i.i ], [ %i.ak, %bb.f ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = load i8, ptr %i.al, align 1, !tbaa !20
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.al, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !27, !noalias !73 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !19, !alias.scope !73
  %i.at = load ptr, ptr %3, align 8, !tbaa !12, !alias.scope !73
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !73
  %i.av = load ptr, ptr %2, align 8, !tbaa !7     ; 9 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  %i.az = load ptr, ptr %3, align 8, !tbaa !12    ; 6 uses
  %i.ba = icmp eq ptr %i.az, %i.ak                ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.ba, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.ba, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = load i64, ptr %i.as, align 8, !tbaa !19 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %.not21.i = icmp eq ptr %3, %i.av
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !76

bb.j:                                             ; preds = %bb.i
  switch i64 %i.bb, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !20
  store i8 %i.bd, ptr %i.aw, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.be = load i64, ptr %i.as, align 8, !tbaa !19 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !19
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !12
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !19
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !19
  %i.bk = load i64, ptr %i.ak, align 8, !tbaa !20
  store i64 %i.bk, ptr %i.ax, align 8, !tbaa !20
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bl = load i64, ptr %i.ax, align 8, !tbaa !20
  store ptr %i.az, ptr %i.av, align 8, !tbaa !12
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !19
  %i.bo = load i64, ptr %i.ak, align 8, !tbaa !20
  store i64 %i.bo, ptr %i.ax, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aw, ptr %3, align 8, !tbaa !12
  store i64 %i.bl, ptr %i.ak, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ak, ptr %3, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bp = phi ptr [ %i.aw, %bb.m ], [ %i.ak, %bb.n ], [ %i.az, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.as, align 8, !tbaa !19
  store i8 0, ptr %i.bp, align 1, !tbaa !20
  %i.bq = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ak
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.bq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bs = load ptr, ptr %2, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bu = load i64, ptr %i.t, align 8, !tbaa !19
  %i.bv = add i64 %i.bu, %i.ai                    ; 4 uses
  %i.bw = load i64, ptr %i.q, align 8, !tbaa !19  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.bx = icmp ugt i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %i.bv, i64 noundef %i.bw) #25, !noalias !77
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.by, ptr %4, align 8, !tbaa !26, !alias.scope !77
  %i.bz = load ptr, ptr %0, align 8, !tbaa !12, !noalias !77
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bv ; 2 uses
  %i.cb = sub nuw i64 %i.bw, %i.bv                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !77
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !27, !noalias !77
  %i.cc = icmp ugt i64 %i.cb, 15
  br i1 %i.cc, label %.noexc10.i.i19, label %._crit_edge.i.i.i18

.noexc10.i.i19:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cd, ptr %4, align 8, !tbaa !12, !alias.scope !77
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !77
  store i64 %i.ce, ptr %i.by, align 8, !tbaa !20, !alias.scope !77
  br label %._crit_edge.i.i.i18

._crit_edge.i.i.i18:                              ; preds = %.noexc10.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cf = phi ptr [ %i.cd, %.noexc10.i.i19 ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.cb, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i18
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !20
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20

bb.q:                                             ; preds = %._crit_edge.i.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.ca, i64 %i.cb, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit20: ; preds = %._crit_edge.i.i.i18, %bb.p, %bb.q
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !77 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !19, !alias.scope !77
end_hunk_0
begin_hunk_1_@_ZN8pystring10expandtabsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a
  %i.w = sub nsw i32 %2, %i.v                     ; 3 uses
  %i.x = add nsw i32 %i.w, %.03067.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.y = sext i32 %i.w to i64
  store ptr %i.q, ptr %3, align 8, !tbaa !26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.y, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.us unwind label %.split.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.us: ; preds = %bb.d
  %i.z = sext i32 %.03266.us to i64
  %i.aa = add i64 %.03465.us, %i.z                ; 4 uses
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ac = icmp ugt i64 %i.aa, %i.ab
  br i1 %i.ac, label %.split69.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.us
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !19
  %i.ae = load ptr, ptr %3, align 8, !tbaa !12
  %i.af = icmp ne i64 %i.ab, %i.aa
  %spec.select.i.i.i.us = zext i1 %i.af to i64
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa, i64 noundef %spec.select.i.i.i.us, ptr noundef %i.ae, i64 noundef %i.ad)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us unwind label %.loopexit50.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us
  %i.ah = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us
  call void @_ZdlPv(ptr noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.aj = add i32 %.03266.us, -1
  %i.ak = add i32 %i.aj, %i.w
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.al = add nsw i32 %.03067.us, 1
  %i.am = icmp eq i8 %i.u, 13
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %.133.us = phi i32 [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %.03266.us, %bb.e ], [ %.03266.us, %bb.f ]
  %.131.us = phi i32 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %i.al, %bb.e ], [ 0, %bb.f ]
  %i.an = add nuw i64 %.03465.us, 1               ; 2 uses
  %exitcond83.not = icmp eq i64 %i.an, %i.o
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !125

.split.us:                                        ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

.loopexit50.split.us:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us
  %lpad.loopexit52.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.03266 = phi i32 [ %.133, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %.03465 = phi i64 [ %i.bd, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.03465
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %cond = icmp eq i8 %i.ar, 9
  br i1 %cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph.split
  %i.as = sext i32 %.03266 to i64
  %i.at = add i64 %.03465, %i.as                  ; 4 uses
  %i.au = load i64, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42

.split69.us:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.us
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.aa, i64 noundef %i.ab) #25
          to label %.noexc unwind label %.loopexit.split-lp51

.noexc:                                           ; preds = %.split69.us
  unreachable

.loopexit.split-lp51:                             ; preds = %.split69.us
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp51, %.loopexit50.split.us
  %lpad.phi54 = phi { ptr, i32 } [ %lpad.loopexit52.us, %.loopexit50.split.us ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp51 ] ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %.split.us
  %.pn = phi { ptr, i32 } [ %i.ao, %.split.us ], [ %lpad.phi54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %lpad.phi54, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.at, i64 noundef %i.au) #25
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42: ; preds = %bb.h
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8pystringL12empty_stringB5cxx11E, i64 8), align 8, !tbaa !19
  %i.az = load ptr, ptr @_ZN8pystringL12empty_stringB5cxx11E, align 8, !tbaa !12
  %i.ba = icmp ne i64 %i.au, %i.at
  %spec.select.i.i.i43 = zext i1 %i.ba to i64
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.at, i64 noundef %spec.select.i.i.i43, ptr noundef %i.az, i64 noundef %i.ay)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42
  %i.bc = add nsw i32 %.03266, -1
  br label %bb.k

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i42
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46
  %.133 = phi i32 [ %.03266, %.lr.ph.split ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit46 ]
  %i.bd = add nuw i64 %.03465, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !125

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.b
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.be) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %bb.k, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN8pystring5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp slt i32 %3, 0
  %i.f = load i64, ptr %i.d, align 8, !tbaa !19
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp slt i32 %2, 0
  %i.i = add nsw i32 %2, %i.g
  %spec.store.select1.i.us47 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 0)
  %.021.i.us48 = select i1 %i.h, i32 %spec.store.select1.i.us47, i32 %2
  %i.j = zext nneg i32 %.021.i.us48 to i64
  %i.k = load ptr, ptr %1, align 8, !tbaa !12
  %i.l = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.k, i64 noundef %i.j, i64 noundef %i.b) #24 ; 3 uses
  %i.m = icmp eq i64 %i.l, -1                     ; 2 uses
  br i1 %i.e, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  br i1 %i.m, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.lr.ph

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.m, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader.split.us.preheader, %.preheader.split.us
  %i.n = phi i64 [ %i.ag, %.preheader.split.us ], [ %i.l, %.preheader.split.us.preheader ] ; 2 uses
  %i.o = phi i32 [ %i.ab, %.preheader.split.us ], [ %i.g, %.preheader.split.us.preheader ] ; 3 uses
  %.025.us49 = phi i32 [ %i.z, %.preheader.split.us ], [ 0, %.preheader.split.us.preheader ] ; 2 uses
  %i.p = icmp sgt i32 %3, %i.o
  %i.q = add nsw i32 %3, %i.o
  %spec.store.select.i.us = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %.020.i.us = select i1 %i.p, i32 %i.o, i32 %spec.store.select.i.us
  %i.r = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.s = add i64 %i.r, %i.n
  %i.t = sext i32 %.020.i.us to i64
  %i.u = icmp ugt i64 %i.s, %i.t
  %i.v = trunc i64 %i.n to i32                    ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %or.cond.us = or i1 %i.w, %i.u
  br i1 %or.cond.us, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.lr.ph50
  %i.x = trunc i64 %i.r to i32
  %i.y = add nsw i32 %i.x, %i.v                   ; 3 uses
  %i.z = add nuw nsw i32 %.025.us49, 1            ; 2 uses
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !19
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = icmp slt i32 %i.y, 0
  %i.ad = add nsw i32 %i.y, %i.ab
  %spec.store.select1.i.us = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %.021.i.us = select i1 %i.ac, i32 %spec.store.select1.i.us, i32 %i.y
  %i.ae = zext nneg i32 %.021.i.us to i64
  %i.af = load ptr, ptr %1, align 8, !tbaa !12
  %i.ag = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.af, i64 noundef %i.ae, i64 noundef %i.r) #24 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.lr.ph50, !llvm.loop !126

bb.b:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !19
  %i.aj = trunc i64 %i.ai to i32                  ; 4 uses
  %i.ak = icmp sgt i32 %3, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = icmp slt i32 %3, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = add nsw i32 %3, %i.aj
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.026 = phi i32 [ %3, %bb.c ], [ %spec.store.select, %bb.d ], [ %i.aj, %bb.b ]
  %i.an = icmp slt i32 %2, 0
  %i.ao = add nsw i32 %2, %i.aj
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %.027 = select i1 %i.an, i32 %spec.store.select1, i32 %2
  %reass.sub = sub i32 %.026, %.027
  %i.ap = add i32 %reass.sub, 1
  br label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread

.lr.ph:                                           ; preds = %.preheader.split.preheader, %.preheader.split
  %i.aq = phi i64 [ %i.bh, %.preheader.split ], [ %i.l, %.preheader.split.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.bc, %.preheader.split ], [ %i.g, %.preheader.split.preheader ]
  %.02545 = phi i32 [ %i.ba, %.preheader.split ], [ 0, %.preheader.split.preheader ] ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.ar)
  %i.as = load i64, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.at = add i64 %i.as, %i.aq
  %i.au = sext i32 %spec.select to i64
  %i.av = icmp ugt i64 %i.at, %i.au
  %i.aw = trunc i64 %i.aq to i32                  ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %or.cond = or i1 %i.ax, %i.av
  br i1 %or.cond, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.preheader.split

.preheader.split:                                 ; preds = %.lr.ph
  %i.ay = trunc i64 %i.as to i32
  %i.az = add nsw i32 %i.ay, %i.aw                ; 3 uses
  %i.ba = add nuw nsw i32 %.02545, 1              ; 2 uses
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !19
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = add nsw i32 %i.az, %i.bc
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %.021.i = select i1 %i.bd, i32 %spec.store.select1.i, i32 %i.az
  %i.bf = zext nneg i32 %.021.i to i64
  %i.bg = load ptr, ptr %1, align 8, !tbaa !12
  %i.bh = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bg, i64 noundef %i.bf, i64 noundef %i.as) #24 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread, label %.lr.ph, !llvm.loop !126

_ZN8pystring4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit.thread: ; preds = %.lr.ph, %.preheader.split, %.preheader.split.us, %.lr.ph50, %.preheader.split.preheader, %.preheader.split.us.preheader, %bb.e
  %.028 = phi i32 [ %i.ap, %bb.e ], [ 0, %.preheader.split.preheader ], [ 0, %.preheader.split.us.preheader ], [ %.025.us49, %.lr.ph50 ], [ %i.z, %.preheader.split.us ], [ %i.ba, %.preheader.split ], [ %.02545, %.lr.ph ]
  ret i32 %.028
}

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring7replaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i32 noundef %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !26
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !27
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !12
  %i.h = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.h, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.j, ptr %i.i, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = load i64, ptr %i.l, align 8, !tbaa !19
  %i.t = load ptr, ptr %2, align 8, !tbaa !12
  %i.u = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.t, i64 noundef 0, i64 noundef %i.p) #24 ; 3 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = load i64, ptr %i.o, align 8, !tbaa !19
  %i.x = add i64 %i.w, %i.u
  %sext = shl i64 %i.s, 32
  %i.y = ashr exact i64 %sext, 32
  %i.z = icmp ugt i64 %i.x, %i.y
  %i.aa = trunc i64 %i.u to i32                   ; 5 uses
  %.not37 = icmp eq i32 %i.aa, -1
  %or.cond147.a = or i1 %i.z, %.not37
  br i1 %or.cond147.a, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ab = icmp slt i32 %4, 0                      ; 2 uses
  %i.ac = trunc i64 %i.r to i32                   ; 3 uses
  %.not26 = icmp eq i64 %i.p, 0
  br i1 %.not26, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %invariant.op = add i32 %i.ac, 1                ; 2 uses
  br i1 %i.ab, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us.us
  %.02238.us.us = phi i32 [ %.reass.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us.us ], [ %i.aa, %.lr.ph.split.us ] ; 3 uses
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ae = trunc i64 %i.ad to i32
  %.not24.us.us = icmp sgt i32 %.02238.us.us, %i.ae
  br i1 %.not24.us.us, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split.us
  %i.af = sext i32 %.02238.us.us to i64           ; 3 uses
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %.split.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us.us: ; preds = %bb.e
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !19
  %i.ai = load ptr, ptr %3, align 8, !tbaa !12
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.ah)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us.us unwind label %.loopexit.split.us.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us.us
  %.reass.us = add i32 %.02238.us.us, %invariant.op ; 2 uses
  %.not.us.us = icmp eq i32 %.reass.us, -1
  br i1 %.not.us.us, label %.critedge, label %.lr.ph.split.us.split.us, !llvm.loop !127

.loopexit.split.us.split.us:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us.us
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us
  %.039.us = phi i32 [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.02238.us = phi i32 [ %.reass, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us ], [ %i.aa, %.lr.ph.split.us ] ; 3 uses
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %.not24.us = icmp sle i32 %.02238.us, %i.al
  %.not25.us = icmp slt i32 %.039.us, %4
  %or.cond = select i1 %.not24.us, i1 %.not25.us, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph.split.us.split
  %i.am = sext i32 %.02238.us to i64              ; 3 uses
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %.split.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us: ; preds = %bb.f
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !19
  %i.ap = load ptr, ptr %3, align 8, !tbaa !12
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.ao)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us unwind label %.loopexit.split.us.split ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us
  %.reass = add i32 %.02238.us, %invariant.op     ; 2 uses
  %i.ar = add nuw nsw i32 %.039.us, 1
  %.not.us = icmp eq i32 %.reass, -1
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !127

.loopexit.split.us.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.ab, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.h
  %.02238.us45 = phi i32 [ %i.bo, %bb.h ], [ %i.aa, %.lr.ph.split ] ; 3 uses
  %i.as = load i64, ptr %i.l, align 8, !tbaa !19  ; 4 uses
  %i.at = trunc i64 %i.as to i32
  %.not24.us46 = icmp sgt i32 %.02238.us45, %i.at
  br i1 %.not24.us46, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split.us
  %i.au = sext i32 %.02238.us45 to i64            ; 4 uses
  %i.av = icmp ult i64 %i.as, %i.au
  br i1 %i.av, label %.split.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us49: ; preds = %bb.g
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !19
  %i.ax = load ptr, ptr %3, align 8, !tbaa !12
  %i.ay = sub nuw i64 %i.as, %i.au
  %spec.select.i.i.i.us50 = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.ay)
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.au, i64 noundef %spec.select.i.i.i.us50, ptr noundef %i.ax, i64 noundef %i.aw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us51 unwind label %.loopexit.split.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us49
  %i.ba = add nsw i32 %.02238.us45, %i.ac         ; 3 uses
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !19  ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp slt i32 %i.ba, 0
  %i.be = add nsw i32 %i.ba, %i.bc
  %spec.store.select1.i29.us = call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %.021.i.us = select i1 %i.bd, i32 %spec.store.select1.i29.us, i32 %i.ba
  %i.bf = zext nneg i32 %.021.i.us to i64
  %i.bg = load ptr, ptr %2, align 8, !tbaa !12
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !19
  %i.bi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bg, i64 noundef %i.bf, i64 noundef %i.bh) #24 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us51
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !19
  %i.bl = add i64 %i.bk, %i.bi
  %sext33.us = shl i64 %i.bb, 32
  %i.bm = ashr exact i64 %sext33.us, 32
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bi to i32                  ; 2 uses
  %.not.us54 = icmp eq i32 %i.bo, -1
  %or.cond148 = or i1 %i.bn, %.not.us54
  br i1 %or.cond148, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !127

.loopexit.split.split.us:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.us49
  %lpad.loopexit.us59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.j
  %.039 = phi i32 [ %i.cm, %bb.j ], [ 0, %.lr.ph.split ] ; 2 uses
  %.02238 = phi i32 [ %i.cl, %bb.j ], [ %i.aa, %.lr.ph.split ] ; 3 uses
  %i.bp = load i64, ptr %i.l, align 8, !tbaa !19  ; 4 uses
  %i.bq = trunc i64 %i.bp to i32
  %.not24 = icmp sle i32 %.02238, %i.bq
  %.not25 = icmp slt i32 %.039, %4
  %or.cond64 = select i1 %.not24, i1 %.not25, i1 false
  br i1 %or.cond64, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.br = sext i32 %.02238 to i64                 ; 4 uses
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %.split.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i

.split.us:                                        ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.us-phi = phi i64 [ %i.au, %bb.g ], [ %i.am, %bb.f ], [ %i.af, %bb.e ], [ %i.br, %bb.i ]
  %.us-phi42 = phi i64 [ %i.as, %bb.g ], [ %i.ak, %bb.f ], [ %i.ad, %bb.e ], [ %i.bp, %bb.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %.us-phi, i64 noundef %.us-phi42) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i: ; preds = %bb.i
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !19
  %i.bu = load ptr, ptr %3, align 8, !tbaa !12
  %i.bv = sub nuw i64 %i.bp, %i.br
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.bv)
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.br, i64 noundef %spec.select.i.i.i, ptr noundef %i.bu, i64 noundef %i.bt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit unwind label %.loopexit.split.split ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i
  %i.bx = add nsw i32 %.02238, %i.ac              ; 3 uses
  %i.by = load i64, ptr %i.l, align 8, !tbaa !19  ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp slt i32 %i.bx, 0
  %i.cb = add nsw i32 %i.bx, %i.bz
  %spec.store.select1.i29 = call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %.021.i = select i1 %i.ca, i32 %spec.store.select1.i29, i32 %i.bx
  %i.cc = zext nneg i32 %.021.i to i64
  %i.cd = load ptr, ptr %2, align 8, !tbaa !12
  %i.ce = load i64, ptr %i.o, align 8, !tbaa !19
  %i.cf = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cd, i64 noundef %i.cc, i64 noundef %i.ce) #24 ; 3 uses
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !19
  %i.ci = add i64 %i.ch, %i.cf
  %sext33 = shl i64 %i.by, 32
  %i.cj = ashr exact i64 %sext33, 32
  %i.ck = icmp ugt i64 %i.ci, %i.cj
  %i.cl = trunc i64 %i.cf to i32                  ; 2 uses
  %i.cm = add nuw nsw i32 %.039, 1
  %.not = icmp eq i32 %i.cl, -1
  %or.cond149 = or i1 %i.ck, %.not
  br i1 %or.cond149, label %.critedge, label %.lr.ph.split.split, !llvm.loop !127

.loopexit.split.split:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split.us.split.us, %.loopexit.split.us.split, %.loopexit.split.split.us, %.loopexit.split.split, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ], [ %lpad.loopexit.us, %.loopexit.split.us.split ], [ %lpad.loopexit, %.loopexit.split.split ], [ %lpad.loopexit.us59, %.loopexit.split.split.us ]
  %i.cn = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.b
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.cn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.phi

.critedge:                                        ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit, %.lr.ph.split.split, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us51, %.lr.ph.split.split.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us, %.lr.ph.split.us.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.us.us, %.lr.ph.split.us.split.us, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring10splitlinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS5_SaIS5_EEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 5 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.04062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.o = add nuw i64 %.04062, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.j, i64 %i.o) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.161 = phi i64 [ %.04062, %.preheader ], [ %i.r, %bb.c ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.161
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %i.r = add nuw i64 %.161, 1                     ; 7 uses
  switch i8 %i.q, label %bb.c [
    i8 10, label %.critedge
    i8 13, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.r, %i.j
  br i1 %i.s, label %bb.b, label %.critedge46, !llvm.loop !128

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.r, %i.j
  br i1 %i.t, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = icmp eq i8 %i.v, 10
  %i.x = add nuw i64 %.161, 2
  %spec.select96 = select i1 %i.w, i64 %i.x, i64 %i.r
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.d
  %.2 = phi i64 [ %i.r, %bb.d ], [ %spec.select96, %bb.e ], [ %i.r, %bb.b ] ; 2 uses
  %spec.select = select i1 %2, i64 %.2, i64 %.161
  br label %.critedge46

.critedge46:                                      ; preds = %bb.c, %.critedge
  %.3 = phi i64 [ %.2, %.critedge ], [ %umax, %bb.c ] ; 2 uses
  %.039 = phi i64 [ %spec.select, %.critedge ], [ %umax, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.y = load i64, ptr %i.i, align 8, !tbaa !19, !noalias !129 ; 3 uses
  %i.z = icmp ugt i64 %.04062, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.f:                                             ; preds = %.critedge46
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i64 noundef %.04062, i64 noundef %i.y) #25, !noalias !129
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.critedge46
  %i.aa = sub i64 %.039, %.04062
  store ptr %i.k, ptr %3, align 8, !tbaa !26, !alias.scope !129
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %.04062 ; 2 uses
  %i.ac = sub nuw i64 %i.y, %.04062
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ac) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !129
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !27, !noalias !129
  %i.ad = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ad, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !12, !alias.scope !129
  %i.af = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !129
  store i64 %i.af, ptr %i.k, align 8, !tbaa !20, !alias.scope !129
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ag = phi ptr [ %i.ae, %.noexc10.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !20
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ab, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !129 ; 2 uses
  store i64 %i.ai, ptr %i.l, align 8, !tbaa !19, !alias.scope !129
  %i.aj = load ptr, ptr %3, align 8, !tbaa !12, !alias.scope !129
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !129
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !11  ; 6 uses
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !28
  %.not.i.i47 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i47, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !26
  %i.ao = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.k
  br i1 %i.ap, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.as, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !12
  %i.at = load i64, ptr %i.k, align 8, !tbaa !20
  store i64 %i.at, ptr %i.an, align 8, !tbaa !20
  %.pre = load i64, ptr %i.l, align 8, !tbaa !19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.au = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aq, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !19
  store ptr %i.k, ptr %3, align 8, !tbaa !12
  store i64 0, ptr %i.l, align 8, !tbaa !19
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !11
end_hunk_1
