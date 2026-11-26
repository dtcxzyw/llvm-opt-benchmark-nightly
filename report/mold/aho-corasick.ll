Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/aho-corasick?download=true
inline.NumInlined: 234
inline.NumDeleted: 133
begin_hunk_0_@_ZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
.preheader65:                                     ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  %.fr = freeze i32 %i.f                          ; 5 uses
  %.not11.i = icmp eq i32 %.fr, -1
  br i1 %.not11.i, label %.preheader65.split.us, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i

.preheader65.split.us:                            ; preds = %.preheader65, %.critedge.i.us
  %.09.in.i.sroa.speculated.us = phi i32 [ %.09.in.i.sroa.speculate.load..critedge.i.us, %.critedge.i.us ], [ 0, %.preheader65 ] ; 2 uses
  switch i32 %.09.in.i.sroa.speculated.us, label %bb.b [
    i32 -1, label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit"
    i32 0, label %.critedge.i.us
  ]

bb.b:                                             ; preds = %.preheader65.split.us
  %i.g = sext i32 %.09.in.i.sroa.speculated.us to i64 ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.01014.i.i.us = load i32, ptr %i.i, align 4, !tbaa !13 ; 2 uses
  %.not15.i.i.us = icmp eq i32 %.01014.i.i.us, -1
  br i1 %.not15.i.i.us, label %.critedge.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.b, %bb.c
  %.01016.i.i.us = phi i32 [ %.010.i.i.us, %bb.c ], [ %.01014.i.i.us, %bb.b ] ; 2 uses
  %i.j = sext i32 %.01016.i.i.us to i64           ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !19
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.010.i.i.us = load i32, ptr %i.o, align 4, !tbaa !13 ; 2 uses
  %.not.i.i.us = icmp eq i32 %.010.i.i.us, -1
  br i1 %.not.i.i.us, label %.critedge.i.us, label %.lr.ph.i.i.us, !llvm.loop !0

.critedge.i.us:                                   ; preds = %bb.c, %.preheader65.split.us, %bb.b
  %.pre-phi26.i.us = phi i64 [ %i.g, %bb.b ], [ 0, %.preheader65.split.us ], [ %i.g, %bb.c ]
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi26.i.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.09.in.i.sroa.speculate.load..critedge.i.us = load i32, ptr %i.q, align 4, !tbaa !13
  br label %.preheader65.split.us, !llvm.loop !54

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i: ; preds = %.preheader65
  %.pre24.i = sext i32 %.fr to i64
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i: ; preds = %.lr.ph.i.i.us, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i
  %.pre-phi.i = phi i64 [ %.pre24.i, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i ], [ %i.j, %.lr.ph.i.i.us ]
  %.1.i17.i = phi i32 [ %.fr, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i ], [ %.01016.i.i.us, %.lr.ph.i.i.us ]
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -1)
  br label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit"

