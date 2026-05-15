inline.NumInlined: 1790
inline.NumDeleted: 565
begin_hunk_0_@_ZN4llvh3sys4path14const_iteratorppEv:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12
  %i.an = icmp eq i8 %i.am, 47
  br i1 %i.an, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread.us, label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread.us: ; preds = %.lr.ph.split.us
  %i.ao = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !15
  %.not.us = icmp eq i64 %i.ao, %i.h
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread
  %i.ap = phi i64 [ %i.as, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread ], [ %i.f, %.lr.ph.split.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12
  switch i8 %i.ar, label %_ZN4llvh9StringRefC2EPKc.exit [
    i8 47, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread
    i8 92, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread
  ]

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread: ; preds = %.lr.ph.split, %.lr.ph.split
  %i.as = add i64 %i.ap, 1                        ; 3 uses
  store i64 %i.as, ptr %i.d, align 8, !tbaa !15
  %.not = icmp eq i64 %i.as, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !20

._crit_edge:                                      ; preds = %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread.us, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit26.thread
  %i.at = icmp eq i64 %i.c, 1
  br i1 %i.at, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %._crit_edge
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !7
  %lhsc61 = load i8, ptr %.sroa.01.0.copyload, align 1
  %.not62 = icmp eq i8 %lhsc61, 47
  br i1 %.not62, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %._crit_edge, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.au = add i64 %i.h, -1
  store i64 %i.au, ptr %i.d, align 8, !tbaa !15
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !7
  store i64 1, ptr %i.b, align 8, !tbaa !10
  br label %bb.h

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %.lr.ph.split.us, %.lr.ph.split, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit21
  %i.av = phi i64 [ %i.ap, %.lr.ph.split ], [ %i.f, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit21 ], [ %i.h, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.ak, %.lr.ph.split.us ]
  %.not.i27 = icmp eq i32 %.fr, 0                 ; 2 uses
  %.str.11..str.1.i = select i1 %.not.i27, ptr @.str.11, ptr @.str.1
  %i.aw = select i1 %.not.i27, i64 2, i64 1
  %i.ax = tail call noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %.str.11..str.1.i, i64 %i.aw, i64 noundef %i.av) #30 ; 2 uses
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !15
  %i.az = load i64, ptr %i.g, align 8, !tbaa !10  ; 3 uses
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ay) ; 3 uses
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ax)
  %i.bc = icmp ugt i64 %i.ax, %i.az
  %i.bd = select i1 %i.bc, i64 %i.az, i64 %i.bb
  %i.be = load ptr, ptr %0, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ba
  %i.bg = sub i64 %i.bd, %i.ba
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !7
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread54, %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZN4llvh9StringRefC2EPKc.exit, %bb.b
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE(i8 noundef signext %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i8 %0, 47
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.b = icmp eq i8 %0, 92
  %spec.select = and i1 %i.b, %.not
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %spec.select, %bb.b ]
  ret i1 %.0
}

declare noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh3sys4path14const_iteratoreqERKS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = load ptr, ptr %1, align 8, !tbaa !13
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK4llvh3sys4path14const_iteratormiERKS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = sub i64 %i.b, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys4path6rbeginENS_9StringRefENS1_5StyleE(ptr dead_on_unwind noalias writable writeonly sret(%"class.llvh::sys::path::reverse_iterator") align 8 captures(none) initializes((0, 48)) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvh::sys::path::reverse_iterator", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %2, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %3, ptr %i.c, align 8, !tbaa !24
  %i.d = call noundef nonnull align 8 dereferenceable(44) ptr @_ZN4llvh3sys4path16reverse_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(44) %4) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(44) ptr @_ZN4llvh3sys4path16reverse_iteratorppEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(44) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::StringRef", align 8   ; 7 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %.sroa.010.0.copyload = load ptr, ptr %0, align 8, !tbaa !7 ; 12 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.211.0.copyload = load i64, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !10 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.010.0.copyload, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.211.0.copyload, ptr %i.c, align 8
  %.not27.i = icmp eq i32 %i.b, 0                 ; 6 uses
  br i1 %.not27.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %.sroa.211.0.copyload, 2
  br i1 %i.d, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = icmp eq i8 %i.f, 58
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  switch i8 %i.i, label %bb.e [
    i8 47, label %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit
    i8 92, label %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit
  ]

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.j = icmp ugt i64 %.sroa.211.0.copyload, 3
  br i1 %i.j, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.k = load i8, ptr %.sroa.010.0.copyload, align 1, !tbaa !12 ; 6 uses
  %i.l = icmp eq i8 %i.k, 47
  %i.m = icmp eq i8 %i.k, 92
  %spec.select.i9.i = and i1 %.not27.i, %i.m
  %or.cond.i = or i1 %i.l, %spec.select.i9.i
  br i1 %or.cond.i, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit11.thread.i, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit20.i

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit11.thread.i: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = icmp eq i8 %i.k, %i.o
  br i1 %i.p, label %bb.g, label %.thread24.i

bb.g:                                             ; preds = %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit11.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12    ; 2 uses
  %i.s = icmp eq i8 %i.r, 47
  %i.t = icmp eq i8 %i.r, 92
  %spec.select.i13.i = and i1 %.not27.i, %i.t
  %or.cond31.i = or i1 %i.s, %spec.select.i13.i
  br i1 %or.cond31.i, label %.thread24.i, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %bb.g
  %.str.11..str.1.i.i = select i1 %.not27.i, ptr @.str.11, ptr @.str.1
  %i.u = select i1 %.not27.i, i64 2, i64 1
  %i.v = call noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %.str.11..str.1.i.i, i64 %i.u, i64 noundef 2) #30
  %.pre.pre.pre = load ptr, ptr %0, align 8
  br label %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit

.thread.i:                                        ; preds = %bb.e, %bb.b
  %.not.i = icmp eq i64 %.sroa.211.0.copyload, 0
  br i1 %.not.i, label %bb.h, label %.thread..thread24_crit_edge.i

.thread..thread24_crit_edge.i:                    ; preds = %.thread.i
  %.pre.i = load i8, ptr %.sroa.010.0.copyload, align 1, !tbaa !12
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread..thread24_crit_edge.i, %bb.g, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit11.thread.i
  %i.w = phi i8 [ %.pre.i, %.thread..thread24_crit_edge.i ], [ %i.k, %bb.g ], [ %i.k, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit11.thread.i ] ; 2 uses
  %i.x = icmp eq i8 %i.w, 47
  br i1 %i.x, label %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit20.i

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit20.i: ; preds = %.thread24.i, %bb.f
  %i.y = phi i8 [ %i.k, %bb.f ], [ %i.w, %.thread24.i ]
  %i.z = icmp eq i8 %i.y, 92
  %spec.select.i18.i = and i1 %.not27.i, %i.z
  br i1 %spec.select.i18.i, label %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit20.i, %.thread.i
  br label %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit

