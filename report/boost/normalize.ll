Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/normalize?download=true
inline.NumInlined: 400
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5boost4urls6detail10ci_compareENS_4core17basic_string_viewIcEES4_:bb.a
  %.not30 = icmp slt i8 %i.f, %i.k
  %.not31 = icmp slt i8 %i.k, %i.f
  %..014 = select i1 %.not31, i32 1, i32 %.01433
  %.115 = select i1 %.not30, i32 -1, i32 %..014   ; 2 uses
  %cond1 = icmp eq i8 %i.k, %i.f
  br i1 %cond1, label %bb.b, label %.thread

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = icmp eq i64 %1, %3
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = icmp ult i64 %1, %3
  %.18 = select i1 %i.m, i32 -1, i32 1
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.c, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %.18, %bb.c ], [ %.115, %.lr.ph ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5boost4urls6detail9ci_digestENS_4core17basic_string_viewIcEERNS1_6fnv_1aE(ptr nofree readonly captures(address) %0, i64 %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not9 = icmp samesign eq i64 %1, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted = load i64, ptr %2, align 8          ; 2 uses
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.b = load i8, ptr %0, align 1, !tbaa !13      ; 3 uses
  %i.c = add i8 %i.b, -65
  %or.cond.i.i.prol = icmp ult i8 %i.c, 26
  %i.d = add nuw nsw i8 %i.b, 32
  %i.e = select i1 %or.cond.i.i.prol, i8 %i.d, i8 %i.b
  %i.f = sext i8 %i.e to i64
  %i.g = xor i64 %.promoted, %i.f
  %i.h = mul i64 %i.g, 1099511628211              ; 2 uses
  store i64 %i.h, ptr %2, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.010.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %.unr = phi i64 [ %.promoted, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi ptr [ %i.aa, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.k = phi i64 [ %i.z, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.l = load i8, ptr %.010, align 1, !tbaa !13   ; 3 uses
  %i.m = add i8 %i.l, -65
  %or.cond.i.i = icmp ult i8 %i.m, 26
  %i.n = add nuw nsw i8 %i.l, 32
  %i.o = select i1 %or.cond.i.i, i8 %i.n, i8 %i.l
  %i.p = sext i8 %i.o to i64
  %i.q = xor i64 %i.k, %i.p
  %i.r = mul i64 %i.q, 1099511628211              ; 2 uses
  store i64 %i.r, ptr %2, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.010, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13    ; 3 uses
  %i.u = add i8 %i.t, -65
  %or.cond.i.i.1 = icmp ult i8 %i.u, 26
  %i.v = add nuw nsw i8 %i.t, 32
  %i.w = select i1 %or.cond.i.i.1, i8 %i.v, i8 %i.t
  %i.x = sext i8 %i.w to i64
  %i.y = xor i64 %i.r, %i.x
  %i.z = mul i64 %i.y, 1099511628211              ; 2 uses
  store i64 %i.z, ptr %2, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %.010, i64 2 ; 2 uses
  %.not.1 = icmp eq ptr %i.aa, %i.a
  br i1 %.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i8 0, ptr %i.b, align 1, !tbaa !13
  %i.e = ptrtoint ptr %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = ptrtoint ptr %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.b

bb.b:                                             ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11", %bb.a
  %.026 = phi ptr [ %i.c, %bb.a ], [ %.12731, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11" ] ; 5 uses
  %.0 = phi ptr [ %i.d, %bb.a ], [ %.1, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11" ] ; 5 uses
  %i.i = icmp ult ptr %0, %.026
  %i.j = icmp ult ptr %2, %.0
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %.026 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp slt i64 %i.m, 3
  br i1 %i.n, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %.026, i64 -3 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.p, 37
  br i1 %.not.i, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit", label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread": ; preds = %bb.c, %bb.d
  %i.q = getelementptr inbounds i8, ptr %.026, i64 -1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13    ; 2 uses
  store i8 %i.r, ptr %i.a, align 1, !tbaa !13
  br label %bb.e

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit": ; preds = %bb.d
  %i.s = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.f, ptr nonnull %i.o, i64 3, i24 0) #21 ; 0 uses
  %i.t = load i8, ptr %i.a, align 1               ; 2 uses
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %.critedge, label %bb.e

bb.e:                                             ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit"
  %i.v = phi i8 [ %i.r, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread" ], [ %i.t, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit" ]
  %.12731 = phi ptr [ %i.q, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread" ], [ %i.o, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit" ]
  %i.w = ptrtoint ptr %.0 to i64
  %i.x = sub i64 %i.w, %i.g
  %i.y = icmp slt i64 %i.x, 3
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %.0, i64 -3 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %.not.i9 = icmp eq i8 %i.aa, 37
  br i1 %.not.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds i8, ptr %.0, i64 -1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13  ; 2 uses
  store i8 %i.ac, ptr %i.b, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11"

bb.h:                                             ; preds = %bb.f
  %i.ad = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.h, ptr nonnull %i.z, i64 3, i24 0) #21 ; 0 uses
  %.pre = load i8, ptr %i.a, align 1, !tbaa !13
  %.pre36 = load i8, ptr %i.b, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11": ; preds = %bb.h, %bb.g
  %i.ae = phi i8 [ %i.ac, %bb.g ], [ %.pre36, %bb.h ]
  %i.af = phi i8 [ %i.v, %bb.g ], [ %.pre, %bb.h ]
  %.1 = phi ptr [ %i.ab, %bb.g ], [ %i.z, %bb.h ]
  %.not = icmp eq i8 %i.af, %i.ae
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !26

bb.i:                                             ; preds = %bb.b
  %i.ag = icmp eq ptr %2, %.0
  br i1 %i.ag, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ah = ptrtoint ptr %i.c to i64
  %i.ai = ptrtoint ptr %.026 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  br label %.critedge

.critedge:                                        ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11", %bb.j, %bb.i
  %.3 = phi i64 [ %i.aj, %bb.j ], [ 0, %bb.i ], [ 0, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11" ], [ 0, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @_ZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEE(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr %2, i64 %3) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %..thread_crit_edge, label %.lr.ph.i.preheader.lr.ph.preheader

.lr.ph.i.preheader.lr.ph.preheader:               ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !13
  %i.c = icmp ne i8 %i.b, 47                      ; 4 uses
  br label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %.lr.ph.i.preheader.lr.ph.preheader, %.outer
  %.sroa.31.0.ph402 = phi i64 [ %i.o, %.outer ], [ %3, %.lr.ph.i.preheader.lr.ph.preheader ]
  %.sroa.0293.0.ph401 = phi ptr [ %i.n, %.outer ], [ %2, %.lr.ph.i.preheader.lr.ph.preheader ]
  %.0.ph400 = phi ptr [ %i.m, %.outer ], [ %0, %.lr.ph.i.preheader.lr.ph.preheader ] ; 7 uses
  br label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i: ; preds = %bb.b, %.lr.ph.i.preheader.lr.ph
  %.sroa.31.0394 = phi i64 [ %.sroa.31.0.ph402, %.lr.ph.i.preheader.lr.ph ], [ %i.w, %bb.b ] ; 10 uses
  %.sroa.0293.0393 = phi ptr [ %.sroa.0293.0.ph401, %.lr.ph.i.preheader.lr.ph ], [ %i.v, %bb.b ] ; 12 uses
  %i.d = load i8, ptr %.sroa.0293.0393, align 1, !tbaa !13
  %i.e = icmp eq i8 %i.d, 46
  br i1 %i.e, label %.lr.ph.i.1, label %.lr.ph.i115.preheader.lr.ph

.lr.ph.i.1:                                       ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i
  %4 = icmp eq i64 %.sroa.31.0394, 1
  br i1 %4, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i.thread480, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.1

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.1: ; preds = %.lr.ph.i.1
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0293.0393, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = icmp eq i8 %i.g, 46
  br i1 %i.h, label %.lr.ph.i.2, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100

.lr.ph.i.2:                                       ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.1
  %i.i = icmp eq i64 %.sroa.31.0394, 2
  br i1 %i.i, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.thread451, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.2

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.2: ; preds = %.lr.ph.i.2
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0293.0393, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = icmp eq i8 %i.k, 47
  br i1 %i.l, label %.outer, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100

.outer:                                           ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.ph400, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.0.ph400, i64 3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0293.0393, i64 3
  %i.o = add i64 %.sroa.31.0394, -3               ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %..thread_crit_edge, label %.lr.ph.i.preheader.lr.ph, !llvm.loop !27

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.1, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.2
  %.pr = load i8, ptr %.sroa.0293.0393, align 1, !tbaa !13
  %i.q = icmp eq i8 %.pr, 46
  br i1 %i.q, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.1, label %.lr.ph.i115.preheader.lr.ph

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.thread451: ; preds = %.lr.ph.i.2
  %.pr452 = load i8, ptr %.sroa.0293.0393, align 1, !tbaa !13
  %i.r = icmp eq i8 %.pr452, 46
  br i1 %i.r, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.1, label %.lr.ph.i115.preheader.lr.ph

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.1: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.thread451
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0293.0393, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %bb.b, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110

bb.b:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0293.0393, i64 2
  %i.w = add i64 %.sroa.31.0394, -2               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %..thread_crit_edge, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i, !llvm.loop !27

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i.thread480: ; preds = %.lr.ph.i.1
  %.pr463481 = load i8, ptr %.sroa.0293.0393, align 1, !tbaa !13
  %i.y = icmp eq i8 %.pr463481, 46
  br i1 %i.y, label %..thread_crit_edge, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.1, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i.thread480
  %.pr533 = load i8, ptr %.sroa.0293.0393, align 1, !tbaa !13
  %i.z = icmp eq i8 %.pr533, 46
  br i1 %i.z, label %.lr.ph.i.i106.1, label %.lr.ph.i115.preheader.lr.ph

.lr.ph.i.i106.1:                                  ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110
  %i.aa = icmp eq i64 %.sroa.31.0394, 1
  br i1 %i.aa, label %.lr.ph.i115.preheader.lr.ph, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110.1

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110.1: ; preds = %.lr.ph.i.i106.1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0293.0393, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = icmp eq i8 %i.ac, 46
  %i.ae = icmp eq i64 %.sroa.31.0394, 2
  %or.cond.a = and i1 %i.ad, %i.ae
  br i1 %or.cond.a, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit113.thread496", label %.lr.ph.i115.preheader.lr.ph

"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit113.thread496": ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110.1
  store i16 11822, ptr %.0.ph400, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.0.ph400, i64 2
  br label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %.outer, %bb.b, %bb.a, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i.thread480, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit113.thread496"
  %.1.ph = phi ptr [ %0, %bb.a ], [ %i.af, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit113.thread496" ], [ %.0.ph400, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i.thread480 ], [ %.0.ph400, %bb.b ], [ %i.m, %.outer ]
  %.pre = ptrtoint ptr %0 to i64
  br label %.thread

.lr.ph.i115.preheader.lr.ph:                      ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.thread451, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110.1, %.lr.ph.i.i106.1, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110
  %.sroa.31.1 = phi i64 [ %.sroa.31.0394, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110.1 ], [ %.sroa.31.0394, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i110 ], [ 1, %.lr.ph.i.i106.1 ], [ %.sroa.31.0394, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100 ], [ 2, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i100.thread451 ], [ %.sroa.31.0394, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i ]
  %i.ag = ptrtoint ptr %0 to i64                  ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ak = sext i1 %i.c to i64
  br label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119: ; preds = %bb.v, %.lr.ph.i115.preheader.lr.ph
  %.sroa.31.2408 = phi i64 [ %.sroa.31.1, %.lr.ph.i115.preheader.lr.ph ], [ %.sroa.31.5, %bb.v ] ; 20 uses
  %.sroa.0293.2407 = phi ptr [ %.sroa.0293.0393, %.lr.ph.i115.preheader.lr.ph ], [ %.sroa.0293.5, %bb.v ] ; 24 uses
  %.2406 = phi ptr [ %.0.ph400, %.lr.ph.i115.preheader.lr.ph ], [ %.9, %bb.v ] ; 21 uses
  %i.al = load i8, ptr %.sroa.0293.2407, align 1, !tbaa !13
  %i.am = icmp eq i8 %i.al, 47
  br i1 %i.am, label %.lr.ph.i115.1, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.thread

.lr.ph.i115.1:                                    ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119
  %i.an = icmp eq i64 %.sroa.31.2408, 1
  br i1 %i.an, label %.thread525, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119.1

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119.1: ; preds = %.lr.ph.i115.1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = icmp ne i8 %i.ap, 46
  %i.ar = icmp eq i64 %.sroa.31.2408, 2
  %or.cond577 = or i1 %i.aq, %i.ar
  br i1 %or.cond577, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119.2

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119.2: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119.1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13
  %i.au = icmp eq i8 %i.at, 47
  br i1 %i.au, label %bb.c, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129

bb.c:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119.2
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 2
  %i.aw = add i64 %.sroa.31.2408, -2
  br label %bb.v, !llvm.loop !28

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119.1, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119.2
  %.pr508 = load i8, ptr %.sroa.0293.2407, align 1, !tbaa !13
  %i.ax = icmp eq i8 %.pr508, 47
  br i1 %i.ax, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129.1, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129.1: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = icmp eq i8 %i.az, 46
  %i.bb = icmp eq i64 %.sroa.31.2408, 2
  %or.cond578 = and i1 %i.ba, %i.bb
  %i.bc = load i8, ptr %.sroa.0293.2407, align 1  ; 2 uses
  br i1 %or.cond578, label %bb.d, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138

bb.d:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129.1
  store i8 %i.bc, ptr %.2406, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.2406, i64 1
  br label %.thread

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129.1
  %i.be = icmp eq i8 %i.bc, 47
  br i1 %i.be, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.1, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.1: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = icmp ne i8 %i.bg, 46
  %i.bi = icmp eq i64 %.sroa.31.2408, 2
  %or.cond579 = or i1 %i.bh, %i.bi
  br i1 %or.cond579, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.2

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.2: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.1
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = icmp ne i8 %i.bk, 46
  %i.bm = icmp eq i64 %.sroa.31.2408, 3
  %or.cond580 = or i1 %i.bl, %i.bm
  br i1 %or.cond580, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.3

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.3: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.2
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = icmp eq i8 %i.bo, 47
  br i1 %i.bp, label %bb.e, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167

bb.e:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.3
  %i.bq = ptrtoint ptr %.2406 to i64              ; 2 uses
  %i.br = sub i64 %i.bq, %i.ag                    ; 4 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.loopexit373, label %.preheader372

.preheader372:                                    ; preds = %bb.e, %bb.f
  %.1.i.i.in = phi i64 [ %.1.i.i, %bb.f ], [ %i.br, %bb.e ] ; 2 uses
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = icmp eq i8 %i.bu, 47
  br i1 %i.bv, label %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit, label %bb.f

bb.f:                                             ; preds = %.preheader372
  %.not.i.i143 = icmp eq i64 %.1.i.i, 0
  br i1 %.not.i.i143, label %.loopexit373, label %.preheader372, !llvm.loop !29

_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit: ; preds = %.preheader372
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i ; 3 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bq, %i.bx                    ; 3 uses
  %i.bz = icmp eq ptr %.2406, %i.bw
  br i1 %i.bz, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152", label %.lr.ph.i.i145.1

.lr.ph.i.i145.1:                                  ; preds = %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i.in ; 2 uses
  %i.cb = icmp eq i64 %i.by, 1
  br i1 %i.cb, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152", label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.1

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.1: ; preds = %.lr.ph.i.i145.1
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.cd = icmp ne i8 %i.cc, 46
  %i.ce = icmp eq i64 %i.by, 2
  %or.cond581 = or i1 %i.cd, %i.ce
  br i1 %or.cond581, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152", label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.2

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.2: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = icmp eq i8 %i.cg, 46
  %spec.select.a = select i1 %i.ch, i64 3, i64 0
  br label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152"

"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152": ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.2, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.1, %.lr.ph.i.i145.1, %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit
  %.0.i150 = phi i64 [ 0, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.1 ], [ 0, %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit ], [ %spec.select.a, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i149.2 ], [ 0, %.lr.ph.i.i145.1 ]
  %i.ci = icmp eq i64 %.0.i150, %i.by
  br i1 %i.ci, label %bb.g, label %bb.l

bb.g:                                             ; preds = %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.2406, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.2406, i64 3
  br label %bb.l

.loopexit373:                                     ; preds = %bb.f, %bb.e
  %.not94 = icmp eq ptr %0, %.2406
  br i1 %.not94, label %bb.i, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i158

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i158: ; preds = %.loopexit373
  %i.ck = load i8, ptr %0, align 1, !tbaa !13
  %i.cl = icmp ne i8 %i.ck, 46
  %i.cm = icmp eq i64 %i.br, 1
  %or.cond582 = or i1 %i.cl, %i.cm
  br i1 %or.cond582, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit161.thread", label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i158.1

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i158.1: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i158
  %i.cn = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.co = icmp eq i8 %i.cn, 46
  %i.cp = icmp eq i64 %i.br, 2
  %or.cond583 = and i1 %i.co, %i.cp
  br i1 %or.cond583, label %bb.h, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit161.thread"

"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit161.thread": ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i158, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i158.1
  %spec.select584 = select i1 %i.c, ptr %i.bf, ptr %.sroa.0293.2407
  %spec.select585 = add i64 %.sroa.31.2408, %i.ak
  br label %bb.l

bb.h:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i158.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.2406, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.2406, i64 3
  br label %bb.l

bb.i:                                             ; preds = %.loopexit373
  br i1 %i.c, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i16 11822, ptr %0, align 1
  br label %bb.l

bb.l:                                             ; preds = %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit161.thread", %bb.h, %bb.g, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152", %bb.k, %bb.j
  %.5 = phi ptr [ %i.aj, %bb.j ], [ %i.ai, %bb.k ], [ %i.bw, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152" ], [ %i.cj, %bb.g ], [ %i.cq, %bb.h ], [ %0, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit161.thread" ]
  %.sroa.0293.4 = phi ptr [ %.sroa.0293.2407, %bb.j ], [ %.sroa.0293.2407, %bb.k ], [ %.sroa.0293.2407, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152" ], [ %.sroa.0293.2407, %bb.g ], [ %.sroa.0293.2407, %bb.h ], [ %spec.select584, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit161.thread" ]
  %.sroa.31.4 = phi i64 [ %.sroa.31.2408, %bb.j ], [ %.sroa.31.2408, %bb.k ], [ %.sroa.31.2408, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit152" ], [ %.sroa.31.2408, %bb.g ], [ %.sroa.31.2408, %bb.h ], [ %spec.select585, %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit161.thread" ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0293.4, i64 3
  %i.cs = add i64 %.sroa.31.4, -3
  br label %bb.v

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.1, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.2, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138.3
  %.pr512 = load i8, ptr %.sroa.0293.2407, align 1, !tbaa !13
  %i.ct = icmp eq i8 %.pr512, 47
  br i1 %i.ct, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.1, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.thread

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.1: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = icmp ne i8 %i.cv, 46
  %i.cx = icmp eq i64 %.sroa.31.2408, 2
  %or.cond586 = or i1 %i.cw, %i.cx
  br i1 %or.cond586, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.2

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.2: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.1
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEE:bb.a
.preheader:                                       ; preds = %bb.m, %bb.n
  %.1.i.i171.in = phi i64 [ %.1.i.i171, %bb.n ], [ %i.dd, %bb.m ] ; 3 uses
  %.1.i.i171 = add i64 %.1.i.i171.in, -1          ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i171
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = icmp eq i8 %i.dg, 47
  br i1 %i.dh, label %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit174, label %bb.n

bb.n:                                             ; preds = %.preheader
  %.not.i.i172 = icmp eq i64 %.1.i.i171, 0
  br i1 %.not.i.i172, label %.loopexit, label %.preheader, !llvm.loop !29

_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit174: ; preds = %.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i171 ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dc, %i.dj                    ; 3 uses
  %i.dl = icmp eq ptr %.2406, %i.di
  br i1 %i.dl, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit183", label %.lr.ph.i.i176.1

.lr.ph.i.i176.1:                                  ; preds = %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit174
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i171.in ; 2 uses
  %i.dn = icmp eq i64 %i.dk, 1
  br i1 %i.dn, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit183", label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.1

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.1: ; preds = %.lr.ph.i.i176.1
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.dp = icmp ne i8 %i.do, 46
  %i.dq = icmp eq i64 %i.dk, 2
  %or.cond588 = or i1 %i.dp, %i.dq
  br i1 %or.cond588, label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit183", label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.2

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.2: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !13
  %i.dt = icmp eq i8 %i.ds, 46
  %spec.select589 = select i1 %i.dt, i64 3, i64 0
  br label %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit183"

"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit183": ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.2, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.1, %.lr.ph.i.i176.1, %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit174
  %.0.i181 = phi i64 [ 0, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.1 ], [ 0, %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit174 ], [ %spec.select589, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i180.2 ], [ 0, %.lr.ph.i.i176.1 ]
  %i.du = icmp eq i64 %.0.i181, %i.dk
  br i1 %i.du, label %bb.p, label %bb.o

bb.o:                                             ; preds = %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit183"
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i171.in
  br label %.thread

bb.p:                                             ; preds = %"_ZZN5boost4urls6detail19remove_dot_segmentsEPcPKcNS_4core17basic_string_viewIcEEENK3$_2clES7_S7_.exit183"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.2406, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.2406, i64 3
  br label %.thread

.loopexit:                                        ; preds = %bb.n, %bb.m
  %.not92 = icmp eq ptr %0, %.2406
  br i1 %.not92, label %bb.r, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189: ; preds = %.loopexit
  %i.dx = load i8, ptr %0, align 1, !tbaa !13
  %i.dy = icmp ne i8 %i.dx, 46
  %i.dz = icmp eq i64 %i.dd, 1
  %or.cond590 = or i1 %i.dy, %i.dz
  br i1 %or.cond590, label %.thread, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189.1

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189.1: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  %i.ec = icmp eq i8 %i.eb, 46
  %i.ed = icmp eq i64 %i.dd, 2
  %or.cond591 = and i1 %i.ec, %i.ed
  br i1 %or.cond591, label %bb.q, label %.thread

bb.q:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.2406, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.2406, i64 3
  br label %.thread

bb.r:                                             ; preds = %.loopexit
  br i1 %i.c, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %.thread

bb.t:                                             ; preds = %bb.r
  store i16 11822, ptr %0, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %.thread

_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.thread: ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167
  %.not.i.i193.not = icmp eq i64 %.sroa.31.2408, 1
  br i1 %.not.i.i193.not, label %.thread525, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i129, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i138, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.2, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.1, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.thread
  %i.eh = add i64 %.sroa.31.2408, -1
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 1
  %i.ej = tail call ptr @memchr(ptr noundef nonnull %i.ei, i32 noundef 47, i64 noundef %i.eh) #21 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ej, null
  br i1 %.not8.i.i, label %.thread525, label %_ZNK5boost4core17basic_string_viewIcE13find_first_ofEcm.exit

_ZNK5boost4core17basic_string_viewIcE13find_first_ofEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %.sroa.0293.2407 to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 4 uses
  %.not = icmp eq i64 %i.em, -1
  br i1 %.not, label %.thread525, label %bb.u

bb.u:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE13find_first_ofEcm.exit
  %.sroa.speculated.i194 = tail call i64 @llvm.umin.i64(i64 %.sroa.31.2408, i64 %i.em) ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2406, ptr nonnull readonly align 1 %.sroa.0293.2407, i64 %.sroa.speculated.i194, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %.2406, i64 %.sroa.speculated.i194
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0293.2407, i64 %i.em
  %i.ep = sub i64 %.sroa.31.2408, %i.em
  br label %bb.v

.thread525:                                       ; preds = %_ZNK5boost4core17basic_string_viewIcE13find_first_ofEcm.exit, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i167.thread, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %.lr.ph.i115.1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2406, ptr nonnull readonly align 1 %.sroa.0293.2407, i64 %.sroa.31.2408, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %.2406, i64 %.sroa.31.2408
  br label %.thread

bb.v:                                             ; preds = %bb.u, %bb.l, %bb.c
  %.9 = phi ptr [ %.2406, %bb.c ], [ %i.en, %bb.u ], [ %.5, %bb.l ] ; 2 uses
  %.sroa.0293.5 = phi ptr [ %i.av, %bb.c ], [ %i.eo, %bb.u ], [ %i.cr, %bb.l ]
  %.sroa.31.5 = phi i64 [ %i.aw, %bb.c ], [ %i.ep, %bb.u ], [ %i.cs, %bb.l ] ; 2 uses
  %i.er = icmp eq i64 %.sroa.31.5, 0
  br i1 %i.er, label %.thread, label %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i119

.thread:                                          ; preds = %bb.v, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189.1, %.thread525, %..thread_crit_edge, %bb.s, %bb.t, %bb.p, %bb.o, %bb.q, %bb.d
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.ag, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189.1 ], [ %i.ag, %bb.s ], [ %i.ag, %bb.t ], [ %i.ag, %bb.p ], [ %i.ag, %bb.o ], [ %i.ag, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189 ], [ %i.ag, %bb.q ], [ %i.ag, %bb.d ], [ %i.ag, %.thread525 ], [ %i.ag, %bb.v ]
  %.10 = phi ptr [ %.1.ph, %..thread_crit_edge ], [ %0, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189.1 ], [ %i.ef, %bb.s ], [ %i.eg, %bb.t ], [ %i.dw, %bb.p ], [ %i.dv, %bb.o ], [ %0, %_ZNK5boost4core17basic_string_viewIcE11starts_withEc.exit.i.i189 ], [ %i.ee, %bb.q ], [ %i.bd, %bb.d ], [ %i.eq, %.thread525 ], [ %.9, %bb.v ]
  %i.es = ptrtoint ptr %.10 to i64
  %i.et = sub i64 %i.es, %.pre-phi
  ret i64 %i.et
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef signext i8 @_ZN5boost4urls6detail13path_pop_backERNS_4core17basic_string_viewIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.d = icmp ult i64 %i.c, 3
  %.pre = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.pre, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -3       ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not = icmp eq i8 %i.g, 37
  br i1 %.not, label %_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %.pre, i64 %i.c
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = add i64 %i.c, -1
  store i64 %i.k, ptr %i.b, align 8, !tbaa !14
  br label %bb.g

_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, ptr nonnull %i.f, i64 3, i24 0) #21 ; 0 uses
  %i.n = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  %.not11 = icmp eq i8 %i.n, 47
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !14
  %i.p = add i64 %i.o, -3
  br label %bb.f

bb.e:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !8
  %i.r = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = add i64 %i.r, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i8 [ %i.n, %bb.d ], [ %i.u, %bb.e ]
  %storemerge = phi i64 [ %i.p, %bb.d ], [ %i.v, %bb.e ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i8 [ %i.j, %bb.c ], [ %.0, %bb.f ]
  ret i8 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5boost4urls6detail16pop_last_segmentERNS_4core17basic_string_viewIcEES5_Rmb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %7 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %8 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %9 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.c = alloca i8, align 1                       ; 9 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %10 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %11 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.e = alloca i8, align 1                       ; 9 uses
  %i.f = alloca i8, align 1                       ; 8 uses
  %12 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %13 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.g = alloca i8, align 1                       ; 9 uses
  %i.h = alloca i8, align 1                       ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.t = phi i64 [ %i.j, %.lr.ph ], [ %i.bi, %.backedge ]
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !30 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 %i.t ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i8 0, ptr %i.g, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i8 0, ptr %i.h, align 1, !tbaa !13
  %i.v = ptrtoint ptr %.sroa.016.0.copyload to i64
  br label %bb.c

bb.c:                                             ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i", %bb.b
  %.026.i = phi ptr [ %i.u, %bb.b ], [ %.12731.i, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i" ] ; 6 uses
  %.0.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.4, i64 3), %bb.b ], [ %.1.i, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i" ] ; 5 uses
  %i.w = icmp ult ptr %.sroa.016.0.copyload, %.026.i
  %i.x = icmp ugt ptr %.0.i, @.str.4
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %.026.i to i64
  %i.aa = sub i64 %i.z, %i.v
  %i.ab = icmp slt i64 %i.aa, 3
  br i1 %i.ab, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %.026.i, i64 -3 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.ad, 37
  br i1 %.not.i.i, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i", label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i": ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds i8, ptr %.026.i, i64 -1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13  ; 2 uses
  store i8 %i.af, ptr %i.g, align 1, !tbaa !13
  br label %bb.f

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i": ; preds = %bb.e
  %i.ag = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull %i.l, ptr nonnull %i.ac, i64 3, i24 0) #21 ; 0 uses
  %i.ah = load i8, ptr %i.g, align 1              ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 47
  br i1 %i.ai, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread.loopexit, label %bb.f

bb.f:                                             ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i"
  %i.aj = phi i8 [ %i.af, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i" ], [ %i.ah, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i" ]
  %.12731.i = phi ptr [ %i.ae, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i" ], [ %i.ac, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i" ]
  %i.ak = ptrtoint ptr %.0.i to i64
  %i.al = sub i64 %i.ak, ptrtoint (ptr @.str.4 to i64)
  %i.am = icmp slt i64 %i.al, 3
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %.0.i, i64 -3 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %.not.i9.i = icmp eq i8 %i.ao, 37
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13  ; 2 uses
  store i8 %i.aq, ptr %i.h, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i"

bb.i:                                             ; preds = %bb.g
  %i.ar = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull %i.m, ptr nonnull %i.an, i64 3, i24 0) #21 ; 0 uses
  %.pre.i = load i8, ptr %i.g, align 1, !tbaa !13
  %.pre36.i = load i8, ptr %i.h, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i": ; preds = %bb.i, %bb.h
  %i.as = phi i8 [ %i.aq, %bb.h ], [ %.pre36.i, %bb.i ]
  %i.at = phi i8 [ %i.aj, %bb.h ], [ %.pre.i, %bb.i ]
  %.1.i = phi ptr [ %i.ap, %bb.h ], [ %i.an, %bb.i ]
  %.not.i = icmp eq i8 %i.at, %i.as
  br i1 %.not.i, label %bb.c, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread.loopexit, !llvm.loop !26

bb.j:                                             ; preds = %bb.c
  %i.au = icmp eq ptr %.0.i, @.str.4
  %.sroa.213.0.copyload.pre.pre207 = load i64, ptr %i.i, align 8, !tbaa !15 ; 4 uses
  br i1 %i.au, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread.loopexit: ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i"
  %.sroa.213.0.copyload.pre.pre = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread: ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread.loopexit, %bb.j
  %.sroa.213.0.copyload.pre = phi i64 [ %.sroa.213.0.copyload.pre.pre, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread.loopexit ], [ %.sroa.213.0.copyload.pre.pre207, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %bb.p

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit: ; preds = %bb.j
  %i.av = ptrtoint ptr %i.u to i64
  %i.aw = ptrtoint ptr %.026.i to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  %.not82 = icmp eq ptr %i.u, %.026.i
  br i1 %.not82, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit
  %i.ay = icmp ugt i64 %i.ax, %.sroa.213.0.copyload.pre.pre207
  br i1 %i.ay, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.9)
          to label %.noexc unwind label %bb.br

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr @.str.10, ptr %13, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.11, ptr %i.az, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 589, ptr %i.ba, align 8, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 87, ptr %i.bb, align 4, !tbaa !35
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(24) %13) #23
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body

bb.o:                                             ; preds = %bb.k
  %i.bd = sub nuw i64 %.sroa.213.0.copyload.pre.pre207, %i.ax
  %i.be = load ptr, ptr %0, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store ptr %i.bf, ptr %1, align 8, !tbaa !30
  store i64 %i.ax, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !15
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !14
  %i.bh = sub i64 %i.bg, %i.ax                    ; 2 uses
  store i64 %i.bh, ptr %i.i, align 8, !tbaa !14
  br label %.backedge

.backedgethread-pre-split:                        ; preds = %bb.be, %bb.aq, %bb.bm
  %.sink = phi i64 [ %i.gd, %bb.be ], [ %i.en, %bb.aq ], [ %i.gu, %bb.bm ]
  store i64 %.sink, ptr %2, align 8, !tbaa !15
  %.pr226 = load i64, ptr %i.i, align 8, !tbaa !14
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %bb.o, %bb.ac
  %i.bi = phi i64 [ %.pr226, %.backedgethread-pre-split ], [ %i.cx, %bb.ac ], [ %i.bh, %bb.o ] ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %._crit_edge, label %bb.b, !llvm.loop !36

bb.p:                                             ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit
  %.sroa.213.0.copyload = phi i64 [ %.sroa.213.0.copyload.pre, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit.thread ], [ %.sroa.213.0.copyload.pre.pre207, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit ]
  %.sroa.012.0.copyload = load ptr, ptr %0, align 8, !tbaa !30 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 %.sroa.213.0.copyload ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i8 0, ptr %i.e, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i8 0, ptr %i.f, align 1, !tbaa !13
  %i.bl = ptrtoint ptr %.sroa.012.0.copyload to i64
  br label %bb.q

bb.q:                                             ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i95", %bb.p
  %.026.i88 = phi ptr [ %i.bk, %bb.p ], [ %.12731.i93, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i95" ] ; 6 uses
  %.0.i89 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.5, i64 2), %bb.p ], [ %.1.i96, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i95" ] ; 5 uses
  %i.bm = icmp ult ptr %.sroa.012.0.copyload, %.026.i88
  %i.bn = icmp ugt ptr %.0.i89, @.str.5
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bp = ptrtoint ptr %.026.i88 to i64
  %i.bq = sub i64 %i.bp, %i.bl
  %i.br = icmp slt i64 %i.bq, 3
  br i1 %i.br, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i92", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds i8, ptr %.026.i88, i64 -3 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %.not.i.i91 = icmp eq i8 %i.bt, 37
  br i1 %.not.i.i91, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i100", label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i92"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i92": ; preds = %bb.s, %bb.r
  %i.bu = getelementptr inbounds i8, ptr %.026.i88, i64 -1 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13  ; 2 uses
  store i8 %i.bv, ptr %i.e, align 1, !tbaa !13
  br label %bb.t

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i100": ; preds = %bb.s
  %i.bw = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull %i.n, ptr nonnull %i.bs, i64 3, i24 0) #21 ; 0 uses
  %i.bx = load i8, ptr %i.e, align 1              ; 2 uses
  %i.by = icmp eq i8 %i.bx, 47
  br i1 %i.by, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread.loopexit, label %bb.t

bb.t:                                             ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i100", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i92"
  %i.bz = phi i8 [ %i.bv, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i92" ], [ %i.bx, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i100" ]
  %.12731.i93 = phi ptr [ %i.bu, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i92" ], [ %i.bs, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i100" ]
  %i.ca = ptrtoint ptr %.0.i89 to i64
  %i.cb = sub i64 %i.ca, ptrtoint (ptr @.str.5 to i64)
  %i.cc = icmp slt i64 %i.cb, 3
  br i1 %i.cc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds i8, ptr %.0.i89, i64 -3 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %.not.i9.i94 = icmp eq i8 %i.ce, 37
  br i1 %.not.i9.i94, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cf = getelementptr inbounds i8, ptr %.0.i89, i64 -1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13  ; 2 uses
  store i8 %i.cg, ptr %i.f, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i95"

bb.w:                                             ; preds = %bb.u
  %i.ch = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull %i.o, ptr nonnull %i.cd, i64 3, i24 0) #21 ; 0 uses
  %.pre.i98 = load i8, ptr %i.e, align 1, !tbaa !13
  %.pre36.i99 = load i8, ptr %i.f, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i95"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i95": ; preds = %bb.w, %bb.v
  %i.ci = phi i8 [ %i.cg, %bb.v ], [ %.pre36.i99, %bb.w ]
  %i.cj = phi i8 [ %i.bz, %bb.v ], [ %.pre.i98, %bb.w ]
  %.1.i96 = phi ptr [ %i.cf, %bb.v ], [ %i.cd, %bb.w ]
  %.not.i97 = icmp eq i8 %i.cj, %i.ci
  br i1 %.not.i97, label %bb.q, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread.loopexit, !llvm.loop !26

bb.x:                                             ; preds = %bb.q
  %i.ck = icmp eq ptr %.0.i89, @.str.5
  %.sroa.29.0.copyload.pre.pre209 = load i64, ptr %i.i, align 8, !tbaa !15 ; 4 uses
  br i1 %i.ck, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread.loopexit: ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i100", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i95"
  %.sroa.29.0.copyload.pre.pre = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread: ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread.loopexit, %bb.x
  %.sroa.29.0.copyload.pre = phi i64 [ %.sroa.29.0.copyload.pre.pre, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread.loopexit ], [ %.sroa.29.0.copyload.pre.pre209, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.ad

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101: ; preds = %bb.x
  %i.cl = ptrtoint ptr %i.bk to i64
  %i.cm = ptrtoint ptr %.026.i88 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  %.not83 = icmp eq ptr %i.bk, %.026.i88
  br i1 %.not83, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101
  %i.co = icmp ugt i64 %i.cn, %.sroa.29.0.copyload.pre.pre209
  br i1 %i.co, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.9)
          to label %.noexc104 unwind label %bb.br

.noexc104:                                        ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr @.str.10, ptr %11, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.11, ptr %i.cp, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 589, ptr %i.cq, align 8, !tbaa !34
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 87, ptr %i.cr, align 4, !tbaa !35
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(24) %11) #23
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc104
  unreachable

bb.ab:                                            ; preds = %.noexc104
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

bb.ac:                                            ; preds = %bb.y
  %i.ct = sub nuw i64 %.sroa.29.0.copyload.pre.pre209, %i.cn
  %i.cu = load ptr, ptr %0, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store ptr %i.cv, ptr %1, align 8, !tbaa !30
  store i64 1, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !15
  %i.cw = load i64, ptr %i.i, align 8, !tbaa !14
  %i.cx = sub i64 %i.cw, %i.cn                    ; 2 uses
  store i64 %i.cx, ptr %i.i, align 8, !tbaa !14
  br label %.backedge

bb.ad:                                            ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101
  %.sroa.29.0.copyload = phi i64 [ %.sroa.29.0.copyload.pre, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101.thread ], [ %.sroa.29.0.copyload.pre.pre209, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit101 ]
  %.sroa.08.0.copyload = load ptr, ptr %0, align 8, !tbaa !30 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i8 0, ptr %i.c, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i8 0, ptr %i.d, align 1, !tbaa !13
  %i.cz = ptrtoint ptr %.sroa.08.0.copyload to i64
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i115", %bb.ad
  %.026.i108 = phi ptr [ %i.cy, %bb.ad ], [ %.12731.i113, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i115" ] ; 6 uses
  %.0.i109 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.6, i64 4), %bb.ad ], [ %.1.i116, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i115" ] ; 5 uses
  %i.da = icmp ult ptr %.sroa.08.0.copyload, %.026.i108
  %i.db = icmp ugt ptr %.0.i109, @.str.6
  %i.dc = select i1 %i.da, i1 %i.db, i1 false
  br i1 %i.dc, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.dd = ptrtoint ptr %.026.i108 to i64
  %i.de = sub i64 %i.dd, %i.cz
  %i.df = icmp slt i64 %i.de, 3
  br i1 %i.df, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i112", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds i8, ptr %.026.i108, i64 -3 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %.not.i.i111 = icmp eq i8 %i.dh, 37
  br i1 %.not.i.i111, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i120", label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i112"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i112": ; preds = %bb.ag, %bb.af
  %i.di = getelementptr inbounds i8, ptr %.026.i108, i64 -1 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13  ; 2 uses
  store i8 %i.dj, ptr %i.c, align 1, !tbaa !13
  br label %bb.ah

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i120": ; preds = %bb.ag
  %i.dk = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull %i.p, ptr nonnull %i.dg, i64 3, i24 0) #21 ; 0 uses
  %i.dl = load i8, ptr %i.c, align 1              ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 47
  br i1 %i.dm, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread.loopexit, label %bb.ah

