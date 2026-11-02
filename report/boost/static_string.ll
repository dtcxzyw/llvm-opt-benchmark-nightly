Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5370
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5380
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z:bb.a
  %i.k = load i8, ptr %i.b, align 16, !tbaa !24
  store i8 %i.k, ptr %i.j, align 1, !tbaa !24
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 16 %i.b, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  store i64 %i.l, ptr %i.f, align 8, !tbaa !89
  %i.m = load ptr, ptr %0, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(17) ptr @_ZN5boost14static_strings19basic_static_stringILm15EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(17) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not15 = icmp eq ptr %1, %2
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.b, ptr %i.a, align 1, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.c, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.1

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %.lr.ph.10, %.lr.ph.11, %.lr.ph.12, %.lr.ph.13, %.lr.ph.14, %bb.a
  %.010.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.d, %.lr.ph.preheader ], [ %i.n, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.t, %.lr.ph.3 ], [ %i.w, %.lr.ph.4 ], [ %i.z, %.lr.ph.5 ], [ %i.ac, %.lr.ph.6 ], [ %i.af, %.lr.ph.7 ], [ %i.ai, %.lr.ph.8 ], [ %i.al, %.lr.ph.9 ], [ %i.ao, %.lr.ph.10 ], [ %i.ar, %.lr.ph.11 ], [ %i.au, %.lr.ph.12 ], [ %i.ax, %.lr.ph.13 ], [ %i.ba, %.lr.ph.14 ]
  %i.e = ptrtoint ptr %.010.lcssa to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i8
  store i8 %i.h, ptr %0, align 1, !tbaa !115
  %i.i = and i64 %i.g, 255
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !24
  ret ptr %0

bb.b:                                             ; preds = %.lr.ph.14
  store i8 15, ptr %0, align 1, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.k, align 1, !tbaa !24
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.2) #31
  unreachable

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.l = load i8, ptr %i.c, align 1, !tbaa !24
  store i8 %i.l, ptr %i.d, align 1, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %.not.1 = icmp eq ptr %i.m, %2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.o = load i8, ptr %i.m, align 1, !tbaa !24
  store i8 %i.o, ptr %i.n, align 1, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not.2 = icmp eq ptr %i.p, %2
  br i1 %.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.r = load i8, ptr %i.p, align 1, !tbaa !24
  store i8 %i.r, ptr %i.q, align 1, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %.not.3 = icmp eq ptr %i.s, %2
  br i1 %.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.u = load i8, ptr %i.s, align 1, !tbaa !24
  store i8 %i.u, ptr %i.t, align 1, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %.not.4 = icmp eq ptr %i.v, %2
  br i1 %.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.x = load i8, ptr %i.v, align 1, !tbaa !24
  store i8 %i.x, ptr %i.w, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %.not.5 = icmp eq ptr %i.y, %2
  br i1 %.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !24
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.6 = icmp eq ptr %i.ab, %2
  br i1 %.not.6, label %._crit_edge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !24
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %.not.7 = icmp eq ptr %i.ae, %2
  br i1 %.not.7, label %._crit_edge, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %.lr.ph.7
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !24
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %.not.8 = icmp eq ptr %i.ah, %2
  br i1 %.not.8, label %._crit_edge, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %.lr.ph.8
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !24
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %.not.9 = icmp eq ptr %i.ak, %2
  br i1 %.not.9, label %._crit_edge, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %.lr.ph.9
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !24
  store i8 %i.am, ptr %i.al, align 1, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not.10 = icmp eq ptr %i.an, %2
  br i1 %.not.10, label %._crit_edge, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %.lr.ph.10
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !24
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %.not.11 = icmp eq ptr %i.aq, %2
  br i1 %.not.11, label %._crit_edge, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %.lr.ph.11
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !24
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %.not.12 = icmp eq ptr %i.at, %2
  br i1 %.not.12, label %._crit_edge, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %.lr.ph.12
  %i.av = load i8, ptr %i.at, align 1, !tbaa !24
  store i8 %i.av, ptr %i.au, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %.not.13 = icmp eq ptr %i.aw, %2
  br i1 %.not.13, label %._crit_edge, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %.lr.ph.13
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !24
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.14 = icmp eq ptr %i.az, %2
  br i1 %.not.14, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !82      ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 9 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 20 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.k = sub i64 %i.e, %i.j                       ; 4 uses
  %i.l = icmp ugt i64 %i.i, 20
  br i1 %i.l, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub i64 %i.b, %i.k                       ; 4 uses
  %.sroa.speculated83 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.f)
  %i.n = sub i64 %i.b, %.sroa.speculated83
  %i.o = sub nuw nsw i64 20, %i.i
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.q = icmp uge ptr %3, %i.c
  %i.r = icmp ult ptr %3, %i.p
  %i.s = and i1 %i.q, %i.r                        ; 2 uses
  %i.t = icmp eq ptr %3, %1
  %i.u = icmp eq i64 %i.f, %i.i
  %i.v = and i1 %i.t, %i.u
  %or.cond107 = and i1 %i.v, %i.s
  br i1 %or.cond107, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not70 = icmp ugt ptr %4, %1
  %or.cond74 = and i1 %.not70, %i.s
  br i1 %or.cond74, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.c, i64 %i.k     ; 7 uses
  %i.x = sub i64 %i.m, %i.f
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.f
  %i.ab = getelementptr i8, ptr %i.w, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.aa, i64 %i.y, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit

_ZNSt11char_traitsIcE4moveEPcPKcm.exit:           ; preds = %bb.e, %bb.f
  %.not7.i = icmp eq ptr %3, %4
  br i1 %.not7.i, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %min.iters.check = icmp ult i64 %i.i, 4
  %i.ac = sub i64 %i.h, %i.e
  %diff.check = icmp ugt i64 %i.ac, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check118 = icmp ult i64 %i.i, 16
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vec.epilog.ph.a

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check
  %5 = and i64 %i.i, 12
  %n.vec120.a = and i64 %i.i, 16                  ; 4 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %n.vec120.a
  %i.ae = getelementptr i8, ptr %3, i64 %n.vec120.a
  %wide.load = load <16 x i8>, ptr %3, align 1, !tbaa !24
  store <16 x i8> %wide.load, ptr %i.w, align 1, !tbaa !24
  %i.af = icmp eq i64 %i.i, %n.vec120.a
  br i1 %i.af, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vec.epilog.ph.a
  %min.epilog.iters.check = icmp eq i64 %5, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !916

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec120.a, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %i.i, 28                    ; 4 uses
  %6 = getelementptr i8, ptr %i.w, i64 %n.vec120
  %7 = getelementptr i8, ptr %3, i64 %n.vec120
  br label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.vector.body.1, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body.1 ] ; 3 uses
  %next.gep122.1 = getelementptr i8, ptr %i.w, i64 %index121
  %next.gep123.1 = getelementptr i8, ptr %3, i64 %index121
  %wide.load124 = load <4 x i8>, ptr %next.gep123.1, align 1, !tbaa !24
  store <4 x i8> %wide.load124, ptr %next.gep122.1, align 1, !tbaa !24
  %index.next125 = add nuw i64 %index121, 4       ; 2 uses
  %8 = icmp eq i64 %index.next125, %n.vec120
  br i1 %8, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1, !llvm.loop !913

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.1
  %cmp.n126 = icmp eq i64 %i.i, %n.vec120
  br i1 %cmp.n126, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %6, %vec.epilog.middle.block ] ; 2 uses
  %.068.i.ph = phi ptr [ %3, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %7, %vec.epilog.middle.block ] ; 3 uses
  %.068.i.ph128 = ptrtoaddr ptr %.068.i.ph to i64 ; 2 uses
  %i.ag = sub i64 %i.g, %.068.i.ph128
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.aj, %.lr.ph.i.prol ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.068.i.prol = phi ptr [ %i.ai, %.lr.ph.i.prol ], [ %.068.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ah = load i8, ptr %.068.i.prol, align 1, !tbaa !24
  store i8 %i.ah, ptr %.09.i.prol, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !914

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %.09.i.ph, %.lr.ph.i.preheader ], [ %i.aj, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %.068.i.ph, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %i.ak = sub i64 %.068.i.ph128, %i.g
  %i.al = icmp ugt i64 %i.ak, -8
  br i1 %i.al, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.068.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.am = load i8, ptr %.068.i, align 1, !tbaa !24
  store i8 %i.am, ptr %.09.i, align 1, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %.068.i, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i, i64 1
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !24
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %.068.i, i64 2
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !24
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.av = load i8, ptr %i.at, align 1, !tbaa !24
  store i8 %i.av, ptr %i.au, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !24
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !24
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !24
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !24
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i.7 = icmp eq ptr %i.bi, %4
  br i1 %.not.i.7, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i, !llvm.loop !915

bb.g:                                             ; preds = %bb.d
  %i.bk = sub i64 %i.h, %i.j                      ; 5 uses
  %.not71 = icmp ult i64 %i.i, %i.f
  br i1 %.not71, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sub i64 %i.d, %i.j                      ; 2 uses
  %.not72 = icmp ugt i64 %i.bk, %i.bl
  %i.bm = sub i64 %i.bl, %i.bk
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.bm)
  %i.bn = select i1 %.not72, i64 0, i64 %.sroa.speculated ; 6 uses
  %i.bo = getelementptr i8, ptr %i.c, i64 %i.k    ; 4 uses
  %i.bp = sub i64 %i.m, %i.f
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr i8, ptr %i.bo, i64 %i.f
  %i.bt = getelementptr i8, ptr %i.bo, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bs, i64 %i.bq, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76:         ; preds = %bb.h, %bb.i
  %i.bu = icmp eq i64 %i.bn, 0
  br i1 %i.bu, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77, label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.bv, i64 %i.bn, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77:         ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76, %bb.j
  %i.bw = icmp eq i64 %i.i, %i.bn
  br i1 %i.bw, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77
  %i.bx = sub nsw i64 %i.i, %i.bn
  %i.by = sub i64 %i.bk, %i.f
  %i.bz = getelementptr i8, ptr %i.c, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bn
  %i.cc = getelementptr i8, ptr %i.bo, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.cb, i64 %i.bx, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit

bb.l:                                             ; preds = %bb.g
  %i.cd = getelementptr i8, ptr %i.c, i64 %i.k    ; 3 uses
  %i.ce = icmp eq ptr %4, %3
  br i1 %i.ce, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr nonnull align 1 %i.cf, i64 %i.i, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79

_ZNSt11char_traitsIcE4moveEPcPKcm.exit79:         ; preds = %bb.l, %bb.m
  %i.cg = sub i64 %i.m, %i.f
  %i.ch = add i64 %i.cg, 1                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79
  %i.cj = getelementptr i8, ptr %i.cd, i64 %i.f
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cj, i64 %i.ch, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit

