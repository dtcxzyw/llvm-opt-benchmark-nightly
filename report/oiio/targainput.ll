begin_hunk_0
inline.NumInlined: 3088
inline.NumDeleted: 897
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput13get_thumbnailERNS0_8ImageBufEi(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = alloca [4 x i8], align 1                 ; 5 uses
  %i.c = alloca [4 x i8], align 1                 ; 5 uses
end_hunk_1
begin_hunk_2
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.q, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.p:                                             ; preds = %bb.s, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, %bb.q, %bb.n
  %.sroa.0.0 = phi ptr [ %i.as, %bb.s ], [ %i.as, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit ], [ null, %bb.q ], [ null, %bb.n ]
end_hunk_2
begin_hunk_3
  %i.aq = mul nuw nsw i32 %i.ap, %i.af
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #32
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit unwind label %bb.p ; 6 uses

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %bb.q
  %i.at = zext nneg i8 %narrow104 to i64
end_hunk_3
begin_hunk_4
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  br i1 %i.av, label %bb.s, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !115
end_hunk_4
begin_hunk_5
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s
  br i1 %i.ay, label %bb.u, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.u:                                             ; preds = %bb.t, %bb.l
  %.sroa.0.1 = phi ptr [ %i.as, %bb.t ], [ null, %bb.l ] ; 4 uses
end_hunk_5
begin_hunk_6
  br label %bb.ag

.thread:                                          ; preds = %._crit_edge, %bb.x, %bb.aa, %bb.u
  %i.bx = phi i1 [ true, %bb.u ], [ false, %bb.x ], [ false, %bb.aa ], [ true, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.r, %bb.t, %.thread
  %.34781 = phi i1 [ %i.bx, %.thread ], [ false, %bb.t ], [ false, %bb.r ]
  %.sroa.0.280 = phi ptr [ %.sroa.0.1, %.thread ], [ %i.as, %bb.t ], [ %i.as, %bb.r ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.280) #30
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.o, %.thread, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %.34782 = phi i1 [ %i.bx, %.thread ], [ %.34781, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ false, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !91 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 144
end_hunk_6
begin_hunk_7

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.34782, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %bb.ac, %bb.p
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.ac ], [ %.sroa.0.0, %bb.p ] ; 2 uses
end_hunk_7
begin_hunk_8
  %.238. = and i1 %or.cond, %i.dg
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.g, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  %.4 = phi i1 [ false, %bb.g ], [ %.238., %bb.ai ], [ false, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.al

end_hunk_8