bb.ah:                                            ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i120", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i112"
  %i.dn = phi i8 [ %i.dj, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i112" ], [ %i.dl, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i120" ]
  %.12731.i113 = phi ptr [ %i.di, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i112" ], [ %i.dg, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i120" ]
  %i.do = ptrtoint ptr %.0.i109 to i64
  %i.dp = sub i64 %i.do, ptrtoint (ptr @.str.6 to i64)
  %i.dq = icmp slt i64 %i.dp, 3
  br i1 %i.dq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = getelementptr inbounds i8, ptr %.0.i109, i64 -3 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !13
  %.not.i9.i114 = icmp eq i8 %i.ds, 37
  br i1 %.not.i9.i114, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dt = getelementptr inbounds i8, ptr %.0.i109, i64 -1 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13  ; 2 uses
  store i8 %i.du, ptr %i.d, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i115"

bb.ak:                                            ; preds = %bb.ai
  %i.dv = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull %i.q, ptr nonnull %i.dr, i64 3, i24 0) #21 ; 0 uses
  %.pre.i118 = load i8, ptr %i.c, align 1, !tbaa !13
  %.pre36.i119 = load i8, ptr %i.d, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i115"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i115": ; preds = %bb.ak, %bb.aj
  %i.dw = phi i8 [ %i.du, %bb.aj ], [ %.pre36.i119, %bb.ak ]
  %i.dx = phi i8 [ %i.dn, %bb.aj ], [ %.pre.i118, %bb.ak ]
  %.1.i116 = phi ptr [ %i.dt, %bb.aj ], [ %i.dr, %bb.ak ]
  %.not.i117 = icmp eq i8 %i.dx, %i.dw
  br i1 %.not.i117, label %bb.ae, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread.loopexit, !llvm.loop !26