_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.ph.a, %vec.epilog.middle.block, %bb.n, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79, %bb.k, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %i.cl = sub i64 %i.i, %i.f
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = add i8 %i.a, %i.cm
  store i8 %i.cn, ptr %0, align 1, !tbaa !82
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(32) ptr @_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not15 = icmp eq ptr %1, %2
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.b, ptr %i.a, align 1, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.c, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.1

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %.lr.ph.10, %.lr.ph.11, %.lr.ph.12, %.lr.ph.13, %.lr.ph.14, %.lr.ph.15, %.lr.ph.16, %.lr.ph.17, %.lr.ph.18, %.lr.ph.19, %.lr.ph.20, %.lr.ph.21, %.lr.ph.22, %.lr.ph.23, %.lr.ph.24, %.lr.ph.25, %.lr.ph.26, %.lr.ph.27, %.lr.ph.28, %.lr.ph.29, %bb.a
  %.010.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.d, %.lr.ph.preheader ], [ %i.n, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.t, %.lr.ph.3 ], [ %i.w, %.lr.ph.4 ], [ %i.z, %.lr.ph.5 ], [ %i.ac, %.lr.ph.6 ], [ %i.af, %.lr.ph.7 ], [ %i.ai, %.lr.ph.8 ], [ %i.al, %.lr.ph.9 ], [ %i.ao, %.lr.ph.10 ], [ %i.ar, %.lr.ph.11 ], [ %i.au, %.lr.ph.12 ], [ %i.ax, %.lr.ph.13 ], [ %i.ba, %.lr.ph.14 ], [ %i.bd, %.lr.ph.15 ], [ %i.bg, %.lr.ph.16 ], [ %i.bj, %.lr.ph.17 ], [ %i.bm, %.lr.ph.18 ], [ %i.bp, %.lr.ph.19 ], [ %i.bs, %.lr.ph.20 ], [ %i.bv, %.lr.ph.21 ], [ %i.by, %.lr.ph.22 ], [ %i.cb, %.lr.ph.23 ], [ %i.ce, %.lr.ph.24 ], [ %i.ch, %.lr.ph.25 ], [ %i.ck, %.lr.ph.26 ], [ %i.cn, %.lr.ph.27 ], [ %i.cq, %.lr.ph.28 ], [ %i.ct, %.lr.ph.29 ]
  %i.e = ptrtoint ptr %.010.lcssa to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i8
  store i8 %i.h, ptr %0, align 1, !tbaa !122
  %i.i = and i64 %i.g, 255
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !24
  ret ptr %0

bb.b:                                             ; preds = %.lr.ph.29
  store i8 30, ptr %0, align 1, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.k, align 1, !tbaa !24
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.2) #31
  unreachable

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.l = load i8, ptr %i.c, align 1, !tbaa !24
  store i8 %i.l, ptr %i.d, align 1, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %.not.1 = icmp eq ptr %i.m, %2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.o = load i8, ptr %i.m, align 1, !tbaa !24
  store i8 %i.o, ptr %i.n, align 1, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not.2 = icmp eq ptr %i.p, %2
  br i1 %.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.r = load i8, ptr %i.p, align 1, !tbaa !24
  store i8 %i.r, ptr %i.q, align 1, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %.not.3 = icmp eq ptr %i.s, %2
  br i1 %.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.u = load i8, ptr %i.s, align 1, !tbaa !24
  store i8 %i.u, ptr %i.t, align 1, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %.not.4 = icmp eq ptr %i.v, %2
  br i1 %.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.x = load i8, ptr %i.v, align 1, !tbaa !24
  store i8 %i.x, ptr %i.w, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %.not.5 = icmp eq ptr %i.y, %2
  br i1 %.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !24
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.6 = icmp eq ptr %i.ab, %2
  br i1 %.not.6, label %._crit_edge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !24
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %.not.7 = icmp eq ptr %i.ae, %2
  br i1 %.not.7, label %._crit_edge, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %.lr.ph.7
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !24
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %.not.8 = icmp eq ptr %i.ah, %2
  br i1 %.not.8, label %._crit_edge, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %.lr.ph.8
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !24
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %.not.9 = icmp eq ptr %i.ak, %2
  br i1 %.not.9, label %._crit_edge, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %.lr.ph.9
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !24
  store i8 %i.am, ptr %i.al, align 1, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not.10 = icmp eq ptr %i.an, %2
  br i1 %.not.10, label %._crit_edge, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %.lr.ph.10
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !24
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %.not.11 = icmp eq ptr %i.aq, %2
  br i1 %.not.11, label %._crit_edge, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %.lr.ph.11
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !24
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %.not.12 = icmp eq ptr %i.at, %2
  br i1 %.not.12, label %._crit_edge, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %.lr.ph.12
  %i.av = load i8, ptr %i.at, align 1, !tbaa !24
  store i8 %i.av, ptr %i.au, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %.not.13 = icmp eq ptr %i.aw, %2
  br i1 %.not.13, label %._crit_edge, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %.lr.ph.13
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !24
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.14 = icmp eq ptr %i.az, %2
  br i1 %.not.14, label %._crit_edge, label %.lr.ph.15

.lr.ph.15:                                        ; preds = %.lr.ph.14
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !24
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %.not.15 = icmp eq ptr %i.bc, %2
  br i1 %.not.15, label %._crit_edge, label %.lr.ph.16

.lr.ph.16:                                        ; preds = %.lr.ph.15
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !24
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %.not.16 = icmp eq ptr %i.bf, %2
  br i1 %.not.16, label %._crit_edge, label %.lr.ph.17

.lr.ph.17:                                        ; preds = %.lr.ph.16
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !24
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %.not.17 = icmp eq ptr %i.bi, %2
  br i1 %.not.17, label %._crit_edge, label %.lr.ph.18

.lr.ph.18:                                        ; preds = %.lr.ph.17
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !24
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 19 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.not.18 = icmp eq ptr %i.bl, %2
  br i1 %.not.18, label %._crit_edge, label %.lr.ph.19

.lr.ph.19:                                        ; preds = %.lr.ph.18
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !24
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %.not.19 = icmp eq ptr %i.bo, %2
  br i1 %.not.19, label %._crit_edge, label %.lr.ph.20

.lr.ph.20:                                        ; preds = %.lr.ph.19
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !24
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %.not.20 = icmp eq ptr %i.br, %2
  br i1 %.not.20, label %._crit_edge, label %.lr.ph.21

.lr.ph.21:                                        ; preds = %.lr.ph.20
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !24
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 2 uses
  %.not.21 = icmp eq ptr %i.bu, %2
  br i1 %.not.21, label %._crit_edge, label %.lr.ph.22

.lr.ph.22:                                        ; preds = %.lr.ph.21
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !24
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 23 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.22 = icmp eq ptr %i.bx, %2
  br i1 %.not.22, label %._crit_edge, label %.lr.ph.23

.lr.ph.23:                                        ; preds = %.lr.ph.22
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !24
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %.not.23 = icmp eq ptr %i.ca, %2
  br i1 %.not.23, label %._crit_edge, label %.lr.ph.24

.lr.ph.24:                                        ; preds = %.lr.ph.23
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !24
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %.not.24 = icmp eq ptr %i.cd, %2
  br i1 %.not.24, label %._crit_edge, label %.lr.ph.25

.lr.ph.25:                                        ; preds = %.lr.ph.24
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !24
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %.not.25 = icmp eq ptr %i.cg, %2
  br i1 %.not.25, label %._crit_edge, label %.lr.ph.26

.lr.ph.26:                                        ; preds = %.lr.ph.25
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !24
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 27 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.not.26 = icmp eq ptr %i.cj, %2
  br i1 %.not.26, label %._crit_edge, label %.lr.ph.27

.lr.ph.27:                                        ; preds = %.lr.ph.26
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !24
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !24
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %.not.27 = icmp eq ptr %i.cm, %2
  br i1 %.not.27, label %._crit_edge, label %.lr.ph.28

.lr.ph.28:                                        ; preds = %.lr.ph.27
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !24
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 29 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %.not.28 = icmp eq ptr %i.cp, %2
  br i1 %.not.28, label %._crit_edge, label %.lr.ph.29

.lr.ph.29:                                        ; preds = %.lr.ph.28
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !24
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.not.29 = icmp eq ptr %i.cs, %2
  br i1 %.not.29, label %._crit_edge, label %bb.b
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.d                       ; 10 uses
  %i.h = sub nsw i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %iter.check219, label %bb.d

iter.check219:                                    ; preds = %bb.c
  %min.iters.check199 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check199, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %iter.check219
  %min.iters.check205 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check205, label %vec.epilog.ph223, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %i.j = and i64 %i.g, 24
  %n.vec207 = and i64 %i.g, -32                   ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec207
  %i.l = getelementptr i8, ptr %0, i64 %n.vec207
  br label %vector.body208

vector.body208:                                   ; preds = %vector.ph206, %vector.body208
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next216, %vector.body208 ] ; 3 uses
  %next.gep210 = getelementptr i8, ptr %1, i64 %index209 ; 3 uses
  %next.gep211 = getelementptr i8, ptr %0, i64 %index209 ; 3 uses
  %i.m = getelementptr i8, ptr %next.gep211, i64 16 ; 2 uses
  %wide.load212 = load <16 x i8>, ptr %next.gep211, align 1, !tbaa !24, !alias.scope !939, !noalias !940
  %wide.load213 = load <16 x i8>, ptr %i.m, align 1, !tbaa !24, !alias.scope !939, !noalias !940
  %i.n = getelementptr i8, ptr %next.gep210, i64 16 ; 2 uses
  %wide.load214 = load <16 x i8>, ptr %next.gep210, align 1, !tbaa !24, !alias.scope !940
  %wide.load215 = load <16 x i8>, ptr %i.n, align 1, !tbaa !24, !alias.scope !940
  store <16 x i8> %wide.load214, ptr %next.gep211, align 1, !tbaa !24, !alias.scope !939, !noalias !940
  store <16 x i8> %wide.load215, ptr %i.m, align 1, !tbaa !24, !alias.scope !939, !noalias !940
  store <16 x i8> %wide.load212, ptr %next.gep210, align 1, !tbaa !24, !alias.scope !940
  store <16 x i8> %wide.load213, ptr %i.n, align 1, !tbaa !24, !alias.scope !940
  %index.next216 = add nuw i64 %index209, 32      ; 2 uses
  %i.o = icmp eq i64 %index.next216, %n.vec207
  br i1 %i.o, label %middle.block217, label %vector.body208, !llvm.loop !920

middle.block217:                                  ; preds = %vector.body208
  %cmp.n218 = icmp eq i64 %i.g, %n.vec207
  br i1 %cmp.n218, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %vec.epilog.iter.check220

