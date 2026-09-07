Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/utf8?download=true
inline.NumInlined: 158
inline.NumDeleted: 74
begin_hunk_0_@_ZN4lean9utf8_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.p, label %_ZN4lean13get_utf8_sizeEh.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = and i32 %i.m, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %_ZN4lean13get_utf8_sizeEh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %i.m, 248
  %i.t = icmp eq i32 %i.s, 240
  br i1 %i.t, label %_ZN4lean13get_utf8_sizeEh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %i.m, 252
  %i.v = icmp eq i32 %i.u, 248
  br i1 %i.v, label %_ZN4lean13get_utf8_sizeEh.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = and i32 %i.m, 254
  %i.x = icmp eq i32 %i.w, 252
  %..i = select i1 %i.x, i32 6, i32 1
  br label %_ZN4lean13get_utf8_sizeEh.exit

_ZN4lean13get_utf8_sizeEh.exit:                   ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 5, %bb.f ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ %..i, %bb.g ]
  %i.y = add i32 %.0.i, %.025                     ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp ugt i64 %i.b, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !31

bb.h:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.d, i64 noundef %i.b) #15, !noalias !32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %._crit_edge
  %i.ab = icmp eq i32 %.016.lcssa, -1
  %i.ac = trunc nuw i64 %i.b to i32
  %spec.select22 = select i1 %i.ab, i32 %i.ac, i32 %.016.lcssa
  %i.ad = sub nsw i32 %spec.select22, %.017.lcssa
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !33, !alias.scope !32
  %i.ag = load ptr, ptr %1, align 8, !tbaa !17, !noalias !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.d ; 2 uses
  %i.ai = sub nuw nsw i64 %i.b, %i.d
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 7 uses
  %i.aj = icmp samesign ugt i64 %spec.select.i.i.i, 15
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, label %._crit_edge.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ak = add nuw nsw i64 %spec.select.i.i.i, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #16 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !17, !alias.scope !32
  store i64 %spec.select.i.i.i, ptr %i.af, align 8, !tbaa !10, !alias.scope !32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.am = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !10
  store i8 %i.an, ptr %i.am, align 1, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ah, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i.i, ptr %i.ao, align 8, !tbaa !18, !alias.scope !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ap, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4lean15utf8_to_unicodeEPKhS1_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 4 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = and i32 %i.c, 192
  %i.f = icmp eq i32 %i.e, 192
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.0314967 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = icmp eq ptr %.0314967, %1
  br i1 %i.g, label %.loopexit, label %.lr.ph74

.lr.ph:                                           ; preds = %.lr.ph74
  %.03149 = getelementptr inbounds nuw i8, ptr %.0314973, i64 1 ; 2 uses
  %i.h = icmp eq ptr %.03149, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph74, !llvm.loop !34