bb.al:                                            ; preds = %bb.ae
  %i.dy = icmp eq ptr %.0.i109, @.str.6
  %.sroa.2.0.copyload.pre.pre211 = load i64, ptr %i.i, align 8, !tbaa !15 ; 4 uses
  br i1 %i.dy, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread.loopexit: ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i120", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i115"
  %.sroa.2.0.copyload.pre.pre = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread: ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread.loopexit, %bb.al
  %.sroa.2.0.copyload.pre = phi i64 [ %.sroa.2.0.copyload.pre.pre, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread.loopexit ], [ %.sroa.2.0.copyload.pre.pre211, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ar

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121: ; preds = %bb.al
  %i.dz = ptrtoint ptr %i.cy to i64
  %i.ea = ptrtoint ptr %.026.i108 to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.not84 = icmp eq ptr %i.cy, %.026.i108
  br i1 %.not84, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121
  %i.ec = icmp ugt i64 %i.eb, %.sroa.2.0.copyload.pre.pre211
  br i1 %i.ec, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.9)
          to label %.noexc125 unwind label %bb.br

.noexc125:                                        ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr @.str.10, ptr %9, align 8, !tbaa !31
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.11, ptr %i.ed, align 8, !tbaa !33
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 589, ptr %i.ee, align 8, !tbaa !34
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 87, ptr %i.ef, align 4, !tbaa !35
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #23
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc125
  unreachable