_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit: ; preds = %bb.d, %bb.d, %_ZN4llvh9StringRefC2EPKc.exit.i, %.thread24.i, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit20.i, %bb.h
  %.pre.pre = phi ptr [ %.pre.pre.pre, %_ZN4llvh9StringRefC2EPKc.exit.i ], [ %.sroa.010.0.copyload, %bb.d ], [ %.sroa.010.0.copyload, %bb.h ], [ %.sroa.010.0.copyload, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit20.i ], [ %.sroa.010.0.copyload, %bb.d ], [ %.sroa.010.0.copyload, %.thread24.i ] ; 5 uses
  %.0.i = phi i64 [ %i.v, %_ZN4llvh9StringRefC2EPKc.exit.i ], [ 2, %bb.d ], [ -1, %bb.h ], [ 0, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit20.i ], [ 2, %bb.d ], [ 0, %.thread24.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22 ; 6 uses
  %.not58 = icmp eq i64 %i.ab, 0
  br i1 %.not58, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit
  %i.ac = load i32, ptr %i.a, align 8
  %.fr = freeze i32 %i.ac
  %.not.i25 = icmp eq i32 %.fr, 0
  %i.ad = add i64 %.0.i, 1                        ; 2 uses
  br i1 %.not.i25, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread.us
  %.01659.us = phi i64 [ %i.ae, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread.us ], [ %i.ab, %.lr.ph ] ; 2 uses
  %i.ae = add i64 %.01659.us, -1                  ; 4 uses
  %.not18.us = icmp eq i64 %i.ae, %.0.i
  br i1 %.not18.us, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %i.ah = icmp eq i8 %i.ag, 47
  br i1 %i.ah, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread.us, label %.critedge

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread.us: ; preds = %bb.i
  %.not.us = icmp eq i64 %i.ae, 0
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !25

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread
  %.01659 = phi i64 [ %i.ai, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread ], [ %i.ab, %.lr.ph ] ; 2 uses
  %i.ai = add i64 %.01659, -1                     ; 4 uses
  %.not18 = icmp eq i64 %i.ai, %.0.i
  br i1 %.not18, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  switch i8 %i.ak, label %.critedge [
    i8 47, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread
    i8 92, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread
  ]

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread: ; preds = %bb.j, %bb.j
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !25

.critedge:                                        ; preds = %bb.i, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread.us, %.lr.ph.split.us, %bb.j, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread, %.lr.ph.split, %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit
  %.016.lcssa = phi i64 [ 0, %_ZN12_GLOBAL__N_114root_dir_startEN4llvh9StringRefENS0_3sys4path5StyleE.exit ], [ %i.ad, %.lr.ph.split ], [ 0, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread ], [ %.01659, %bb.j ], [ 0, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread.us ], [ %.01659.us, %bb.i ], [ %i.ad, %.lr.ph.split.us ] ; 4 uses
  %i.al = load i64, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.am = icmp ne i64 %i.ab, %i.al
  %i.an = icmp eq i64 %i.al, 0
  %or.cond56 = or i1 %i.am, %i.an
  br i1 %or.cond56, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ao = getelementptr i8, ptr %.pre.pre, i64 %i.ab
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12  ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 47
  br i1 %i.ar, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30.thread, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30: ; preds = %bb.k
  %i.as = load i32, ptr %i.a, align 8, !tbaa !24
  %.not.i27 = icmp eq i32 %i.as, 0
  %i.at = icmp eq i8 %i.aq, 92
  %spec.select.i28 = and i1 %i.at, %.not.i27
  br i1 %spec.select.i28, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30.thread, label %bb.m

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30.thread: ; preds = %bb.k, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30
  %i.au = icmp eq i64 %.0.i, -1
  %i.av = add i64 %.016.lcssa, -1
  %i.aw = icmp ugt i64 %i.av, %.0.i
  %or.cond = or i1 %i.au, %i.aw
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30.thread
  %i.ax = add i64 %i.ab, -1
  store i64 %i.ax, ptr %i.aa, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.2, ptr %i.ay, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx40, align 8, !tbaa !10
  br label %bb.s

bb.m:                                             ; preds = %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30.thread, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit30, %.critedge
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.al, i64 %.016.lcssa) ; 3 uses
  %i.az = load i32, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.pre.pre, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.ba, align 8
  %.not.i32 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not.i32, label %_ZN4llvh9StringRefC2EPKc.exit.i33, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = add i64 %.sroa.speculated, -1           ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !12  ; 2 uses
  %i.be = icmp eq i8 %i.bd, 47
  br i1 %i.be, label %_ZN12_GLOBAL__N_112filename_posEN4llvh9StringRefENS0_3sys4path5StyleE.exit, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.i

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.i: ; preds = %bb.n
  %.not.i11.i = icmp eq i32 %i.az, 0
  %i.bf = icmp eq i8 %i.bd, 92
  %spec.select.i.i = and i1 %.not.i11.i, %i.bf
  br i1 %spec.select.i.i, label %_ZN12_GLOBAL__N_112filename_posEN4llvh9StringRefENS0_3sys4path5StyleE.exit, label %_ZN4llvh9StringRefC2EPKc.exit.i33

_ZN4llvh9StringRefC2EPKc.exit.i33:                ; preds = %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.i, %bb.m
  %.pre-phi.i = phi i64 [ %i.bb, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.i ], [ -1, %bb.m ]
  %.not.i12.i = icmp eq i32 %i.az, 0              ; 4 uses
  %.str.11..str.1.i.i34 = select i1 %.not.i12.i, ptr @.str.11, ptr @.str.1
  %i.bg = select i1 %.not.i12.i, i64 2, i64 1
  %i.bh = call noundef i64 @_ZNK4llvh9StringRef12find_last_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %.str.11..str.1.i.i34, i64 %i.bg, i64 noundef %.pre-phi.i) #30 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, -1
  %or.cond.i35 = and i1 %.not.i12.i, %i.bi
  br i1 %or.cond.i35, label %bb.o, label %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i

bb.o:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i33
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  %i.bk = add i64 %i.bj, -2
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bk) ; 2 uses
  %i.bl = load ptr, ptr %1, align 8
  %.not.i.i.i81 = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i81, label %_ZN12_GLOBAL__N_112filename_posEN4llvh9StringRefENS0_3sys4path5StyleE.exit, label %.lr.ph83

bb.p:                                             ; preds = %.lr.ph83
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_112filename_posEN4llvh9StringRefENS0_3sys4path5StyleE.exit, label %.lr.ph83, !llvm.loop !26