.lr.ph74:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0314973 = phi ptr [ %.03149, %.lr.ph ], [ %.0314967, %.lr.ph.preheader ] ; 2 uses
  %.0324472 = phi i32 [ %i.r, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0304571 = phi i32 [ %i.n, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.0294670 = phi i32 [ %i.k, %.lr.ph ], [ 63, %.lr.ph.preheader ]
  %.0284769 = phi i32 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.04868 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.i = shl i32 %.0324472, 6
  %i.j = add i32 %.0284769, 1                     ; 2 uses
  %i.k = lshr i32 %.0294670, 1                    ; 2 uses
  %i.l = add i32 %.04868, 6                       ; 2 uses
  %i.m = shl nuw nsw i32 %.0304571, 1
  %i.n = and i32 %i.m, 254                        ; 2 uses
  %i.o = load i8, ptr %.0314973, align 1, !tbaa !10
  %i.p = and i8 %i.o, 63
  %i.q = zext nneg i8 %i.p to i32
  %i.r = or disjoint i32 %i.i, %i.q               ; 2 uses
  %i.s = and i32 %.0304571, 96
  %i.t = icmp eq i32 %i.s, 96
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph74, %.preheader
  %.032.lcssa = phi i32 [ 0, %.preheader ], [ %i.r, %.lr.ph74 ]
  %.030.lcssa = phi i32 [ %i.c, %.preheader ], [ %i.n, %.lr.ph74 ]
  %.029.lcssa = phi i32 [ 63, %.preheader ], [ %i.k, %.lr.ph74 ]
  %.028.lcssa = phi i32 [ 0, %.preheader ], [ %i.j, %.lr.ph74 ]
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.l, %.lr.ph74 ]
  %i.u = lshr i32 %.030.lcssa, %.028.lcssa
  %i.v = and i32 %i.u, %.029.lcssa
  %i.w = shl i32 %i.v, %.0.lcssa
  %i.x = or i32 %i.w, %.032.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %bb.b, %._crit_edge, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ], [ %i.x, %._crit_edge ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4lean23get_utf8_first_byte_optEh(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::optional.1") align 4 captures(none) initializes((0, 1)) %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i8 %1 to i32                        ; 3 uses
  %i.b = icmp sgt i8 %1, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !21
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.a, 224
  %i.e = icmp eq i32 %i.d, 192
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %i.f, align 4, !tbaa !21
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.g = and i32 %i.a, 240
  %i.h = icmp eq i32 %i.g, 224
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %0, align 4, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %i.i, align 4, !tbaa !21
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.j = and i32 %i.a, 248
  %i.k = icmp eq i32 %i.j, 240
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %0, align 4, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.l, align 4, !tbaa !21
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %0, align 4, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 1114112) i32 @_ZN4lean9next_utf8EPKcmRm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !20     ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10    ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 10 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.a, 1                          ; 2 uses
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw nsw i32 %i.d, 6
  %i.k = and i32 %i.j, 1984                       ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 128
  br i1 %i.l, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = and i8 %i.n, 63
  %i.p = zext nneg i8 %i.o to i32
  %i.q = or disjoint i32 %i.k, %i.p
  br label %.thread67

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.r = and i32 %i.d, 240
  %i.s = icmp eq i32 %i.r, 224
  br i1 %i.s, label %bb.f, label %.thread

bb.f:                                             ; preds = %.critedge
  %i.t = add i64 %i.a, 2                          ; 2 uses
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.b, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10
  %i.x = shl nuw nsw i32 %i.d, 12
  %i.y = and i32 %i.x, 61440                      ; 2 uses
  %i.z = and i8 %i.w, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = or disjoint i32 %i.ab, %i.y             ; 3 uses
  %i.ad = icmp samesign ugt i32 %i.ac, 2047
  br i1 %i.ad, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ag = and i8 %i.af, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ac, %i.ah
  %i.aj = icmp samesign ult i32 %i.ac, 55296
  %i.ak = icmp samesign ugt i32 %i.y, 57343
  %or.cond = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond, label %.thread67, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.f, %.critedge
  %i.al = and i32 %i.d, 248
  %i.am = icmp eq i32 %i.al, 240
  br i1 %i.am, label %bb.i, label %.thread67

bb.i:                                             ; preds = %.thread
  %i.an = add i64 %i.a, 3                         ; 2 uses
  %i.ao = icmp ult i64 %i.an, %1
  br i1 %i.ao, label %bb.j, label %.thread67

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.b, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = shl nuw nsw i32 %i.d, 18
  %i.as = and i32 %i.ar, 1835008
  %i.at = and i8 %i.aq, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 12
  %i.aw = or disjoint i32 %i.av, %i.as            ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1114112
  %or.cond5 = icmp ult i32 %i.ax, -1048576
  br i1 %or.cond5, label %.thread67, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.b, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.ba = and i8 %i.az, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 6
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %i.bf = and i8 %i.be, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bc, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.aw
  br label %.thread67

.thread67:                                        ; preds = %.thread, %bb.i, %bb.j, %bb.h, %bb.a, %bb.k, %bb.e
  %.sink73 = phi i64 [ 4, %bb.k ], [ 1, %bb.a ], [ 2, %bb.e ], [ 3, %bb.h ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %.thread ]
  %.5 = phi i32 [ %i.bi, %bb.k ], [ %i.d, %bb.a ], [ %i.q, %bb.e ], [ %i.ai, %bb.h ], [ %i.d, %bb.j ], [ %i.d, %bb.i ], [ %i.d, %.thread ]
  %i.bj = add i64 %i.a, %.sink73
  store i64 %i.bj, ptr %2, align 8, !tbaa !20
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 1114112) i32 @_ZN4lean9next_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = tail call noundef i32 @_ZN4lean9next_utf8EPKcmRm(ptr noundef %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean11utf8_decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIjSaIjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !40
  %.pre4 = load ptr, ptr %i.e, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.g = phi ptr [ %.pre4, %.lr.ph ], [ %i.af, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.h = phi ptr [ %.pre, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.j = call noundef range(i32 0, 1114112) i32 @_ZN4lean9next_utf8EPKcmRm(ptr noundef %i.i, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.h, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !42     ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775804
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951)
  %i.u = select i1 %i.s, i64 2305843009213693951, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #16 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store i32 %i.j, ptr %i.x, align 4, !tbaa !21
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.w, ptr %1, align 8, !tbaa !42
  store ptr %i.z, ptr %i.d, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !41
  %.pre5 = load i64, ptr %i.b, align 8, !tbaa !18
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.c, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.ae = phi i64 [ %i.f, %bb.c ], [ %.pre5, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.af = phi ptr [ %i.g, %bb.c ], [ %i.ad, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ag = phi ptr [ %i.k, %bb.c ], [ %i.z, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !20
  %i.ai = icmp ult i64 %i.ah, %i.ae
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4lean17validate_utf8_oneEPKhmRm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !20     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10    ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 6 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %.critedge.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.a, 1                          ; 2 uses
  %.not73 = icmp ult i64 %i.h, %1
  br i1 %.not73, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10
  %.not74 = icmp slt i8 %i.j, -64
  %i.k = and i32 %i.d, 30
  %i.l = icmp ne i32 %i.k, 0
  %or.cond85 = and i1 %i.l, %.not74
  br i1 %or.cond85, label %.critedge.sink.split, label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.m = and i32 %i.d, 240
  %i.n = icmp eq i32 %i.m, 224
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %i.a, 2                          ; 2 uses
  %.not70 = icmp ult i64 %i.o, %1
  br i1 %.not70, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.b, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 192
  %.not71 = icmp eq i32 %i.s, 128
  br i1 %.not71, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10
  %.not72 = icmp slt i8 %i.u, -64
  br i1 %.not72, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.v = shl nuw nsw i32 %i.d, 12
  %i.w = and i32 %i.v, 61440                      ; 2 uses
  %i.x = shl nuw nsw i32 %i.r, 6
  %i.y = and i32 %i.x, 4032
  %i.z = or disjoint i32 %i.y, %i.w               ; 2 uses
  %i.aa = icmp samesign ult i32 %i.z, 2048
  br i1 %i.aa, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = icmp samesign ugt i32 %i.z, 55295
  %i.ac = icmp samesign ult i32 %i.w, 57344
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %.critedge, label %.critedge.sink.split

bb.k:                                             ; preds = %bb.e
  %i.ad = and i32 %i.d, 248
  %i.ae = icmp eq i32 %i.ad, 240
  br i1 %i.ae, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.af = add i64 %i.a, 3                         ; 2 uses
  %.not = icmp ult i64 %i.af, %1
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %i.b, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = and i32 %i.ai, 192
  %.not67 = icmp eq i32 %i.aj, 128
  br i1 %.not67, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.am = getelementptr i8, ptr %i.b, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %.not68 = icmp slt i8 %i.an, -64
  %.not69 = icmp slt i8 %i.al, -64
  %or.cond79 = select i1 %.not68, i1 %.not69, i1 false
  br i1 %or.cond79, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ao = shl nuw nsw i32 %i.d, 18
  %i.ap = and i32 %i.ao, 1835008
  %i.aq = shl nuw nsw i32 %i.ai, 12
  %i.ar = and i32 %i.aq, 196608
  %i.as = add nsw i32 %i.ap, -65536
  %i.at = add nsw i32 %i.as, %i.ar
  %or.cond5 = icmp ult i32 %i.at, 1048576
  br i1 %or.cond5, label %.critedge.sink.split, label %.critedge

.critedge.sink.split:                             ; preds = %bb.o, %bb.j, %bb.d, %bb.a
  %.sink89 = phi i64 [ 3, %bb.j ], [ 2, %bb.d ], [ 1, %bb.a ], [ 4, %bb.o ]
  %i.au = add i64 %i.a, %.sink89
  store i64 %i.au, ptr %2, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.o, %bb.m, %bb.n, %bb.g, %bb.h, %bb.j, %bb.i, %bb.d, %bb.k, %bb.l, %bb.f, %bb.c
  %.6 = phi i1 [ false, %bb.h ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.g ], [ false, %bb.i ], [ true, %.critedge.sink.split ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4lean13validate_utf8EPKhmRmS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !20
  %.not = icmp ult i64 %i.a, %1
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = tail call noundef zeroext i1 @_ZN4lean17validate_utf8_oneEPKhmRm(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
end_hunk_0