bb.ap:                                            ; preds = %.noexc125
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body

bb.aq:                                            ; preds = %bb.am
  %i.eh = sub nuw i64 %.sroa.2.0.copyload.pre.pre211, %i.eb
  %i.ei = load ptr, ptr %0, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  store ptr %i.ej, ptr %1, align 8, !tbaa !30
  store i64 %i.eb, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !15
  %i.ek = load i64, ptr %i.i, align 8, !tbaa !14
  %i.el = sub i64 %i.ek, %i.eb
  store i64 %i.el, ptr %i.i, align 8, !tbaa !14
  %i.em = load i64, ptr %2, align 8, !tbaa !15
  %i.en = add i64 %i.em, 1
  br label %.backedgethread-pre-split

bb.ar:                                            ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.pre, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121.thread ], [ %.sroa.2.0.copyload.pre.pre211, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit121 ]
  %.sroa.05.0.copyload = load ptr, ptr %0, align 8, !tbaa !30 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 %.sroa.2.0.copyload ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i8 0, ptr %i.b, align 1, !tbaa !13
  %i.ep = ptrtoint ptr %.sroa.05.0.copyload to i64
  br label %bb.as

bb.as:                                            ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i136", %bb.ar
  %.026.i129 = phi ptr [ %i.eo, %bb.ar ], [ %.12731.i134, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i136" ] ; 6 uses
  %.0.i130 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.7, i64 3), %bb.ar ], [ %.1.i137, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i136" ] ; 5 uses
  %i.eq = icmp ult ptr %.sroa.05.0.copyload, %.026.i129
  %i.er = icmp ugt ptr %.0.i130, @.str.7
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %i.es, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.et = ptrtoint ptr %.026.i129 to i64
  %i.eu = sub i64 %i.et, %i.ep
  %i.ev = icmp slt i64 %i.eu, 3
  br i1 %i.ev, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i133", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ew = getelementptr inbounds i8, ptr %.026.i129, i64 -3 ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !13
  %.not.i.i132 = icmp eq i8 %i.ex, 37
  br i1 %.not.i.i132, label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i141", label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i133"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i133": ; preds = %bb.au, %bb.at
  %i.ey = getelementptr inbounds i8, ptr %.026.i129, i64 -1 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !13  ; 2 uses
  store i8 %i.ez, ptr %i.a, align 1, !tbaa !13
  br label %bb.av

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i141": ; preds = %bb.au
  %i.fa = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.r, ptr nonnull %i.ew, i64 3, i24 0) #21 ; 0 uses
  %i.fb = load i8, ptr %i.a, align 1              ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 47
  br i1 %i.fc, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread.loopexit, label %bb.av