vec.epilog.iter.check220:                         ; preds = %middle.block217
  %min.epilog.iters.check222 = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check222, label %.lr.ph.i.preheader, label %vec.epilog.ph223, !prof !39

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check220
  %vec.epilog.resume.val224 = phi i64 [ %n.vec207, %vec.epilog.iter.check220 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec225 = and i64 %i.g, -8                    ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %n.vec225
  %i.q = getelementptr i8, ptr %0, i64 %n.vec225
  br label %vec.epilog.vector.body226

vec.epilog.vector.body226:                        ; preds = %vec.epilog.vector.body226, %vec.epilog.ph223
  %index227 = phi i64 [ %vec.epilog.resume.val224, %vec.epilog.ph223 ], [ %index.next232, %vec.epilog.vector.body226 ] ; 3 uses
  %next.gep228 = getelementptr i8, ptr %1, i64 %index227 ; 2 uses
  %next.gep229 = getelementptr i8, ptr %0, i64 %index227 ; 2 uses
  %wide.load230 = load <8 x i8>, ptr %next.gep229, align 1, !tbaa !24, !alias.scope !939, !noalias !940
  %wide.load231 = load <8 x i8>, ptr %next.gep228, align 1, !tbaa !24, !alias.scope !940
  store <8 x i8> %wide.load231, ptr %next.gep229, align 1, !tbaa !24, !alias.scope !939, !noalias !940
  store <8 x i8> %wide.load230, ptr %next.gep228, align 1, !tbaa !24, !alias.scope !940
  %index.next232 = add nuw i64 %index227, 8       ; 2 uses
  %i.r = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.r, label %vec.epilog.middle.block233, label %vec.epilog.vector.body226, !llvm.loop !921

vec.epilog.middle.block233:                       ; preds = %vec.epilog.vector.body226
  %cmp.n234 = icmp eq i64 %i.g, %n.vec225
  br i1 %cmp.n234, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check219, %vec.epilog.iter.check220, %vec.epilog.middle.block233
  %.010.i.ph = phi ptr [ %1, %iter.check219 ], [ %i.k, %vec.epilog.iter.check220 ], [ %i.p, %vec.epilog.middle.block233 ] ; 2 uses
  %.079.i.ph = phi ptr [ %0, %iter.check219 ], [ %i.l, %vec.epilog.iter.check220 ], [ %i.q, %vec.epilog.middle.block233 ] ; 3 uses
  %.079.i.ph246 = ptrtoaddr ptr %.079.i.ph to i64 ; 2 uses
  %i.s = sub i64 %i.f, %.079.i.ph246
  %xtraiter247 = and i64 %i.s, 3                  ; 2 uses
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.w, %.lr.ph.i.prol ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.079.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %.079.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter249 = phi i64 [ %prol.iter249.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.t = load i8, ptr %.079.i.prol, align 1, !tbaa !24
  %i.u = load i8, ptr %.010.i.prol, align 1, !tbaa !24
  store i8 %i.u, ptr %.079.i.prol, align 1, !tbaa !24
  store i8 %i.t, ptr %.010.i.prol, align 1, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1 ; 2 uses
  %prol.iter249.next = add i64 %prol.iter249, 1   ; 2 uses
  %prol.iter249.cmp.not = icmp eq i64 %prol.iter249.next, %xtraiter247
  br i1 %prol.iter249.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !922

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %i.x = sub i64 %.079.i.ph246, %i.f
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.079.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.z = load i8, ptr %.079.i, align 1, !tbaa !24
  %i.aa = load i8, ptr %.010.i, align 1, !tbaa !24
  store i8 %i.aa, ptr %.079.i, align 1, !tbaa !24
  store i8 %i.z, ptr %.010.i, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %.079.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !24
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !24
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %.079.i, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !24
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !24
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !24
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i, i64 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !24
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !24
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !24
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i.3 = icmp eq ptr %i.an, %1
  br i1 %.not.i.3, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.lr.ph.i, !llvm.loop !923

bb.d:                                             ; preds = %bb.c
  %i.ap = sub i64 %i.c, %i.f
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.ar = sub nsw i64 %.086, %.082                ; 16 uses
  %i.as = icmp slt i64 %.082, %i.ar
  br i1 %i.as, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %.082, 1
  br i1 %i.at, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, label %bb.g

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f
  %i.au = load i8, ptr %.058, align 1, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.aw = getelementptr inbounds i8, ptr %.058, i64 %.086
  %gepdiff = add nsw i64 %.086, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.058, ptr nonnull align 1 %i.av, i64 %gepdiff, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !24
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp sgt i64 %i.ar, 0
  br i1 %i.ay, label %iter.check, label %._crit_edge110

iter.check:                                       ; preds = %bb.g
  %i.az = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ba = getelementptr i8, ptr %.058, i64 %i.ar
  %i.bb = getelementptr i8, ptr %.058, i64 %.086
  %bound0 = icmp ult ptr %.058, %i.bb
  %bound1 = icmp ult ptr %i.az, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.ar, 32
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.ar, 28
  %n.vec = and i64 %i.ar, 9223372036854775776     ; 6 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 %n.vec
  %i.be = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %index ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.058, i64 %index ; 3 uses
  %i.bf = getelementptr i8, ptr %next.gep137, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep137, align 1, !tbaa !24, !alias.scope !941, !noalias !942
  %wide.load138 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !24, !alias.scope !941, !noalias !942
  %i.bg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24, !alias.scope !942
  %wide.load140 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !24, !alias.scope !942
  store <16 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !24, !alias.scope !941, !noalias !942
  store <16 x i8> %wide.load140, ptr %i.bf, align 1, !tbaa !24, !alias.scope !941, !noalias !942
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !24, !alias.scope !942
  store <16 x i8> %wide.load138, ptr %i.bg, align 1, !tbaa !24, !alias.scope !942
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !927

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !943

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec141 = and i64 %i.ar, 9223372036854775804  ; 5 uses
  %i.bi = getelementptr i8, ptr %i.az, i64 %n.vec141
  %i.bj = getelementptr i8, ptr %.058, i64 %n.vec141 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 3 uses
  %next.gep143 = getelementptr i8, ptr %i.az, i64 %index142 ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.058, i64 %index142 ; 2 uses
  %wide.load145 = load <4 x i8>, ptr %next.gep144, align 1, !tbaa !24, !alias.scope !941, !noalias !942
  %wide.load146 = load <4 x i8>, ptr %next.gep143, align 1, !tbaa !24, !alias.scope !942
  store <4 x i8> %wide.load146, ptr %next.gep144, align 1, !tbaa !24, !alias.scope !941, !noalias !942
  store <4 x i8> %wide.load145, ptr %next.gep143, align 1, !tbaa !24, !alias.scope !942
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !928

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.ar, %n.vec141
  br i1 %cmp.n148, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec141, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.az, %iter.check ], [ %i.az, %vector.memcheck ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.be, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 2 uses
  %i.bl = sub i64 %.086, %.082
  %xtraiter243 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.bq, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.bp, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.bo, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.bm = load i8, ptr %.159105.prol, align 1, !tbaa !24
  %i.bn = load i8, ptr %.055106.prol, align 1, !tbaa !24
  store i8 %i.bn, ptr %.159105.prol, align 1, !tbaa !24
  store i8 %i.bm, ptr %.055106.prol, align 1, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %.159105.prol, i64 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.055106.prol, i64 1 ; 2 uses
  %i.bq = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !929

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader ], [ %i.bo, %.lr.ph109.prol ]
  %.054107.unr = phi i64 [ %.054107.ph, %.lr.ph109.preheader ], [ %i.bq, %.lr.ph109.prol ]
  %.055106.unr = phi ptr [ %.055106.ph, %.lr.ph109.preheader ], [ %i.bp, %.lr.ph109.prol ]
  %.159105.unr = phi ptr [ %.159105.ph, %.lr.ph109.preheader ], [ %i.bo, %.lr.ph109.prol ]
  %i.br = sub i64 %.054107.ph, %.086
  %i.bs = add i64 %i.br, %.082
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block, %vec.epilog.middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.bj, %vec.epilog.middle.block ], [ %i.be, %middle.block ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.cj, %.lr.ph109 ]
  %i.bu = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bu, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.054107 = phi i64 [ %i.cl, %.lr.ph109 ], [ %.054107.unr, %.lr.ph109.prol.loopexit ]
  %.055106 = phi ptr [ %i.ck, %.lr.ph109 ], [ %.055106.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %.159105 = phi ptr [ %i.cj, %.lr.ph109 ], [ %.159105.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %i.bv = load i8, ptr %.159105, align 1, !tbaa !24
  %i.bw = load i8, ptr %.055106, align 1, !tbaa !24
  store i8 %i.bw, ptr %.159105, align 1, !tbaa !24
  store i8 %i.bv, ptr %.055106, align 1, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.055106, i64 1 ; 2 uses
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !24
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !24
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !24
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %.159105, i64 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.055106, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !24
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !24
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !24
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %.159105, i64 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.055106, i64 3 ; 2 uses
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !24
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !24
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !24
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %.159105, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.055106, i64 4
  %i.cl = add nuw nsw i64 %.054107, 4             ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %i.cl, %i.ar
  br i1 %exitcond118.not.3, label %._crit_edge110, label %.lr.ph109, !llvm.loop !930

bb.h:                                             ; preds = %._crit_edge110
  %i.cm = sub nsw i64 %.082, %i.bu
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cn = icmp eq i64 %i.ar, 1
  %i.co = getelementptr i8, ptr %.058, i64 %.086  ; 9 uses
  br i1 %i.cn, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -1 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %i.cr = add nsw i64 %.086, -1                   ; 2 uses
  %i.cs = icmp sgt i64 %.086, 2
  br i1 %i.cs, label %bb.k, label %bb.l, !prof !944

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.058, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull align 1 %.058, i64 %i.cr, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.l:                                             ; preds = %bb.j
  %i.cu = icmp eq i64 %i.cr, 1
  br i1 %i.cu, label %bb.m, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.m:                                             ; preds = %bb.l
  %i.cv = load i8, ptr %.058, align 1, !tbaa !24
  store i8 %i.cv, ptr %i.cp, align 1, !tbaa !24
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.k, %bb.l, %bb.m
  store i8 %i.cq, ptr %.058, align 1, !tbaa !24
  br label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit

bb.n:                                             ; preds = %bb.i
  %i.cw = sub i64 0, %i.ar
  %i.cx = getelementptr i8, ptr %i.co, i64 %i.cw  ; 8 uses
  %i.cy = icmp sgt i64 %.082, 0
  br i1 %i.cy, label %iter.check175, label %._crit_edge

iter.check175:                                    ; preds = %bb.n
  %min.iters.check155 = icmp ult i64 %.082, 8
  br i1 %min.iters.check155, label %.lr.ph.preheader, label %vector.memcheck156

vector.memcheck156:                               ; preds = %iter.check175
  %i.cz = getelementptr i8, ptr %.058, i64 %i.ar
  %bound0157 = icmp ult ptr %.058, %i.co
  %bound1158 = icmp ult ptr %i.cz, %i.cx
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %vector.memcheck156
  %min.iters.check161 = icmp ult i64 %.082, 32
  br i1 %min.iters.check161, label %vec.epilog.ph179, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %i.da = and i64 %.082, 24
  %n.vec163 = and i64 %.082, 9223372036854775776  ; 5 uses
  %i.db = sub nsw i64 0, %n.vec163                ; 2 uses
  %i.dc = getelementptr i8, ptr %i.co, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.cx, i64 %i.db
  br label %vector.body164

vector.body164:                                   ; preds = %vector.ph162, %vector.body164
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next172, %vector.body164 ] ; 2 uses
  %i.de = sub i64 0, %index165                    ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.co, i64 %i.de ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cx, i64 %i.de ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %next.gep167, i64 -16 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %next.gep167, i64 -32 ; 2 uses
  %wide.load168 = load <16 x i8>, ptr %i.df, align 1, !tbaa !24, !alias.scope !945, !noalias !946
  %wide.load169 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !24, !alias.scope !945, !noalias !946
  %i.dh = getelementptr inbounds i8, ptr %next.gep166, i64 -16 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %next.gep166, i64 -32 ; 2 uses
  %wide.load170 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !24, !alias.scope !946
  %wide.load171 = load <16 x i8>, ptr %i.di, align 1, !tbaa !24, !alias.scope !946
  store <16 x i8> %wide.load170, ptr %i.df, align 1, !tbaa !24, !alias.scope !945, !noalias !946
  store <16 x i8> %wide.load171, ptr %i.dg, align 1, !tbaa !24, !alias.scope !945, !noalias !946
  store <16 x i8> %wide.load168, ptr %i.dh, align 1, !tbaa !24, !alias.scope !946
  store <16 x i8> %wide.load169, ptr %i.di, align 1, !tbaa !24, !alias.scope !946
  %index.next172 = add nuw i64 %index165, 32      ; 2 uses
  %i.dj = icmp eq i64 %index.next172, %n.vec163
  br i1 %i.dj, label %middle.block173, label %vector.body164, !llvm.loop !934

middle.block173:                                  ; preds = %vector.body164
  %cmp.n174 = icmp eq i64 %.082, %n.vec163
  br i1 %cmp.n174, label %._crit_edge, label %vec.epilog.iter.check176

vec.epilog.iter.check176:                         ; preds = %middle.block173
  %min.epilog.iters.check178 = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check178, label %.lr.ph.preheader, label %vec.epilog.ph179, !prof !39

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check176
  %vec.epilog.resume.val180 = phi i64 [ %n.vec163, %vec.epilog.iter.check176 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec181 = and i64 %.082, 9223372036854775800  ; 4 uses
  %i.dk = sub nsw i64 0, %n.vec181                ; 2 uses
  %i.dl = getelementptr i8, ptr %i.co, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.cx, i64 %i.dk
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph179
  %index183 = phi i64 [ %vec.epilog.resume.val180, %vec.epilog.ph179 ], [ %index.next188, %vec.epilog.vector.body182 ] ; 2 uses
  %i.dn = sub i64 0, %index183                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.co, i64 %i.dn
  %next.gep185 = getelementptr i8, ptr %i.cx, i64 %i.dn
  %i.do = getelementptr inbounds i8, ptr %next.gep185, i64 -8 ; 2 uses
  %wide.load186 = load <8 x i8>, ptr %i.do, align 1, !tbaa !24, !alias.scope !945, !noalias !946
  %i.dp = getelementptr inbounds i8, ptr %next.gep184, i64 -8 ; 2 uses
  %wide.load187 = load <8 x i8>, ptr %i.dp, align 1, !tbaa !24, !alias.scope !946
  store <8 x i8> %wide.load187, ptr %i.do, align 1, !tbaa !24, !alias.scope !945, !noalias !946
  store <8 x i8> %wide.load186, ptr %i.dp, align 1, !tbaa !24, !alias.scope !946
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.dq, label %vec.epilog.middle.block189, label %vec.epilog.vector.body182, !llvm.loop !935

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body182
  %cmp.n190 = icmp eq i64 %.082, %n.vec181
  br i1 %cmp.n190, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check175, %vector.memcheck156, %vec.epilog.iter.check176, %vec.epilog.middle.block189
  %.0104.ph = phi i64 [ 0, %iter.check175 ], [ 0, %vector.memcheck156 ], [ %n.vec163, %vec.epilog.iter.check176 ], [ %n.vec181, %vec.epilog.middle.block189 ] ; 3 uses
  %.052103.ph = phi ptr [ %i.co, %iter.check175 ], [ %i.co, %vector.memcheck156 ], [ %i.dc, %vec.epilog.iter.check176 ], [ %i.dl, %vec.epilog.middle.block189 ] ; 2 uses
  %.260102.ph = phi ptr [ %i.cx, %iter.check175 ], [ %i.cx, %vector.memcheck156 ], [ %i.dd, %vec.epilog.iter.check176 ], [ %i.dm, %vec.epilog.middle.block189 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0104.prol = phi i64 [ %i.dv, %.lr.ph.prol ], [ %.0104.ph, %.lr.ph.preheader ]
  %.052103.prol = phi ptr [ %i.ds, %.lr.ph.prol ], [ %.052103.ph, %.lr.ph.preheader ]
  %.260102.prol = phi ptr [ %i.dr, %.lr.ph.prol ], [ %.260102.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.dr = getelementptr inbounds i8, ptr %.260102.prol, i64 -1 ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %.052103.prol, i64 -1 ; 4 uses
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !24
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !24
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !24
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !24
  %i.dv = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !936

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.dv, %.lr.ph.prol ]
  %.052103.unr = phi ptr [ %.052103.ph, %.lr.ph.preheader ], [ %i.ds, %.lr.ph.prol ]
  %.260102.unr = phi ptr [ %.260102.ph, %.lr.ph.preheader ], [ %i.dr, %.lr.ph.prol ]
  %i.dw = sub nsw i64 %.0104.ph, %.082
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block173, %vec.epilog.middle.block189, %bb.n
  %.260.lcssa = phi ptr [ %i.cx, %bb.n ], [ %.058, %middle.block173 ], [ %.058, %vec.epilog.middle.block189 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dy = srem i64 %.086, %i.ar                   ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ar, %._crit_edge ]
  %.082.be = phi i64 [ %i.cm, %bb.h ], [ %i.dy, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !937

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.ep, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
  %.052103 = phi ptr [ %i.em, %.lr.ph ], [ %.052103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260102 = phi ptr [ %i.el, %.lr.ph ], [ %.260102.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %.260102, i64 -1 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.052103, i64 -1 ; 2 uses
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !24
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !24
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !24
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !24
  %i.ed = getelementptr inbounds i8, ptr %.260102, i64 -2 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.052103, i64 -2 ; 2 uses
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !24
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !24
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !24
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !24
  %i.eh = getelementptr inbounds i8, ptr %.260102, i64 -3 ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.052103, i64 -3 ; 2 uses
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !24
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !24
  store i8 %i.ek, ptr %i.eh, align 1, !tbaa !24
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !24
  %i.el = getelementptr inbounds i8, ptr %.260102, i64 -4 ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %.052103, i64 -4 ; 3 uses
  %i.en = load i8, ptr %i.el, align 1, !tbaa !24
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !24
  store i8 %i.eo, ptr %i.el, align 1, !tbaa !24
  store i8 %i.en, ptr %i.em, align 1, !tbaa !24
  %i.ep = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ep, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !938

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block217, %vec.epilog.middle.block233, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.aq, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.aq, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block217 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block233 ], [ %1, %.lr.ph.i ], [ %i.aq, %._crit_edge110 ], [ %i.aq, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(12) ptr @_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !126     ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 9 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 14 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.k = sub i64 %i.e, %i.j                       ; 4 uses
  %i.l = icmp ugt i64 %i.i, 10
  br i1 %i.l, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub i64 %i.b, %i.k                       ; 4 uses
  %.sroa.speculated83 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.f)
  %i.n = sub i64 %i.b, %.sroa.speculated83
  %i.o = sub nuw nsw i64 10, %i.i
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.q = icmp uge ptr %3, %i.c
  %i.r = icmp ult ptr %3, %i.p
  %i.s = and i1 %i.q, %i.r                        ; 2 uses
  %i.t = icmp eq ptr %3, %1
  %i.u = icmp eq i64 %i.f, %i.i
  %i.v = and i1 %i.t, %i.u
  %or.cond107 = and i1 %i.v, %i.s
  br i1 %or.cond107, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not70 = icmp ugt ptr %4, %1
  %or.cond74 = and i1 %.not70, %i.s
  br i1 %or.cond74, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.c, i64 %i.k     ; 4 uses
  %i.x = sub i64 %i.m, %i.f
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.f
  %i.ab = getelementptr i8, ptr %i.w, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.aa, i64 %i.y, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit

_ZNSt11char_traitsIcE4moveEPcPKcm.exit:           ; preds = %bb.e, %bb.f
  %.not7.i = icmp eq ptr %3, %4
  br i1 %.not7.i, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.ae, %.lr.ph.i.prol ], [ %i.w, %.lr.ph.i.preheader ] ; 2 uses
  %.068.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ac = load i8, ptr %.068.i.prol, align 1, !tbaa !24
  store i8 %i.ac, ptr %.09.i.prol, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !947

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.w, %.lr.ph.i.preheader ], [ %i.ae, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.af = sub i64 %i.h, %i.g
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.068.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ah = load i8, ptr %.068.i, align 1, !tbaa !24
  store i8 %i.ah, ptr %.09.i, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.068.i, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i, i64 1
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !24
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %.068.i, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.an = load i8, ptr %i.al, align 1, !tbaa !24
  store i8 %i.an, ptr %i.am, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !24
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !24
  store i8 %i.at, ptr %i.as, align 1, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !24
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !24
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !24
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i.7 = icmp eq ptr %i.bd, %4
  br i1 %.not.i.7, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i, !llvm.loop !948

bb.g:                                             ; preds = %bb.d
  %i.bf = sub i64 %i.h, %i.j                      ; 5 uses
  %.not71 = icmp ult i64 %i.i, %i.f
  br i1 %.not71, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = sub i64 %i.d, %i.j                      ; 2 uses
  %.not72 = icmp ugt i64 %i.bf, %i.bg
  %i.bh = sub i64 %i.bg, %i.bf
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.bh)
  %i.bi = select i1 %.not72, i64 0, i64 %.sroa.speculated ; 6 uses
  %i.bj = getelementptr i8, ptr %i.c, i64 %i.k    ; 4 uses
  %i.bk = sub i64 %i.m, %i.f
  %i.bl = add i64 %i.bk, 1                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.f
  %i.bo = getelementptr i8, ptr %i.bj, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bn, i64 %i.bl, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76:         ; preds = %bb.h, %bb.i
  %i.bp = icmp eq i64 %i.bi, 0
  br i1 %i.bp, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77, label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 1 %i.bq, i64 %i.bi, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77:         ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76, %bb.j
  %i.br = icmp eq i64 %i.i, %i.bi
  br i1 %i.br, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77
  %i.bs = sub nsw i64 %i.i, %i.bi
  %i.bt = sub i64 %i.bf, %i.f
  %i.bu = getelementptr i8, ptr %i.c, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bj, i64 %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bw, i64 %i.bs, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit

bb.l:                                             ; preds = %bb.g
  %i.by = getelementptr i8, ptr %i.c, i64 %i.k    ; 3 uses
  %i.bz = icmp eq ptr %4, %3
  br i1 %i.bz, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.by, ptr nonnull align 1 %i.ca, i64 %i.i, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79

_ZNSt11char_traitsIcE4moveEPcPKcm.exit79:         ; preds = %bb.l, %bb.m
  %i.cb = sub i64 %i.m, %i.f
  %i.cc = add i64 %i.cb, 1                        ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79
  %i.ce = getelementptr i8, ptr %i.by, i64 %i.f
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.ce, i64 %i.cc, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit

_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79, %bb.k, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %i.cg = sub i64 %i.i, %i.f
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = add i8 %i.a, %i.ch
  store i8 %i.ci, ptr %0, align 1, !tbaa !126
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(12) ptr @_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmRKS4_mm(ptr noundef nonnull align 1 dereferenceable(12) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %3 ; 10 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !126
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = icmp ugt i64 %3, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.h = sub nuw nsw i64 %i.f, %3
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 17 uses
  %i.i = load i8, ptr %0, align 1, !tbaa !126     ; 2 uses
  %i.j = zext i8 %i.i to i64                      ; 4 uses
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE13capped_lengthEmm.exit
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

bb.d:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE13capped_lengthEmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %1 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated.i ; 2 uses
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub nsw i64 10, %i.j
  %i.r = icmp ugt i64 %.sroa.speculated.i, %i.q
  br i1 %i.r, label %bb.e, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated.i ; 2 uses
  %reass.sub = sub nsw i64 %i.j, %1
  %i.t = add nsw i64 %reass.sub, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.m, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %i.v = icmp uge ptr %i.d, %i.l
  %i.w = icmp ult ptr %i.d, %i.u
  %i.x = and i1 %i.v, %i.w
  %.not.i.i = icmp ugt ptr %i.n, %i.m
  %or.cond.i.i = and i1 %.not.i.i, %i.x
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %.not7.i.i.i = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %.not7.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp samesign ult i64 %.sroa.speculated.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %1, %i.a
  %i.z = add i64 %3, %i.b
  %i.aa = sub i64 %i.z, %i.y
  %diff.check = icmp ugt i64 %i.aa, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp samesign ult i64 %.sroa.speculated.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %.sroa.speculated.i, 24
  %n.vec = and i64 %.sroa.speculated.i, 224       ; 5 uses
  %i.ac = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ad = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !24
  %wide.load15 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !24
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !24
  store <16 x i8> %wide.load15, ptr %i.af, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !949

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.speculated.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %.sroa.speculated.i, 248     ; 4 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %n.vec16
  %i.ai = getelementptr i8, ptr %i.d, i64 %n.vec16
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %next.gep18 = getelementptr i8, ptr %i.m, i64 %index17
  %next.gep19 = getelementptr i8, ptr %i.d, i64 %index17
  %wide.load20 = load <8 x i8>, ptr %next.gep19, align 1, !tbaa !24
  store <8 x i8> %wide.load20, ptr %next.gep18, align 1, !tbaa !24
  %index.next21 = add nuw i64 %index17, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !950

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %.sroa.speculated.i, %n.vec16
  br i1 %cmp.n22, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.068.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ak = load i8, ptr %.068.i.i.i, align 1, !tbaa !24
  store i8 %i.ak, ptr %.09.i.i.i, align 1, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i, !llvm.loop !951

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.an = sub i64 %i.o, %i.p                      ; 4 uses
  %i.ao = icmp ult i64 %i.an, %1
  br i1 %i.ao, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i:       ; preds = %bb.g
  %i.ap = sub nuw nsw i64 %1, %i.an               ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.aq, i64 %i.ap, i1 false)
  %i.ar = icmp eq i64 %.sroa.speculated.i, %i.ap
  br i1 %i.ar, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
  %i.as = sub nsw i64 %.sroa.speculated.i, %i.ap
  %i.at = getelementptr i8, ptr %i.m, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.s, i64 %i.as, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit

bb.i:                                             ; preds = %bb.g
  %i.au = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %i.au, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr i8, ptr %i.l, i64 %i.an
  %i.aw = getelementptr i8, ptr %i.av, i64 %.sroa.speculated.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.aw, i64 %.sroa.speculated.i, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit

_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, %bb.h, %bb.i, %bb.j
  %i.ax = trunc nuw i64 %.sroa.speculated.i to i8
  %i.ay = add i8 %i.i, %i.ax
  store i8 %i.ay, ptr %0, align 1, !tbaa !126
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef byval(%"class.boost::static_strings::basic_static_string.45") align 8 %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef byval(%"class.boost::static_strings::basic_static_string.45") align 8 %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !136     ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 4 uses
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 %1       ; 7 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub nsw i64 100, %i.b
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %3 ; 2 uses
  %reass.sub = sub nsw i64 %i.b, %1
  %i.k = add nsw i64 %reass.sub, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.m = icmp uge ptr %2, %i.c
  %i.n = icmp ult ptr %2, %i.l
  %i.o = and i1 %i.m, %i.n
  %.not.i.i = icmp ugt ptr %i.i, %i.d
  %or.cond.i.i = and i1 %.not.i.i, %i.o
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %.not7.i.i.i = icmp samesign eq i64 %3, 0
  br i1 %.not7.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %2, i64 %3, i1 false), !tbaa !24
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.p = sub i64 %i.e, %i.f                       ; 4 uses
  %i.q = icmp ult i64 %i.p, %1
  br i1 %i.q, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, label %bb.g

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i:       ; preds = %bb.e
  %i.r = sub nuw nsw i64 %1, %i.p                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %i.s, i64 %i.r, i1 false)
  %i.t = icmp eq i64 %3, %i.r
  br i1 %i.t, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
  %i.u = sub i64 %3, %i.r
  %i.v = getelementptr i8, ptr %i.d, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.j, i64 %i.u, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp samesign eq i64 %3, 0
  br i1 %i.w, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.c, i64 %i.p
  %i.y = getelementptr i8, ptr %i.x, i64 %3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.y, i64 %3, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit

_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit: ; preds = %.lr.ph.i.i.i.preheader, %bb.d, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, %bb.f, %bb.g, %bb.h
  %i.z = trunc i64 %3 to i8
  %i.aa = add i8 %i.a, %i.z                       ; 3 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ad = load i8, ptr %4, align 8, !tbaa !136
  %or.cond.not.i = icmp eq i8 %i.aa, %i.ad
  br i1 %or.cond.not.i, label %bb.i, label %_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.i:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit
  %i.ae = icmp eq i8 %i.aa, 0
  br i1 %i.ae, label %_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.ac, i64 %i.ab)
  %i.af = icmp eq i32 %bcmp.i, 0
  br label %_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.k:                                             ; preds = %bb.a
  invoke void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr @_ZTISt12out_of_range
          catch ptr null                          ; 2 uses
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = extractvalue { ptr, i32 } %i.ag, 1
  %i.aj = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #32
  %i.ak = icmp eq i32 %i.ai, %i.aj
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ah) #32 ; 0 uses
  br i1 %i.ak, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.n unwind label %bb.r       ; 0 uses

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_end_catch()
  br label %_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.o:                                             ; preds = %bb.l
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.5965, ptr noundef nonnull @.str.1316, ptr noundef nonnull @.str.13, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_end_catch()
  br label %_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.q:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit: ; preds = %bb.j, %bb.i, %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit, %bb.n, %bb.p
  %.014 = phi i1 [ true, %bb.n ], [ true, %bb.i ], [ true, %bb.p ], [ false, %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit ], [ %i.af, %bb.j ]
  ret i1 %.014

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.an, %bb.q ], [ %i.ao, %bb.r ]
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost14static_strings19basic_static_stringILm9EcSt11char_traitsIcEEC2EPKc(ptr noundef nonnull align 1 dereferenceable(11) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %0, i8 0, i64 11, i1 false)
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 10 uses
  %.not15.i = icmp samesign eq i64 %i.b, 0
  br i1 %.not15.i, label %_ZN5boost14static_strings19basic_static_stringILm9EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.c, ptr %i.a, align 1, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost14static_strings19basic_static_stringILm9EcSt11char_traitsIcEEC2EPKc:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost14static_strings5testEINS0_19basic_static_stringILm400EcSt11char_traitsIcEEEEEbT_NS6_9size_typeES7_S6_(ptr noundef byval(%"class.boost::static_strings::basic_static_string.5") align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"class.boost::static_strings::basic_static_string.5") align 8 %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !46     ; 3 uses
  %i.b = zext i16 %i.a to i64                     ; 3 uses
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.e, label %_ZNK5boost14static_strings19basic_static_stringILm400EcSt11char_traitsIcEE13capped_lengthEmm.exit.i