"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit": ; preds = %.preheader65.split.us, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i
  %.163 = phi i32 [ %.1.i17.i, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i ], [ 0, %.preheader65.split.us ] ; 2 uses
  %.1 = phi i64 [ %i.t, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i ], [ -1, %.preheader65.split.us ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not77 = icmp samesign eq i64 %1, 0
  br i1 %.not77, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46", %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit"
  %.062.lcssa = phi i32 [ %.163, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ], [ %.264, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ]
  %.061.lcssa = phi i64 [ %.1, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ], [ %.3, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ] ; 2 uses
  %.not11.i12 = icmp eq i32 %.fr, -1
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i19
  %.09.in.i9.sroa.speculated = phi i32 [ %.09.in.i9.sroa.speculate.load..critedge.i19, %.critedge.i19 ], [ %.062.lcssa, %.preheader ] ; 2 uses
  switch i32 %.09.in.i9.sroa.speculated, label %bb.e [
    i32 -1, label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit27"
    i32 0, label %_ZNK4mold11AhoCorasick10find_childEih.exit.i11
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = sext i32 %.09.in.i9.sroa.speculated to i64 ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.01014.i.i21 = load i32, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %.not15.i.i22 = icmp eq i32 %.01014.i.i21, -1
  br i1 %.not15.i.i22, label %.critedge.i19, label %.lr.ph.i.i23

bb.f:                                             ; preds = %.lr.ph.i.i23
  %i.y = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.010.i.i25 = load i32, ptr %i.y, align 4, !tbaa !13 ; 2 uses
  %.not.i.i26 = icmp eq i32 %.010.i.i25, -1
  br i1 %.not.i.i26, label %.critedge.i19, label %.lr.ph.i.i23, !llvm.loop !0

.lr.ph.i.i23:                                     ; preds = %bb.e, %bb.f
  %.01016.i.i24 = phi i32 [ %.010.i.i25, %bb.f ], [ %.01014.i.i21, %bb.e ]
  %i.z = sext i32 %.01016.i.i24 to i64            ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !19
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16, label %bb.f

_ZNK4mold11AhoCorasick10find_childEih.exit.i11:   ; preds = %bb.d
  br i1 %.not11.i12, label %.critedge.i19, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i14

.critedge.i19:                                    ; preds = %bb.f, %_ZNK4mold11AhoCorasick10find_childEih.exit.i11, %bb.e
  %.pre-phi26.i20 = phi i64 [ %i.v, %bb.e ], [ 0, %_ZNK4mold11AhoCorasick10find_childEih.exit.i11 ], [ %i.v, %bb.f ]
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi26.i20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.09.in.i9.sroa.speculate.load..critedge.i19 = load i32, ptr %i.af, align 4, !tbaa !13
  br label %bb.d, !llvm.loop !54

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i14: ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit.i11
  %.pre24.i15 = sext i32 %.fr to i64
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16: ; preds = %.lr.ph.i.i23, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i14
  %.pre-phi.i17 = phi i64 [ %.pre24.i15, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i14 ], [ %i.z, %.lr.ph.i.i23 ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi.i17
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !22
  %i.ai = tail call i64 @llvm.smax.i64(i64 %.061.lcssa, i64 %i.ah)
  br label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit27"

.lr.ph:                                           ; preds = %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit", %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46"
  %.0880 = phi ptr [ %i.bb, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ], [ %2, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ] ; 2 uses
  %.06179 = phi i64 [ %.3, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ], [ %.1, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ] ; 2 uses
  %.06278 = phi i32 [ %.264, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ], [ %.163, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ]
  %i.aj = load i8, ptr %.0880, align 1, !tbaa !11 ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i38, %.lr.ph
  %.09.in.i28.sroa.speculated = phi i32 [ %.06278, %.lr.ph ], [ %.09.in.i28.sroa.speculate.load..critedge.i38, %.critedge.i38 ] ; 2 uses
  switch i32 %.09.in.i28.sroa.speculated, label %bb.h [
    i32 -1, label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46"
    i32 0, label %_ZNK4mold11AhoCorasick10find_childEih.exit.i30
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = sext i32 %.09.in.i28.sroa.speculated to i64 ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.01014.i.i40 = load i32, ptr %i.ao, align 4, !tbaa !13 ; 2 uses
  %.not15.i.i41 = icmp eq i32 %.01014.i.i40, -1
  br i1 %.not15.i.i41, label %.critedge.i38, label %.lr.ph.i.i42

bb.i:                                             ; preds = %.lr.ph.i.i42
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.010.i.i44 = load i32, ptr %i.ap, align 4, !tbaa !13 ; 2 uses
  %.not.i.i45 = icmp eq i32 %.010.i.i44, -1
  br i1 %.not.i.i45, label %.critedge.i38, label %.lr.ph.i.i42, !llvm.loop !0

.lr.ph.i.i42:                                     ; preds = %bb.h, %bb.i
  %.01016.i.i43 = phi i32 [ %.010.i.i44, %bb.i ], [ %.01014.i.i40, %bb.h ] ; 2 uses
  %i.aq = sext i32 %.01016.i.i43 to i64           ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i8, ptr %i.as, align 4, !tbaa !19
  %i.au = icmp eq i8 %i.at, %i.aj
  br i1 %i.au, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35, label %bb.i

_ZNK4mold11AhoCorasick10find_childEih.exit.i30:   ; preds = %bb.g
  %i.av = load i32, ptr %i.al, align 4, !tbaa !13 ; 3 uses
  %.not11.i31 = icmp eq i32 %i.av, -1
  br i1 %.not11.i31, label %.critedge.i38, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33

.critedge.i38:                                    ; preds = %bb.i, %_ZNK4mold11AhoCorasick10find_childEih.exit.i30, %bb.h
  %.pre-phi26.i39 = phi i64 [ %i.am, %bb.h ], [ 0, %_ZNK4mold11AhoCorasick10find_childEih.exit.i30 ], [ %i.am, %bb.i ]
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi26.i39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.09.in.i28.sroa.speculate.load..critedge.i38 = load i32, ptr %i.ax, align 4, !tbaa !13
  br label %bb.g, !llvm.loop !54

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33: ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit.i30
  %.pre24.i34 = sext i32 %i.av to i64
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35: ; preds = %.lr.ph.i.i42, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33
  %.pre-phi.i36 = phi i64 [ %.pre24.i34, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33 ], [ %i.aq, %.lr.ph.i.i42 ]
  %.1.i17.i37 = phi i32 [ %i.av, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33 ], [ %.01016.i.i43, %.lr.ph.i.i42 ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi.i36
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.ba = tail call i64 @llvm.smax.i64(i64 %.06179, i64 %i.az)
  br label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46"

"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46": ; preds = %bb.g, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35
  %.264 = phi i32 [ %.1.i17.i37, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35 ], [ 0, %bb.g ] ; 2 uses
  %.3 = phi i64 [ %i.ba, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35 ], [ %.06179, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0880, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.u
  br i1 %.not, label %.preheader, label %.lr.ph

"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit27": ; preds = %bb.d, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ai, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16 ], [ %.061.lcssa, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind
define dso_local noundef zeroext i1 @_ZN4mold11AhoCorasick3addESt17basic_string_viewIcSt11char_traitsIcEEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1048) %0, i64 %1, ptr nofree readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %0, i8 -1, i64 1024, i1 false), !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i, label %4, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.d, i8 -1, i64 20, i1 false)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

4:                                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %5 = ptrtoint ptr %i.d to i64
  %6 = ptrtoint ptr %i.b to i64                   ; 2 uses
  %7 = sub i64 %5, %6                             ; 3 uses
  %8 = icmp eq i64 %7, 9223372036854775800
  br i1 %8, label %9, label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i

9:                                                ; preds = %4
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
  unreachable

_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i: ; preds = %4
  %10 = sdiv exact i64 %7, 24                     ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %10, i64 1)
  %11 = add nsw i64 %.sroa.speculated.i.i.i, %10  ; 2 uses
  %12 = icmp ult i64 %11, %10
  %13 = tail call i64 @llvm.umin.i64(i64 %11, i64 384307168202282325)
  %14 = select i1 %12, i64 384307168202282325, i64 %13 ; 3 uses
  %.not.i.i.i = icmp ne i64 %14, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %15 = mul nuw nsw i64 %14, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %15) #16 ; 4 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.k, i64 %7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %16, i8 -1, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.not.i22.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %6
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.p) #14
  br label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !16
  store ptr %i.m, ptr %i.c, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %14
  store ptr %17, ptr %i.f, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.b, %bb.a
  %i.q = icmp eq i64 %1, 0
  br i1 %i.q, label %._crit_edge.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.r = tail call noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 0, i8 noundef zeroext 0)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit: ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.s = load i8, ptr %2, align 1, !tbaa !11
  %i.t = icmp eq i8 %i.s, 42
  br i1 %i.t, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit
  %i.u = tail call noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 0, i8 noundef zeroext 0)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit, %bb.d
  %.02836 = phi i32 [ %i.u, %bb.d ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  br label %.lr.ph

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 42
  br i1 %i.y, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.031 = phi ptr [ %i.ab, %bb.f ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.130 = phi i32 [ %.2, %bb.f ], [ %.02836, %.lr.ph.preheader ] ; 2 uses
  %i.z = load i8, ptr %.031, align 1, !tbaa !11   ; 2 uses
  %.not8 = icmp eq i8 %i.z, 42
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.aa = tail call noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %.130, i8 noundef zeroext %i.z)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.2 = phi i32 [ %.130, %.lr.ph ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.031, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.v
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit, label %.lr.ph

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread: ; preds = %._crit_edge.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit
  %.1.lcssa39 = phi i32 [ %i.r, %._crit_edge.thread ], [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit ]
  %i.ac = tail call noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %.1.lcssa39, i8 noundef zeroext 0)
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit
  %.3 = phi i32 [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit ], [ %i.ac, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread ]
  %i.ad = sext i32 %.3 to i64
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !22
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 %3)
  store i64 %.sroa.speculated, ptr %i.af, align 8, !tbaa !24
  ret i1 true
}

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN4mold11AhoCorasick7compileEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.std::queue", align 8        ; 18 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 8, ptr %i.g, align 8, !tbaa !29
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #16 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.j = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #16 ; 6 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  store ptr %i.i, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store ptr %i.j, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 7 uses
  store ptr %i.i, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store ptr %i.j, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  store ptr %i.n, ptr %i.s, align 8, !tbaa !34
  store ptr %i.j, ptr %i.k, align 8, !tbaa !60
  store ptr %i.j, ptr %i.p, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %storemerge47 = load i32, ptr %i.u, align 4, !tbaa !13 ; 3 uses
  store i32 %storemerge47, ptr %i.a, align 4, !tbaa !13
  %.not48 = icmp eq i32 %storemerge47, -1
  br i1 %.not48, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %._crit_edge63