bb.av:                                            ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i141", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i133"
  %i.fd = phi i8 [ %i.ez, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i133" ], [ %i.fb, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i141" ]
  %.12731.i134 = phi ptr [ %i.ey, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.thread.i133" ], [ %i.ew, %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i141" ]
  %i.fe = ptrtoint ptr %.0.i130 to i64
  %i.ff = sub i64 %i.fe, ptrtoint (ptr @.str.7 to i64)
  %i.fg = icmp slt i64 %i.ff, 3
  br i1 %i.fg, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds i8, ptr %.0.i130, i64 -3 ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !13
  %.not.i9.i135 = icmp eq i8 %i.fi, 37
  br i1 %.not.i9.i135, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fj = getelementptr inbounds i8, ptr %.0.i130, i64 -1 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !13  ; 2 uses
  store i8 %i.fk, ptr %i.b, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i136"

bb.ay:                                            ; preds = %bb.aw
  %i.fl = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.s, ptr nonnull %i.fh, i64 3, i24 0) #21 ; 0 uses
  %.pre.i139 = load i8, ptr %i.a, align 1, !tbaa !13
  %.pre36.i140 = load i8, ptr %i.b, align 1, !tbaa !13
  br label %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i136"

"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i136": ; preds = %bb.ay, %bb.ax
  %i.fm = phi i8 [ %i.fk, %bb.ax ], [ %.pre36.i140, %bb.ay ]
  %i.fn = phi i8 [ %i.fd, %bb.ax ], [ %.pre.i139, %bb.ay ]
  %.1.i137 = phi ptr [ %i.fj, %bb.ax ], [ %i.fh, %bb.ay ]
  %.not.i138 = icmp eq i8 %i.fn, %i.fm
  br i1 %.not.i138, label %bb.as, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread.loopexit, !llvm.loop !26