.lr.ph83:                                         ; preds = %bb.o, %bb.p
  %.0.i.i.i82 = phi i64 [ %i.bm, %bb.p ], [ %.sroa.speculated.i.i.i, %bb.o ]
  %i.bm = add i64 %.0.i.i.i82, -1                 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bp = icmp eq i8 %i.bo, 58
  br i1 %i.bp, label %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i, label %bb.p, !llvm.loop !26

_ZNK4llvh9StringRef12find_last_ofEcm.exit.i:      ; preds = %.lr.ph83, %_ZN4llvh9StringRefC2EPKc.exit.i33
  %.0.i36 = phi i64 [ %i.bh, %_ZN4llvh9StringRefC2EPKc.exit.i33 ], [ %i.bm, %.lr.ph83 ] ; 2 uses
  switch i64 %.0.i36, label %bb.r [
    i64 -1, label %_ZN12_GLOBAL__N_112filename_posEN4llvh9StringRefENS0_3sys4path5StyleE.exit
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i
  %i.bq = load ptr, ptr %1, align 8, !tbaa !13
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12  ; 2 uses
  %i.bs = icmp eq i8 %i.br, 47
  %i.bt = icmp eq i8 %i.br, 92
  %spec.select.i14.i = and i1 %.not.i12.i, %i.bt
  %or.cond20.i = or i1 %i.bs, %spec.select.i14.i
  br i1 %or.cond20.i, label %_ZN12_GLOBAL__N_112filename_posEN4llvh9StringRefENS0_3sys4path5StyleE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i
  %i.bu = add nuw i64 %.0.i36, 1
  br label %_ZN12_GLOBAL__N_112filename_posEN4llvh9StringRefENS0_3sys4path5StyleE.exit

_ZN12_GLOBAL__N_112filename_posEN4llvh9StringRefENS0_3sys4path5StyleE.exit: ; preds = %bb.p, %bb.o, %bb.n, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.i, %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i, %bb.q, %bb.r
  %.1.i = phi i64 [ 0, %bb.q ], [ %i.bu, %bb.r ], [ 0, %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i ], [ %i.bb, %bb.n ], [ %i.bb, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.i ], [ 0, %bb.o ], [ 0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bv = load i64, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !10 ; 3 uses
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bv, i64 %.1.i) ; 3 uses
  %i.bx = call i64 @llvm.umax.i64(i64 %i.bw, i64 %.016.lcssa)
  %i.by = icmp ugt i64 %.016.lcssa, %i.bv
  %i.bz = select i1 %i.by, i64 %i.bv, i64 %i.bx
  %i.ca = load ptr, ptr %0, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bw
  %i.cc = sub i64 %i.bz, %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cc, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@_ZN4llvh12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_:bb.a
  %i.h = inttoptr i64 %i.c to ptr                 ; 10 uses
  store ptr null, ptr %1, align 8, !tbaa !203, !noalias !261
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @_ZN4llvh9ErrorList2IDE) #30, !inline_history !264
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !265  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !265  ; 2 uses
  %.not34 = icmp eq ptr %i.n, %i.p
  br i1 %.not34, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4llvh5ErrorD2Ev.exit9
  %.sroa.024.035 = phi ptr [ %i.aw, %_ZN4llvh5ErrorD2Ev.exit9 ], [ %i.n, %bb.c ] ; 3 uses
  %i.q = phi i64 [ %i.af, %_ZN4llvh5ErrorD2Ev.exit9 ], [ 1, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %4, align 8, !tbaa !203
  %i.s = load i64, ptr %.sroa.024.035, align 8, !tbaa !206 ; 3 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 4 uses
  store ptr null, ptr %.sroa.024.035, align 8, !tbaa !206
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !223, !noalias !267
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !noalias !267
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @_ZN4llvh13ErrorInfoBase2IDE) #30, !noalias !267, !inline_history !270
  br i1 %i.x, label %bb.d, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i

bb.d:                                             ; preds = %.lr.ph
  store ptr inttoptr (i64 1 to ptr), ptr %5, align 8, !tbaa !203, !alias.scope !271
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %_ZN4llvh5ErrorD2Ev.exit7, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !223, !noalias !267
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !267
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #30, !noalias !267, !inline_history !274
  br label %_ZN4llvh5ErrorD2Ev.exit7

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i: ; preds = %.lr.ph
  %i.ab = or i64 %i.s, 1
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %5, align 8, !tbaa !203, !alias.scope !275
  br label %_ZN4llvh5ErrorD2Ev.exit7

_ZN4llvh5ErrorD2Ev.exit7:                         ; preds = %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.d
  call void @_ZN4llvh9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Error") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %i.ad = load ptr, ptr %3, align 8, !tbaa !203
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = or i64 %i.ae, 1                         ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !203
  %i.ag = load ptr, ptr %5, align 8, !tbaa !203
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, -2                       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh5ErrorD2Ev.exit7
  %i.ak = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !223
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #30, !inline_history !251
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZN4llvh5ErrorD2Ev.exit7
  %i.ao = load ptr, ptr %4, align 8, !tbaa !203
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, -2                       ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN4llvh5ErrorD2Ev.exit9, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit
  %i.as = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !223
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #30, !inline_history !251
  br label %_ZN4llvh5ErrorD2Ev.exit9

_ZN4llvh5ErrorD2Ev.exit9:                         ; preds = %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.p
  br i1 %.not, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !223, !noalias !278
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !278
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @_ZN4llvh13ErrorInfoBase2IDE) #30, !noalias !278, !inline_history !270
  br i1 %i.ba, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i12, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i10

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i12: ; preds = %bb.g
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !203, !alias.scope !281
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !223, !noalias !278
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !278
  tail call void %i.bd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #30, !noalias !278, !inline_history !274
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i10: ; preds = %bb.g
  %i.be = or i64 %i.b, 1
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr %i.bf, ptr %0, align 8, !tbaa !203, !alias.scope !284
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18.loopexit: ; preds = %_ZN4llvh5ErrorD2Ev.exit9
  %i.bg = inttoptr i64 %i.af to ptr
  br label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18: ; preds = %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18.loopexit, %bb.c
  %.lcssa = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.bg, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18.loopexit ]
  store ptr %.lcssa, ptr %0, align 8
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #30, !inline_history !287
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i12, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i10, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18, %_ZN4llvh5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind noalias writable sret(%"class.llvh::Error") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !203
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  %i.e = zext i1 %i.d to i64
  %i.f = or disjoint i64 %i.c, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr %1, align 8, !tbaa !203
  %i.h = load ptr, ptr %2, align 8, !tbaa !203
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = or i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  store ptr %i.k, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %2, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

bb.c:                                             ; preds = %bb.a
  %i.l = and i64 %i.i, -2                         ; 2 uses
  %i.m = icmp ne i64 %i.l, 0                      ; 2 uses
  %i.n = zext i1 %i.m to i64
  %i.o = or disjoint i64 %i.l, %i.n
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !203
  %i.q = load ptr, ptr %1, align 8, !tbaa !203
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = or i64 %i.r, 1
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %1, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