_ZNK5boost14static_strings19basic_static_stringILm400EcSt11char_traitsIcEE13capped_lengthEmm.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.d = sub nuw nsw i64 %i.b, %1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.e = add nuw nsw i64 %i.b, 1
  %i.f = add nuw nsw i64 %.sroa.speculated.i.i, %1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %i.h = sub nuw nsw i64 %i.e, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.speculated.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %i.i, i64 %i.h, i1 false)
  %i.j = trunc nuw i64 %.sroa.speculated.i.i to i16 ; 2 uses
  %i.k = sub nuw i16 %i.a, %i.j                   ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN5boost14static_stringseqILm400ELm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.b:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm400EcSt11char_traitsIcEE13capped_lengthEmm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.q = load i16, ptr %3, align 8, !tbaa !46
  %or.cond.not.i = icmp eq i16 %i.k, %i.q
  br i1 %or.cond.not.i, label %bb.c, label %_ZN5boost14static_stringseqILm400ELm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i16 %i.a, %i.j
  br i1 %i.r, label %_ZN5boost14static_stringseqILm400ELm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.p, i64 %i.l)
  %i.s = icmp eq i32 %bcmp.i, 0
  br label %_ZN5boost14static_stringseqILm400ELm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.e:                                             ; preds = %bb.a
  invoke void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTISt12out_of_range
          catch ptr null                          ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = extractvalue { ptr, i32 } %i.t, 1
  %i.w = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #32
  %i.x = icmp eq i32 %i.v, %i.w
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.u) #32 ; 0 uses
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_end_catch()
  br label %_ZN5boost14static_stringseqILm400ELm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.6069, ptr noundef nonnull @.str.1316, ptr noundef nonnull @.str.13, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings5testEINS0_19basic_static_stringILm400EcSt11char_traitsIcEEEEEbT_NS6_9size_typeES7_S6_)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_end_catch()
  br label %_ZN5boost14static_stringseqILm400ELm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZN5boost14static_stringseqILm400ELm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.h, %bb.j, %_ZNK5boost14static_strings19basic_static_stringILm400EcSt11char_traitsIcEE13capped_lengthEmm.exit.i
  %.012 = phi i1 [ true, %bb.h ], [ false, %_ZNK5boost14static_strings19basic_static_stringILm400EcSt11char_traitsIcEE13capped_lengthEmm.exit.i ], [ true, %bb.c ], [ true, %bb.j ], [ false, %bb.b ], [ %i.s, %bb.d ]
  ret i1 %.012

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #33
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #13

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #32 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12length_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt12length_errorED2Ev) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #20

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 16), ptr %0, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 64), ptr %i.a, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 104), ptr %i.b, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !140
  %i.h = shufflevector <2 x ptr> %i.g, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !140
  %i.i = load <2 x i32>, ptr %i.e, align 8, !tbaa !77
  store <2 x i32> %i.i, ptr %i.d, align 8, !tbaa !77
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12length_errorED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #32
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptISt12length_errorE5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c) #32, !inline_history !954
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !143
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.c unwind label %.body, !inline_history !952