bb.az:                                            ; preds = %bb.as
  %i.fo = icmp eq ptr %.0.i130, @.str.7
  %.pre.pre213 = load i64, ptr %i.i, align 8, !tbaa !14 ; 4 uses
  br i1 %i.fo, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142, label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread.loopexit: ; preds = %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit.i141", %"_ZZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_ENK3$_0clERPKcS8_Rc.exit11.i136"
  %.pre.pre = load i64, ptr %i.i, align 8, !tbaa !14
  br label %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread: ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread.loopexit, %bb.az
  %.pre = phi i64 [ %.pre.pre, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread.loopexit ], [ %.pre.pre213, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.bf

_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142: ; preds = %bb.az
  %i.fp = ptrtoint ptr %i.eo to i64
  %i.fq = ptrtoint ptr %.026.i129 to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not85 = icmp eq ptr %i.eo, %.026.i129
  br i1 %.not85, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142
  %i.fs = icmp ugt i64 %i.fr, %.pre.pre213
  br i1 %i.fs, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.9)
          to label %.noexc146 unwind label %bb.br

.noexc146:                                        ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr @.str.10, ptr %7, align 8, !tbaa !31
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.11, ptr %i.ft, align 8, !tbaa !33
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 589, ptr %i.fu, align 8, !tbaa !34
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 87, ptr %i.fv, align 4, !tbaa !35
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #23
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.noexc146
  unreachable