bb.e:                                             ; preds = %bb.c
  %i.u = and i64 %i.r, -2                         ; 2 uses
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit:      ; preds = %bb.e
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !223
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @_ZN4llvh9ErrorList2IDE) #30, !inline_history !288
  %.pre114 = load ptr, ptr %2, align 8, !tbaa !203 ; 2 uses
  br i1 %i.z, label %bb.f, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread

bb.f:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit
  %i.aa = load ptr, ptr %1, align 8, !tbaa !203
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, -2
  %i.ad = inttoptr i64 %i.ac to ptr               ; 6 uses
  %i.ae = ptrtoint ptr %.pre114 to i64
  %i.af = and i64 %i.ae, -2                       ; 2 uses
  %.not.i8 = icmp eq i64 %i.af, 0
  br i1 %.not.i8, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9:     ; preds = %bb.f
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !223
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @_ZN4llvh9ErrorList2IDE) #30, !inline_history !288
  %.pre = load ptr, ptr %2, align 8, !tbaa !203, !noalias !146
  %i.al = ptrtoint ptr %.pre to i64
  %i.am = and i64 %i.al, -2                       ; 3 uses
  br i1 %i.ak, label %bb.g, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread

bb.g:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9
  %i.an = inttoptr i64 %i.am to ptr               ; 4 uses
  store ptr null, ptr %2, align 8, !tbaa !203, !noalias !289
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !265 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !265 ; 2 uses
  %.not111 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %bb.g
  %.not.i10 = icmp eq i64 %i.am, 0
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i: ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !223
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #30, !inline_history !287
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %.sroa.0104.0112 = phi ptr [ %i.ap, %.lr.ph ], [ %i.bc, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 4 uses
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !292 ; 4 uses
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !294
  %.not.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %.sroa.0104.0112, align 8, !tbaa !206
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !206
  store ptr null, ptr %.sroa.0104.0112, align 8, !tbaa !206
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.as, align 8, !tbaa !292
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0104.0112)
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0104.0112, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.ar
  br i1 %.not, label %._crit_edge, label %bb.h

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread: ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9, %bb.f
  %.pre-phi117 = phi i64 [ 0, %bb.f ], [ %i.am, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !203, !noalias !295
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !292 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !294
  %.not.i.i11 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread
  store i64 %.pre-phi117, ptr %i.bf, align 8, !tbaa !206
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !292
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !298 ; 10 uses
  %i.bk = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i32 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i32)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #32 ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  store i64 %.pre-phi117, ptr %i.bv, align 8, !tbaa !206
  %.not10.i.i.i.i = icmp eq ptr %i.bj, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = add i64 %i.bk, -8
  %i.bx = sub i64 %i.bw, %i.bl                    ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader167, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ca = add i64 %i.bk, -8
  %i.cb = sub i64 %i.ca, %i.bl
  %i.cc = and i64 %i.cb, -8
  %i.cd = add i64 %i.cc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bu, i64 %i.cd
  %scevgep140 = getelementptr i8, ptr %i.bj, i64 %i.cd
  %bound0 = icmp ult ptr %i.bu, %scevgep140
  %bound1 = icmp ult ptr %i.bj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader167, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bu, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bj, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.ch ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.bj, i64 %i.ch ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.ci = getelementptr i8, ptr %next.gep141, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep141, align 8, !tbaa !206, !alias.scope !304, !noalias !299
  %wide.load142 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !206, !alias.scope !304, !noalias !299
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !206, !alias.scope !307, !noalias !304
  store <2 x i64> %wide.load142, ptr %i.cj, align 8, !tbaa !206, !alias.scope !307, !noalias !304
  %i.ck = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep141, align 8, !tbaa !206, !alias.scope !304, !noalias !299
  store <2 x ptr> splat (ptr null), ptr %i.ck, align 8, !tbaa !206, !alias.scope !304, !noalias !299
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader167

.lr.ph.i.i.i.i.preheader167:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bu, %vector.memcheck ], [ %i.bu, %.lr.ph.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader167, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader167 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader167 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.cm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !206, !alias.scope !302, !noalias !299
  store i64 %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !206, !alias.scope !299, !noalias !302
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !206, !alias.scope !302, !noalias !299
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !310

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bu, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.cf, %middle.block ], [ %i.co, %.lr.ph.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.n
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !298
  store ptr %i.cp, ptr %i.be, align 8, !tbaa !292
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cq, ptr %i.bg, align 8, !tbaa !294
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i, %._crit_edge
  %i.cr = load ptr, ptr %1, align 8, !tbaa !203
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = or i64 %i.cs, 1
  %i.cu = inttoptr i64 %i.ct to ptr
  store ptr %i.cu, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %1, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread: ; preds = %bb.e, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit
  %i.cv = phi ptr [ %i.p, %bb.e ], [ %.pre114, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit ]
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, -2                       ; 2 uses
  %.not.i16 = icmp eq i64 %i.cx, 0
  br i1 %.not.i16, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17:    ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !223
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = tail call noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @_ZN4llvh9ErrorList2IDE) #30, !inline_history !288
  br i1 %i.dc, label %bb.o, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread

bb.o:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17
  %i.dd = load ptr, ptr %2, align 8, !tbaa !203
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = and i64 %i.de, -2
  %i.dg = inttoptr i64 %i.df to ptr               ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !265 ; 13 uses
  %i.dj = load ptr, ptr %1, align 8, !tbaa !203, !noalias !311
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, -2                       ; 3 uses
  %i.dm = inttoptr i64 %i.dl to ptr
  store ptr null, ptr %1, align 8, !tbaa !203, !noalias !311
  %i.dn = ptrtoint ptr %i.di to i64               ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !292 ; 11 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !294
  %.not.i.i18 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i.i18, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = icmp eq ptr %i.di, %i.dp
  br i1 %i.ds, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 %i.dl, ptr %i.dp, align 8, !tbaa !206
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !292
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

bb.r:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 -8 ; 4 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !206
  store i64 %i.dv, ptr %i.dp, align 8, !tbaa !206
  store ptr null, ptr %i.du, align 8, !tbaa !206
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dw, ptr %i.do, align 8, !tbaa !292
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dx, %i.dn
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.r, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.dz, %bb.r ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.dp, %bb.r ]
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.eb, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.du, %bb.r ]
  %i.eb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !206
  store ptr null, ptr %i.eb, align 8, !tbaa !206
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !206 ; 3 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !206
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !223
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ee) #30, !inline_history !314
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ei = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.ej = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, !llvm.loop !315

_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, %bb.r
  %i.ek = load ptr, ptr %i.di, align 8, !tbaa !206 ; 3 uses
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !206
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !223
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ek) #30, !inline_history !316
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