.body:                                            ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #32, !inline_history !954
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 16), ptr %i.a, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 64), ptr %i.b, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 104), ptr %i.d, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n)
          to label %_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit7

_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #32, !inline_history !953
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit7, %.body
  %.pn = phi { ptr, i32 } [ %i.o, %_ZN5boost10wrapexceptISt12length_errorE7deleterD2Ev.exit7 ], [ %i.k, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost10wrapexceptISt12length_errorE7rethrowEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #32 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12length_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt12length_errorED2Ev) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12length_errorED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt12length_errorED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt12length_errorED2Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost10wrapexceptISt12length_errorED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptISt12length_errorED1Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt12length_errorED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt12length_errorED2Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost10wrapexceptISt12length_errorED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptISt12length_errorED0Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10wrapexceptISt12length_errorED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt12length_errorED0Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost10wrapexceptISt12length_errorED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 noundef 64) #34
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt11logic_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn24_N5boost10wrapexceptISt12length_errorED1Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt12length_errorED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptISt12length_errorED2Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable

_ZN5boost10wrapexceptISt12length_errorED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.i) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn24_N5boost10wrapexceptISt12length_errorED0Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10wrapexceptISt12length_errorED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptISt12length_errorED0Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable

_ZN5boost10wrapexceptISt12length_errorED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -24
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #32
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 noundef 64) #34
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost16exception_detail10clone_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost16exception_detail10clone_baseD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #26

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !143
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.d, !inline_history !11

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 16), ptr %0, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 64), ptr %i.a, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12length_errorEE, i64 104), ptr %i.c, align 8, !tbaa !53
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12length_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #32
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::exception_detail::refcount_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.boost::exception_detail::refcount_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i unwind label %bb.f

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !143    ; 6 uses
  %.not.i2.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i2.i.i, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit unwind label %bb.g, !inline_history !955

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %2, align 8, !tbaa !143    ; 3 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit
  %i.j = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit unwind label %bb.e, !inline_history !10 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #33
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit: ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21

bb.g:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !143    ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.r, null
  br i1 %.not.i.i20, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 unwind label %bb.i, !inline_history !10 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.o

bb.j:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit, %bb.a
  %.sroa.0.2 = phi ptr [ null, %bb.a ], [ %i.f, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !140
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !tbaa !140
  %i.ad = load <2 x i32>, ptr %i.y, align 8, !tbaa !77
  store <2 x i32> %i.ad, ptr %i.z, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i22, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23 unwind label %bb.n, !inline_history !955 ; 0 uses

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23: ; preds = %bb.k, %bb.j
  store ptr %.sroa.0.2, ptr %i.ae, align 8, !tbaa !143
  %.not.i2.i.i24 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i2.i.i24, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29, label %bb.l

bb.l:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23
  %i.ak = load ptr, ptr %.sroa.0.2, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27 unwind label %bb.n, !inline_history !955

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27: ; preds = %bb.l
  %i.an = load ptr, ptr %.sroa.0.2, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29 unwind label %bb.m, !inline_history !10 ; 0 uses

bb.m:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #33
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29: ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.n ], [ %.sroa.0.1, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 ] ; 3 uses
  %.pn17 = phi { ptr, i32 } [ %i.at, %bb.n ], [ %.pn, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 ]
  %.not.i.i30 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i30, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %.sroa.0.3, align 8, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.3)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31 unwind label %bb.q, !inline_history !10 ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #33
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #32 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12out_of_rangeEE, ptr nonnull @_ZN5boost10wrapexceptISt12out_of_rangeED2Ev) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
}

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 16), ptr %0, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 64), ptr %i.a, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 104), ptr %i.b, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !140
  %i.h = shufflevector <2 x ptr> %i.g, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !140
  %i.i = load <2 x i32>, ptr %i.e, align 8, !tbaa !77
  store <2 x i32> %i.i, ptr %i.d, align 8, !tbaa !77
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12out_of_rangeED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #32
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptISt12out_of_rangeE5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c) #32, !inline_history !958
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !143
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.c unwind label %.body, !inline_history !956

