Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ResourcePriorityQueue?download=true
inline.NumInlined: 901
inline.NumDeleted: 459
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm21ResourcePriorityQueue19numberRCValPredInSUEPNS_5SUnitEj:bb.a
  br i1 %.not44, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.f, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.g
  %.341 = phi i32 [ %spec.select38, %bb.g ], [ %.247, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ %.247, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not36 = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %.not36, label %.loopexit, label %bb.f, !llvm.loop !1

.loopexit:                                        ; preds = %bb.g, %.thread, %bb.e, %bb.c, %bb.d, %bb.b
  %.6 = phi i32 [ %.052, %bb.b ], [ %spec.select, %bb.d ], [ %.052, %bb.c ], [ %spec.select, %bb.e ], [ %spec.select38, %bb.g ], [ %.341, %.thread ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03351, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm21ResourcePriorityQueue19numberRCValSuccInSUEPNS_5SUnitEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not52 = icmp eq i32 %i.d, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.6, %.loopexit ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph55, %.loopexit
  %.054 = phi i32 [ 0, %.lr.ph55 ], [ %.6, %.loopexit ] ; 3 uses
  %.03553 = phi ptr [ %i.b, %.lr.ph55 ], [ %i.ap, %.loopexit ] ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %.03553, align 8 ; 2 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i, 6
  %.not44 = icmp eq i64 %i.h, 0
  br i1 %.not44, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 4 uses
  %.not37 = icmp eq ptr %i.k, null
  br i1 %.not37, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !111  ; 2 uses
  %cond2 = icmp eq i32 %i.m, 51
  %i.n = zext i1 %cond2 to i32
  %spec.select = add i32 %.054, %i.n              ; 3 uses
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.q = load i16, ptr %i.p, align 8, !tbaa !118  ; 2 uses
  %.not3847 = icmp eq i16 %i.q, 0
  br i1 %.not3847, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = zext i16 %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.249 = phi i32 [ %spec.select, %.lr.ph ], [ %.343, %.thread ] ; 3 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !123
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ab, align 8, !tbaa !115 ; 3 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !69  ; 3 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !116
  %.not45 = icmp eq ptr %i.ag, null
  br i1 %.not45, label %.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 528
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(518435) %i.ac, i16 %.sroa.0.0.copyload.i.i, i1 noundef zeroext false) #17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load i16, ptr %i.al, align 4, !tbaa !96
  %i.an = zext i16 %i.am to i32
  %.not46 = icmp eq i32 %2, %i.an                 ; 2 uses
  %i.ao = zext i1 %.not46 to i32
  %spec.select40 = add i32 %.249, %i.ao           ; 2 uses
  br i1 %.not46, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.f, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.g
  %.343 = phi i32 [ %spec.select40, %bb.g ], [ %.249, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ %.249, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %.not38, label %.loopexit, label %bb.f, !llvm.loop !2

.loopexit:                                        ; preds = %bb.g, %.thread, %bb.e, %bb.c, %bb.d, %bb.b
  %.6 = phi i32 [ %.054, %bb.b ], [ %spec.select, %bb.d ], [ %.054, %bb.c ], [ %spec.select, %bb.e ], [ %spec.select40, %bb.g ], [ %.343, %.thread ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03553, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21ResourcePriorityQueue9initNodesERSt6vectorINS_5SUnitESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(200) initializes((16, 24)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127  ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !128    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 264                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 3 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ugt i64 %i.j, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw nsw i64 %i.j, %i.q
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.l, i64 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %.pre12 = load ptr, ptr %.pre, align 8, !tbaa !129
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre13 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !129
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %i.j, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !87
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.v = phi ptr [ %.pre13, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ] ; 2 uses
  %i.w = phi ptr [ %.pre12, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not10 = icmp eq ptr %i.w, %i.v
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE.exit, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE.exit
  %.sroa.07.011 = phi ptr [ %i.w, %.lr.ph ], [ %i.be, %_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE.exit ] ; 4 uses
  %i.y = load ptr, ptr %.sroa.07.011, align 8, !tbaa !101 ; 2 uses
  %.not21.i = icmp eq ptr %i.y, null
  br i1 %.not21.i, label %_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %_ZNK4llvm6SDNode12getGluedNodeEv.exit.i

_ZNK4llvm6SDNode12getGluedNodeEv.exit.i:          ; preds = %bb.m, %.lr.ph.i
  %.01423.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.au, %bb.m ] ; 4 uses
  %.01522.i = phi i16 [ 0, %.lr.ph.i ], [ %.2.i, %bb.m ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01423.i, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !111 ; 4 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK4llvm6SDNode12getGluedNodeEv.exit.i
  %.not16.i = icmp eq i32 %i.ac, -11
  br i1 %.not16.i, label %_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = xor i32 %i.ac, -1
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [32 x i8], ptr %i.af, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.01423.i, i64 66
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !112
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.am = load i8, ptr %i.al, align 2, !tbaa !134
  %2 = zext i8 %i.am to i16
  %.sroa.speculated.i = call i16 @llvm.umin.i16(i16 %2, i16 %i.ak)
  br label %bb.l

bb.i:                                             ; preds = %_ZNK4llvm6SDNode12getGluedNodeEv.exit.i
  switch i32 %i.ac, label %bb.l [
    i32 52, label %bb.j
    i32 325, label %bb.k
    i32 326, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %3 = add i16 %.01522.i, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.i
  %4 = add i16 %.01522.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.2.i = phi i16 [ %.sroa.speculated.i, %bb.h ], [ %.01522.i, %bb.i ], [ %3, %bb.j ], [ %4, %bb.k ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01423.i, i64 64
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !118 ; 2 uses
  %.not.i.i6 = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i6, label %_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.01423.i, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !119
  %i.as = getelementptr [40 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !122 ; 2 uses
  %i.av = getelementptr i8, ptr %i.as, i64 -32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !123
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.az = zext i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ba, align 8, !tbaa !115
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !136
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 249
  %i.bb = icmp eq ptr %.sroa.21.0.copyload.i.i.i.i, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bb, i1 false
  br i1 %.not4.i.i.i, label %_ZNK4llvm6SDNode12getGluedNodeEv.exit.i, label %_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE.exit, !llvm.loop !3

_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE.exit: ; preds = %bb.g, %bb.l, %bb.m, %bb.f
  %.3.i = phi i16 [ 0, %bb.f ], [ 0, %bb.g ], [ %.2.i, %bb.l ], [ %.2.i, %bb.m ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 254
  store i16 %.3.i, ptr %i.bc, align 2, !tbaa !145
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 204
  store i32 0, ptr %i.bd, align 4, !tbaa !346
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 264 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.v
  br i1 %.not, label %._crit_edge, label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm21ResourcePriorityQueue18initNumRegDefsLeftEPNS_5SUnitE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %.not21 = icmp eq ptr %i.a, null
  br i1 %.not21, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_ZNK4llvm6SDNode12getGluedNodeEv.exit

_ZNK4llvm6SDNode12getGluedNodeEv.exit:            ; preds = %bb.h, %.lr.ph
  %.01423 = phi ptr [ %i.a, %.lr.ph ], [ %i.x, %bb.h ] ; 4 uses
  %.01522 = phi i16 [ 0, %.lr.ph ], [ %.2, %bb.h ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01423, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111  ; 4 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK4llvm6SDNode12getGluedNodeEv.exit
  %.not16 = icmp eq i32 %i.f, -11
  br i1 %.not16, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = xor i32 %i.f, -1
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.j = zext nneg i32 %i.h to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.01423, i64 66
  %i.n = load i16, ptr %i.m, align 2, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.p = load i8, ptr %i.o, align 2, !tbaa !134
  %2 = zext i8 %i.p to i16
  %.sroa.speculated = tail call i16 @llvm.umin.i16(i16 %2, i16 %i.n)
  br label %bb.g

bb.d:                                             ; preds = %_ZNK4llvm6SDNode12getGluedNodeEv.exit
  switch i32 %i.f, label %bb.g [
    i32 52, label %bb.e
    i32 325, label %bb.f
    i32 326, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %3 = add i16 %.01522, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.d
  %4 = add i16 %.01522, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e
  %.2 = phi i16 [ %.sroa.speculated, %bb.c ], [ %.01522, %bb.d ], [ %3, %bb.e ], [ %4, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01423, i64 64
  %i.r = load i16, ptr %i.q, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.01423, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119
  %i.v = getelementptr [40 x i8], ptr %i.u, i64 %i.s ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122  ; 2 uses
  %i.y = getelementptr i8, ptr %i.v, i64 -32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !123
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !113
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ad, align 8, !tbaa !115
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !136
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 249
  %i.ae = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.ae, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm6SDNode12getGluedNodeEv.exit, label %.thread, !llvm.loop !3

.thread:                                          ; preds = %bb.h, %bb.g, %bb.b, %bb.a
  %.3 = phi i16 [ 0, %bb.a ], [ %.2, %bb.h ], [ %.2, %bb.g ], [ 0, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 254
  store i16 %.3, ptr %i.af, align 2, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm13resource_sortclEPKNS_5SUnitES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 2048
  %.not = icmp eq i16 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 252
  %i.e = load i16, ptr %i.d, align 4
  %i.f = and i16 %i.e, 2048
  %.not27 = icmp eq i16 %i.f, 0                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not27, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not27, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.h = load i32, ptr %i.g, align 8, !tbaa !146  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.j = load i32, ptr %i.i, align 8, !tbaa !146  ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.n = zext i32 %i.h to i64                     ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !128  ; 2 uses
  %i.p = getelementptr inbounds nuw [264 x i8], ptr %i.o, i64 %i.n ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 258
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, 2
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm5SUnit13ComputeHeightEv(ptr noundef nonnull align 8 dereferenceable(259) %i.p) #17
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre30 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !124
  %.pre31 = load ptr, ptr %.pre30, align 8, !tbaa !128
  br label %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit

_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit: ; preds = %bb.d, %bb.e
  %i.t = phi ptr [ %i.o, %bb.d ], [ %.pre31, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.v = load i32, ptr %i.u, align 8, !tbaa !147  ; 2 uses
  %i.w = zext i32 %i.j to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [264 x i8], ptr %i.t, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 258
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = and i8 %i.z, 2
  %.not.i.i28 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i28, label %bb.f, label %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit29

bb.f:                                             ; preds = %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit
  tail call void @_ZN4llvm5SUnit13ComputeHeightEv(ptr noundef nonnull align 8 dereferenceable(259) %i.x) #17
  br label %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit29

_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit29: ; preds = %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !147 ; 2 uses
  %i.ad = icmp ult i32 %i.v, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit29
  %i.ae = icmp ugt i32 %i.v, %i.ac
  br i1 %i.ae, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %0, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.n
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !89 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.w
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !89 ; 2 uses
  %i.am = icmp ult i32 %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = icmp ule i32 %i.aj, %i.al
  %i.ao = icmp ult i32 %i.h, %i.j
  %spec.select = select i1 %i.an, i1 %i.ao, i1 false
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit29, %bb.g, %bb.h, %bb.c, %bb.b
  %.2 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.g ], [ true, %_ZNK4llvm21ResourcePriorityQueue10getLatencyEj.exit29 ], [ %spec.select, %bb.i ], [ true, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4llvm21ResourcePriorityQueue24getSingleUnscheduledPredEPNS_5SUnitE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not34 = icmp eq i32 %i.d, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.01936 = phi ptr [ %i.l, %.thread ], [ %i.b, %bb.a ] ; 2 uses
  %.02035 = phi ptr [ %.233, %.thread ], [ null, %bb.a ] ; 3 uses
  %.0.copyload.i.i.i.i = load i64, ptr %.01936, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 252
  %i.j = load i16, ptr %i.i, align 4
  %i.k = and i16 %i.j, 1024
  %.not26 = icmp eq i16 %i.k, 0
  br i1 %.not26, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %.not27 = icmp eq ptr %.02035, null
  %.not28 = icmp eq ptr %.02035, %i.h
  %or.cond = or i1 %.not27, %.not28
  br i1 %or.cond, label %.thread, label %._crit_edge

.thread:                                          ; preds = %.lr.ph, %bb.b
  %.233 = phi ptr [ %i.h, %bb.b ], [ %.02035, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01936, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.thread, %bb.a
  %spec.select = phi ptr [ null, %bb.a ], [ %.233, %.thread ], [ null, %bb.b ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21ResourcePriorityQueue4pushEPNS_5SUnitE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm21ResourcePriorityQueue24getSingleUnscheduledPredEPNS_5SUnitE.exit, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %_ZN4llvm21ResourcePriorityQueue24getSingleUnscheduledPredEPNS_5SUnitE.exit ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load i32, ptr %i.h, align 8, !tbaa !146
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  store i32 %.09.lcssa, ptr %i.l, align 4, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !148  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98
  %.not.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store ptr %1, ptr %i.o, align 8, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %i.n, align 8, !tbaa !148
  br label %_ZNSt6vectorIPN4llvm5SUnitESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !97   ; 4 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.d, label %_ZNKSt6vectorIPN4llvm5SUnitESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

_ZNKSt6vectorIPN4llvm5SUnitESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #20 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !129
end_hunk_0
begin_hunk_1_@_ZNKSt14default_deleteIN4llvm13DFAPacketizerEEclEPS1_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #18
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm13DFAPacketizerD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !401
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !89   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !401
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !89
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !87
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #20 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !89
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !89
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #18
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !99
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_ResourcePriorityQueue.cpp() #14 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15DisableDFASched, i32 noundef 0, i32 noundef 0) #17
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 120), align 8, !tbaa !173
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 128), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL15DisableDFASched, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 144), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15DisableDFASched, ptr nonnull align 1 dereferenceable(18) @.str, i64 17) #17
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 32), align 8, !tbaa !402
  store i64 36, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableDFASched, i64 40), align 8, !tbaa !403
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15DisableDFASched) #17
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL15DisableDFASched, ptr nonnull @__dso_handle) #17 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20RegPressureThreshold, i32 noundef 0, i32 noundef 0) #17
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 120), align 8, !tbaa !168
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 128), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL20RegPressureThreshold, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 144), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20RegPressureThreshold, ptr nonnull align 1 dereferenceable(33) @.str.3, i64 32) #17
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 10), align 2
  %i.f = and i16 %i.e, -97
  %i.g = or disjoint i16 %i.f, 32
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 10), align 2
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 120), align 8, !tbaa !168
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 140), align 4, !tbaa !194
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 136), align 8, !tbaa !404
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 32), align 8, !tbaa !402
  store i64 50, ptr getelementptr inbounds nuw (i8, ptr @_ZL20RegPressureThreshold, i64 40), align 8, !tbaa !403
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20RegPressureThreshold) #17
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL20RegPressureThreshold, ptr nonnull @__dso_handle) #17 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !117}
!2 = distinct !{!2, !117}
!3 = distinct !{!3, !117}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"_ZTSSt14_Function_base", !8, i64 0, !14, i64 16}
!16 = !{!15, !14, i64 16}
!17 = !{!"any p2 pointer", !14, i64 0}
!18 = !{!"bool", !8, i64 0}
!19 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !17, i64 0, !9, i64 8, !9, i64 12, !18, i64 16}
!20 = !{!19, !18, i64 16}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!19, !17, i64 0}
!24 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !14, i64 0, !9, i64 8, !9, i64 12}
!25 = !{!24, !14, i64 0}
!26 = !{!"_ZTSN4llvm23SchedulingPriorityQueueE", !9, i64 8, !18, i64 12}
!27 = !{!"p1 _ZTSN4llvm21ResourcePriorityQueueE", !14, i64 0}
!28 = !{!"_ZTSN4llvm13resource_sortE", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"p1 _ZTSN4llvm15TargetInstrInfoE", !14, i64 0}
!31 = !{!"p1 _ZTSN4llvm14TargetLoweringE", !14, i64 0}
!32 = !{!"p1 omnipotent char", !14, i64 0}
!33 = !{!"long", !8, i64 0}
!34 = !{!"p1 int", !14, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIjSaIjEE", !37, i64 0}
!39 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !24, i64 0}
!40 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !40, i64 0}
!42 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !8, i64 0}
!43 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !41, i64 0, !42, i64 16}
!44 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !24, i64 0}
!45 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !44, i64 0}
!46 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !45, i64 0}
!47 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !46, i64 0}
!48 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !14, i64 0}
!49 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !48, i64 0, !48, i64 8}
!50 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !49, i64 0}
!51 = !{!"p1 _ZTSSt6vectorIN4llvm5SUnitESaIS1_EE", !14, i64 0}
!52 = !{!"p2 _ZTSN4llvm5SUnitE", !17, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIPN4llvm5SUnitESaIS2_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIPN4llvm5SUnitESaIS2_EE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIPN4llvm5SUnitESaIS2_EE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIPN4llvm5SUnitESaIS2_EE", !55, i64 0}
!57 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !14, i64 0}
!58 = !{!"p1 _ZTSN4llvm18InstrItineraryDataE", !14, i64 0}
!59 = !{!"p1 _ZTSN4llvm13DFAPacketizerE", !14, i64 0}
!60 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm13DFAPacketizerELb0EE", !59, i64 0}
!61 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm13DFAPacketizerESt14default_deleteIS1_EEE", !60, i64 0}
!62 = !{!"_ZTSSt5tupleIJPN4llvm13DFAPacketizerESt14default_deleteIS1_EEE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm13DFAPacketizerESt14default_deleteIS1_EE", !62, i64 0}
!64 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm13DFAPacketizerESt14default_deleteIS1_ELb1ELb1EE", !63, i64 0}
!65 = !{!"_ZTSSt10unique_ptrIN4llvm13DFAPacketizerESt14default_deleteIS1_EE", !64, i64 0}
!66 = !{!"_ZTSN4llvm21ResourcePriorityQueueE", !26, i64 0, !51, i64 16, !38, i64 24, !56, i64 48, !38, i64 72, !38, i64 96, !28, i64 120, !57, i64 128, !31, i64 136, !30, i64 144, !58, i64 152, !65, i64 160, !56, i64 168, !9, i64 192, !9, i64 196}
!67 = !{!66, !58, i64 152}
!68 = !{!66, !57, i64 128}
!69 = !{!66, !31, i64 136}
!70 = !{!66, !30, i64 144}
!71 = !{!59, !59, i64 0}
!72 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !14, i64 0}
!73 = !{!"_ZTSN4llvm10MCRegisterE", !9, i64 0}
!74 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !14, i64 0}
!75 = !{!"p1 short", !14, i64 0}
!76 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !14, i64 0}
!77 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !14, i64 0}
!78 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !14, i64 0}
!79 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !78, i64 0, !34, i64 8, !9, i64 16, !9, i64 20}
!80 = !{!"p1 _ZTSSt6vectorItSaItEE", !14, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !83, i64 0}
!85 = !{!"_ZTSN4llvm14MCRegisterInfoE", !72, i64 8, !9, i64 16, !73, i64 20, !73, i64 24, !74, i64 32, !9, i64 40, !9, i64 44, !75, i64 48, !75, i64 56, !76, i64 64, !32, i64 72, !32, i64 80, !75, i64 88, !9, i64 96, !75, i64 104, !34, i64 112, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !77, i64 136, !77, i64 144, !77, i64 152, !77, i64 160, !79, i64 168, !79, i64 192, !84, i64 216}
!86 = !{!85, !9, i64 40}
!87 = !{!35, !34, i64 8}
!88 = !{!35, !34, i64 0}
!89 = !{!9, !9, i64 0}
!90 = !{!85, !74, i64 32}
!91 = !{!66, !9, i64 192}
!92 = !{!66, !9, i64 196}
!93 = !{!"short", !8, i64 0}
!94 = !{!"_ZTSN4llvm11LaneBitmaskE", !33, i64 0}
!95 = !{!"_ZTSN4llvm15MCRegisterClassE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !93, i64 16, !93, i64 18, !93, i64 20, !8, i64 22, !18, i64 23, !18, i64 24, !9, i64 28, !9, i64 32, !94, i64 40, !8, i64 48, !18, i64 49, !8, i64 50, !8, i64 51, !18, i64 52, !18, i64 53, !9, i64 56, !93, i64 60}
!96 = !{!95, !93, i64 20}
!97 = !{!53, !52, i64 0}
!98 = !{!53, !52, i64 16}
!99 = !{!35, !34, i64 16}
!100 = !{!24, !9, i64 8}
!101 = !{!8, !8, i64 0}
!102 = !{!"_ZTSN4llvm14FoldingSetBase4NodeE", !14, i64 0}
!103 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_6SDNodeELb0ELb0EvLb0EvEEEE", !50, i64 0}
!104 = !{!"_ZTSN4llvm10ilist_nodeINS_6SDNodeEJEEE", !103, i64 0}
!105 = !{!"_ZTSN4llvm11SDNodeFlagsE", !9, i64 0}
!106 = !{!"p1 _ZTSN4llvm5SDUseE", !14, i64 0}
!107 = !{!"p1 _ZTSN4llvm3EVTE", !14, i64 0}
!108 = !{!"p1 _ZTSN4llvm10DILocationE", !14, i64 0}
!109 = !{!"_ZTSN4llvm8DebugLocE", !108, i64 0}
!110 = !{!"_ZTSN4llvm6SDNodeE", !102, i64 0, !104, i64 8, !9, i64 24, !105, i64 28, !8, i64 32, !93, i64 34, !9, i64 36, !106, i64 40, !107, i64 48, !106, i64 56, !93, i64 64, !93, i64 66, !9, i64 68, !109, i64 72, !8, i64 80, !9, i64 84}
!111 = !{!110, !9, i64 24}
!112 = !{!110, !93, i64 66}
!113 = !{!110, !107, i64 48}
!114 = !{!"_ZTSN4llvm3MVT15SimpleValueTypeE", !8, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!74, !74, i64 0}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!110, !93, i64 64}
!119 = !{!110, !106, i64 40}
!120 = !{!"p1 _ZTSN4llvm6SDNodeE", !14, i64 0}
!121 = !{!"_ZTSN4llvm7SDValueE", !120, i64 0, !9, i64 8}
!122 = !{!121, !120, i64 0}
!123 = !{!121, !9, i64 8}
!124 = !{!66, !51, i64 16}
!125 = !{!"p1 _ZTSN4llvm5SUnitE", !14, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN4llvm5SUnitESaIS1_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!126, !125, i64 8}
!128 = !{!126, !125, i64 0}
!129 = !{!125, !125, i64 0}
!130 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !14, i64 0}
!131 = !{!"_ZTSN4llvm11MCInstrInfoE", !130, i64 0, !34, i64 8, !32, i64 16, !32, i64 24, !14, i64 32, !9, i64 40, !75, i64 48, !93, i64 56}
!132 = !{!131, !130, i64 0}
!133 = !{!"_ZTSN4llvm11MCInstrDescE", !9, i64 0, !93, i64 4, !8, i64 6, !8, i64 7, !93, i64 8, !8, i64 10, !8, i64 11, !93, i64 12, !93, i64 14, !33, i64 16, !33, i64 24}
!134 = !{!133, !8, i64 6}
!135 = !{!"p1 _ZTSN4llvm4TypeE", !14, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!"p1 _ZTSN4llvm16MCSchedClassDescE", !14, i64 0}
!138 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4SDepEvEE", !24, i64 0}
!139 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4SDepELb1EEE", !138, i64 0}
!140 = !{!"_ZTSN4llvm15SmallVectorImplINS_4SDepEEE", !139, i64 0}
!141 = !{!"_ZTSN4llvm18SmallVectorStorageINS_4SDepELj4EEE", !8, i64 0}
!142 = !{!"_ZTSN4llvm11SmallVectorINS_4SDepELj4EEE", !140, i64 0, !141, i64 16}
!143 = !{!"_ZTSN4llvm5Sched10PreferenceE", !8, i64 0}
!144 = !{!"_ZTSN4llvm5SUnitE", !8, i64 0, !125, i64 8, !137, i64 16, !74, i64 24, !74, i64 32, !142, i64 40, !142, i64 120, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !18, i64 252, !18, i64 252, !18, i64 252, !18, i64 252, !18, i64 252, !18, i64 252, !18, i64 252, !18, i64 252, !18, i64 253, !18, i64 253, !18, i64 253, !18, i64 253, !18, i64 253, !18, i64 253, !18, i64 253, !18, i64 253, !93, i64 254, !93, i64 256, !18, i64 258, !18, i64 258, !18, i64 258, !18, i64 258, !143, i64 258}
!145 = !{!144, !93, i64 254}
!146 = !{!144, !9, i64 200}
!147 = !{!144, !9, i64 248}
!148 = !{!53, !52, i64 8}
!149 = !{!52, !52, i64 0}
!150 = !{!"p1 _ZTSSt3mapISt4pairImmES0_ImjESt4lessIS1_ESaIS0_IKS1_S2_EEE", !14, i64 0}
!151 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!152 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !151, i64 0}
!153 = !{!"_ZTSSt12__shared_ptrISt3mapISt4pairImmES1_ImjESt4lessIS2_ESaIS1_IKS2_S3_EEELN9__gnu_cxx12_Lock_policyE2EE", !150, i64 0, !152, i64 8}
!154 = !{!"_ZTSSt10shared_ptrISt3mapISt4pairImmES1_ImjESt4lessIS2_ESaIS1_IKS2_S3_EEEE", !153, i64 0}
!155 = !{!"p1 _ZTSN4llvm8internal14NfaTranscriberE", !14, i64 0}
!156 = !{!"_ZTSSt12__shared_ptrIN4llvm8internal14NfaTranscriberELN9__gnu_cxx12_Lock_policyE2EE", !155, i64 0, !152, i64 8}
!157 = !{!"_ZTSSt10shared_ptrIN4llvm8internal14NfaTranscriberEE", !156, i64 0}
!158 = !{!"_ZTSN4llvm9AutomatonImEE", !154, i64 0, !157, i64 16, !33, i64 32, !18, i64 40}
!159 = !{!158, !33, i64 32}
!160 = !{!156, !155, i64 0}
!161 = !{ptr @_ZN4llvm21ResourcePriorityQueue19numberRCValSuccInSUEPNS_5SUnitEj}
!162 = !{ptr @_ZN4llvm21ResourcePriorityQueue19numberRCValPredInSUEPNS_5SUnitEj}
!163 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!164 = !{!"_ZTSN4llvm2cl15OptionValueCopyIiEE", !163, i64 0, !9, i64 8, !18, i64 12}
!165 = !{!"_ZTSN4llvm2cl15OptionValueBaseIiLb0EEE", !164, i64 0}
!166 = !{!"_ZTSN4llvm2cl11OptionValueIiEE", !165, i64 0}
!167 = !{!"_ZTSN4llvm2cl11opt_storageIiLb0ELb0EEE", !9, i64 0, !166, i64 8}
!168 = !{!167, !9, i64 0}
!169 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !163, i64 0, !18, i64 8, !18, i64 9}
!170 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !169, i64 0}
!171 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !170, i64 0}
!172 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !18, i64 0, !171, i64 8}
!173 = !{!172, !18, i64 0}
end_hunk_1