bb.s:                                             ; preds = %bb.o
  %i.eo = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.ep = sub i64 %i.eo, %i.dn                    ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %bb.t, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41: ; preds = %bb.s
  %i.er = ashr exact i64 %i.ep, 3                 ; 3 uses
  %.sroa.speculated.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i34, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = tail call i64 @llvm.umin.i64(i64 %i.es, i64 1152921504606846975)
  %i.ev = select i1 %i.et, i64 1152921504606846975, i64 %i.eu ; 3 uses
  %.not.i.i35 = icmp ne i64 %i.ev, 0
  tail call void @llvm.assume(i1 %.not.i.i35)
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #32 ; 5 uses
  store i64 %i.dl, ptr %i.ex, align 8, !tbaa !206
  %i.ey = getelementptr i8, ptr %i.ex, i64 8      ; 6 uses
  %.not10.i.i.i16.i43 = icmp eq ptr %i.di, %i.dp
  br i1 %.not10.i.i.i16.i43, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44.preheader

.lr.ph.i.i.i17.i44.preheader:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41
  %i.ez = add i64 %i.eo, -8
  %i.fa = sub i64 %i.ez, %i.dn                    ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.fa, 184
  br i1 %min.iters.check151, label %.lr.ph.i.i.i17.i44.preheader166, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.i.i.i17.i44.preheader
  %i.fd = add i64 %i.eo, -8
  %i.fe = sub i64 %i.fd, %i.dn
  %i.ff = and i64 %i.fe, -8                       ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ex, i64 %i.ff
  %scevgep145 = getelementptr i8, ptr %i.fg, i64 16
  %i.fh = getelementptr i8, ptr %i.di, i64 %i.ff
  %scevgep146 = getelementptr i8, ptr %i.fh, i64 8
  %bound0147 = icmp ult ptr %i.ey, %scevgep146
  %bound1148 = icmp ult ptr %i.di, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i.i.i17.i44.preheader166, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck144
  %n.vec154 = and i64 %i.fc, 4611686018427387900  ; 3 uses
  %i.fi = shl i64 %n.vec154, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ey, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %i.di, i64 %i.fi
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.fl = shl i64 %index156, 3                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.ey, i64 %i.fl ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.di, i64 %i.fl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.fm = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <2 x i64>, ptr %next.gep158, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %wide.load160 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %i.fn = getelementptr i8, ptr %next.gep157, i64 16
  store <2 x i64> %wide.load159, ptr %next.gep157, align 8, !tbaa !206, !alias.scope !325, !noalias !322
  store <2 x i64> %wide.load160, ptr %i.fn, align 8, !tbaa !206, !alias.scope !325, !noalias !322
  %i.fo = getelementptr i8, ptr %next.gep158, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep158, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  store <2 x ptr> splat (ptr null), ptr %i.fo, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %index.next161 = add nuw i64 %index156, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.fp, label %middle.block162, label %vector.body155, !llvm.loop !327

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.fc, %n.vec154
  br i1 %cmp.n163, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44.preheader166

.lr.ph.i.i.i17.i44.preheader166:                  ; preds = %vector.memcheck144, %.lr.ph.i.i.i17.i44.preheader, %middle.block162
  %.012.i.i.i18.i45.ph = phi ptr [ %i.ey, %vector.memcheck144 ], [ %i.ey, %.lr.ph.i.i.i17.i44.preheader ], [ %i.fj, %middle.block162 ]
  %.0911.i.i.i19.i46.ph = phi ptr [ %i.di, %vector.memcheck144 ], [ %i.di, %.lr.ph.i.i.i17.i44.preheader ], [ %i.fk, %middle.block162 ]
  br label %.lr.ph.i.i.i17.i44