._crit_edge:                                      ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  %.pre66 = load ptr, ptr %i.p, align 8, !tbaa !36
  %.pre67 = load ptr, ptr %i.k, align 8, !tbaa !36 ; 2 uses
  %i.v = icmp eq ptr %.pre66, %.pre67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.v, label %._crit_edge63, label %.lr.ph62

.lr.ph:                                           ; preds = %bb.b, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  %i.w = phi ptr [ %i.af, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit ], [ %i.t, %bb.b ] ; 2 uses
  %storemerge49 = phi i32 [ %storemerge, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit ], [ %storemerge47, %bb.b ]
  %i.x = sext i32 %storemerge49 to i64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !61
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !35  ; 3 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !35
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

bb.d:                                             ; preds = %.lr.ph
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !13
  %.pre65 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit:     ; preds = %bb.c, %bb.d
  %i.af = phi ptr [ %i.w, %bb.c ], [ %.pre65, %bb.d ] ; 4 uses
  %i.ag = phi i32 [ %i.ad, %bb.c ], [ %.pre, %bb.d ]
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %storemerge = load i32, ptr %i.aj, align 4, !tbaa !13 ; 3 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !13
  %.not = icmp eq i32 %storemerge, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

.loopexit45.loopexit:                             ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26
  %.pre74 = load ptr, ptr %i.k, align 8, !tbaa !36
  br label %.loopexit45

