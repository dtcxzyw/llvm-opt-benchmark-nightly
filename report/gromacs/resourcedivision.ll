Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/resourcedivision?download=true
inline.NumInlined: 369
inline.NumDeleted: 202
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathD2Ev:bb.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !139
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117SingleRankCheckerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !128 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !139
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !270
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %._crit_edge48.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !271  ; 2 uses
  %.not42 = icmp eq ptr %i.d, %i.f
  br i1 %.not42, label %._crit_edge48.thread, label %.lr.ph47

._crit_edge48:                                    ; preds = %._crit_edge
  %i.g = icmp ne i64 %.131.lcssa, %.133.lcssa
  %i.h = icmp ult i64 %.131.lcssa, 2
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %._crit_edge48.thread, label %bb.c

.lr.ph47:                                         ; preds = %bb.b, %._crit_edge
  %.045 = phi i64 [ %.131.lcssa, %._crit_edge ], [ 999999999, %bb.b ] ; 4 uses
  %.03244 = phi i64 [ %.133.lcssa, %._crit_edge ], [ 0, %bb.b ] ; 4 uses
  %.sroa.022.043 = phi ptr [ %i.bi, %._crit_edge ], [ %i.d, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !273  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273  ; 3 uses
  %.not3637 = icmp eq ptr %i.k, %i.m
  br i1 %.not3637, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.lr.ph47
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = ptrtoaddr ptr %i.k to i64
  %i.p = add i64 %i.n, -32
  %i.q = sub i64 %i.p, %i.o                       ; 3 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = add nuw nsw i64 %i.r, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.q, 128
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check56 = icmp ult i64 %i.q, 512
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.s, 15                         ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 16, i64 %i.t         ; 2 uses
  %n.vec = sub nsw i64 %i.s, %i.v                 ; 3 uses
  %i.w = shl i64 %n.vec, 5
  %i.x = getelementptr i8, ptr %i.k, i64 %i.w     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.045, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert57 = insertelement <4 x i64> poison, i64 %.03244, i64 0
  %broadcast.splat58 = shufflevector <4 x i64> %broadcast.splatinsert57, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi59 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi60 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi61 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi62 = phi <4 x i64> [ %broadcast.splat58, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi63 = phi <4 x i64> [ %broadcast.splat58, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi64 = phi <4 x i64> [ %broadcast.splat58, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi65 = phi <4 x i64> [ %broadcast.splat58, %vector.ph ], [ %i.av, %vector.body ]
  %pointer.phi = phi ptr [ %i.k, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 8 uses
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  %wide.gep66 = getelementptr i8, <4 x ptr> %vector.gep, i64 136
  %wide.gep67 = getelementptr i8, <4 x ptr> %vector.gep, i64 264
  %wide.gep68 = getelementptr i8, <4 x ptr> %vector.gep, i64 392
  %wide.gep69 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 16
  %wide.gep70 = getelementptr i8, <4 x ptr> %vector.gep, i64 144
  %wide.gep71 = getelementptr i8, <4 x ptr> %vector.gep, i64 272
  %wide.gep72 = getelementptr i8, <4 x ptr> %vector.gep, i64 400
  %wide.masked.gather = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep69, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather73 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep70, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather74 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep71, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather75 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep72, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather76 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %wide.masked.gather77 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep66, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %wide.masked.gather78 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep67, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %wide.masked.gather79 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep68, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %i.y = ptrtoint <4 x ptr> %wide.masked.gather to <4 x i64>
  %i.z = ptrtoint <4 x ptr> %wide.masked.gather73 to <4 x i64>
  %i.aa = ptrtoint <4 x ptr> %wide.masked.gather74 to <4 x i64>
  %i.ab = ptrtoint <4 x ptr> %wide.masked.gather75 to <4 x i64>
  %i.ac = ptrtoint <4 x ptr> %wide.masked.gather76 to <4 x i64>
  %i.ad = ptrtoint <4 x ptr> %wide.masked.gather77 to <4 x i64>
  %i.ae = ptrtoint <4 x ptr> %wide.masked.gather78 to <4 x i64>
  %i.af = ptrtoint <4 x ptr> %wide.masked.gather79 to <4 x i64>
  %i.ag = sub <4 x i64> %i.y, %i.ac
  %i.ah = sub <4 x i64> %i.z, %i.ad
  %i.ai = sub <4 x i64> %i.aa, %i.ae
  %i.aj = sub <4 x i64> %i.ab, %i.af
  %i.ak = ashr exact <4 x i64> %i.ag, splat (i64 3) ; 2 uses
  %i.al = ashr exact <4 x i64> %i.ah, splat (i64 3) ; 2 uses
  %i.am = ashr exact <4 x i64> %i.ai, splat (i64 3) ; 2 uses
  %i.an = ashr exact <4 x i64> %i.aj, splat (i64 3) ; 2 uses
  %i.ao = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ak, <4 x i64> %vec.phi) ; 2 uses
  %i.ap = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.al, <4 x i64> %vec.phi59) ; 2 uses
  %i.aq = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.am, <4 x i64> %vec.phi60) ; 2 uses
  %i.ar = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.an, <4 x i64> %vec.phi61) ; 2 uses
  %i.as = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi62, <4 x i64> %i.ak) ; 2 uses
  %i.at = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi63, <4 x i64> %i.al) ; 2 uses
  %i.au = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi64, <4 x i64> %i.am) ; 2 uses
  %i.av = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi65, <4 x i64> %i.an) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !311

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax82 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %i.as, <4 x i64> %i.at)
  %rdx.minmax83 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax82, <4 x i64> %i.au)
  %rdx.minmax84 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax83, <4 x i64> %i.av)
  %i.ax = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %rdx.minmax84) ; 2 uses
  %rdx.minmax = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ao, <4 x i64> %i.ap)
  %rdx.minmax80 = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %rdx.minmax, <4 x i64> %i.aq)
  %rdx.minmax81 = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %rdx.minmax80, <4 x i64> %i.ar)
  %i.ay = tail call i64 @llvm.vector.reduce.umin.v4i64(<4 x i64> %rdx.minmax81) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.v, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ay, %vec.epilog.iter.check ], [ %.045, %vector.main.loop.iter.check ]
  %bc.merge.rdx85 = phi i64 [ %i.ax, %vec.epilog.iter.check ], [ %.03244, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.x, %vec.epilog.iter.check ], [ %i.k, %vector.main.loop.iter.check ]
  %broadcast.splatinsert91 = insertelement <4 x i64> poison, i64 %bc.merge.rdx85, i64 0
  %broadcast.splat92 = shufflevector <4 x i64> %broadcast.splatinsert91, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <4 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat89 = shufflevector <4 x i64> %broadcast.splatinsert88, <4 x i64> poison, <4 x i32> zeroinitializer
  %1 = and i64 %i.s, 3                            ; 2 uses
  %2 = icmp eq i64 %1, 0
  %3 = select i1 %2, i64 4, i64 %1
  %n.vec86 = sub nsw i64 %i.s, %3                 ; 2 uses
  %4 = shl i64 %n.vec86, 5
  %5 = getelementptr i8, ptr %i.k, i64 %4
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next100, %vec.epilog.vector.body ]
  %vec.phi92 = phi <4 x i64> [ %broadcast.splat89, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %vec.phi93 = phi <4 x i64> [ %broadcast.splat92, %vec.epilog.ph ], [ %i.be, %vec.epilog.vector.body ]
  %pointer.phi94 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind101, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep95 = getelementptr i8, ptr %pointer.phi94, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 2 uses
  %wide.gep96 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep95, i64 8
  %wide.gep97 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep95, i64 16
  %wide.masked.gather98 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep97, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather99 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep96, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %i.az = ptrtoint <4 x ptr> %wide.masked.gather98 to <4 x i64>
  %i.ba = ptrtoint <4 x ptr> %wide.masked.gather99 to <4 x i64>
  %i.bb = sub <4 x i64> %i.az, %i.ba
  %i.bc = ashr exact <4 x i64> %i.bb, splat (i64 3) ; 2 uses
  %i.bd = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bc, <4 x i64> %vec.phi92) ; 2 uses
  %i.be = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi93, <4 x i64> %i.bc) ; 2 uses
  %index.next100 = add nuw i64 %index91, 4        ; 2 uses
  %ptr.ind101 = getelementptr i8, ptr %pointer.phi94, i64 128
  %i.bf = icmp eq i64 %index.next100, %n.vec86
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bg = tail call i64 @llvm.vector.reduce.umin.v4i64(<4 x i64> %i.bd)
  %i.bh = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %i.be)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.13140.ph = phi i64 [ %.045, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.13339.ph = phi i64 [ %.03244, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.sroa.018.038.ph = phi ptr [ %i.k, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph47
  %.133.lcssa = phi i64 [ %.03244, %.lr.ph47 ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %.131.lcssa = phi i64 [ %.045, %.lr.ph47 ], [ %.sroa.speculated15, %.lr.ph ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.f
  br i1 %.not, label %._crit_edge48, label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.13140 = phi i64 [ %.sroa.speculated15, %.lr.ph ], [ %.13140.ph, %.lr.ph.preheader ]
  %.13339 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %.13339.ph, %.lr.ph.preheader ]
  %.sroa.018.038 = phi ptr [ %i.br, %.lr.ph ], [ %.sroa.018.038.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.018.038, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.018.038, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !276
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !277
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %.sroa.speculated15 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %.13140) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.13339, i64 %i.bq) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.018.038, i64 32 ; 2 uses
  %.not36 = icmp eq ptr %i.br, %i.m
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !313

._crit_edge48.thread:                             ; preds = %bb.b, %._crit_edge48, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge48, %._crit_edge48.thread
  %.1 = phi i1 [ false, %._crit_edge48.thread ], [ true, %._crit_edge48 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 8, 33) i32 @_ZL26nthreads_omp_efficient_maxiRKN3gmx7CpuInfoEb(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !202
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.f, %bb.c ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !205
  %i.j = icmp slt i32 %i.i, 3                     ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.j, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN3gmx7CpuInfo7FeatureES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNKSt8_Rb_treeIN3gmx7CpuInfo7FeatureES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.k = icmp eq ptr %.19.i.i.i.i.i, %i.g
  br i1 %i.k, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i

_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i:    ; preds = %_ZNKSt8_Rb_treeIN3gmx7CpuInfo7FeatureES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !205
  %i.n = icmp slt i32 %i.m, 4
  br i1 %i.n, label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit, label %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i

_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i: ; preds = %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i, %_ZNKSt8_Rb_treeIN3gmx7CpuInfo7FeatureES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i, %bb.c, %bb.b
  %i.o = tail call noundef zeroext i1 @_ZN3gmx15cpuIsX86NehalemERKNS_7CpuInfoE(ptr noundef nonnull align 8 dereferenceable(128) %1)
  br i1 %i.o, label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i
  %i.p = load i32, ptr %i.b, align 4, !tbaa !202
  switch i32 %i.p, label %.thread.i [
    i32 2, label %bb.e
    i32 7, label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !207
  %i.s = icmp sgt i32 %i.r, 22
  br i1 %i.s, label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  br label %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit

_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit:   ; preds = %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i, %bb.d, %bb.e, %.thread.i
  %.0.i = phi i32 [ 8, %.thread.i ], [ 16, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.i ], [ 12, %_ZNK3gmx7CpuInfo7featureENS0_7FeatureE.exit.thread.i ], [ 16, %bb.d ], [ 16, %bb.e ]
  %i.t = zext i1 %2 to i32
  %spec.select.i = shl nuw nsw i32 %.0.i, %i.t
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit
  %.0 = phi i32 [ %spec.select.i, %_ZL19nthreads_omp_fasterRKN3gmx7CpuInfoEb.exit ], [ 8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_Z34check_resource_division_efficiencyPK13gmx_hw_info_tbPKN3gmx7MpiCommERKNS2_8MDLoggerE(ptr nofree noundef readnone captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array", align 4       ; 5 uses
  %5 = alloca %"struct.std::array", align 4       ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %i.a = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0)
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ34check_resource_division_efficiencyPK13gmx_hw_info_tbPKN3gmx7MpiCommERKNS2_8MDLoggerEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 606) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 0)
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !290
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 %i.c, ptr %4, align 4, !tbaa !291
  %i.g = zext i1 %1 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !291
  %i.i = load ptr, ptr @TMPI_INT, align 8, !tbaa !293
  %i.j = load ptr, ptr %2, align 8, !tbaa !314
  %i.k = call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2, ptr noundef %i.i, i32 noundef 0, ptr noundef %i.j) ; 0 uses
  %i.l = load i32, ptr %5, align 4, !tbaa !291    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !291
  %i.o = icmp slt i32 %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre = load i32, ptr %i.d, align 8, !tbaa !290
  %i.p = icmp sgt i32 %.pre, 1
  %.not56 = and i1 %i.o, %i.p
  %i.q = add i32 %i.l, -9
  %or.cond3 = icmp ult i32 %i.q, -8
  %or.cond = select i1 %.not56, i1 %or.cond3, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.12, i32 noundef %i.l, i32 noundef 1, i32 noundef 8)
  %i.r = load ptr, ptr %3, align 8, !tbaa !131    ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !132
end_hunk_0
begin_hunk_1_@_Z25gmx_omp_nthreads_read_envRKN3gmx8MDLoggerEPi
declare void @_Z25gmx_omp_nthreads_read_envRKN3gmx8MDLoggerEPi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z39checkAndUpdateRequestedNumOpenmpThreadsP12gmx_hw_opt_tRK13gmx_hw_info_tRKN3gmx7MpiCommEPK14gmx_multisim_ti10PmeRunModeRK10gmx_mtop_tRK10t_inputrec(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !127
  %.off = add i32 %i.b, -7
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !264
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA80_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(80) @.str.4, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 883, ptr noundef nonnull @.str.22) #19
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 8, !tbaa !264
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ39checkAndUpdateRequestedNumOpenmpThreadsP12gmx_hw_opt_tRK13gmx_hw_info_tRKN3gmx7MpiCommEPK14gmx_multisim_ti10PmeRunModeRK10gmx_mtop_tRK10t_inputrecENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 892) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = load i32, ptr %0, align 8, !tbaa !188    ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !264  ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  %or.cond = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.j, label %._crit_edge68

bb.j:                                             ; preds = %bb.i
  %i.o = udiv i32 %i.j, %i.h                      ; 2 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !264
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.i, %bb.j
  %i.p = phi i32 [ %i.m, %bb.i ], [ %i.o, %bb.j ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = icmp slt i32 %i.p, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !270
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.k, label %_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE.exit.thread

bb.k:                                             ; preds = %._crit_edge68
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !271  ; 8 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !271 ; 4 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %.not42.i = icmp eq ptr %i.x, %i.aa
  br i1 %.not42.i, label %_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE.exit.thread, label %.lr.ph47.i

._crit_edge48.i:                                  ; preds = %._crit_edge.i
  %i.ac = icmp ne i64 %.131.lcssa.i, %.133.lcssa.i
  %i.ad = icmp ult i64 %.131.lcssa.i, 2
  %i.ae = or i1 %i.ac, %i.ad
  br i1 %i.ae, label %_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE.exit.thread, label %_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE.exit

.lr.ph47.i:                                       ; preds = %bb.k, %._crit_edge.i
  %.045.i = phi i64 [ %.131.lcssa.i, %._crit_edge.i ], [ 999999999, %bb.k ] ; 4 uses
  %.03244.i = phi i64 [ %.133.lcssa.i, %._crit_edge.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.022.043.i = phi ptr [ %i.ce, %._crit_edge.i ], [ %i.x, %bb.k ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.043.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !273 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.022.043.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !273 ; 3 uses
  %.not3637.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not3637.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph47.i
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = add i64 %i.aj, -32
  %i.am = sub i64 %i.al, %i.ak                    ; 3 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.am, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i64 %i.am, 512
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ao, 15                       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 16, i64 %i.ap      ; 2 uses
  %n.vec = sub nsw i64 %i.ao, %i.ar               ; 3 uses
  %i.as = shl i64 %n.vec, 5
  %i.at = getelementptr i8, ptr %i.ag, i64 %i.as  ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.045.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert83 = insertelement <4 x i64> poison, i64 %.03244.i, i64 0
  %broadcast.splat84 = shufflevector <4 x i64> %broadcast.splatinsert83, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi85 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi86 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi87 = phi <4 x i64> [ %broadcast.splat, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi88 = phi <4 x i64> [ %broadcast.splat84, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi89 = phi <4 x i64> [ %broadcast.splat84, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi90 = phi <4 x i64> [ %broadcast.splat84, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi91 = phi <4 x i64> [ %broadcast.splat84, %vector.ph ], [ %i.br, %vector.body ]
  %pointer.phi = phi ptr [ %i.ag, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 8 uses
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  %wide.gep92 = getelementptr i8, <4 x ptr> %vector.gep, i64 136
  %wide.gep93 = getelementptr i8, <4 x ptr> %vector.gep, i64 264
  %wide.gep94 = getelementptr i8, <4 x ptr> %vector.gep, i64 392
  %wide.gep95 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 16
  %wide.gep96 = getelementptr i8, <4 x ptr> %vector.gep, i64 144
  %wide.gep97 = getelementptr i8, <4 x ptr> %vector.gep, i64 272
  %wide.gep98 = getelementptr i8, <4 x ptr> %vector.gep, i64 400
  %wide.masked.gather = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep95, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather99 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep96, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather100 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep97, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather101 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep98, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather102 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %wide.masked.gather103 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep92, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %wide.masked.gather104 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep93, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %wide.masked.gather105 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep94, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %i.au = ptrtoint <4 x ptr> %wide.masked.gather to <4 x i64>
  %i.av = ptrtoint <4 x ptr> %wide.masked.gather99 to <4 x i64>
  %i.aw = ptrtoint <4 x ptr> %wide.masked.gather100 to <4 x i64>
  %i.ax = ptrtoint <4 x ptr> %wide.masked.gather101 to <4 x i64>
  %i.ay = ptrtoint <4 x ptr> %wide.masked.gather102 to <4 x i64>
  %i.az = ptrtoint <4 x ptr> %wide.masked.gather103 to <4 x i64>
  %i.ba = ptrtoint <4 x ptr> %wide.masked.gather104 to <4 x i64>
  %i.bb = ptrtoint <4 x ptr> %wide.masked.gather105 to <4 x i64>
  %i.bc = sub <4 x i64> %i.au, %i.ay
  %i.bd = sub <4 x i64> %i.av, %i.az
  %i.be = sub <4 x i64> %i.aw, %i.ba
  %i.bf = sub <4 x i64> %i.ax, %i.bb
  %i.bg = ashr exact <4 x i64> %i.bc, splat (i64 3) ; 2 uses
  %i.bh = ashr exact <4 x i64> %i.bd, splat (i64 3) ; 2 uses
  %i.bi = ashr exact <4 x i64> %i.be, splat (i64 3) ; 2 uses
  %i.bj = ashr exact <4 x i64> %i.bf, splat (i64 3) ; 2 uses
  %i.bk = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bg, <4 x i64> %vec.phi) ; 2 uses
  %i.bl = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bh, <4 x i64> %vec.phi85) ; 2 uses
  %i.bm = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bi, <4 x i64> %vec.phi86) ; 2 uses
  %i.bn = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bj, <4 x i64> %vec.phi87) ; 2 uses
  %i.bo = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi88, <4 x i64> %i.bg) ; 2 uses
  %i.bp = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi89, <4 x i64> %i.bh) ; 2 uses
  %i.bq = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi90, <4 x i64> %i.bi) ; 2 uses
  %i.br = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi91, <4 x i64> %i.bj) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !316

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax108 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %i.bo, <4 x i64> %i.bp)
  %rdx.minmax109 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax108, <4 x i64> %i.bq)
  %rdx.minmax110 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax109, <4 x i64> %i.br)
  %i.bt = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %rdx.minmax110) ; 2 uses
  %rdx.minmax = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bk, <4 x i64> %i.bl)
  %rdx.minmax106 = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %rdx.minmax, <4 x i64> %i.bm)
  %rdx.minmax107 = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %rdx.minmax106, <4 x i64> %i.bn)
  %i.bu = tail call i64 @llvm.vector.reduce.umin.v4i64(<4 x i64> %rdx.minmax107) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ar, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bu, %vec.epilog.iter.check ], [ %.045.i, %vector.main.loop.iter.check ]
  %bc.merge.rdx111 = phi i64 [ %i.bt, %vec.epilog.iter.check ], [ %.03244.i, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.at, %vec.epilog.iter.check ], [ %i.ag, %vector.main.loop.iter.check ]
  %broadcast.splatinsert117 = insertelement <4 x i64> poison, i64 %bc.merge.rdx111, i64 0
  %broadcast.splat118 = shufflevector <4 x i64> %broadcast.splatinsert117, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <4 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat115 = shufflevector <4 x i64> %broadcast.splatinsert114, <4 x i64> poison, <4 x i32> zeroinitializer
  %9 = and i64 %i.ao, 3                           ; 2 uses
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, i64 4, i64 %9
  %n.vec112 = sub nsw i64 %i.ao, %11              ; 2 uses
  %12 = shl i64 %n.vec112, 5
  %13 = getelementptr i8, ptr %i.ag, i64 %12
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ]
  %vec.phi118 = phi <4 x i64> [ %broadcast.splat115, %vec.epilog.ph ], [ %i.bz, %vec.epilog.vector.body ]
  %vec.phi119 = phi <4 x i64> [ %broadcast.splat118, %vec.epilog.ph ], [ %i.ca, %vec.epilog.vector.body ]
  %pointer.phi120 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind127, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep121 = getelementptr i8, ptr %pointer.phi120, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 2 uses
  %wide.gep122 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep121, i64 8
  %wide.gep123 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep121, i64 16
  %wide.masked.gather124 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep123, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !276
  %wide.masked.gather125 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep122, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !277
  %i.bv = ptrtoint <4 x ptr> %wide.masked.gather124 to <4 x i64>
  %i.bw = ptrtoint <4 x ptr> %wide.masked.gather125 to <4 x i64>
  %i.bx = sub <4 x i64> %i.bv, %i.bw
  %i.by = ashr exact <4 x i64> %i.bx, splat (i64 3) ; 2 uses
  %i.bz = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.by, <4 x i64> %vec.phi118) ; 2 uses
  %i.ca = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi119, <4 x i64> %i.by) ; 2 uses
  %index.next126 = add nuw i64 %index117, 4       ; 2 uses
  %ptr.ind127 = getelementptr i8, ptr %pointer.phi120, i64 128
  %i.cb = icmp eq i64 %index.next126, %n.vec112
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !317

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cc = tail call i64 @llvm.vector.reduce.umin.v4i64(<4 x i64> %i.bz)
  %i.cd = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %i.ca)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.13140.i.ph = phi i64 [ %.045.i, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ]
  %.13339.i.ph = phi i64 [ %.03244.i, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  %.sroa.018.038.i.ph = phi ptr [ %i.ag, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph47.i
  %.133.lcssa.i = phi i64 [ %.03244.i, %.lr.ph47.i ], [ %.sroa.speculated.i, %.lr.ph.i ] ; 2 uses
  %.131.lcssa.i = phi i64 [ %.045.i, %.lr.ph47.i ], [ %.sroa.speculated15.i, %.lr.ph.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.022.043.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, %i.aa
  br i1 %.not.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.13140.i = phi i64 [ %.sroa.speculated15.i, %.lr.ph.i ], [ %.13140.i.ph, %.lr.ph.i.preheader ]
  %.13339.i = phi i64 [ %.sroa.speculated.i, %.lr.ph.i ], [ %.13339.i.ph, %.lr.ph.i.preheader ]
  %.sroa.018.038.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %.sroa.018.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.018.038.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.018.038.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !276
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !277
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3                 ; 2 uses
  %.sroa.speculated15.i = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %.13140.i) ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.13339.i, i64 %i.cm) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.018.038.i, i64 32 ; 2 uses
  %.not36.i = icmp eq ptr %i.cn, %i.ai
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !318

_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE.exit: ; preds = %._crit_edge48.i
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !290
  %i.cq = icmp eq i32 %i.cp, 1
  %i.cr = icmp eq i32 %5, 2
  %i.cs = and i1 %i.cr, %i.cq
  %or.cond3 = and i1 %i.r, %i.cs
  br i1 %or.cond3, label %bb.l, label %_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE.exit.thread

bb.l:                                             ; preds = %_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE.exit
  %.not63 = icmp eq ptr %3, null
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %3, align 8, !tbaa !323
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cu = phi i32 [ %i.ct, %bb.m ], [ 1, %bb.l ]
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !263
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !343
  %i.cz = sdiv i32 %i.cy, %i.cu                   ; 2 uses
  %i.da = mul i32 %i.cz, 1000
  %i.db = mul i32 %i.da, %i.cz
  %i.dc = icmp slt i32 %i.cw, %i.db
  br i1 %i.dc, label %iter.check171, label %_ZL22gmxSmtIsUsedOnAllCoresRKN3gmx16HardwareTopologyE.exit.thread

iter.check171:                                    ; preds = %bb.n
  %i.dd = add i64 %i.ab, -32
  %i.de = sub i64 %i.dd, %i.y                     ; 3 uses
  %i.df = lshr i64 %i.de, 5
  %i.dg = add nuw nsw i64 %i.df, 1                ; 4 uses
  %min.iters.check131 = icmp ult i64 %i.de, 128
  br i1 %min.iters.check131, label %.lr.ph.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %iter.check171
  %min.iters.check133 = icmp ult i64 %i.de, 512
  br i1 %min.iters.check133, label %vec.epilog.ph175, label %vector.ph134

vector.ph134:                                     ; preds = %vector.main.loop.iter.check132
  %i.dh = and i64 %i.dg, 15                       ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.di, i64 16, i64 %i.dh      ; 2 uses
  %n.vec135 = sub nsw i64 %i.dg, %i.dj            ; 3 uses
  %i.dk = shl i64 %n.vec135, 5
  %i.dl = getelementptr i8, ptr %i.x, i64 %i.dk   ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.ph134, %vector.body136
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next163, %vector.body136 ]
  %vec.phi138 = phi <4 x i32> [ zeroinitializer, %vector.ph134 ], [ %i.eg, %vector.body136 ]
  %vec.phi139 = phi <4 x i32> [ zeroinitializer, %vector.ph134 ], [ %i.eh, %vector.body136 ]
  %vec.phi140 = phi <4 x i32> [ zeroinitializer, %vector.ph134 ], [ %i.ei, %vector.body136 ]
  %vec.phi141 = phi <4 x i32> [ zeroinitializer, %vector.ph134 ], [ %i.ej, %vector.body136 ]
  %pointer.phi142 = phi ptr [ %i.x, %vector.ph134 ], [ %ptr.ind164, %vector.body136 ] ; 2 uses
  %vector.gep143 = getelementptr i8, ptr %pointer.phi142, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 8 uses
  %wide.gep147 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep143, i64 8
  %wide.gep148 = getelementptr i8, <4 x ptr> %vector.gep143, i64 136
  %wide.gep149 = getelementptr i8, <4 x ptr> %vector.gep143, i64 264
  %wide.gep150 = getelementptr i8, <4 x ptr> %vector.gep143, i64 392
  %wide.gep151 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep143, i64 16
  %wide.gep152 = getelementptr i8, <4 x ptr> %vector.gep143, i64 144
  %wide.gep153 = getelementptr i8, <4 x ptr> %vector.gep143, i64 272
  %wide.gep154 = getelementptr i8, <4 x ptr> %vector.gep143, i64 400
  %wide.masked.gather155 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep151, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !345
  %wide.masked.gather156 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep152, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !345
  %wide.masked.gather157 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep153, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !345
  %wide.masked.gather158 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep154, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !345
  %wide.masked.gather159 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep147, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !346
  %wide.masked.gather160 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep148, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !346
  %wide.masked.gather161 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep149, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !346
  %wide.masked.gather162 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep150, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !346
  %i.dm = ptrtoint <4 x ptr> %wide.masked.gather155 to <4 x i64>
  %i.dn = ptrtoint <4 x ptr> %wide.masked.gather156 to <4 x i64>
  %i.do = ptrtoint <4 x ptr> %wide.masked.gather157 to <4 x i64>
  %i.dp = ptrtoint <4 x ptr> %wide.masked.gather158 to <4 x i64>
  %i.dq = ptrtoint <4 x ptr> %wide.masked.gather159 to <4 x i64>
  %i.dr = ptrtoint <4 x ptr> %wide.masked.gather160 to <4 x i64>
  %i.ds = ptrtoint <4 x ptr> %wide.masked.gather161 to <4 x i64>
  %i.dt = ptrtoint <4 x ptr> %wide.masked.gather162 to <4 x i64>
  %i.du = sub <4 x i64> %i.dm, %i.dq
  %i.dv = sub <4 x i64> %i.dn, %i.dr
  %i.dw = sub <4 x i64> %i.do, %i.ds
  %i.dx = sub <4 x i64> %i.dp, %i.dt
  %i.dy = lshr exact <4 x i64> %i.du, splat (i64 5)
  %i.dz = lshr exact <4 x i64> %i.dv, splat (i64 5)
  %i.ea = lshr exact <4 x i64> %i.dw, splat (i64 5)
  %i.eb = lshr exact <4 x i64> %i.dx, splat (i64 5)
  %i.ec = trunc <4 x i64> %i.dy to <4 x i32>
  %i.ed = trunc <4 x i64> %i.dz to <4 x i32>
  %i.ee = trunc <4 x i64> %i.ea to <4 x i32>
  %i.ef = trunc <4 x i64> %i.eb to <4 x i32>
  %i.eg = add <4 x i32> %vec.phi138, %i.ec        ; 2 uses
  %i.eh = add <4 x i32> %vec.phi139, %i.ed        ; 2 uses
  %i.ei = add <4 x i32> %vec.phi140, %i.ee        ; 2 uses
  %i.ej = add <4 x i32> %vec.phi141, %i.ef        ; 2 uses
  %index.next163 = add nuw i64 %index137, 16      ; 2 uses
  %ptr.ind164 = getelementptr i8, ptr %pointer.phi142, i64 512
  %i.ek = icmp eq i64 %index.next163, %n.vec135
  br i1 %i.ek, label %vec.epilog.iter.check173, label %vector.body136, !llvm.loop !319