.lr.ph.i.i.i17.i44:                               ; preds = %.lr.ph.i.i.i17.i44.preheader166, %.lr.ph.i.i.i17.i44
  %.012.i.i.i18.i45 = phi ptr [ %i.fs, %.lr.ph.i.i.i17.i44 ], [ %.012.i.i.i18.i45.ph, %.lr.ph.i.i.i17.i44.preheader166 ] ; 2 uses
  %.0911.i.i.i19.i46 = phi ptr [ %i.fr, %.lr.ph.i.i.i17.i44 ], [ %.0911.i.i.i19.i46.ph, %.lr.ph.i.i.i17.i44.preheader166 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.fq = load i64, ptr %.0911.i.i.i19.i46, align 8, !tbaa !206, !alias.scope !320, !noalias !317
  store i64 %i.fq, ptr %.012.i.i.i18.i45, align 8, !tbaa !206, !alias.scope !317, !noalias !320
  store ptr null, ptr %.0911.i.i.i19.i46, align 8, !tbaa !206, !alias.scope !320, !noalias !317
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i46, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i45, i64 8 ; 2 uses
  %.not.i.i.i20.i47 = icmp eq ptr %i.fr, %i.dp
  br i1 %.not.i.i.i20.i47, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44, !llvm.loop !328

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48: ; preds = %.lr.ph.i.i.i17.i44, %middle.block162, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41
  %.0.lcssa.i.i.i21.i49 = phi ptr [ %i.ey, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41 ], [ %i.fj, %middle.block162 ], [ %i.fs, %.lr.ph.i.i.i17.i44 ]
  %.not.i23.i50 = icmp eq ptr %i.di, null
  br i1 %.not.i23.i50, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.ep) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, %bb.u
  store ptr %i.ex, ptr %i.dh, align 8, !tbaa !298
  store ptr %.0.lcssa.i.i.i21.i49, ptr %i.do, align 8, !tbaa !292
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.ft, ptr %i.dq, align 8, !tbaa !294
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i, %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, %bb.q
  %i.fu = load ptr, ptr %2, align 8, !tbaa !203
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = or i64 %i.fv, 1
  %i.fx = inttoptr i64 %i.fw to ptr
  store ptr %i.fx, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %2, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread: ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17
  %i.fy = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  %i.fz = load ptr, ptr %1, align 8, !tbaa !203, !noalias !329
  store ptr null, ptr %1, align 8, !tbaa !203, !noalias !329
  %i.ga = load ptr, ptr %2, align 8, !tbaa !203, !noalias !332
  store ptr null, ptr %2, align 8, !tbaa !203, !noalias !332
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh9ErrorListE, i64 16), ptr %i.fy, align 8, !tbaa !223
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ge = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32 ; 3 uses
  %i.gf = insertelement <2 x ptr> poison, ptr %i.fz, i64 0
  %i.gg = insertelement <2 x ptr> %i.gf, ptr %i.ga, i64 1
  %i.gh = ptrtoint <2 x ptr> %i.gg to <2 x i64>
  %i.gi = and <2 x i64> %i.gh, splat (i64 -2)
  store <2 x i64> %i.gi, ptr %i.ge, align 8, !tbaa !206
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  store ptr %i.ge, ptr %i.gb, align 8, !tbaa !298
  store ptr %i.gj, ptr %i.gc, align 8, !tbaa !292
  store ptr %i.gj, ptr %i.gd, align 8, !tbaa !294
  %i.gk = ptrtoint ptr %i.fy to i64
  %i.gl = or i64 %i.gk, 1
  %i.gm = inttoptr i64 %i.gl to ptr
  store ptr %i.gm, ptr %0, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !292  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !298    ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #32 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load i64, ptr %2, align 8, !tbaa !206
  store i64 %i.s, ptr %i.r, align 8, !tbaa !206
  store ptr null, ptr %2, align 8, !tbaa !206
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.t = add i64 %i.a, -8
  %i.u = sub i64 %i.t, %i.f                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.x = add i64 %i.a, -8
  %i.y = sub i64 %i.x, %i.f
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.aa
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ae ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.d, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.af = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %wide.load37 = load <2 x i64>, ptr %i.af, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !206, !alias.scope !343, !noalias !340
  store <2 x i64> %wide.load37, ptr %i.ag, align 8, !tbaa !206, !alias.scope !343, !noalias !340
  %i.ah = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !206, !alias.scope !338, !noalias !335
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !206, !alias.scope !335, !noalias !338
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !206, !alias.scope !338, !noalias !335
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !346

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.an = add i64 %i.e, -8
  %i.ao = sub i64 %i.an, %i.a                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.ao, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ar = add i64 %i.e, -8
  %i.as = sub i64 %i.ar, %i.a
  %i.at = and i64 %i.as, -8                       ; 2 uses
  %i.au = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.at
  %scevgep40 = getelementptr i8, ptr %i.au, i64 16
  %i.av = getelementptr i8, ptr %1, i64 %i.at
  %scevgep41 = getelementptr i8, ptr %i.av, i64 8
  %bound042 = icmp ult ptr %i.am, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.aw = shl i64 %n.vec49, 3                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.az = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.am, i64 %i.az ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %wide.load55 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %i.bb = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !tbaa !206, !alias.scope !355, !noalias !352
  store <2 x i64> %wide.load55, ptr %i.bb, align 8, !tbaa !206, !alias.scope !355, !noalias !352
  %i.bc = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bd, label %middle.block57, label %vector.body50, !llvm.loop !357

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.aq, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.am, %vector.memcheck39 ], [ %i.am, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ay, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bg, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.be = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !206, !alias.scope !350, !noalias !347
  store i64 %i.be, ptr %.012.i.i.i18, align 8, !tbaa !206, !alias.scope !347, !noalias !350
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !206, !alias.scope !350, !noalias !347
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !358

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.am, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ax, %middle.block57 ], [ %i.bg, %.lr.ph.i.i.i17 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !294
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #33
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !298
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8, !tbaa !292
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !294
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh3sys2fs18directory_iteratorC2ERKNS_5TwineERSt10error_codeb(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %4 = alloca %"class.llvh::SmallString.11", align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 %i.a, ptr %i.b, align 8, !tbaa !359
  %i.c = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #32, !noalias !362 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !220, !noalias !367
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !222, !noalias !367
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !223, !noalias !367
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !367
  store ptr %i.h, ptr %i.g, align 8, !tbaa !71, !noalias !367
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 36, i1 false), !noalias !367
  store i32 65535, ptr %i.j, align 4, !tbaa !198, !noalias !367
  store ptr %i.f, ptr %0, align 8, !tbaa !368
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.k, align 8, !tbaa !219
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 17
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 128, ptr %i.n, align 4, !tbaa !39
  %.not.i.i5 = icmp eq i8 %.pre, 1
  br i1 %.not.i.i5, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !40
  switch i8 %i.p, label %bb.g [
    i8 1, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
    i8 3, label %bb.b
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i6, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #29
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.d:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.w, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !10
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.f:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !38
  %i.ab = zext i32 %i.aa to i64
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.g:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %i.ac = load ptr, ptr %4, align 8, !tbaa !36
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !38
  %i.ae = zext i32 %i.ad to i64
  %.pre8 = load i8, ptr %i.b, align 8, !tbaa !359, !range !145
  %i.af = trunc nuw i8 %.pre8 to i1
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.ag = phi i1 [ %i.af, %bb.g ], [ %3, %bb.f ], [ %3, %bb.a ], [ %3, %bb.d ], [ %3, %bb.e ], [ %3, %bb.b ], [ %3, %bb.c ]
  %.sroa.3.0.i = phi i64 [ %i.ae, %bb.g ], [ %i.ab, %bb.f ], [ 0, %bb.a ], [ %i.v, %bb.d ], [ %.sroa.7.0.copyload.i.i, %bb.e ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.g ], [ %i.y, %bb.f ], [ null, %bb.a ], [ %i.t, %bb.d ], [ %.sroa.0.0.copyload.i.i, %bb.e ], [ null, %bb.b ], [ %i.q, %bb.c ]
  %i.ah = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_constructERNS2_12DirIterStateENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 noundef zeroext %i.ag) ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ah, 0
  %i.aj = extractvalue { i32, ptr } %i.ah, 1
  store i32 %i.ai, ptr %2, align 8, !tbaa !3
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aj, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !149
  %i.ak = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.l
  br i1 %i.al, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
  call void @free(ptr noundef %i.ak) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, ptr } @_ZN4llvh3sys2fsL23remove_directories_implINS1_15directory_entryEEESt10error_codeRKT_b(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::ErrorOr.33", align 8  ; 11 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #32, !noalias !369 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i32 1, ptr %i.b, align 8, !tbaa !220, !noalias !374
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !222, !noalias !374
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !223, !noalias !374
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !noalias !374
  store ptr %i.f, ptr %i.e, align 8, !tbaa !71, !noalias !374
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 36, i1 false), !noalias !374
  store i32 65535, ptr %i.h, align 4, !tbaa !198, !noalias !374
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre6.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.i = tail call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_constructERNS2_12DirIterStateENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr %.pre.i, i64 %.pre6.i, i1 noundef zeroext false) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %.not4962 = icmp eq i64 %i.k, 0
  br i1 %.not4962, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  br i1 %1, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK4llvh3sys2fs15directory_entry6statusEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr.33") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.e)
  %i.p = load i32, ptr %i.m, align 8, !tbaa !151
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.b, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.r = call fastcc { i32, ptr } @_ZN4llvh3sys2fsL23remove_directories_implINS1_15directory_entryEEESt10error_codeRKT_b(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i1 noundef zeroext true) ; 0 uses
  br label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us