.loopexit45:                                      ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge, %.loopexit45.loopexit
  %i.ak = phi ptr [ %.pre74, %.loopexit45.loopexit ], [ %storemerge.i.i, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge ] ; 2 uses
  %i.al = phi ptr [ %storemerge44, %.loopexit45.loopexit ], [ %.pre73, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge ]
  %i.am = phi ptr [ %i.fw, %.loopexit45.loopexit ], [ %i.bb, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge ]
  %i.an = phi ptr [ %i.fw, %.loopexit45.loopexit ], [ %i.bc, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge ]
  %i.ao = icmp eq ptr %i.al, %i.ak
  br i1 %i.ao, label %._crit_edge63, label %.lr.ph62, !llvm.loop !56

.lr.ph62:                                         ; preds = %._crit_edge, %.loopexit45
  %i.ap = phi ptr [ %i.am, %.loopexit45 ], [ %i.af, %._crit_edge ]
  %i.aq = phi ptr [ %i.an, %.loopexit45 ], [ %i.af, %._crit_edge ]
  %i.ar = phi ptr [ %i.ak, %.loopexit45 ], [ %.pre67, %._crit_edge ] ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  %.not.i.i16 = icmp eq ptr %i.ar, %i.au
  br i1 %.not.i.i16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph62
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit

bb.f:                                             ; preds = %.lr.ph62
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !64
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef 512) #14
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.l, align 8, !tbaa !32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31 ; 3 uses
  store ptr %i.az, ptr %i.m, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !34
  %.pre68 = load ptr, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit:        ; preds = %bb.e, %bb.f
  %i.bb = phi ptr [ %i.ap, %bb.e ], [ %.pre68, %bb.f ] ; 2 uses
  %i.bc = phi ptr [ %i.aq, %bb.e ], [ %.pre68, %bb.f ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.av, %bb.e ], [ %i.az, %bb.f ] ; 2 uses
end_hunk_0