.body:                                            ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #32, !inline_history !958
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 16), ptr %i.a, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 64), ptr %i.b, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 104), ptr %i.d, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n)
          to label %_ZN5boost10wrapexceptISt12out_of_rangeE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptISt12out_of_rangeE7deleterD2Ev.exit7

_ZN5boost10wrapexceptISt12out_of_rangeE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptISt12out_of_rangeE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #32, !inline_history !957
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost10wrapexceptISt12out_of_rangeE7deleterD2Ev.exit7, %.body
  %.pn = phi { ptr, i32 } [ %i.o, %_ZN5boost10wrapexceptISt12out_of_rangeE7deleterD2Ev.exit7 ], [ %i.k, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost10wrapexceptISt12out_of_rangeE7rethrowEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #32 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12out_of_rangeEE, ptr nonnull @_ZN5boost10wrapexceptISt12out_of_rangeED2Ev) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12out_of_rangeED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptISt12out_of_rangeED1Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptISt12out_of_rangeED0Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable

_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 noundef 64) #34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn24_N5boost10wrapexceptISt12out_of_rangeED1Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable

_ZN5boost10wrapexceptISt12out_of_rangeED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.i) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn24_N5boost10wrapexceptISt12out_of_rangeED0Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit unwind label %bb.c, !inline_history !10 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable

_ZN5boost10wrapexceptISt12out_of_rangeED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -24
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #32
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 noundef 64) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !143
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.d, !inline_history !11

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 16), ptr %0, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 64), ptr %i.a, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 104), ptr %i.c, align 8, !tbaa !53
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #32
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #20

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost2io11ostream_putIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_PKS5_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  %i.b = alloca [8 x i8], align 1                 ; 6 uses
  %3 = alloca %"class.std::basic_ostream<char>::sentry", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNSo6sentryC1ERSo(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %3, align 8, !tbaa !965, !range !127, !noundef !128
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !53
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !966  ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !967  ; 3 uses
  %.not = icmp ugt i64 %i.l, %2
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %1, i64 noundef %2)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !959

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit: ; preds = %bb.d
  %.not43 = icmp eq i64 %i.p, %2
  br i1 %.not43, label %bb.u, label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %.lr.ph.i65, %.invoke, %bb.t, %._crit_edge.i62, %.noexc59, %bb.q, %._crit_edge.i47, %.noexc45, %bb.k, %bb.g, %bb.d
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSo6sentryD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !968
  %i.t = and i32 %i.s, 176
  %i.u = icmp eq i32 %i.t, 32
  br i1 %i.u, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %1, i64 noundef %2)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !959

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit44: ; preds = %bb.g
  %.not41 = icmp eq i64 %i.y, %2
  br i1 %.not41, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit44
  %i.z = load ptr, ptr %0, align 8, !tbaa !53
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 225 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !969, !range !127, !noundef !128
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !970
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !76
  %.not.i1.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 89
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ah)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.k
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef signext i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(570) %i.ah, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !960

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc45, %bb.j
  %.0.i.i.i = phi i8 [ %i.al, %bb.j ], [ %i.ap, %.noexc45 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  store i8 %.0.i.i.i, ptr %i.aq, align 8, !tbaa !970
  store i8 1, ptr %i.ad, align 1, !tbaa !969
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %._crit_edge.i
  %i.ar = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.as = sub nuw i64 %i.l, %2                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.at = icmp ugt i64 %i.as, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.b, i8 %i.ar, i64 8, i1 false)
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i47

.lr.ph.i:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit, %bb.l
  %.016.i = phi i64 [ %i.ay, %bb.l ], [ %i.as, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit ]
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull %i.b, i64 noundef 8)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !961

.noexc48:                                         ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %i.ax, 8
  br i1 %.not.i, label %bb.l, label %.thread

.thread:                                          ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.critedge

bb.l:                                             ; preds = %.noexc48
  %i.ay = add i64 %.016.i, -8                     ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 8
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i47, !llvm.loop !962

._crit_edge.i47:                                  ; preds = %bb.l, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %.0.lcssa.i = phi i64 [ %i.as, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit ], [ %i.ay, %bb.l ] ; 2 uses
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull %i.b, i64 noundef %.0.lcssa.i)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !961

bb.m:                                             ; preds = %._crit_edge.i47
  %i.be = icmp eq i64 %i.bd, %.0.lcssa.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br i1 %i.be, label %bb.u, label %.critedge

bb.n:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 225 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !969, !range !127, !noundef !128
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._crit_edge.i55, label %bb.o

._crit_edge.i55:                                  ; preds = %bb.n
  %.phi.trans.insert.i56 = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %.pre.i57 = load i8, ptr %.phi.trans.insert.i56, align 8, !tbaa !970
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit61

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70 ; 6 uses
  %.not.i.i.i50 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i50, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51

.invoke:                                          ; preds = %bb.o, %bb.i
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51: ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !76
  %.not.i1.i.i52 = icmp eq i8 %i.bl, 0
  br i1 %.not.i1.i.i52, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 89
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bj)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef signext i8 %i.bq(ptr noundef nonnull align 8 dereferenceable(570) %i.bj, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !960

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53: ; preds = %.noexc59, %bb.p
  %.0.i.i.i54 = phi i8 [ %i.bn, %bb.p ], [ %i.br, %.noexc59 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store i8 %.0.i.i.i54, ptr %i.bs, align 8, !tbaa !970
  store i8 1, ptr %i.bf, align 1, !tbaa !969
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit61

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit61: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53, %._crit_edge.i55
  %i.bt = phi i8 [ %.pre.i57, %._crit_edge.i55 ], [ %.0.i.i.i54, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53 ]
  %i.bu = sub nuw i64 %i.l, %2                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bv = icmp ugt i64 %i.bu, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.a, i8 %i.bt, i64 8, i1 false)
  br i1 %i.bv, label %.lr.ph.i65, label %._crit_edge.i62

.lr.ph.i65:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit61, %bb.r
  %.016.i66 = phi i64 [ %i.ca, %bb.r ], [ %i.bu, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit61 ]
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !961

.noexc68:                                         ; preds = %.lr.ph.i65
  %.not.i67 = icmp eq i64 %i.bz, 8
  br i1 %.not.i67, label %bb.r, label %.thread80

.thread80:                                        ; preds = %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.critedge

bb.r:                                             ; preds = %.noexc68
  %i.ca = add i64 %.016.i66, -8                   ; 3 uses
  %i.cb = icmp ugt i64 %i.ca, 8
  br i1 %i.cb, label %.lr.ph.i65, label %._crit_edge.i62, !llvm.loop !962

._crit_edge.i62:                                  ; preds = %bb.r, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit61
  %.0.lcssa.i63 = phi i64 [ %i.bu, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit61 ], [ %i.ca, %bb.r ] ; 2 uses
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef i64 %i.ce(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull %i.a, i64 noundef %.0.lcssa.i63)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !961

bb.s:                                             ; preds = %._crit_edge.i62
  %i.cg = icmp eq i64 %i.cf, %.0.lcssa.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %i.cg, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %1, i64 noundef %2)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !959

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit72: ; preds = %bb.t
  %.not40 = icmp eq i64 %i.ck, %2
  br i1 %.not40, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit72, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !53
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr %0, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 0, ptr %i.cp, align 8, !tbaa !967
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.u, %.thread80, %.thread, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit44, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit, %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit72, %bb.s
  %.sroa.0.0 = phi ptr [ %0, %.thread80 ], [ %0, %bb.m ], [ %0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit44 ], [ %0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit72 ], [ %0, %bb.s ], [ %0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputnEPKcl.exit ], [ %0, %.thread ], [ null, %bb.u ], [ null, %bb.b ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !971, !nonnull !128, !align !972 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !53
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !968
  %i.cy = and i32 %i.cx, 8192
  %.not.i73 = icmp eq i32 %i.cy, 0
  br i1 %.not.i73, label %_ZNSo6sentryD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.cz = call noundef zeroext i1 @_ZSt18uncaught_exceptionv() #35
  br i1 %i.cz, label %_ZNSo6sentryD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 232
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !966 ; 3 uses
  %.not1.i = icmp eq ptr %i.db, null
  br i1 %.not1.i, label %_ZNSo6sentryD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !53
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef i32 %i.de(ptr noundef nonnull align 8 dereferenceable(64) %i.db)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit.i unwind label %bb.z, !inline_history !963

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit.i: ; preds = %bb.x
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %bb.y, label %_ZNSo6sentryD2Ev.exit

bb.y:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit.i
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !971, !nonnull !128, !align !972 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !53
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !63
  %i.do = or i32 %i.dn, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dl, i32 noundef %i.do)
          to label %_ZNSo6sentryD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #33
  unreachable

_ZNSo6sentryD2Ev.exit:                            ; preds = %.critedge, %bb.v, %bb.w, %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.not.i74 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i74, label %_ZN5boost2io6detail13ostream_guardIcSt11char_traitsIcEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSo6sentryD2Ev.exit
  %i.dr = load ptr, ptr %.sroa.0.0, align 8, !tbaa !53
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !63
  %i.dx = or i32 %i.dw, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.du, i32 noundef %i.dx)
  br label %_ZN5boost2io6detail13ostream_guardIcSt11char_traitsIcEED2Ev.exit

_ZN5boost2io6detail13ostream_guardIcSt11char_traitsIcEED2Ev.exit: ; preds = %_ZNSo6sentryD2Ev.exit, %bb.aa
  ret ptr %0

bb.ab:                                            ; preds = %bb.e, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.dy = load ptr, ptr %0, align 8, !tbaa !53
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds i8, ptr %0, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !63
  %i.ee = or i32 %i.ed, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.eb, i32 noundef %i.ee)
          to label %_ZN5boost2io6detail13ostream_guardIcSt11char_traitsIcEED2Ev.exit77 unwind label %bb.ac

_ZN5boost2io6detail13ostream_guardIcSt11char_traitsIcEED2Ev.exit77: ; preds = %bb.ab
  resume { ptr, i32 } %.pn

bb.ac:                                            ; preds = %bb.ab
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #33
  unreachable
}

declare void @_ZNSo6sentryC1ERSo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSo6sentryD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZSt18uncaught_exceptionv() local_unnamed_addr #21