_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us: ; preds = %bb.b, %.lr.ph.split.us.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i8 4, ptr %i.n, align 8, !tbaa !40
  store i8 1, ptr %i.o, align 1, !tbaa !43
  store ptr %i.e, ptr %3, align 8, !tbaa !12
  %i.s = call { i32, ptr } @_ZN4llvh3sys2fs6removeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.t = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_incrementERNS2_12DirIterStateE(ptr noundef nonnull align 8 dereferenceable(88) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.u = load i64, ptr %i.j, align 8, !tbaa !47
  %.not49.us = icmp eq i64 %i.u, 0
  br i1 %.not49.us, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !375

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK4llvh3sys2fs15directory_entry6statusEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr.33") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.e)
  %i.v = load i8, ptr %i.l, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8, !tbaa !3
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !149
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = load i32, ptr %i.m, align 8, !tbaa !151
end_hunk_1
begin_hunk_2_@llvm.umin.i32
!92 = distinct !{!92, !93, !"_ZN4llvh3sys4path6rbeginENS_9StringRefENS1_5StyleE: argument 0"}
!93 = distinct !{!93, !"_ZN4llvh3sys4path6rbeginENS_9StringRefENS1_5StyleE"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN4llvh3sys4path6rbeginENS_9StringRefENS1_5StyleE: argument 0"}
!96 = distinct !{!96, !"_ZN4llvh3sys4path6rbeginENS_9StringRefENS1_5StyleE"}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN4llvh3sys4pathL11remove_dotsENS_9StringRefEbNS1_5StyleE: argument 0"}
!101 = distinct !{!101, !"_ZN4llvh3sys4pathL11remove_dotsENS_9StringRefEbNS1_5StyleE"}
!102 = !{!103, !100}
!103 = distinct !{!103, !104, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE: argument 0"}
!104 = distinct !{!104, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE"}
!105 = !{i64 0, i64 8, !7, i64 8, i64 8, !10}
!106 = !{ptr @lstat, ptr @stat}
!107 = !{ptr @_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb}
!108 = !{!109, !11, i64 40}
!109 = !{!"_ZTSN4llvh3sys2fs11file_statusE", !110, i64 0, !11, i64 40, !11, i64 48, !11, i64 56}
!110 = !{!"_ZTSN4llvh3sys2fs17basic_file_statusE", !11, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !11, i64 24, !111, i64 32, !112, i64 36}
!111 = !{!"_ZTSN4llvh3sys2fs9file_typeE", !5, i64 0}
!112 = !{!"_ZTSN4llvh3sys2fs5permsE", !5, i64 0}
!113 = !{!109, !11, i64 56}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!118 = distinct !{!118, !"_ZN4llvhplERKNS_5TwineES2_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!121 = distinct !{!121, !"_ZNK4llvh5Twine6concatERKS0_"}
!122 = !{!120, !117}
!123 = !{!42, !42, i64 0}
!124 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 1, !123, i64 17, i64 1, !123}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!127 = distinct !{!127, !"_ZNK4llvh5Twine6concatERKS0_"}
!128 = distinct !{!128, !129, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!129 = distinct !{!129, !"_ZN4llvhplERKNS_5TwineES2_"}
!130 = !{!128}
!131 = !{!126}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!134 = distinct !{!134, !"_ZN4llvhplERKNS_5TwineES2_"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!137 = distinct !{!137, !"_ZNK4llvh5Twine6concatERKS0_"}
!138 = !{!136, !133}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE: argument 0"}
!141 = distinct !{!141, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE"}
!142 = !{!"branch_weights", i32 1, i32 1048575}
!143 = !{!144, !144, i64 0}
!144 = !{!"bool", !5, i64 0}
!145 = !{i8 0, i8 2}
!146 = !{}
!147 = distinct !{!147, !21}
!148 = distinct !{!148, !21}
!149 = !{!150, !150, i64 0}
!150 = !{!"p1 _ZTSNSt3_V214error_categoryE", !9, i64 0}
!151 = !{!110, !111, i64 32}
!152 = !{!153, !4, i64 24}
!153 = !{!"_ZTS4stat", !11, i64 0, !11, i64 8, !11, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !154, i64 72, !154, i64 88, !154, i64 104, !5, i64 120}
!154 = !{!"_ZTS8timespec", !11, i64 0, !11, i64 8}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!157 = distinct !{!157, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!160 = distinct !{!160, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!161 = !{!159, !156}
!162 = !{!163, !111, i64 32}
!163 = !{!"_ZTSN4llvh3sys2fs15directory_entryE", !45, i64 0, !111, i64 32, !144, i64 36, !110, i64 40}
!164 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 8, !10, i64 32, i64 4, !165, i64 36, i64 4, !166}
!165 = !{!111, !111, i64 0}
!166 = !{!112, !112, i64 0}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!169 = distinct !{!169, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!170 = distinct !{!170, !21}
!171 = !{!110, !11, i64 0}
!172 = !{!110, !11, i64 8}
!173 = !{!109, !11, i64 48}
!174 = !{!175, !11, i64 8}
!175 = !{!"_ZTS6statfs", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !176, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88}
!176 = !{!"_ZTS8__fsid_t", !5, i64 0}
!177 = !{!175, !11, i64 16}
!178 = !{!175, !11, i64 24}
!179 = !{!175, !11, i64 32}
!180 = !{!153, !11, i64 0}
!181 = !{!153, !11, i64 8}
!182 = distinct !{!182, !21}
!183 = !{!175, !11, i64 0}
!184 = !{!153, !11, i64 72}
!185 = !{!153, !11, i64 88}
!186 = !{!153, !11, i64 48}
!187 = !{!188, !11, i64 0}
!188 = !{!"_ZTSN4llvh3sys2fs18mapped_file_regionE", !11, i64 0, !9, i64 8, !189, i64 16}
!189 = !{!"_ZTSN4llvh3sys2fs18mapped_file_region7mapmodeE", !5, i64 0}
!190 = !{!188, !9, i64 8}
!191 = !{!188, !189, i64 16}
!192 = !{!193, !11, i64 0}
!193 = !{!"_ZTSN4llvh3sys2fs6detail12DirIterStateE", !11, i64 0, !163, i64 8}
!194 = !{!163, !144, i64 36}
!195 = !{!196, !5, i64 18}
!196 = !{!"_ZTS6dirent", !11, i64 0, !11, i64 8, !197, i64 16, !5, i64 18, !5, i64 19}
!197 = !{!"short", !5, i64 0}
!198 = !{!110, !112, i64 36}
!199 = distinct !{!199, !21}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!202 = distinct !{!202, !"_ZN4llvh5Error11takePayloadEv"}
!203 = !{!204, !205, i64 0}
!204 = !{!"_ZTSN4llvh5ErrorE", !205, i64 0}
!205 = !{!"p1 _ZTSN4llvh13ErrorInfoBaseE", !9, i64 0}
!206 = !{!205, !205, i64 0}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!209 = distinct !{!209, !"_ZN4llvh5Error11takePayloadEv"}
!210 = !{!211, !4, i64 0}
!211 = !{!"_ZTSSt10error_code", !4, i64 0, !150, i64 8}
!212 = !{!211, !150, i64 8}
!213 = !{!214, !215, i64 0}
!214 = !{!"_ZTSSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EE", !215, i64 0, !216, i64 8}
!215 = !{!"p1 _ZTSN4llvh3sys2fs6detail12DirIterStateE", !9, i64 0}
!216 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !217, i64 0}
!217 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!218 = distinct !{!218, !21}
!219 = !{!216, !217, i64 0}
!220 = !{!221, !4, i64 8}
!221 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!222 = !{!221, !4, i64 12}
!223 = !{!224, !224, i64 0}
!224 = !{!"vtable pointer", !6, i64 0}
!225 = distinct !{null, null, null, null, null}
!226 = distinct !{!226, !21}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!229 = distinct !{!229, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!230 = !{!231, !144, i64 0}
!231 = !{!"_ZTSN4llvh3sys2fs8TempFileE", !144, i64 0, !45, i64 8, !4, i64 40}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!234 = distinct !{!234, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!237 = distinct !{!237, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!238 = !{!236, !233}
!239 = !{!231, !4, i64 40}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!242 = distinct !{!242, !"_ZN4llvh5Error11takePayloadEv"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!245 = distinct !{!245, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!248 = distinct !{!248, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!249 = !{!247, !244}
!250 = distinct !{null, null, null}
!251 = distinct !{null}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!254 = distinct !{!254, !"_ZN4llvh5Error11takePayloadEv"}
!255 = distinct !{!255, !21, !56, !57}
!256 = !{!"branch_weights", i32 4, i32 28}
!257 = distinct !{!257, !21, !56, !57}
!258 = distinct !{!258, !259}
!259 = !{!"llvm.loop.unroll.disable"}
!260 = distinct !{!260, !21, !56}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!263 = distinct !{!263, !"_ZN4llvh5Error11takePayloadEv"}
!264 = distinct !{null}
!265 = !{!266, !266, i64 0}
!266 = !{!"p1 _ZTSSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EE", !9, i64 0}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN4llvh15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!269 = distinct !{!269, !"_ZN4llvh15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!270 = distinct !{null, null, null}
!271 = !{!272, !268}
!272 = distinct !{!272, !273, !"_ZN4llvh18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!273 = distinct !{!273, !"_ZN4llvh18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!274 = distinct !{null, null, null}
!275 = !{!276, !268}
!276 = distinct !{!276, !277, !"_ZN4llvh15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!277 = distinct !{!277, !"_ZN4llvh15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZN4llvh15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!280 = distinct !{!280, !"_ZN4llvh15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!281 = !{!282, !279}
!282 = distinct !{!282, !283, !"_ZN4llvh18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!283 = distinct !{!283, !"_ZN4llvh18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!284 = !{!285, !279}
!285 = distinct !{!285, !286, !"_ZN4llvh15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!286 = distinct !{!286, !"_ZN4llvh15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!287 = distinct !{null, null}
!288 = distinct !{null}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!291 = distinct !{!291, !"_ZN4llvh5Error11takePayloadEv"}
!292 = !{!293, !266, i64 8}
!293 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !266, i64 0, !266, i64 8, !266, i64 16}
!294 = !{!293, !266, i64 16}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!297 = distinct !{!297, !"_ZN4llvh5Error11takePayloadEv"}
!298 = !{!293, !266, i64 0}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!301 = distinct !{!301, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!302 = !{!303}
!303 = distinct !{!303, !301, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!304 = !{!303, !305}
!305 = distinct !{!305, !306}
!306 = distinct !{!306, !"LVerDomain"}
!307 = !{!300, !308}
!308 = distinct !{!308, !306}
!309 = distinct !{!309, !21, !56, !57}
!310 = distinct !{!310, !21, !56}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!313 = distinct !{!313, !"_ZN4llvh5Error11takePayloadEv"}
!314 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!315 = distinct !{!315, !21}
!316 = distinct !{null, null, null, null, null, null, null, null}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!319 = distinct !{!319, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!320 = !{!321}
!321 = distinct !{!321, !319, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!322 = !{!321, !323}
!323 = distinct !{!323, !324}
!324 = distinct !{!324, !"LVerDomain"}
!325 = !{!318, !326}
!326 = distinct !{!326, !324}
!327 = distinct !{!327, !21, !56, !57}
!328 = distinct !{!328, !21, !56}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!331 = distinct !{!331, !"_ZN4llvh5Error11takePayloadEv"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4llvh5Error11takePayloadEv: argument 0"}
!334 = distinct !{!334, !"_ZN4llvh5Error11takePayloadEv"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!337 = distinct !{!337, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!338 = !{!339}
!339 = distinct !{!339, !337, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!340 = !{!339, !341}
!341 = distinct !{!341, !342}
!342 = distinct !{!342, !"LVerDomain"}
!343 = !{!336, !344}
!344 = distinct !{!344, !342}
!345 = distinct !{!345, !21, !56, !57}
!346 = distinct !{!346, !21, !56}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!349 = distinct !{!349, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!350 = !{!351}
!351 = distinct !{!351, !349, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!352 = !{!351, !353}
!353 = distinct !{!353, !354}
!354 = distinct !{!354, !"LVerDomain"}
!355 = !{!348, !356}
!356 = distinct !{!356, !354}
!357 = distinct !{!357, !21, !56, !57}
!358 = distinct !{!358, !21, !56}
!359 = !{!360, !144, i64 16}
!360 = !{!"_ZTSN4llvh3sys2fs18directory_iteratorE", !361, i64 0, !144, i64 16}
!361 = !{!"_ZTSSt10shared_ptrIN4llvh3sys2fs6detail12DirIterStateEE", !214, i64 0}
!362 = !{!363, !365}
!363 = distinct !{!363, !364, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!364 = distinct !{!364, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!365 = distinct !{!365, !366, !"_ZSt11make_sharedIN4llvh3sys2fs6detail12DirIterStateEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_: argument 0"}
!366 = distinct !{!366, !"_ZSt11make_sharedIN4llvh3sys2fs6detail12DirIterStateEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_"}
!367 = !{!365}
!368 = !{!215, !215, i64 0}
!369 = !{!370, !372}
!370 = distinct !{!370, !371, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_: argument 0"}
!371 = distinct !{!371, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSC_"}
!372 = distinct !{!372, !373, !"_ZSt11make_sharedIN4llvh3sys2fs6detail12DirIterStateEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_: argument 0"}
!373 = distinct !{!373, !"_ZSt11make_sharedIN4llvh3sys2fs6detail12DirIterStateEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_"}
!374 = !{!372}
!375 = distinct !{!375, !21}
!376 = distinct !{null, null, null, null}
!377 = distinct !{null}
end_hunk_2