bb.bd:                                            ; preds = %.noexc146
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.be:                                            ; preds = %bb.ba
  %i.fx = sub nuw i64 %.pre.pre213, %i.fr
  %i.fy = load ptr, ptr %0, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx
  store ptr %i.fz, ptr %1, align 8, !tbaa !30
  store i64 %i.fr, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !15
  %i.ga = load i64, ptr %i.i, align 8, !tbaa !14
  %i.gb = sub i64 %i.ga, %i.fr
  store i64 %i.gb, ptr %i.i, align 8, !tbaa !14
  %i.gc = load i64, ptr %2, align 8, !tbaa !15
  %i.gd = add i64 %i.gc, 1
  br label %.backedgethread-pre-split

bb.bf:                                            ; preds = %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142
  %i.ge = phi i64 [ %.pre, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142.thread ], [ %.pre.pre213, %_ZN5boost4urls6detail14path_ends_withENS_4core17basic_string_viewIcEES4_.exit142 ] ; 4 uses
  %i.gf = icmp ugt i64 %i.ge, 1
  br i1 %i.gf, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.gg = add i64 %i.ge, -2
  %i.gh = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %.1.i.i = phi i64 [ %i.gg, %bb.bg ], [ %i.gl, %bb.bi ] ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.1.i.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !13
  %i.gk = icmp eq i8 %i.gj, 47
  br i1 %i.gk, label %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gl = add i64 %.1.i.i, -1
  %.not.i.i150 = icmp eq i64 %.1.i.i, 0
  br i1 %.not.i.i150, label %.loopexit, label %bb.bh, !llvm.loop !29

_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit: ; preds = %bb.bh
  %.not180 = icmp ult i64 %.1.i.i, %i.ge
  br i1 %.not180, label %bb.bj, label %14

14:                                               ; preds = %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.9)
          to label %.noexc154 unwind label %bb.br

.noexc154:                                        ; preds = %14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.10, ptr %5, align 8, !tbaa !31
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.11, ptr %15, align 8, !tbaa !33
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 589, ptr %16, align 8, !tbaa !34
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %17, align 4, !tbaa !35
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #23
          to label %18 unwind label %19

18:                                               ; preds = %.noexc154
  unreachable

19:                                               ; preds = %.noexc154
  %20 = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.bj:                                            ; preds = %_ZNK5boost4core17basic_string_viewIcE12find_last_ofEcm.exit
  %i.gm = add nuw i64 %.1.i.i, 1                  ; 2 uses
  %i.gn = sub nuw i64 %i.ge, %i.gm                ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gm
  store ptr %i.go, ptr %1, align 8, !tbaa !30
  store i64 %i.gn, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !15
  %i.gp = load i64, ptr %i.i, align 8, !tbaa !14
  %i.gq = sub i64 %i.gp, %i.gn
  store i64 %i.gq, ptr %i.i, align 8, !tbaa !14
  br label %bb.bk

.loopexit:                                        ; preds = %bb.bi, %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit, %bb.bj
  %i.gr = load i64, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not87 = icmp eq i64 %i.gr, 0
  br i1 %.not87, label %.critedge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gs = load i64, ptr %i.i, align 8, !tbaa !14
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %._crit_edge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gu = add i64 %i.gr, -1
  br label %.backedgethread-pre-split

._crit_edge:                                      ; preds = %.backedge, %bb.bl, %bb.a
  %i.gv = load i64, ptr %2, align 8, !tbaa !15
  %.not = icmp eq i64 %i.gv, 0                    ; 2 uses
  br i1 %3, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %._crit_edge
  br i1 %.not, label %.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr @.str.8, ptr %1, align 8, !tbaa !30
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %.sroa.4162.0..sroa_idx, align 8, !tbaa !15
  store i64 0, ptr %2, align 8, !tbaa !15
  br label %.critedge