; Function Attrs: nounwind
declare i64 @__isoc23_wcstoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare ptr @wmemmove(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare i64 @__isoc23_wcstoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.77") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = shl i64 %2, 2
  %i.c = alloca i8, i64 %i.b, align 16            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.d = call noundef i32 %1(ptr noundef nonnull %i.c, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4) ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !973
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.e, ptr %i.a, align 8, !tbaa !139
  %i.h = icmp ugt i32 %i.d, 3
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !109
  %i.j = load i64, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi i64 [ %i.j, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.noexc.i ], [ %i.f, %bb.a ] ; 4 uses
  switch i32 %i.d, label %bb.c [
    i32 1, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i32, ptr %i.c, align 16, !tbaa !97
  store i32 %i.m, ptr %i.l, align 4, !tbaa !97
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = call ptr @wmemcpy(ptr noundef %i.l, ptr noundef nonnull %i.c, i64 noundef %i.e) #32 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !139
  %.pre7.i.i = load ptr, ptr %0, align 8, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.o = phi ptr [ %i.l, %._crit_edge.i.i ], [ %i.l, %bb.b ], [ %.pre7.i.i, %bb.c ]
  %i.p = phi i64 [ %i.k, %._crit_edge.i.i ], [ %i.k, %bb.b ], [ %.pre6.i.i, %bb.c ] ; 2 uses
  store i64 %i.p, ptr %i.g, align 8, !tbaa !974
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  store i32 0, ptr %i.q, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind
declare i32 @vswprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 2 dereferenceable(403) ptr @_ZN5boost14static_strings19basic_static_stringILm400EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 2 dereferenceable(403) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !46     ; 2 uses
  %i.b = zext i16 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 9 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 20 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.k = sub i64 %i.e, %i.j                       ; 4 uses
  %i.l = icmp ugt i64 %i.i, 400
  br i1 %i.l, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub i64 %i.b, %i.k                       ; 4 uses
  %.sroa.speculated83 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.f)
  %i.n = sub i64 %i.b, %.sroa.speculated83
  %i.o = sub nuw nsw i64 400, %i.i
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.q = icmp uge ptr %3, %i.c
  %i.r = icmp ult ptr %3, %i.p
  %i.s = and i1 %i.q, %i.r                        ; 2 uses
  %i.t = icmp eq ptr %3, %1
  %i.u = icmp eq i64 %i.f, %i.i
  %i.v = and i1 %i.t, %i.u
  %or.cond107 = and i1 %i.v, %i.s
  br i1 %or.cond107, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not70 = icmp ugt ptr %4, %1
  %or.cond74 = and i1 %.not70, %i.s
  br i1 %or.cond74, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.c, i64 %i.k     ; 7 uses
  %i.x = sub i64 %i.m, %i.f
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.f
  %i.ab = getelementptr i8, ptr %i.w, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.aa, i64 %i.y, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit

_ZNSt11char_traitsIcE4moveEPcPKcm.exit:           ; preds = %bb.e, %bb.f
  %.not7.i = icmp eq ptr %3, %4
  br i1 %.not7.i, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %min.iters.check = icmp ult i64 %i.i, 8
  %i.ac = sub i64 %i.h, %i.e
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check118 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.i, 24
  %n.vec = and i64 %i.i, 480                      ; 5 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %n.vec
  %i.af = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %index ; 2 uses
  %next.gep119 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep119, align 1, !tbaa !24
  %wide.load120 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !24
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !24
  store <16 x i8> %wide.load120, ptr %i.ah, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !975

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %i.i, 504                   ; 4 uses
  %i.aj = getelementptr i8, ptr %i.w, i64 %n.vec121
  %i.ak = getelementptr i8, ptr %3, i64 %n.vec121
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %next.gep123 = getelementptr i8, ptr %i.w, i64 %index122
  %next.gep124 = getelementptr i8, ptr %3, i64 %index122
  %wide.load125 = load <8 x i8>, ptr %next.gep124, align 1, !tbaa !24
  store <8 x i8> %wide.load125, ptr %next.gep123, align 1, !tbaa !24
  %index.next126 = add nuw i64 %index122, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !976

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %i.i, %n.vec121
  br i1 %cmp.n127, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ] ; 2 uses
  %.068.i.ph = phi ptr [ %3, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ] ; 3 uses
  %.068.i.ph129 = ptrtoaddr ptr %.068.i.ph to i64 ; 2 uses
  %i.am = sub i64 %i.g, %.068.i.ph129
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.ap, %.lr.ph.i.prol ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.068.i.prol = phi ptr [ %i.ao, %.lr.ph.i.prol ], [ %.068.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.an = load i8, ptr %.068.i.prol, align 1, !tbaa !24
  store i8 %i.an, ptr %.09.i.prol, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !977

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %.09.i.ph, %.lr.ph.i.preheader ], [ %i.ap, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %.068.i.ph, %.lr.ph.i.preheader ], [ %i.ao, %.lr.ph.i.prol ]
  %i.aq = sub i64 %.068.i.ph129, %i.g
  %i.ar = icmp ugt i64 %i.aq, -8
  br i1 %i.ar, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.068.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.as = load i8, ptr %.068.i, align 1, !tbaa !24
  store i8 %i.as, ptr %.09.i, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %.068.i, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i, i64 1
  %i.av = load i8, ptr %i.at, align 1, !tbaa !24
  store i8 %i.av, ptr %i.au, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.068.i, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !24
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !24
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !24
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !24
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !24
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !24
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i.7 = icmp eq ptr %i.bo, %4
  br i1 %.not.i.7, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i, !llvm.loop !978

bb.g:                                             ; preds = %bb.d
  %i.bq = sub i64 %i.h, %i.j                      ; 5 uses
  %.not71 = icmp ult i64 %i.i, %i.f
  br i1 %.not71, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = sub i64 %i.d, %i.j                      ; 2 uses
  %.not72 = icmp ugt i64 %i.bq, %i.br
  %i.bs = sub i64 %i.br, %i.bq
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.bs)
  %i.bt = select i1 %.not72, i64 0, i64 %.sroa.speculated ; 6 uses
  %i.bu = getelementptr i8, ptr %i.c, i64 %i.k    ; 4 uses
  %i.bv = sub i64 %i.m, %i.f
  %i.bw = add i64 %i.bv, 1                        ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr i8, ptr %i.bu, i64 %i.f
  %i.bz = getelementptr i8, ptr %i.bu, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.by, i64 %i.bw, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76:         ; preds = %bb.h, %bb.i
  %i.ca = icmp eq i64 %i.bt, 0
  br i1 %i.ca, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77, label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.cb, i64 %i.bt, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77:         ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76, %bb.j
  %i.cc = icmp eq i64 %i.i, %i.bt
  br i1 %i.cc, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77
  %i.cd = sub nsw i64 %i.i, %i.bt
  %i.ce = sub i64 %i.bq, %i.f
  %i.cf = getelementptr i8, ptr %i.c, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.bt
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.bt
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.ch, i64 %i.cd, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit

bb.l:                                             ; preds = %bb.g
  %i.cj = getelementptr i8, ptr %i.c, i64 %i.k    ; 3 uses
  %i.ck = icmp eq ptr %4, %3
  br i1 %i.ck, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 1 %i.cl, i64 %i.i, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79

_ZNSt11char_traitsIcE4moveEPcPKcm.exit79:         ; preds = %bb.l, %bb.m
  %i.cm = sub i64 %i.m, %i.f
  %i.cn = add i64 %i.cm, 1                        ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79
  %i.cp = getelementptr i8, ptr %i.cj, i64 %i.f
  %i.cq = getelementptr i8, ptr %i.cj, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cp, i64 %i.cn, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit

