Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImStbL27is_word_boundary_from_rightEP19ImGuiInputTextStatei:bb.a
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr [2 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !258
  switch i16 %i.j, label %bb.e [
    i16 32, label %_ZN5ImStbL12is_separatorEj.exit
    i16 9, label %_ZN5ImStbL12is_separatorEj.exit
    i16 12288, label %_ZN5ImStbL12is_separatorEj.exit
    i16 125, label %_ZN5ImStbL12is_separatorEj.exit
    i16 124, label %_ZN5ImStbL12is_separatorEj.exit
    i16 123, label %_ZN5ImStbL12is_separatorEj.exit
    i16 93, label %_ZN5ImStbL12is_separatorEj.exit
    i16 91, label %_ZN5ImStbL12is_separatorEj.exit
    i16 59, label %_ZN5ImStbL12is_separatorEj.exit
    i16 44, label %_ZN5ImStbL12is_separatorEj.exit
    i16 41, label %_ZN5ImStbL12is_separatorEj.exit
    i16 40, label %_ZN5ImStbL12is_separatorEj.exit
  ]

_ZN5ImStbL12is_separatorEj.exit:                  ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.k = load i16, ptr %i.h, align 2, !tbaa !258  ; 2 uses
  switch i16 %i.k, label %bb.d [
    i16 32, label %_ZN5ImStbL12is_separatorEj.exit15
    i16 9, label %_ZN5ImStbL12is_separatorEj.exit15
    i16 12288, label %_ZN5ImStbL12is_separatorEj.exit15
  ]

bb.d:                                             ; preds = %_ZN5ImStbL12is_separatorEj.exit
  br label %_ZN5ImStbL12is_separatorEj.exit15

_ZN5ImStbL12is_separatorEj.exit15:                ; preds = %_ZN5ImStbL12is_separatorEj.exit, %_ZN5ImStbL12is_separatorEj.exit, %_ZN5ImStbL12is_separatorEj.exit, %bb.d
  %.not18 = phi i1 [ true, %bb.d ], [ false, %_ZN5ImStbL12is_separatorEj.exit ], [ false, %_ZN5ImStbL12is_separatorEj.exit ], [ false, %_ZN5ImStbL12is_separatorEj.exit ]
  %i.l = insertelement <2 x i16> poison, i16 %i.k, i64 0
  %i.m = shufflevector <2 x i16> %i.l, <2 x i16> poison, <8 x i32> zeroinitializer
  %i.n = and <8 x i16> %i.m, <i16 -1, i16 -1, i16 -2, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %i.o = icmp eq <8 x i16> %i.n, <i16 44, i16 59, i16 40, i16 123, i16 125, i16 91, i16 93, i16 124>
  %i.p = bitcast <8 x i1> %i.o to i8
  %i.q = icmp eq i8 %i.p, 0
  %op.rdx.not = and i1 %i.q, %.not18
  %i.r = zext i1 %op.rdx.not to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %_ZN5ImStbL12is_separatorEj.exit15, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ], [ %i.r, %_ZN5ImStbL12is_separatorEj.exit15 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZN5ImStbL21stb_text_locate_coordEP19ImGuiInputTextStateff(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #28 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !305 ; 6 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph.i.i.lr.ph, label %.thread

.lr.ph.i.i.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val54 = load ptr, ptr %i.c, align 8, !tbaa !304 ; 4 uses
  %i.d = zext nneg i32 %.val to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %.val54, i64 %i.d
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 6520
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !331  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 6528
  %i.j = load float, ptr %i.i, align 8, !tbaa !145 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !332
  %i.m = fdiv float %i.j, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.p = fadd float %i.j, 0.000000e+00
  %i.q = insertelement <2 x float> poison, float %i.p, i64 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.lr.ph, %bb.f
  %.04274 = phi i32 [ 0, %.lr.ph.i.i.lr.ph ], [ %i.aw, %bb.f ] ; 5 uses
  %.04473 = phi float [ 0.000000e+00, %.lr.ph.i.i.lr.ph ], [ %i.au, %bb.f ] ; 2 uses
  %i.r = zext nneg i32 %.04274 to i64             ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.val54, i64 %i.r ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.03121.us.i.i = phi ptr [ %i.t, %bb.c ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.03220.us.i.i = phi float [ %.133.us.i.i, %bb.c ], [ 0.000000e+00, %.lr.ph.i.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.03121.us.i.i, i64 2 ; 3 uses
  %i.u = load i16, ptr %.03121.us.i.i, align 2, !tbaa !258 ; 3 uses
  switch i16 %i.u, label %bb.b [
    i16 10, label %..thread_crit_edge.split.us.i.i
    i16 13, label %bb.c
  ], !llvm.loop !385

..thread_crit_edge.split.us.i.i:                  ; preds = %.lr.ph.split.us.i.i
  %i.v = fcmp ole float %.03220.us.i.i, 0.000000e+00
  %i.w = select i1 %i.v, float 0.000000e+00, float %.03220.us.i.i
  %i.x = insertelement <2 x float> %i.q, float %i.w, i64 0
  br label %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.y = zext i16 %i.u to i32
  %i.z = load i32, ptr %i.h, align 8, !tbaa !386
  %i.aa = icmp sgt i32 %i.z, %i.y
  %i.ab = load ptr, ptr %i.n, align 8
  %i.ac = zext i16 %i.u to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  %.in.i.us.i.i = select i1 %i.aa, ptr %i.ad, ptr %i.o
  %i.ae = load float, ptr %.in.i.us.i.i, align 4, !tbaa !130
  %i.af = fmul float %i.m, %i.ae
  %i.ag = fadd float %.03220.us.i.i, %i.af
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %.133.us.i.i = phi float [ %i.ag, %bb.b ], [ %.03220.us.i.i, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.ah = icmp ult ptr %i.t, %i.e
  br i1 %i.ah, label %.lr.ph.split.us.i.i, label %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit

_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit: ; preds = %bb.c, %..thread_crit_edge.split.us.i.i
  %.sroa.0.2.i.i = phi <2 x float> [ %i.x, %..thread_crit_edge.split.us.i.i ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.2.i.i = phi float [ 0.000000e+00, %..thread_crit_edge.split.us.i.i ], [ %.133.us.i.i, %bb.c ] ; 3 uses
  %i.ai = fcmp ogt float %.2.i.i, 0.000000e+00
  %.sroa.0.0.vec.extract4.i.i = extractelement <2 x float> %.sroa.0.2.i.i, i64 0
  %i.aj = fcmp olt float %.sroa.0.0.vec.extract4.i.i, %.2.i.i
  %.sroa.0.0.vec.insert6.i.i = insertelement <2 x float> %.sroa.0.2.i.i, float %.2.i.i, i64 0
  %.sroa.0.3.i.i = select i1 %i.aj, <2 x float> %.sroa.0.0.vec.insert6.i.i, <2 x float> %.sroa.0.2.i.i ; 3 uses
  %.sroa.0.4.vec.extract13.i.i = extractelement <2 x float> %.sroa.0.3.i.i, i64 1 ; 2 uses
  %i.ak = fcmp oeq float %.sroa.0.4.vec.extract13.i.i, 0.000000e+00
  %or.cond.i.i = select i1 %i.ai, i1 true, i1 %i.ak
  %i.al = fadd float %i.j, %.sroa.0.4.vec.extract13.i.i
  %.sroa.0.4.vec.insert11.i.i = insertelement <2 x float> %.sroa.0.3.i.i, float %i.al, i64 1
  %.sroa.0.4.i.i = select i1 %or.cond.i.i, <2 x float> %.sroa.0.4.vec.insert11.i.i, <2 x float> %.sroa.0.3.i.i ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.4.i.i, i64 1
  %i.am = ptrtoint ptr %i.t to i64
  %i.an = ptrtoint ptr %i.s to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 1                 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit
  %i.as = icmp eq i32 %.04274, 0
  %i.at = fcmp olt float %2, %.04473
  %or.cond = and i1 %i.at, %i.as
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = fadd float %.04473, %.sroa.0.4.vec.extract.i ; 2 uses
  %i.av = fcmp olt float %2, %i.au
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = add nuw nsw i32 %.04274, %i.aq          ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %.val
  br i1 %i.ax, label %.lr.ph.i.i, label %.thread, !llvm.loop !634

bb.g:                                             ; preds = %bb.e
  %i.ay = fcmp olt float %1, 0.000000e+00
  br i1 %i.ay, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.vec.extract.i.le = extractelement <2 x float> %.sroa.0.4.i.i, i64 0
  %i.az = fcmp olt float %1, %.sroa.0.0.vec.extract.i.le
  br i1 %i.az, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %wide.trip.count = and i64 %i.ap, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !635

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.04378 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bm, %bb.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %indvars.iv, %i.r       ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.val54, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !258 ; 3 uses
  %i.bd = icmp eq i16 %i.bc, 10
  br i1 %i.bd, label %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = zext i16 %i.bc to i32
  %i.bf = load i32, ptr %i.h, align 8, !tbaa !386
  %i.bg = icmp sgt i32 %i.bf, %i.be
  %i.bh = load ptr, ptr %i.n, align 8
  %i.bi = zext i16 %i.bc to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %.in.i.i = select i1 %i.bg, ptr %i.bj, ptr %i.o
  %i.bk = load float, ptr %.in.i.i, align 4, !tbaa !130
  %i.bl = fmul float %i.bk, %i.m
  br label %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit

_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit: ; preds = %bb.j, %bb.k
  %.0.i = phi float [ %i.bl, %bb.k ], [ -1.000000e+00, %bb.j ] ; 2 uses
  %i.bm = fadd float %.04378, %.0.i               ; 2 uses
  %i.bn = fcmp uge float %1, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.l

bb.l:                                             ; preds = %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit
  %i.bo = trunc nuw i64 %i.ba to i32
  %i.bp = fmul float %.0.i, 5.000000e-01
  %i.bq = fadd float %.04378, %i.bp
  %3 = fcmp uge float %1, %i.bq
  %4 = zext i1 %3 to i32
  %spec.select = add nuw nsw i32 %i.bo, %4
  br label %.thread

.loopexit:                                        ; preds = %bb.i, %bb.h
  %i.br = add nuw nsw i32 %.04274, %i.aq          ; 2 uses
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.val54, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !258
  %i.bw = icmp eq i16 %i.bv, 10
  %spec.select.a = select i1 %i.bw, i32 %i.bs, i32 %i.br
  br label %.thread

.thread:                                          ; preds = %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit, %bb.f, %bb.d, %bb.a, %.loopexit, %bb.l, %bb.g
  %.2 = phi i32 [ %spec.select, %bb.l ], [ %.04274, %bb.g ], [ %spec.select.a, %.loopexit ], [ %.val, %bb.a ], [ %.val, %_ZN5ImStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP19ImGuiInputTextStatei.exit ], [ %.val, %bb.f ], [ 0, %bb.d ]
  ret i32 %.2
}

declare noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_ij(ptr noundef, <2 x float>, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -65535, 65536) i32 @_ZL24TabItemComparerBySectionPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val12 = load i32, ptr %i.a, align 4, !tbaa !564 ; 2 uses
  %i.b = and i32 %.val12, 64
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = and i32 %.val12, 128
  %.not2.i = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not2.i, i32 1, i32 2
  %i.e = select i1 %.not.i, i32 %i.d, i32 0       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.f, align 4, !tbaa !564 ; 2 uses
  %i.g = and i32 %.val, 64
  %.not.i13 = icmp eq i32 %i.g, 0
  %i.h = and i32 %.val, 128
  %.not2.i14 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not2.i14, i32 1, i32 2
  %i.j = select i1 %.not.i13, i32 %i.i, i32 0     ; 2 uses
  %.not = icmp eq i32 %i.e, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nsw i32 %i.e, %i.j
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.m = load i16, ptr %i.l, align 2, !tbaa !563
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.p = load i16, ptr %i.o, align 2, !tbaa !563
  %i.q = sext i16 %i.p to i32
  %i.r = sub nsw i32 %i.n, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ %i.r, %bb.c ]
  ret i32 %.0
}

declare void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #29 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #36 ; 0 uses
  tail call void @_ZSt9terminatev() #37
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #30

declare noundef zeroext i1 @_ZN5ImGui15IsMousePosValidEPK6ImVec2(ptr noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff(i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN5ImGui20ScaleRatioFromValueTIiifEEfiT_S1_S1_bff(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, float noundef %5, float noundef %6) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %. = tail call i32 @llvm.smin.i32(i32 %2, i32 %3) ; 2 uses
  %.89 = tail call i32 @llvm.smax.i32(i32 %2, i32 %3)
  %i.b = icmp slt i32 %1, %.
  %i.c = tail call i32 @llvm.smin.i32(i32 %1, i32 %.89)
  %i.d = select i1 %i.b, i32 %., i32 %i.c         ; 2 uses
  br i1 %4, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %3, %2
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 3 uses
  %spec.select78 = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 3 uses
  %i.f = sitofp i32 %spec.select to float         ; 4 uses
  %i.g = tail call noundef float @llvm.fabs.f32(float %i.f)
  %i.h = fcmp olt float %i.g, %5
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i32 %spec.select, 0
  %i.j = fneg float %5
  %i.k = select i1 %i.i, float %i.j, float %5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi float [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 5 uses
  %i.m = sitofp i32 %spec.select78 to float       ; 3 uses
  %i.n = tail call noundef float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp olt float %i.n, %5
  br i1 %i.o, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = fneg float %5
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i32 %spec.select78, 0
  %i.q = fneg float %5                            ; 2 uses
  %i.r = select i1 %i.p, float %i.q, float %5
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi = phi float [ %.pre, %._crit_edge ], [ %i.q, %bb.f ]
  %i.s = phi float [ %i.m, %._crit_edge ], [ %i.r, %bb.f ]
  %i.t = icmp eq i32 %spec.select78, 0
  %i.u = icmp slt i32 %spec.select, 0
  %or.cond58 = and i1 %i.t, %i.u
  %.046 = select i1 %or.cond58, float %.pre-phi, float %i.s ; 5 uses
  %i.v = sitofp i32 %i.d to float                 ; 6 uses
  %i.w = fcmp ult float %i.l, %i.v
  br i1 %i.w, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.x = fcmp ugt float %.046, %i.v
  br i1 %i.x, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.y = mul nsw i32 %3, %2
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aa = fneg float %i.f
  %i.ab = fsub float %i.m, %i.f
  %i.ac = fdiv float %i.aa, %i.ab                 ; 3 uses
  %i.ad = fsub float %i.ac, %6
  %i.ae = fadd float %6, %i.ac                    ; 2 uses
  %i.af = icmp eq i32 %1, 0
  br i1 %i.af, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp slt i32 %1, 0
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.l, i64 1
  %i.aj = fneg <2 x float> %i.ai
  %i.ak = insertelement <2 x float> poison, float %5, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.aj, %i.al           ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  %i.ao = tail call noundef float @logf(float noundef %i.an) #36
  %i.ap = extractelement <2 x float> %i.am, i64 1
  %i.aq = tail call noundef float @logf(float noundef %i.ap) #36
  %i.ar = fdiv float %i.ao, %i.aq
  %i.as = fsub float 1.000000e+00, %i.ar
  %i.at = fmul float %i.ad, %i.as
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.au = fdiv float %i.v, %5
  %i.av = tail call noundef float @logf(float noundef %i.au) #36
  %i.aw = fdiv float %.046, %5
  %i.ax = tail call noundef float @logf(float noundef %i.aw) #36
  %i.ay = fdiv float %i.av, %i.ax
  %i.az = fsub float 1.000000e+00, %i.ae
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.az, float %i.ae)
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.bb = or i32 %3, %2
  %or.cond59.not = icmp sgt i32 %i.bb, -1
  br i1 %or.cond59.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = fdiv float %i.v, %.046
  %i.bd = tail call noundef float @logf(float noundef %i.bc) #36
  %i.be = fdiv float %i.l, %.046
  %i.bf = tail call noundef float @logf(float noundef %i.be) #36
  %i.bg = fdiv float %i.bd, %i.bf
  %i.bh = fsub float 1.000000e+00, %i.bg
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bi = fdiv float %i.v, %i.l
  %i.bj = tail call noundef float @logf(float noundef %i.bi) #36
  %i.bk = fdiv float %.046, %i.l
  %i.bl = tail call noundef float @logf(float noundef %i.bk) #36
  %i.bm = fdiv float %i.bj, %i.bl
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.o, %bb.p
  %.1 = phi float [ %i.bm, %bb.p ], [ 0.000000e+00, %bb.g ], [ 1.000000e+00, %bb.h ], [ %i.bh, %bb.o ], [ %i.ba, %bb.m ], [ %i.at, %bb.l ], [ %i.ac, %bb.j ] ; 2 uses
  %i.bn = fsub float 1.000000e+00, %.1
  %i.bo = select i1 %i.e, float %i.bn, float %.1
end_hunk_0