bb.bp:                                            ; preds = %._crit_edge
  br i1 %.not, label %.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !14
  %i.gy = icmp eq i64 %i.gx, 0                    ; 2 uses
  %.str.7..str.6 = select i1 %i.gy, ptr @.str.7, ptr @.str.6
  %. = select i1 %i.gy, i64 3, i64 4
  store ptr %.str.7..str.6, ptr %1, align 8, !tbaa !30
  store i64 %., ptr %i.gw, align 8, !tbaa !15
  %i.gz = load i64, ptr %2, align 8, !tbaa !15
  %i.ha = add i64 %i.gz, -1
  store i64 %i.ha, ptr %2, align 8, !tbaa !15
  br label %.critedge

.thread:                                          ; preds = %bb.bn, %bb.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.bk, %.thread, %bb.bq, %bb.bo
  ret void

bb.br:                                            ; preds = %14, %bb.bb, %bb.an, %bb.z, %bb.l
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.bd, %19, %bb.br, %bb.ap, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %i.cs, %bb.ab ], [ %i.eg, %bb.ap ], [ %i.fw, %bb.bd ], [ %i.hb, %bb.br ], [ %20, %19 ]
  %i.hc = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.hc) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4urls6detail22normalized_path_digestENS_4core17basic_string_viewIcEEbRNS1_6fnv_1aE(ptr %0, i64 %1, i1 noundef zeroext %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"class.boost::core::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store ptr %0, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  call void @_ZN5boost4urls6detail16pop_last_segmentERNS_4core17basic_string_viewIcEES5_Rmb(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext %2) #21
  %.promoted = load i64, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.f = icmp eq i64 %.promoted, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !8   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5boost4urls6detail13path_pop_backERNS_4core17basic_string_viewIcEE.exit
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.u, %_ZN5boost4urls6detail13path_pop_backERNS_4core17basic_string_viewIcEE.exit ] ; 5 uses
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %.pre.i, i64 %i.g  ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -3       ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.k, 37
  br i1 %.not.i, label %_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr i8, ptr %.pre.i, i64 %i.g
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = add i64 %i.g, -1
  br label %_ZN5boost4urls6detail13path_pop_backERNS_4core17basic_string_viewIcEE.exit

_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !13
  %i.p = call noundef i64 @_ZN5boost4urls6detail13decode_unsafeEPcPKcNS_4core17basic_string_viewIcEENS0_13encoding_optsE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr nonnull %i.j, i64 3, i24 0) #21 ; 0 uses
  %i.q = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  %.not11.i = icmp eq i8 %i.q, 47
  br i1 %.not11.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit.i
  %i.r = getelementptr i8, ptr %i.i, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit.i, %bb.f
  %.sink = phi i64 [ -1, %bb.f ], [ -3, %_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit.i ]
  %.0.i = phi i8 [ %i.s, %bb.f ], [ %i.q, %_ZNK5boost4core17basic_string_viewIcE6substrEmm.exit.i ]
  %i.t = add i64 %i.g, %.sink
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN5boost4urls6detail13path_pop_backERNS_4core17basic_string_viewIcEE.exit

_ZN5boost4urls6detail13path_pop_backERNS_4core17basic_string_viewIcEE.exit: ; preds = %bb.g, %bb.e
  %i.u = phi i64 [ %i.o, %bb.e ], [ %i.t, %bb.g ] ; 2 uses
  %.1.i = phi i8 [ %i.n, %bb.e ], [ %.0.i, %bb.g ]
  %i.v = sext i8 %.1.i to i64
  %i.w = load i64, ptr %3, align 8, !tbaa !19
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 1099511628211
  store i64 %i.y, ptr %3, align 8, !tbaa !19
  %i.z = icmp eq i64 %i.u, 0
  br i1 %i.z, label %._crit_edge, label %bb.c, !llvm.loop !38

._crit_edge:                                      ; preds = %_ZN5boost4urls6detail13path_pop_backERNS_4core17basic_string_viewIcEE.exit, %bb.b
  store i64 0, ptr %i.d, align 8
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.b, !llvm.loop !39

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 -1, 2) i32 @_ZN5boost4urls6detail16segments_compareENS0_21segments_encoded_viewES2_(ptr nofree noundef readonly byval(%"class.boost::urls::segments_encoded_view") align 8 captures(none) %0, ptr nofree noundef readonly byval(%"class.boost::urls::segments_encoded_view") align 8 captures(none) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.boost::urls::segments_encoded_base::iterator", align 8 ; 18 uses
  %3 = alloca %"class.boost::urls::segments_encoded_base::iterator", align 8 ; 17 uses
  %4 = alloca %"class.boost::urls::decode_view", align 8 ; 8 uses
  %5 = alloca %"class.boost::urls::decode_view::iterator", align 8 ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.boost::urls::segments_encoded_base::iterator", align 8 ; 18 uses
  %7 = alloca %"class.boost::urls::segments_encoded_base::iterator", align 8 ; 17 uses
  %8 = alloca %"class.boost::urls::decode_view", align 8 ; 8 uses
  %9 = alloca %"class.boost::urls::decode_view::iterator", align 8 ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.g = tail call fastcc noundef i64 @"_ZZN5boost4urls6detail16segments_compareENS0_21segments_encoded_viewES2_ENK3$_0clES2_"(ptr noundef nonnull byval(%"class.boost::urls::segments_encoded_view") align 8 %0) ; 5 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.h = tail call fastcc noundef i64 @"_ZZN5boost4urls6detail16segments_compareENS0_21segments_encoded_viewES2_ENK3$_0clES2_"(ptr noundef nonnull byval(%"class.boost::urls::segments_encoded_view") align 8 %1) ; 6 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 56, i1 false)
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !40, !noalias !43 ; 9 uses
  %.not.i.i = icmp eq ptr %i.n, null              ; 3 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46, !noalias !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52, !noalias !43
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !52, !noalias !43
  %i.v = zext i32 %i.u to i64
  %i.w = sub nsw i64 %i.v, %i.r
  br label %_ZNK5boost4urls6detail8path_ref6bufferEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53, !noalias !43
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !54, !noalias !43
  br label %_ZNK5boost4urls6detail8path_ref6bufferEv.exit.i

_ZNK5boost4urls6detail8path_ref6bufferEv.exit.i:  ; preds = %bb.c, %bb.b
  %.sink2.i.i = phi ptr [ %i.y, %bb.c ], [ %i.s, %bb.b ] ; 7 uses
  %.sink1.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  switch i64 %.sink1.i.i, label %bb.g [
    i64 0, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit.i
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.d:                                             ; preds = %_ZNK5boost4urls6detail8path_ref6bufferEv.exit.i
  %i.ab = load i8, ptr %.sink2.i.i, align 1, !tbaa !13
  %i.ac = icmp eq i8 %i.ab, 47
  %..i.i.i = zext i1 %i.ac to i64
  br label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit.i

bb.e:                                             ; preds = %_ZNK5boost4urls6detail8path_ref6bufferEv.exit.i
  %i.ad = load i8, ptr %.sink2.i.i, align 1, !tbaa !13
  switch i8 %i.ad, label %bb.l [
    i8 47, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit.i
    i8 46, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink2.i.i, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = icmp eq i8 %i.af, 47
  br i1 %i.ag, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit.i, label %bb.l

bb.g:                                             ; preds = %_ZNK5boost4urls6detail8path_ref6bufferEv.exit.i
  %i.ah = load i8, ptr %.sink2.i.i, align 1, !tbaa !13
  switch i8 %i.ah, label %bb.l [
    i8 47, label %bb.h
    i8 46, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink2.i.i, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = icmp eq i8 %i.aj, 46
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.sink2.i.i, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = icmp eq i8 %i.am, 47
  br i1 %i.an, label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN5boost4urls6detail11path_prefixENS_4core17basic_string_viewIcEE.exit.i

bb.k:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink2.i.i, i64 1
end_hunk_1