vec.epilog.iter.check173:                         ; preds = %vector.body136
  %bin.rdx = add <4 x i32> %i.eh, %i.eg
  %bin.rdx166 = add <4 x i32> %i.ei, %bin.rdx
  %bin.rdx167 = add <4 x i32> %i.ej, %bin.rdx166
  %i.el = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx167) ; 2 uses
  %min.epilog.iters.check174 = icmp samesign ult i64 %i.dj, 5
  br i1 %min.epilog.iters.check174, label %.lr.ph.preheader, label %vec.epilog.ph175, !prof !280

vec.epilog.ph175:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check173
  %vec.epilog.resume.val168 = phi i64 [ %n.vec135, %vec.epilog.iter.check173 ], [ 0, %vector.main.loop.iter.check132 ]
  %bc.merge.rdx169 = phi i32 [ %i.el, %vec.epilog.iter.check173 ], [ 0, %vector.main.loop.iter.check132 ]
  %bc.resume.val170 = phi ptr [ %i.dl, %vec.epilog.iter.check173 ], [ %i.x, %vector.main.loop.iter.check132 ]
  %i.em = and i64 %i.dg, 3                        ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = select i1 %i.en, i64 4, i64 %i.em
  %n.vec176 = sub nsw i64 %i.dg, %i.eo            ; 2 uses
  %i.ep = shl i64 %n.vec176, 5
  %i.eq = getelementptr i8, ptr %i.x, i64 %i.ep
  %i.er = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx169, i64 0
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph175
  %index178 = phi i64 [ %vec.epilog.resume.val168, %vec.epilog.ph175 ], [ %index.next186, %vec.epilog.vector.body177 ]
  %vec.phi179 = phi <4 x i32> [ %i.er, %vec.epilog.ph175 ], [ %i.ex, %vec.epilog.vector.body177 ]
  %pointer.phi180 = phi ptr [ %bc.resume.val170, %vec.epilog.ph175 ], [ %ptr.ind187, %vec.epilog.vector.body177 ] ; 2 uses
  %vector.gep181 = getelementptr i8, ptr %pointer.phi180, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 2 uses
  %wide.gep182 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep181, i64 8
  %wide.gep183 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep181, i64 16
  %wide.masked.gather184 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep183, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !345
  %wide.masked.gather185 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep182, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !346
  %i.es = ptrtoint <4 x ptr> %wide.masked.gather184 to <4 x i64>
  %i.et = ptrtoint <4 x ptr> %wide.masked.gather185 to <4 x i64>
  %i.eu = sub <4 x i64> %i.es, %i.et
  %i.ev = lshr exact <4 x i64> %i.eu, splat (i64 5)
  %i.ew = trunc <4 x i64> %i.ev to <4 x i32>
  %i.ex = add <4 x i32> %vec.phi179, %i.ew        ; 2 uses
  %index.next186 = add nuw i64 %index178, 4       ; 2 uses
  %ptr.ind187 = getelementptr i8, ptr %pointer.phi180, i64 128
  %i.ey = icmp eq i64 %index.next186, %n.vec176
  br i1 %i.ey, label %vec.epilog.middle.block188, label %vec.epilog.vector.body177, !llvm.loop !320

vec.epilog.middle.block188:                       ; preds = %vec.epilog.vector.body177
  %i.ez = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ex)
  br label %.lr.ph.preheader
end_hunk_1