_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.n, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79, %bb.k, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %i.cr = sub i64 %i.i, %i.f
  %i.cs = trunc i64 %i.cr to i16
  %i.ct = add i16 %i.a, %i.cs
  store i16 %i.ct, ptr %0, align 2, !tbaa !46
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ssub.sat.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #28

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold noreturn }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { noreturn }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { builtin allocsize(0) }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = distinct !{!4, !25}
!5 = distinct !{!5, !25}
!6 = distinct !{!6, !25}
!7 = distinct !{!7, !25}
!8 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!9 = distinct !{!9, !25}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"short", !17, i64 0}
!22 = !{!"_ZTSN5boost14static_strings6detail18static_string_baseILm420EcSt11char_traitsIcEE4size19basic_static_stringE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!17, !17, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"any pointer", !17, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"_ZTSN5boost15source_locationE", !29, i64 0, !29, i64 8, !18, i64 16, !18, i64 20}
!31 = !{!30, !29, i64 0}
!32 = !{!30, !29, i64 8}
!33 = !{!30, !18, i64 16}
!34 = !{!30, !18, i64 20}
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.xor.v2i64
!713 = distinct !{!713, !25, !26, !27}
!714 = distinct !{!714, !25, !27, !26}
!715 = distinct !{!715, !25, !26, !27}
!716 = distinct !{!716, !25, !27, !26}
!717 = distinct !{!717, !25, !26, !27}
!718 = distinct !{!718, !25, !27, !26}
!719 = distinct !{!719, !25, !26, !27}
!720 = distinct !{!720, !25, !27, !26}
!721 = distinct !{!721, !25, !26, !27}
!722 = distinct !{!722, !25, !27, !26}
!723 = distinct !{!723, !25, !26, !27}
!724 = distinct !{!724, !25, !27, !26}
!725 = distinct !{!725, !25, !26, !27}
!726 = distinct !{!726, !25, !27, !26}
!727 = distinct !{!727, !25, !26, !27}
!728 = distinct !{!728, !25, !27, !26}
!729 = distinct !{!729, !25, !26, !27}
!730 = distinct !{!730, !25, !27, !26}
!731 = distinct !{!731, !25, !26, !27}
!732 = distinct !{!732, !25, !27, !26}
!733 = distinct !{!733, !25, !26, !27}
!734 = distinct !{!734, !25, !27, !26}
!735 = distinct !{!735, !25, !26, !27}
!736 = distinct !{!736, !25, !27, !26}
!737 = distinct !{!737, !25, !26, !27}
!738 = distinct !{!738, !25, !27, !26}
!739 = distinct !{!739, !25, !26, !27}
!740 = distinct !{!740, !25, !27, !26}
!741 = distinct !{!741, !25, !26, !27}
!742 = distinct !{!742, !25, !27, !26}
!743 = distinct !{!743, !25, !26, !27}
!744 = distinct !{!744, !25, !27, !26}
!745 = distinct !{!745, !25, !26, !27}
!746 = distinct !{!746, !25, !27, !26}
!747 = distinct !{!747, !25, !26, !27}
!748 = distinct !{!748, !25, !27, !26}
!749 = distinct !{!749, !25, !26, !27}
!750 = distinct !{!750, !25, !27, !26}
!751 = distinct !{!751, !25, !26, !27}
!752 = distinct !{!752, !25, !27, !26}
!753 = distinct !{!753, !25, !26, !27}
!754 = distinct !{!754, !25, !27, !26}
!755 = distinct !{!755, !25, !26, !27}
!756 = distinct !{!756, !25, !27, !26}
!757 = distinct !{!757, !25, !26, !27}
!758 = distinct !{!758, !25, !27, !26}
!759 = distinct !{!759, !25, !26, !27}
!760 = distinct !{!760, !25, !27, !26}
!761 = distinct !{!761, !25, !26, !27}
!762 = distinct !{!762, !25, !27, !26}
!763 = distinct !{!763, !25, !26, !27}
!764 = distinct !{!764, !25, !27, !26}
!765 = distinct !{!765, !25, !26, !27}
!766 = distinct !{!766, !25, !27, !26}
!767 = distinct !{!767, !25, !26, !27}
!768 = distinct !{!768, !25, !27, !26}
!769 = distinct !{!769, !25, !26, !27}
!770 = distinct !{!770, !25, !27, !26}
!771 = distinct !{!771, !25, !26, !27}
!772 = distinct !{!772, !25, !27, !26}
!773 = distinct !{!773, !25, !26, !27}
!774 = distinct !{!774, !25, !27, !26}
!775 = distinct !{!775, !25, !26, !27}
!776 = distinct !{!776, !25, !27, !26}
!777 = distinct !{!777, !25, !26, !27}
!778 = distinct !{!778, !25, !27, !26}
!779 = distinct !{!779, !25, !26, !27}
!780 = distinct !{!780, !25, !27, !26}
!781 = distinct !{!781, !25, !26, !27}
!782 = distinct !{!782, !25, !27, !26}
!783 = distinct !{!783, !25, !26, !27}
!784 = distinct !{!784, !25, !27, !26}
!785 = distinct !{!785, !25, !26, !27}
!786 = distinct !{!786, !25, !27, !26}
!787 = distinct !{!787, !25, !26, !27}
!788 = distinct !{!788, !25, !27, !26}
!789 = distinct !{!789, !25, !26, !27}
!790 = distinct !{!790, !25, !27, !26}
!791 = distinct !{!791, !25, !26, !27}
!792 = distinct !{!792, !25, !27, !26}
!793 = distinct !{!793, !25, !26, !27}
!794 = distinct !{!794, !25, !27, !26}
!795 = distinct !{!795, !25, !26, !27}
!796 = distinct !{!796, !25, !27, !26}
!797 = distinct !{!797, !25, !26, !27}
!798 = distinct !{!798, !25, !27, !26}
!799 = distinct !{!799, !25, !26, !27}
!800 = distinct !{!800, !25, !27, !26}
!801 = distinct !{!801, !25, !26, !27}
!802 = distinct !{!802, !25, !27, !26}
!803 = distinct !{!803, !25, !26, !27}
!804 = distinct !{!804, !25, !27, !26}
!805 = distinct !{!805, !25, !26, !27}
!806 = distinct !{!806, !25, !27, !26}
!807 = distinct !{!807, !25, !26, !27}
!808 = distinct !{!808, !25, !27, !26}
!809 = distinct !{!809, !25, !26, !27}
!810 = distinct !{!810, !25, !27, !26}
!811 = distinct !{!811, !25, !26, !27}
!812 = distinct !{!812, !25, !27, !26}
!813 = distinct !{!813, !25, !26, !27}
!814 = distinct !{!814, !25, !27, !26}
!815 = distinct !{!815, !25, !26, !27}
!816 = distinct !{!816, !25, !27, !26}
!817 = distinct !{!817, !25, !26, !27}
!818 = distinct !{!818, !25, !27, !26}
!819 = distinct !{!819, !25, !26, !27}
!820 = distinct !{!820, !25, !27, !26}
!821 = distinct !{!821, !25, !26, !27}
!822 = distinct !{!822, !25, !27, !26}
!823 = distinct !{!823, !25, !26, !27}
!824 = distinct !{!824, !25, !27, !26}
!825 = distinct !{!825, !25, !26, !27}
!826 = distinct !{!826, !25, !27, !26}
!827 = distinct !{!827, !25, !26, !27}
!828 = distinct !{!828, !25, !27, !26}
!829 = distinct !{!829, !25, !26, !27}
!830 = distinct !{!830, !25, !27, !26}
!831 = distinct !{!831, !25, !26, !27}
!832 = distinct !{!832, !25, !27, !26}
!833 = distinct !{!833, !25, !26, !27}
!834 = distinct !{!834, !25, !27, !26}
!835 = distinct !{!835, !25, !26, !27}
!836 = distinct !{!836, !25, !27, !26}
!837 = distinct !{!837, !25, !26, !27}
!838 = distinct !{!838, !25, !27, !26}
!839 = distinct !{!839, !25, !26, !27}
!840 = distinct !{!840, !25, !27, !26}
!841 = distinct !{!841, !25, !26, !27}
!842 = distinct !{!842, !25, !27, !26}
!843 = distinct !{!843, !25, !26, !27}
!844 = distinct !{!844, !25, !27, !26}
!845 = distinct !{!845, !25, !26, !27}
!846 = distinct !{!846, !25, !27, !26}
!847 = distinct !{!847, !25, !26, !27}
!848 = distinct !{!848, !25, !27, !26}
!849 = distinct !{!849, !25, !26, !27}
!850 = distinct !{!850, !25, !27, !26}
!851 = distinct !{!851, !25, !26, !27}
!852 = distinct !{!852, !25, !27, !26}
!853 = distinct !{!853, !25, !26, !27}
!854 = distinct !{!854, !25, !27, !26}
!855 = distinct !{!855, !25, !26, !27}
!856 = distinct !{!856, !25, !27, !26}
!857 = distinct !{!857, !25, !26, !27}
!858 = distinct !{!858, !25, !27, !26}
!859 = distinct !{!859, !25, !26, !27}
!860 = distinct !{!860, !25, !27, !26}
!861 = distinct !{!861, !25, !26, !27}
!862 = distinct !{!862, !25, !27, !26}
!863 = distinct !{!863, !25, !26, !27}
!864 = distinct !{!864, !25, !27, !26}
!865 = distinct !{!865, i1 true, !"_ZNK5boost14static_strings19basic_static_stringILm400EcSt11char_traitsIcEE6substrEmm"}
!866 = distinct !{!866, !865, !"_ZNK5boost14static_strings19basic_static_stringILm400EcSt11char_traitsIcEE6substrEmm: argument 0"}
!867 = !{!866}
!868 = distinct !{!868, !25, !26, !27}
!869 = distinct !{!869, !25, !27, !26}
!870 = distinct !{!870, !25, !26, !27}
!871 = distinct !{!871, !25, !27, !26}
!872 = distinct !{!872, !25, !26, !27}
!873 = distinct !{!873, !25, !27, !26}
!874 = distinct !{!874, !25, !26, !27}
!875 = distinct !{!875, !25, !27, !26}
!876 = distinct !{!876, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!877 = distinct !{!877, !876, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!878 = distinct !{!878, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!879 = distinct !{!879, !878, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!880 = !{!877}
!881 = !{!879}
!882 = !{!879, !877}
!883 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !61, i64 56}
!884 = !{!883, !29, i64 40}
!885 = !{!883, !29, i64 32}
!886 = distinct !{!886, i1 true, !"_ZN5boost14static_stringsplILm10ELm10EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERKNS4_IXT_ES5_S6_EERKNS4_IXT0_ES5_S6_EE"}
!887 = distinct !{!887, !886, !"_ZN5boost14static_stringsplILm10ELm10EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERKNS4_IXT_ES5_S6_EERKNS4_IXT0_ES5_S6_EE: argument 0"}
!888 = distinct !{!888, i1 true, !"_ZN5boost14static_stringsplILm10ELm6EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERKNS4_IXT_ES5_S6_EERAT0__KS5_"}
!889 = distinct !{!889, !888, !"_ZN5boost14static_stringsplILm10ELm6EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERKNS4_IXT_ES5_S6_EERAT0__KS5_: argument 0"}
!890 = distinct !{!890, i1 true, !"_ZN5boost14static_stringsplILm6ELm10EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERAT__KS5_RKNS4_IXT0_ES5_S6_EE"}
!891 = distinct !{!891, !890, !"_ZN5boost14static_stringsplILm6ELm10EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERAT__KS5_RKNS4_IXT0_ES5_S6_EE: argument 0"}
!892 = distinct !{!892, i1 true, !"_ZN5boost14static_stringsplILm10ELm10EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERKNS4_IXT_ES5_S6_EERAT0__KS5_"}
!893 = distinct !{!893, !892, !"_ZN5boost14static_stringsplILm10ELm10EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERKNS4_IXT_ES5_S6_EERAT0__KS5_: argument 0"}
!894 = distinct !{!894, i1 true, !"_ZN5boost14static_stringsplILm10ELm10EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERAT__KS5_RKNS4_IXT0_ES5_S6_EE"}
!895 = distinct !{!895, !894, !"_ZN5boost14static_stringsplILm10ELm10EcSt11char_traitsIcEEENS0_19basic_static_stringIXplT_T0_ET1_T2_EERAT__KS5_RKNS4_IXT0_ES5_S6_EE: argument 0"}
!896 = !{!887}
!897 = !{!"_ZTSN5boost14static_strings6detail18static_string_baseILm11EcSt11char_traitsIcEE4size19basic_static_stringE", !17, i64 0}
!898 = !{!897, !17, i64 0}
!899 = !{!889}
!900 = !{!"_ZTSN5boost14static_strings6detail18static_string_baseILm16EcSt11char_traitsIcEE4size19basic_static_stringE", !17, i64 0}
!901 = !{!900, !17, i64 0}
!902 = !{!891}
!903 = !{!893}
!904 = !{!895}
!905 = distinct !{!905, !25}
!906 = distinct !{!906, !25}
!907 = distinct !{!907, !25}
!908 = distinct !{!908, !25}
!909 = distinct !{!909, !25}
!910 = !{!"_ZTSN5boost14static_strings6detail18static_string_baseILm8EcSt11char_traitsIcEE4size19basic_static_stringE", !17, i64 0}
!911 = !{!910, !17, i64 0}
!912 = distinct !{null}
!913 = distinct !{!913, !25, !26, !27}
!914 = distinct !{!914, !40}
!915 = distinct !{!915, !25, !26}
!916 = !{!"branch_weights", i32 4, i32 12}
!917 = distinct !{!917, i1 false, !"LVerDomain"}
!918 = distinct !{!918, !917}
!919 = distinct !{!919, !917}
!920 = distinct !{!920, !25, !26, !27}
!921 = distinct !{!921, !25, !26, !27}
!922 = distinct !{!922, !40}
!923 = distinct !{!923, !25, !26}
!924 = distinct !{!924, i1 false, !"LVerDomain"}
!925 = distinct !{!925, !924}
!926 = distinct !{!926, !924}
!927 = distinct !{!927, !25, !26, !27}
!928 = distinct !{!928, !25, !26, !27}
!929 = distinct !{!929, !40}
!930 = distinct !{!930, !25, !26}
!931 = distinct !{!931, i1 false, !"LVerDomain"}
!932 = distinct !{!932, !931}
!933 = distinct !{!933, !931}
!934 = distinct !{!934, !25, !26, !27}
!935 = distinct !{!935, !25, !26, !27}
!936 = distinct !{!936, !40}
!937 = distinct !{!937, !25}
!938 = distinct !{!938, !25, !26}
!939 = !{!918}
!940 = !{!919}
!941 = !{!925}
!942 = !{!926}
!943 = !{!"branch_weights", i32 4, i32 28}
!944 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!945 = !{!932}
!946 = !{!933}
!947 = distinct !{!947, !40}
!948 = distinct !{!948, !25}
!949 = distinct !{!949, !25, !26, !27}
!950 = distinct !{!950, !25, !26, !27}
!951 = distinct !{!951, !25, !26}
!952 = distinct !{ptr @_ZN5boost10wrapexceptISt12length_errorEC2ERKS2_, null}
!953 = distinct !{null}
!954 = !{ptr @_ZN5boost10wrapexceptISt12length_errorEC2ERKS2_}
!955 = distinct !{null}
!956 = distinct !{ptr @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_, null}
!957 = distinct !{null}
!958 = !{ptr @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_}
!959 = distinct !{null}
!960 = distinct !{null}
!961 = distinct !{null}
!962 = distinct !{!962, !25}
!963 = distinct !{null}
!964 = !{!"_ZTSNSo6sentryE", !48, i64 0, !64, i64 8}
!965 = !{!964, !48, i64 0}
!966 = !{!69, !65, i64 232}
!967 = !{!62, !54, i64 16}
!968 = !{!62, !55, i64 24}
!969 = !{!69, !48, i64 225}
!970 = !{!69, !17, i64 224}
!971 = !{!964, !64, i64 8}
!972 = !{i64 8}
!973 = !{!107, !106, i64 0}
!974 = !{!108, !54, i64 8}
!975 = distinct !{!975, !25, !26, !27}
!976 = distinct !{!976, !25, !26, !27}
!977 = distinct !{!977, !40}
!978 = distinct !{!978, !25, !26}
end_hunk_2
