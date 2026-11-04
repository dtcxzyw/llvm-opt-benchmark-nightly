Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/prog?download=true
inline.NumInlined: 1564
inline.NumDeleted: 717
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3re214ByteMapBuilder7RecolorEi:bb.a
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bt, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.bt, 120
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bv, 12
  %n.vec = and i64 %i.bv, 4611686018427387888     ; 4 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.ca ; 4 uses
  %next.gep42 = getelementptr i8, ptr %i.b, i64 %i.ca ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.cb = getelementptr i8, ptr %next.gep42, i64 32
  %i.cc = getelementptr i8, ptr %next.gep42, i64 64
  %i.cd = getelementptr i8, ptr %next.gep42, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep42, align 4, !alias.scope !216
  %wide.load43 = load <4 x i64>, ptr %i.cb, align 4, !alias.scope !216
  %wide.load44 = load <4 x i64>, ptr %i.cc, align 4, !alias.scope !216
  %wide.load45 = load <4 x i64>, ptr %i.cd, align 4, !alias.scope !216
  %i.ce = getelementptr i8, ptr %next.gep, i64 32
  %i.cf = getelementptr i8, ptr %next.gep, i64 64
  %i.cg = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !215
  store <4 x i64> %wide.load43, ptr %i.ce, align 4, !alias.scope !215
  store <4 x i64> %wide.load44, ptr %i.cf, align 4, !alias.scope !215
  store <4 x i64> %wide.load45, ptr %i.cg, align 4, !alias.scope !215
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.bv, 4611686018427387900   ; 3 uses
  %i.ci = shl i64 %n.vec46, 3                     ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bp, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.b, i64 %i.ci
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.cl = shl i64 %index47, 3                     ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.bp, i64 %i.cl
  %next.gep49 = getelementptr i8, ptr %i.b, i64 %i.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %wide.load50 = load <4 x i64>, ptr %next.gep49, align 4, !alias.scope !216
  store <4 x i64> %wide.load50, ptr %next.gep48, align 4, !alias.scope !215
  %index.next51 = add nuw i64 %index47, 4         ; 2 uses
  %i.cm = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.bv, %n.vec46
  br i1 %cmp.n52, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bp, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.cn = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !216
  store i64 %i.cn, ptr %.012.i.i.i.i.i, align 4, !alias.scope !215
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.co, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !214

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bp, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cj, %vec.epilog.middle.block ], [ %i.by, %middle.block ], [ %i.cp, %.lr.ph.i.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i24.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  %i.cr = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.ct) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !105
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !100
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.cu, ptr %i.be, align 8, !tbaa !101
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.l, %bb.k
  %.0 = phi i32 [ %i.ba, %bb.k ], [ %i.bc, %bb.l ], [ %i.bc, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re214ByteMapBuilder5BuildEPhPi(ptr noundef nonnull align 8 dereferenceable(1112) initializes((1056, 1060)) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.b
  %.1.lcssa = phi i32 [ %.012, %bb.b ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.c = icmp slt i32 %.1.lcssa, 256
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !1

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.012 = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %.loopexit ] ; 5 uses
  %i.d = tail call noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.012) ; 4 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !87
  %i.h = tail call noundef i32 @_ZN3re214ByteMapBuilder7RecolorEi(ptr noundef nonnull align 8 dereferenceable(1112) %0, i32 noundef %i.g)
  %.not10 = icmp sgt i32 %.012, %i.d
  br i1 %.not10, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = trunc i32 %i.h to i8
  %i.j = sext i32 %.012 to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.j
  %i.k = sub i32 %i.d, %.012
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.i, i64 %i.m, i1 false), !tbaa !17
  %i.n = add i32 %i.d, 1
  br label %.loopexit

bb.c:                                             ; preds = %.loopexit
  %i.o = load i32, ptr %i.a, align 8, !tbaa !116
  store i32 %i.o, ptr %2, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re24Prog14ComputeByteMapEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.re2::ByteMapBuilder", align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i64 -9223372036854775808, ptr %i.b, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1052
  store i32 256, ptr %i.c, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 3 uses
  store i32 257, ptr %i.d, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !72
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.critedge84, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %.noexc85
  %.1.lcssa.i = phi i32 [ %.012.i, %.noexc85 ], [ %i.ab, %.lr.ph.preheader.i ] ; 2 uses
  %i.q = icmp slt i32 %.1.lcssa.i, 256
  br i1 %i.q, label %bb.b, label %bb.ak, !llvm.loop !1

bb.b:                                             ; preds = %.loopexit.i, %._crit_edge
  %.012.i = phi i32 [ 0, %._crit_edge ], [ %.1.lcssa.i, %.loopexit.i ] ; 5 uses
  %i.r = invoke noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %.012.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %bb.b
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !87
  %i.v = invoke noundef i32 @_ZN3re214ByteMapBuilder7RecolorEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %i.u)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %.noexc
  %.not10.i = icmp sgt i32 %.012.i, %i.r
  br i1 %.not10.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc85
  %i.w = trunc i32 %i.v to i8
  %i.x = sext i32 %.012.i to i64
  %scevgep.i = getelementptr i8, ptr %i.n, i64 %i.x
  %i.y = sub i32 %i.r, %.012.i
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 %i.w, i64 %i.aa, i1 false), !tbaa !17
  %i.ab = add i32 %i.r, 1
  br label %.loopexit.i

bb.c:                                             ; preds = %.lr.ph, %.critedge84
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge84 ] ; 3 uses
  %.067172 = phi i1 [ false, %.lr.ph ], [ %.269, %.critedge84 ] ; 5 uses
  %.070171 = phi i1 [ false, %.lr.ph ], [ %.373, %.critedge84 ] ; 5 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv ; 6 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.ae, 7
  switch i32 %i.af, label %.critedge84 [
    i32 2, label %bb.d
    i32 4, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !17  ; 3 uses
  %i.ai = zext i8 %i.ah to i32                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 3 uses
  %i.al = zext i8 %i.ak to i32                    ; 3 uses
  %i.am = icmp eq i8 %i.ah, 0
  %i.an = icmp eq i8 %i.ak, -1
  %or.cond.i = and i1 %i.am, %i.an
  br i1 %or.cond.i, label %_ZN3re214ByteMapBuilder4MarkEii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !100 ; 7 uses
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.ai, ptr %i.ao, align 4, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %i.al, ptr %i.aq, align 4, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !100
  br label %_ZN3re214ByteMapBuilder4MarkEii.exit

bb.g:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !105 ; 9 uses
  %i.at = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 4 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.ai, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #26
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 2 uses
  store i32 %i.ai, ptr %i.be, align 4, !tbaa !103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.al, ptr %i.bf, align 4, !tbaa !104
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i, label %iter.check280

iter.check280:                                    ; preds = %.noexc87
  %i.bg = ptrtoaddr ptr %i.bd to i64
  %i.bh = add i64 %i.at, -8
  %i.bi = sub i64 %i.bh, %i.au                    ; 3 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 5 uses
  %min.iters.check262 = icmp ult i64 %i.bi, 24
  %i.bl = sub i64 %i.au, %i.bg
  %diff.check264 = icmp ugt i64 %i.bl, -128
  %or.cond384 = or i1 %min.iters.check262, %diff.check264
  br i1 %or.cond384, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check265

vector.main.loop.iter.check265:                   ; preds = %iter.check280
  %min.iters.check266 = icmp ult i64 %i.bi, 120
  br i1 %min.iters.check266, label %vec.epilog.ph284, label %vector.ph267

vector.ph267:                                     ; preds = %vector.main.loop.iter.check265
  %i.bm = and i64 %i.bk, 12
  %n.vec268 = and i64 %i.bk, 4611686018427387888  ; 4 uses
  %i.bn = shl i64 %n.vec268, 3                    ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.as, i64 %i.bn
  br label %vector.body269

vector.body269:                                   ; preds = %vector.ph267, %vector.body269
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next277, %vector.body269 ] ; 2 uses
  %i.bq = shl i64 %index270, 3                    ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.bd, i64 %i.bq ; 4 uses
  %next.gep272 = getelementptr i8, ptr %i.as, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.br = getelementptr i8, ptr %next.gep272, i64 32
  %i.bs = getelementptr i8, ptr %next.gep272, i64 64
  %i.bt = getelementptr i8, ptr %next.gep272, i64 96
  %wide.load273 = load <4 x i64>, ptr %next.gep272, align 4, !alias.scope !247
  %wide.load274 = load <4 x i64>, ptr %i.br, align 4, !alias.scope !247
  %wide.load275 = load <4 x i64>, ptr %i.bs, align 4, !alias.scope !247
  %wide.load276 = load <4 x i64>, ptr %i.bt, align 4, !alias.scope !247
  %i.bu = getelementptr i8, ptr %next.gep271, i64 32
  %i.bv = getelementptr i8, ptr %next.gep271, i64 64
  %i.bw = getelementptr i8, ptr %next.gep271, i64 96
  store <4 x i64> %wide.load273, ptr %next.gep271, align 4, !alias.scope !246
  store <4 x i64> %wide.load274, ptr %i.bu, align 4, !alias.scope !246
  store <4 x i64> %wide.load275, ptr %i.bv, align 4, !alias.scope !246
  store <4 x i64> %wide.load276, ptr %i.bw, align 4, !alias.scope !246
  %index.next277 = add nuw i64 %index270, 16      ; 2 uses
  %i.bx = icmp eq i64 %index.next277, %n.vec268
  br i1 %i.bx, label %middle.block278, label %vector.body269, !llvm.loop !220

middle.block278:                                  ; preds = %vector.body269
  %cmp.n279 = icmp eq i64 %i.bk, %n.vec268
  br i1 %cmp.n279, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i, label %vec.epilog.iter.check281

vec.epilog.iter.check281:                         ; preds = %middle.block278
  %min.epilog.iters.check283 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check283, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph284, !prof !108

vec.epilog.ph284:                                 ; preds = %vector.main.loop.iter.check265, %vec.epilog.iter.check281
  %vec.epilog.resume.val285 = phi i64 [ %n.vec268, %vec.epilog.iter.check281 ], [ 0, %vector.main.loop.iter.check265 ]
  %n.vec286 = and i64 %i.bk, 4611686018427387900  ; 3 uses
  %i.by = shl i64 %n.vec286, 3                    ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bd, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.as, i64 %i.by
  br label %vec.epilog.vector.body287

vec.epilog.vector.body287:                        ; preds = %vec.epilog.vector.body287, %vec.epilog.ph284
  %index288 = phi i64 [ %vec.epilog.resume.val285, %vec.epilog.ph284 ], [ %index.next292, %vec.epilog.vector.body287 ] ; 2 uses
  %i.cb = shl i64 %index288, 3                    ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.bd, i64 %i.cb
  %next.gep290 = getelementptr i8, ptr %i.as, i64 %i.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %wide.load291 = load <4 x i64>, ptr %next.gep290, align 4, !alias.scope !247
  store <4 x i64> %wide.load291, ptr %next.gep289, align 4, !alias.scope !246
  %index.next292 = add nuw i64 %index288, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next292, %n.vec286
  br i1 %i.cc, label %vec.epilog.middle.block293, label %vec.epilog.vector.body287, !llvm.loop !221

vec.epilog.middle.block293:                       ; preds = %vec.epilog.vector.body287
  %cmp.n294 = icmp eq i64 %i.bk, %n.vec286
  br i1 %cmp.n294, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check280, %vec.epilog.iter.check281, %vec.epilog.middle.block293
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %iter.check280 ], [ %i.bo, %vec.epilog.iter.check281 ], [ %i.bz, %vec.epilog.middle.block293 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.as, %iter.check280 ], [ %i.bp, %vec.epilog.iter.check281 ], [ %i.ca, %vec.epilog.middle.block293 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !247
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !246
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !222

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block278, %vec.epilog.middle.block293, %.noexc87
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bd, %.noexc87 ], [ %i.bz, %vec.epilog.middle.block293 ], [ %i.bo, %middle.block278 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i24.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i24.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.cj) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i
  store ptr %i.bd, ptr %i.i, align 8, !tbaa !105
  store ptr %i.cg, ptr %i.j, align 8, !tbaa !100
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.ck, ptr %i.k, align 8, !tbaa !101
  br label %_ZN3re214ByteMapBuilder4MarkEii.exit

_ZN3re214ByteMapBuilder4MarkEii.exit:             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.f, %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !17
  %i.cn = trunc i16 %i.cm to i1
  %i.co = icmp ult i8 %i.ah, 123
  %or.cond = and i1 %i.co, %i.cn
  %i.cp = icmp ugt i8 %i.ak, 96
  %or.cond3 = and i1 %i.cp, %or.cond
  br i1 %or.cond3, label %bb.i, label %_ZN3re214ByteMapBuilder4MarkEii.exit104

bb.i:                                             ; preds = %_ZN3re214ByteMapBuilder4MarkEii.exit
  %i.cq = call i32 @llvm.umax.i32(i32 %i.ai, i32 97) ; 2 uses
  %i.cr = call i32 @llvm.umin.i32(i32 %i.al, i32 122) ; 2 uses
  %.not77 = icmp samesign ugt i32 %i.cq, %i.cr
  br i1 %.not77, label %_ZN3re214ByteMapBuilder4MarkEii.exit104, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = add nsw i32 %i.cq, -32                  ; 2 uses
  %i.ct = add nsw i32 %i.cr, -32                  ; 2 uses
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !100 ; 7 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !101
  %.not.i.i89 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.cs, ptr %i.cu, align 4, !tbaa !103
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !104
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cx, ptr %i.j, align 8, !tbaa !100
  br label %_ZN3re214ByteMapBuilder4MarkEii.exit104

bb.l:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr %i.i, align 8, !tbaa !105 ; 9 uses
  %i.cz = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64               ; 4 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 3 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.ai, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i90

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i90: ; preds = %bb.l
  %i.dd = ashr exact i64 %i.db, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i91 = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i.i91, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 1152921504606846975)
  %i.dh = select i1 %i.df, i64 1152921504606846975, i64 %i.dg ; 3 uses
  %.not.i.i.i.i92 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i92)
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #26
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc103:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i90
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db ; 2 uses
  store i32 %i.cs, ptr %i.dk, align 4, !tbaa !103
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i32 %i.ct, ptr %i.dl, align 4, !tbaa !104
  %.not10.i.i.i.i.i.i93 = icmp eq ptr %i.cy, %i.cu
  br i1 %.not10.i.i.i.i.i.i93, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i98, label %iter.check

iter.check:                                       ; preds = %.noexc103
  %i.dm = ptrtoaddr ptr %i.dj to i64
  %i.dn = add i64 %i.cz, -8
  %i.do = sub i64 %i.dn, %i.da                    ; 3 uses
  %i.dp = lshr i64 %i.do, 3
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.do, 24
  %i.dr = sub i64 %i.da, %i.dm
  %diff.check = icmp ugt i64 %i.dr, -128
  %or.cond385 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond385, label %.lr.ph.i.i.i.i.i.i94.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check247 = icmp ult i64 %i.do, 120
  br i1 %min.iters.check247, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ds = and i64 %i.dq, 12
  %n.vec = and i64 %i.dq, 4611686018427387888     ; 4 uses
  %i.dt = shl i64 %n.vec, 3                       ; 2 uses
  %i.du = getelementptr i8, ptr %i.dj, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.cy, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dj, i64 %i.dw ; 4 uses
  %next.gep248 = getelementptr i8, ptr %i.cy, i64 %i.dw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.dx = getelementptr i8, ptr %next.gep248, i64 32
  %i.dy = getelementptr i8, ptr %next.gep248, i64 64
  %i.dz = getelementptr i8, ptr %next.gep248, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep248, align 4, !alias.scope !249
  %wide.load249 = load <4 x i64>, ptr %i.dx, align 4, !alias.scope !249
  %wide.load250 = load <4 x i64>, ptr %i.dy, align 4, !alias.scope !249
  %wide.load251 = load <4 x i64>, ptr %i.dz, align 4, !alias.scope !249
  %i.ea = getelementptr i8, ptr %next.gep, i64 32
  %i.eb = getelementptr i8, ptr %next.gep, i64 64
  %i.ec = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !248
  store <4 x i64> %wide.load249, ptr %i.ea, align 4, !alias.scope !248
  store <4 x i64> %wide.load250, ptr %i.eb, align 4, !alias.scope !248
  store <4 x i64> %wide.load251, ptr %i.ec, align 4, !alias.scope !248
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i98, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i94.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec252 = and i64 %i.dq, 4611686018427387900  ; 3 uses
  %i.ee = shl i64 %n.vec252, 3                    ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dj, i64 %i.ee  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.cy, i64 %i.ee
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index253 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next257, %vec.epilog.vector.body ] ; 2 uses
  %i.eh = shl i64 %index253, 3                    ; 2 uses
  %next.gep254 = getelementptr i8, ptr %i.dj, i64 %i.eh
  %next.gep255 = getelementptr i8, ptr %i.cy, i64 %i.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %wide.load256 = load <4 x i64>, ptr %next.gep255, align 4, !alias.scope !249
  store <4 x i64> %wide.load256, ptr %next.gep254, align 4, !alias.scope !248
  %index.next257 = add nuw i64 %index253, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next257, %n.vec252
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !227

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n258 = icmp eq i64 %i.dq, %n.vec252
  br i1 %cmp.n258, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i98, label %.lr.ph.i.i.i.i.i.i94.preheader

.lr.ph.i.i.i.i.i.i94.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i95.ph = phi ptr [ %i.dj, %iter.check ], [ %i.du, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i96.ph = phi ptr [ %i.cy, %iter.check ], [ %i.dv, %vec.epilog.iter.check ], [ %i.eg, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i94

.lr.ph.i.i.i.i.i.i94:                             ; preds = %.lr.ph.i.i.i.i.i.i94.preheader, %.lr.ph.i.i.i.i.i.i94
  %.012.i.i.i.i.i.i95 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i94 ], [ %.012.i.i.i.i.i.i95.ph, %.lr.ph.i.i.i.i.i.i94.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i96 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i94 ], [ %.0911.i.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i.i94.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.ej = load i64, ptr %.0911.i.i.i.i.i.i96, align 4, !alias.scope !249
  store i64 %i.ej, ptr %.012.i.i.i.i.i.i95, align 4, !alias.scope !248
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i96, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i95, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i97 = icmp eq ptr %i.ek, %i.cu
  br i1 %.not.i.i.i.i.i.i97, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i98, label %.lr.ph.i.i.i.i.i.i94, !llvm.loop !228

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i98: ; preds = %.lr.ph.i.i.i.i.i.i94, %middle.block, %vec.epilog.middle.block, %.noexc103
  %.0.lcssa.i.i.i.i.i.i99 = phi ptr [ %i.dj, %.noexc103 ], [ %i.ef, %vec.epilog.middle.block ], [ %i.du, %middle.block ], [ %i.el, %.lr.ph.i.i.i.i.i.i94 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i99, i64 8
  %.not.i24.i.i.i100 = icmp eq ptr %i.cy, null
  br i1 %.not.i24.i.i.i100, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i101, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i98
  %i.en = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.ep) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i101

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i101: ; preds = %bb.m, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i98
  store ptr %i.dj, ptr %i.i, align 8, !tbaa !105
  store ptr %i.em, ptr %i.j, align 8, !tbaa !100
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.eq, ptr %i.k, align 8, !tbaa !101
  br label %_ZN3re214ByteMapBuilder4MarkEii.exit104

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i133, %bb.b, %.noexc, %bb.ab, %.noexc123, %bb.z, %bb.x, %bb.o, %_ZN3re214ByteMapBuilder4MarkEii.exit120, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i90, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i106, %bb.ai
  %lpad.loopexit.split-lp401 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3re214ByteMapBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1112) dereferenceable(1112) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %lpad.loopexit.split-lp401

_ZN3re214ByteMapBuilder4MarkEii.exit104:          ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i101, %bb.k, %bb.i, %_ZN3re214ByteMapBuilder4MarkEii.exit
  %i.er = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.es = and i32 %i.er, 8
  %.not78 = icmp eq i32 %i.es, 0
  br i1 %.not78, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN3re214ByteMapBuilder4MarkEii.exit104
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16 ; 2 uses
  %i.ex = and i32 %i.ew, 7
  %i.ey = icmp eq i32 %i.ex, 2
  %.unshifted = xor i32 %i.ew, %i.er
  %i.ez = icmp ult i32 %.unshifted, 16
  %or.cond150 = and i1 %i.ey, %i.ez
  br i1 %or.cond150, label %.critedge84, label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN3re214ByteMapBuilder4MarkEii.exit104
  invoke void @_ZN3re214ByteMapBuilder5MergeEv(ptr noundef nonnull align 8 dereferenceable(1112) %1)
          to label %.critedge84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.c
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !17 ; 2 uses
  %i.fc = and i32 %i.fb, 3
  %i.fd = icmp eq i32 %i.fc, 0
  %or.cond5 = select i1 %i.fd, i1 true, i1 %.070171
  br i1 %or.cond5, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fe = load ptr, ptr %i.j, align 8, !tbaa !100 ; 7 uses
  %i.ff = load ptr, ptr %i.k, align 8, !tbaa !101
  %.not.i.i105 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not.i.i105, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 10, ptr %i.fe, align 4, !tbaa !103
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 10, ptr %i.fg, align 4, !tbaa !104
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.fh, ptr %i.j, align 8, !tbaa !100
  br label %_ZN3re214ByteMapBuilder4MarkEii.exit120

bb.s:                                             ; preds = %bb.q
  %i.fi = load ptr, ptr %i.i, align 8, !tbaa !105 ; 9 uses
  %i.fj = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fk = ptrtoint ptr %i.fi to i64               ; 4 uses
  %i.fl = sub i64 %i.fj, %i.fk                    ; 3 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775800
  br i1 %i.fm, label %bb.ai, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i106

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i106: ; preds = %bb.s
  %i.fn = ashr exact i64 %i.fl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i107 = call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i.i107, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 1152921504606846975)
  %i.fr = select i1 %i.fp, i64 1152921504606846975, i64 %i.fq ; 3 uses
  %.not.i.i.i.i108 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i108)
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #26
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i106
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl ; 2 uses
  store i32 10, ptr %i.fu, align 4, !tbaa !103
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 10, ptr %i.fv, align 4, !tbaa !104
  %.not10.i.i.i.i.i.i109 = icmp eq ptr %i.fi, %i.fe
  br i1 %.not10.i.i.i.i.i.i109, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i114, label %iter.check366

iter.check366:                                    ; preds = %.noexc119
  %i.fw = ptrtoaddr ptr %i.ft to i64
  %i.fx = add i64 %i.fj, -8
  %i.fy = sub i64 %i.fx, %i.fk                    ; 3 uses
  %i.fz = lshr i64 %i.fy, 3
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 5 uses
  %min.iters.check348 = icmp ult i64 %i.fy, 24
  %i.gb = sub i64 %i.fk, %i.fw
  %diff.check350 = icmp ugt i64 %i.gb, -128
  %or.cond386 = or i1 %min.iters.check348, %diff.check350
  br i1 %or.cond386, label %.lr.ph.i.i.i.i.i.i110.preheader, label %vector.main.loop.iter.check351

vector.main.loop.iter.check351:                   ; preds = %iter.check366
  %min.iters.check352 = icmp ult i64 %i.fy, 120
  br i1 %min.iters.check352, label %vec.epilog.ph370, label %vector.ph353

vector.ph353:                                     ; preds = %vector.main.loop.iter.check351
  %i.gc = and i64 %i.ga, 12
  %n.vec354 = and i64 %i.ga, 4611686018427387888  ; 4 uses
  %i.gd = shl i64 %n.vec354, 3                    ; 2 uses
  %i.ge = getelementptr i8, ptr %i.ft, i64 %i.gd  ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fi, i64 %i.gd
  br label %vector.body355

vector.body355:                                   ; preds = %vector.ph353, %vector.body355
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next363, %vector.body355 ] ; 2 uses
  %i.gg = shl i64 %index356, 3                    ; 2 uses
  %next.gep357 = getelementptr i8, ptr %i.ft, i64 %i.gg ; 4 uses
  %next.gep358 = getelementptr i8, ptr %i.fi, i64 %i.gg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.gh = getelementptr i8, ptr %next.gep358, i64 32
  %i.gi = getelementptr i8, ptr %next.gep358, i64 64
  %i.gj = getelementptr i8, ptr %next.gep358, i64 96
  %wide.load359 = load <4 x i64>, ptr %next.gep358, align 4, !alias.scope !251
  %wide.load360 = load <4 x i64>, ptr %i.gh, align 4, !alias.scope !251
  %wide.load361 = load <4 x i64>, ptr %i.gi, align 4, !alias.scope !251
  %wide.load362 = load <4 x i64>, ptr %i.gj, align 4, !alias.scope !251
  %i.gk = getelementptr i8, ptr %next.gep357, i64 32
  %i.gl = getelementptr i8, ptr %next.gep357, i64 64
  %i.gm = getelementptr i8, ptr %next.gep357, i64 96
  store <4 x i64> %wide.load359, ptr %next.gep357, align 4, !alias.scope !250
  store <4 x i64> %wide.load360, ptr %i.gk, align 4, !alias.scope !250
  store <4 x i64> %wide.load361, ptr %i.gl, align 4, !alias.scope !250
  store <4 x i64> %wide.load362, ptr %i.gm, align 4, !alias.scope !250
  %index.next363 = add nuw i64 %index356, 16      ; 2 uses
  %i.gn = icmp eq i64 %index.next363, %n.vec354
  br i1 %i.gn, label %middle.block364, label %vector.body355, !llvm.loop !232

middle.block364:                                  ; preds = %vector.body355
  %cmp.n365 = icmp eq i64 %i.ga, %n.vec354
  br i1 %cmp.n365, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i114, label %vec.epilog.iter.check367

vec.epilog.iter.check367:                         ; preds = %middle.block364
  %min.epilog.iters.check369 = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check369, label %.lr.ph.i.i.i.i.i.i110.preheader, label %vec.epilog.ph370, !prof !108

vec.epilog.ph370:                                 ; preds = %vector.main.loop.iter.check351, %vec.epilog.iter.check367
  %vec.epilog.resume.val371 = phi i64 [ %n.vec354, %vec.epilog.iter.check367 ], [ 0, %vector.main.loop.iter.check351 ]
  %n.vec372 = and i64 %i.ga, 4611686018427387900  ; 3 uses
  %i.go = shl i64 %n.vec372, 3                    ; 2 uses
  %i.gp = getelementptr i8, ptr %i.ft, i64 %i.go  ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fi, i64 %i.go
  br label %vec.epilog.vector.body373

vec.epilog.vector.body373:                        ; preds = %vec.epilog.vector.body373, %vec.epilog.ph370
  %index374 = phi i64 [ %vec.epilog.resume.val371, %vec.epilog.ph370 ], [ %index.next378, %vec.epilog.vector.body373 ] ; 2 uses
  %i.gr = shl i64 %index374, 3                    ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.ft, i64 %i.gr
  %next.gep376 = getelementptr i8, ptr %i.fi, i64 %i.gr
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %wide.load377 = load <4 x i64>, ptr %next.gep376, align 4, !alias.scope !251
  store <4 x i64> %wide.load377, ptr %next.gep375, align 4, !alias.scope !250
  %index.next378 = add nuw i64 %index374, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next378, %n.vec372
  br i1 %i.gs, label %vec.epilog.middle.block379, label %vec.epilog.vector.body373, !llvm.loop !233

vec.epilog.middle.block379:                       ; preds = %vec.epilog.vector.body373
  %cmp.n380 = icmp eq i64 %i.ga, %n.vec372
  br i1 %cmp.n380, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i114, label %.lr.ph.i.i.i.i.i.i110.preheader

.lr.ph.i.i.i.i.i.i110.preheader:                  ; preds = %iter.check366, %vec.epilog.iter.check367, %vec.epilog.middle.block379
  %.012.i.i.i.i.i.i111.ph = phi ptr [ %i.ft, %iter.check366 ], [ %i.ge, %vec.epilog.iter.check367 ], [ %i.gp, %vec.epilog.middle.block379 ]
  %.0911.i.i.i.i.i.i112.ph = phi ptr [ %i.fi, %iter.check366 ], [ %i.gf, %vec.epilog.iter.check367 ], [ %i.gq, %vec.epilog.middle.block379 ]
  br label %.lr.ph.i.i.i.i.i.i110

.lr.ph.i.i.i.i.i.i110:                            ; preds = %.lr.ph.i.i.i.i.i.i110.preheader, %.lr.ph.i.i.i.i.i.i110
  %.012.i.i.i.i.i.i111 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i110 ], [ %.012.i.i.i.i.i.i111.ph, %.lr.ph.i.i.i.i.i.i110.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i112 = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i110 ], [ %.0911.i.i.i.i.i.i112.ph, %.lr.ph.i.i.i.i.i.i110.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.gt = load i64, ptr %.0911.i.i.i.i.i.i112, align 4, !alias.scope !251
  store i64 %i.gt, ptr %.012.i.i.i.i.i.i111, align 4, !alias.scope !250
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i112, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i111, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i113 = icmp eq ptr %i.gu, %i.fe
  br i1 %.not.i.i.i.i.i.i113, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i114, label %.lr.ph.i.i.i.i.i.i110, !llvm.loop !234

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i114: ; preds = %.lr.ph.i.i.i.i.i.i110, %middle.block364, %vec.epilog.middle.block379, %.noexc119
  %.0.lcssa.i.i.i.i.i.i115 = phi ptr [ %i.ft, %.noexc119 ], [ %i.gp, %vec.epilog.middle.block379 ], [ %i.ge, %middle.block364 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i110 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i115, i64 8
  %.not.i24.i.i.i116 = icmp eq ptr %i.fi, null
  br i1 %.not.i24.i.i.i116, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i117, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i114
  %i.gx = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.gz) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i117

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i117: ; preds = %bb.t, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i114
  store ptr %i.ft, ptr %i.i, align 8, !tbaa !105
  store ptr %i.gw, ptr %i.j, align 8, !tbaa !100
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fr
  store ptr %i.ha, ptr %i.k, align 8, !tbaa !101
  br label %_ZN3re214ByteMapBuilder4MarkEii.exit120

_ZN3re214ByteMapBuilder4MarkEii.exit120:          ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i117, %bb.r
  invoke void @_ZN3re214ByteMapBuilder5MergeEv(ptr noundef nonnull align 8 dereferenceable(1112) %1)
          to label %_ZN3re214ByteMapBuilder4MarkEii.exit120._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN3re214ByteMapBuilder4MarkEii.exit120._crit_edge: ; preds = %_ZN3re214ByteMapBuilder4MarkEii.exit120
  %.pre = load i32, ptr %i.fa, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %_ZN3re214ByteMapBuilder4MarkEii.exit120._crit_edge, %bb.p
  %i.hb = phi i32 [ %i.fb, %bb.p ], [ %.pre, %_ZN3re214ByteMapBuilder4MarkEii.exit120._crit_edge ]
  %.171 = phi i1 [ %.070171, %bb.p ], [ true, %_ZN3re214ByteMapBuilder4MarkEii.exit120._crit_edge ] ; 2 uses
  %i.hc = and i32 %i.hb, 48
  %i.hd = icmp eq i32 %i.hc, 0
  %or.cond7 = select i1 %i.hd, i1 true, i1 %.067172
  br i1 %or.cond7, label %.critedge84, label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN3re214ByteMapBuilder5MergeEv.exit
  %not..059.ptr.sroa.idx = phi i8 [ 0, %_ZN3re214ByteMapBuilder5MergeEv.exit ], [ 1, %bb.u ]
  %.not = phi i1 [ true, %_ZN3re214ByteMapBuilder5MergeEv.exit ], [ false, %bb.u ]
  br label %.preheader

.preheader:                                       ; preds = %bb.v, %_ZN3re214ByteMapBuilder4MarkEii.exit147
  %.0169 = phi i32 [ 0, %bb.v ], [ %.058.lcssa, %_ZN3re214ByteMapBuilder4MarkEii.exit147 ] ; 11 uses
  %i.he = trunc i32 %.0169 to i8                  ; 3 uses
  %i.hf = and i8 %i.he, -33
  %i.hg = add i8 %i.hf, -65
  %or.cond15.i = icmp ult i8 %i.hg, 26
  %i.hh = add i8 %i.he, -48
  %or.cond8.i = icmp ult i8 %i.hh, 10
  %or.cond16.i = or i1 %or.cond8.i, %or.cond15.i
  %i.hi = icmp eq i8 %i.he, 95
  %i.hj = or i1 %i.hi, %or.cond16.i               ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %.0169, i32 255) ; 6 uses
  %i.hk = add nuw i32 %smax, 1                    ; 3 uses
  %exitcond.not240 = icmp sgt i32 %.0169, 254
  br i1 %exitcond.not240, label %.critedge, label %.lr.ph242

.lr.ph242:                                        ; preds = %.preheader
  %i.hl = sub i32 %smax, %.0169                   ; 3 uses
  %min.iters.check334 = icmp ult i32 %i.hl, 32
  br i1 %min.iters.check334, label %scalar.ph.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %.lr.ph242
  %n.vec336 = and i32 %i.hl, -32                  ; 3 uses
  %i.hm = add i32 %.0169, %n.vec336
  %broadcast.splatinsert = insertelement <32 x i1> poison, i1 %i.hj, i64 0
  %broadcast.splat = shufflevector <32 x i1> %broadcast.splatinsert, <32 x i1> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert337 = insertelement <32 x i32> poison, i32 %.0169, i64 0
  %broadcast.splat338 = shufflevector <32 x i32> %broadcast.splatinsert337, <32 x i32> poison, <32 x i32> zeroinitializer
  %induction = add <32 x i32> %broadcast.splat338, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body.interim, %vector.ph335
  %index340 = phi i32 [ 0, %vector.ph335 ], [ %index.next341, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph335 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.hn = add <32 x i32> %vec.ind, splat (i32 1)  ; 2 uses
  %i.ho = trunc <32 x i32> %i.hn to <32 x i8>     ; 3 uses
  %i.hp = and <32 x i8> %i.ho, splat (i8 -33)
  %i.hq = add <32 x i8> %i.hp, splat (i8 -65)
  %i.hr = icmp ult <32 x i8> %i.hq, splat (i8 26)
  %i.hs = add <32 x i8> %i.ho, splat (i8 -48)
  %i.ht = icmp ult <32 x i8> %i.hs, splat (i8 10)
  %i.hu = or <32 x i1> %i.ht, %i.hr
  %i.hv = icmp eq <32 x i8> %i.ho, splat (i8 95)
  %i.hw = or <32 x i1> %i.hv, %i.hu
  %i.hx = xor <32 x i1> %broadcast.splat, %i.hw
  %i.hy = freeze <32 x i1> %i.hx                  ; 2 uses
  %i.hz = bitcast <32 x i1> %i.hy to i32
  %.not383 = icmp eq i32 %i.hz, 0
  br i1 %.not383, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body339
  %vec.ind.next = add <32 x i32> %vec.ind, splat (i32 32)
  %index.next341 = add nuw i32 %index340, 32      ; 2 uses
  %i.ia = icmp eq i32 %index.next341, %n.vec336
  br i1 %i.ia, label %middle.block342, label %vector.body339, !llvm.loop !235

middle.block342:                                  ; preds = %vector.body.interim
  %cmp.n343 = icmp eq i32 %i.hl, %n.vec336
  br i1 %cmp.n343, label %.critedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph242, %middle.block342
  %.058.in241.ph = phi i32 [ %.0169, %.lr.ph242 ], [ %i.hm, %middle.block342 ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body339
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.hy, i1 false) ; 2 uses
  %i.ib = trunc i64 %first.active.lane to i32
  %i.ic = add i32 %index340, %i.ib
  %i.id = add i32 %.0169, %i.ic
  %i.ie = extractelement <32 x i32> %i.hn, i64 %first.active.lane
  br label %..critedge_crit_edge244

_ZN3re214ByteMapBuilder4MarkEii.exit147.thread:   ; preds = %bb.ae, %_ZN3re214ByteMapBuilder4MarkEii.exit147
  %i.if = load ptr, ptr %i.i, align 8, !tbaa !109 ; 3 uses
  %i.ig = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ac, %_ZN3re214ByteMapBuilder4MarkEii.exit147.thread
  %i.ii = phi ptr [ %i.if, %_ZN3re214ByteMapBuilder4MarkEii.exit147.thread ], [ %i.ke, %bb.ac ]
  %i.ij = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.ik = load ptr, ptr %i.m, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %i.ik, %i.ij
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %i.ij, ptr %i.m, align 8, !tbaa !100
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i:  ; preds = %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i.i, %._crit_edge.i
  %i.il = load ptr, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i23.i = icmp eq ptr %i.ii, %i.il
  br i1 %.not.i.i23.i, label %_ZN3re214ByteMapBuilder5MergeEv.exit, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24.i

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i
  store ptr %i.il, ptr %i.j, align 8, !tbaa !100
  br label %_ZN3re214ByteMapBuilder5MergeEv.exit

.lr.ph.i:                                         ; preds = %_ZN3re214ByteMapBuilder4MarkEii.exit147.thread, %bb.ac
  %.sroa.027.032.i = phi ptr [ %i.ke, %bb.ac ], [ %i.if, %_ZN3re214ByteMapBuilder4MarkEii.exit147.thread ] ; 3 uses
  %i.im = load i32, ptr %.sroa.027.032.i, align 4, !tbaa !103 ; 4 uses
  %i.in = add nsw i32 %i.im, -1                   ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.027.032.i, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !104 ; 5 uses
  %i.iq = icmp sgt i32 %i.im, 0
  br i1 %i.iq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i
  %i.ir = lshr i32 %i.in, 6
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.is ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !110 ; 2 uses
  %i.iv = and i32 %i.in, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = shl nuw i64 1, %i.iw                    ; 2 uses
  %i.iy = and i64 %i.iu, %i.ix
  %.not.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.iz = or i64 %i.iu, %i.ix
  store i64 %i.iz, ptr %i.it, align 8, !tbaa !110
  %i.ja = invoke noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %i.im)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.x
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !87
  %i.je = zext nneg i32 %i.in to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.je
  store i32 %i.jd, ptr %i.jf, align 4, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %.noexc121, %bb.w, %.lr.ph.i
  %i.jg = sdiv i32 %i.ip, 64
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jh ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !110 ; 2 uses
  %i.jk = srem i32 %i.ip, 64
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl nuw i64 1, %i.jl                    ; 2 uses
  %i.jn = and i64 %i.jj, %i.jm
  %.not31.i = icmp eq i64 %i.jn, 0
  br i1 %.not31.i, label %bb.z, label %.preheader388

bb.z:                                             ; preds = %bb.y
  %i.jo = or i64 %i.jj, %i.jm
  store i64 %i.jo, ptr %i.ji, align 8, !tbaa !110
  %i.jp = add nsw i32 %i.ip, 1
  %i.jq = invoke noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %i.jp)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.z
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !87
  %i.ju = sext i32 %i.ip to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ju
  store i32 %i.jt, ptr %i.jv, align 4, !tbaa !87
  br label %.preheader388

.preheader388:                                    ; preds = %.noexc122, %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader388, %.noexc124
  %.0.i = phi i32 [ %i.kd, %.noexc124 ], [ %i.im, %.preheader388 ] ; 2 uses
  %i.jw = icmp slt i32 %.0.i, 256
  br i1 %i.jw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jx = invoke noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %.0.i)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc123:                                        ; preds = %bb.ab
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.jy ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !87
  %i.kb = invoke noundef i32 @_ZN3re214ByteMapBuilder7RecolorEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %i.ka)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc124:                                        ; preds = %.noexc123
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !87
  %i.kc = icmp eq i32 %i.jx, %i.ip
  %i.kd = add nsw i32 %i.jx, 1
  br i1 %i.kc, label %bb.ac, label %bb.aa

bb.ac:                                            ; preds = %.noexc124, %bb.aa
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.027.032.i, i64 8 ; 3 uses
  %i.kf = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

bb.ad:                                            ; preds = %scalar.ph
  %exitcond.not = icmp eq i32 %.058, %smax
  br i1 %exitcond.not, label %.critedge, label %scalar.ph, !llvm.loop !236

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ad
  %.058.in241 = phi i32 [ %.058, %bb.ad ], [ %.058.in241.ph, %scalar.ph.preheader ] ; 2 uses
  %.058 = add i32 %.058.in241, 1                  ; 4 uses
  %i.kh = trunc i32 %.058 to i8                   ; 3 uses
  %i.ki = and i8 %i.kh, -33
  %i.kj = add i8 %i.ki, -65
  %or.cond15.i125 = icmp ult i8 %i.kj, 26
  %i.kk = add i8 %i.kh, -48
  %or.cond8.i126 = icmp ult i8 %i.kk, 10
  %or.cond16.i127 = or i1 %or.cond8.i126, %or.cond15.i125
  %i.kl = icmp eq i8 %i.kh, 95
  %i.km = or i1 %i.kl, %or.cond16.i127
  %i.kn = xor i1 %i.hj, %i.km
  br i1 %i.kn, label %..critedge_crit_edge244, label %bb.ad, !llvm.loop !237

..critedge_crit_edge244:                          ; preds = %scalar.ph, %vector.early.exit
  %split245 = phi i32 [ %i.id, %vector.early.exit ], [ %.058.in241, %scalar.ph ]
  %split246 = phi i32 [ %i.ie, %vector.early.exit ], [ %.058, %scalar.ph ]
  br label %.critedge, !llvm.loop !237

.critedge:                                        ; preds = %bb.ad, %middle.block342, %..critedge_crit_edge244, %.preheader
  %.058.in.lcssa = phi i32 [ %smax, %.preheader ], [ %split245, %..critedge_crit_edge244 ], [ %smax, %middle.block342 ], [ %smax, %bb.ad ] ; 4 uses
  %.058.lcssa = phi i32 [ %i.hk, %.preheader ], [ %split246, %..critedge_crit_edge244 ], [ %i.hk, %middle.block342 ], [ %i.hk, %bb.ad ]
  %i.ko = zext i1 %i.hj to i8
  %i.kp = icmp eq i8 %not..059.ptr.sroa.idx, %i.ko
  br i1 %i.kp, label %bb.ae, label %_ZN3re214ByteMapBuilder4MarkEii.exit147

bb.ae:                                            ; preds = %.critedge
  %i.kq = icmp eq i32 %.0169, 0
  %i.kr = icmp eq i32 %.058.in.lcssa, 255
  %or.cond.i131 = and i1 %i.kq, %i.kr
  br i1 %or.cond.i131, label %_ZN3re214ByteMapBuilder4MarkEii.exit147.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ks = load ptr, ptr %i.j, align 8, !tbaa !100 ; 7 uses
  %i.kt = load ptr, ptr %i.k, align 8, !tbaa !101
  %.not.i.i132 = icmp eq ptr %i.ks, %i.kt
  br i1 %.not.i.i132, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %.0169, ptr %i.ks, align 4, !tbaa !103
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store i32 %.058.in.lcssa, ptr %i.ku, align 4, !tbaa !104
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.kv, ptr %i.j, align 8, !tbaa !100
  br label %_ZN3re214ByteMapBuilder4MarkEii.exit147

bb.ah:                                            ; preds = %bb.af
  %i.kw = load ptr, ptr %i.i, align 8, !tbaa !105 ; 9 uses
  %i.kx = ptrtoint ptr %i.ks to i64               ; 2 uses
  %i.ky = ptrtoint ptr %i.kw to i64               ; 4 uses
  %i.kz = sub i64 %i.kx, %i.ky                    ; 3 uses
  %i.la = icmp eq i64 %i.kz, 9223372036854775800
  br i1 %i.la, label %bb.ai, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i133

bb.ai:                                            ; preds = %bb.s, %bb.l, %bb.g, %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i133: ; preds = %bb.ah
  %i.lb = ashr exact i64 %i.kz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i134 = call i64 @llvm.umax.i64(i64 %i.lb, i64 1)
  %i.lc = add nsw i64 %.sroa.speculated.i.i.i.i134, %i.lb ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.lb
  %i.le = call i64 @llvm.umin.i64(i64 %i.lc, i64 1152921504606846975)
  %i.lf = select i1 %i.ld, i64 1152921504606846975, i64 %i.le ; 3 uses
  %.not.i.i.i.i135 = icmp ne i64 %i.lf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i135)
  %i.lg = shl nuw nsw i64 %i.lf, 3
  %i.lh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lg) #26
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i133
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.kz ; 2 uses
  store i32 %.0169, ptr %i.li, align 4, !tbaa !103
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %.058.in.lcssa, ptr %i.lj, align 4, !tbaa !104
  %.not10.i.i.i.i.i.i136 = icmp eq ptr %i.kw, %i.ks
  br i1 %.not10.i.i.i.i.i.i136, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i141, label %iter.check317

iter.check317:                                    ; preds = %.noexc146
  %i.lk = ptrtoaddr ptr %i.lh to i64
  %i.ll = add i64 %i.kx, -8
  %i.lm = sub i64 %i.ll, %i.ky                    ; 3 uses
  %i.ln = lshr i64 %i.lm, 3
  %i.lo = add nuw nsw i64 %i.ln, 1                ; 5 uses
  %min.iters.check299 = icmp ult i64 %i.lm, 24
  %i.lp = sub i64 %i.ky, %i.lk
  %diff.check301 = icmp ugt i64 %i.lp, -128
  %or.cond387 = or i1 %min.iters.check299, %diff.check301
  br i1 %or.cond387, label %.lr.ph.i.i.i.i.i.i137.preheader, label %vector.main.loop.iter.check302

vector.main.loop.iter.check302:                   ; preds = %iter.check317
  %min.iters.check303 = icmp ult i64 %i.lm, 120
  br i1 %min.iters.check303, label %vec.epilog.ph321, label %vector.ph304

vector.ph304:                                     ; preds = %vector.main.loop.iter.check302
  %i.lq = and i64 %i.lo, 12
  %n.vec305 = and i64 %i.lo, 4611686018427387888  ; 4 uses
  %i.lr = shl i64 %n.vec305, 3                    ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lh, i64 %i.lr  ; 2 uses
  %i.lt = getelementptr i8, ptr %i.kw, i64 %i.lr
  br label %vector.body306

vector.body306:                                   ; preds = %vector.ph304, %vector.body306
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next314, %vector.body306 ] ; 2 uses
  %i.lu = shl i64 %index307, 3                    ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.lh, i64 %i.lu ; 4 uses
  %next.gep309 = getelementptr i8, ptr %i.kw, i64 %i.lu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.lv = getelementptr i8, ptr %next.gep309, i64 32
  %i.lw = getelementptr i8, ptr %next.gep309, i64 64
  %i.lx = getelementptr i8, ptr %next.gep309, i64 96
  %wide.load310 = load <4 x i64>, ptr %next.gep309, align 4, !alias.scope !253
  %wide.load311 = load <4 x i64>, ptr %i.lv, align 4, !alias.scope !253
  %wide.load312 = load <4 x i64>, ptr %i.lw, align 4, !alias.scope !253
  %wide.load313 = load <4 x i64>, ptr %i.lx, align 4, !alias.scope !253
  %i.ly = getelementptr i8, ptr %next.gep308, i64 32
  %i.lz = getelementptr i8, ptr %next.gep308, i64 64
  %i.ma = getelementptr i8, ptr %next.gep308, i64 96
  store <4 x i64> %wide.load310, ptr %next.gep308, align 4, !alias.scope !252
  store <4 x i64> %wide.load311, ptr %i.ly, align 4, !alias.scope !252
  store <4 x i64> %wide.load312, ptr %i.lz, align 4, !alias.scope !252
  store <4 x i64> %wide.load313, ptr %i.ma, align 4, !alias.scope !252
  %index.next314 = add nuw i64 %index307, 16      ; 2 uses
  %i.mb = icmp eq i64 %index.next314, %n.vec305
  br i1 %i.mb, label %middle.block315, label %vector.body306, !llvm.loop !241

middle.block315:                                  ; preds = %vector.body306
  %cmp.n316 = icmp eq i64 %i.lo, %n.vec305
  br i1 %cmp.n316, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i141, label %vec.epilog.iter.check318

vec.epilog.iter.check318:                         ; preds = %middle.block315
  %min.epilog.iters.check320 = icmp eq i64 %i.lq, 0
  br i1 %min.epilog.iters.check320, label %.lr.ph.i.i.i.i.i.i137.preheader, label %vec.epilog.ph321, !prof !108

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check302, %vec.epilog.iter.check318
  %vec.epilog.resume.val322 = phi i64 [ %n.vec305, %vec.epilog.iter.check318 ], [ 0, %vector.main.loop.iter.check302 ]
  %n.vec323 = and i64 %i.lo, 4611686018427387900  ; 3 uses
  %i.mc = shl i64 %n.vec323, 3                    ; 2 uses
  %i.md = getelementptr i8, ptr %i.lh, i64 %i.mc  ; 2 uses
  %i.me = getelementptr i8, ptr %i.kw, i64 %i.mc
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph321
  %index325 = phi i64 [ %vec.epilog.resume.val322, %vec.epilog.ph321 ], [ %index.next329, %vec.epilog.vector.body324 ] ; 2 uses
  %i.mf = shl i64 %index325, 3                    ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.lh, i64 %i.mf
  %next.gep327 = getelementptr i8, ptr %i.kw, i64 %i.mf
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %wide.load328 = load <4 x i64>, ptr %next.gep327, align 4, !alias.scope !253
  store <4 x i64> %wide.load328, ptr %next.gep326, align 4, !alias.scope !252
  %index.next329 = add nuw i64 %index325, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next329, %n.vec323
  br i1 %i.mg, label %vec.epilog.middle.block330, label %vec.epilog.vector.body324, !llvm.loop !242

vec.epilog.middle.block330:                       ; preds = %vec.epilog.vector.body324
  %cmp.n331 = icmp eq i64 %i.lo, %n.vec323
  br i1 %cmp.n331, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i141, label %.lr.ph.i.i.i.i.i.i137.preheader

.lr.ph.i.i.i.i.i.i137.preheader:                  ; preds = %iter.check317, %vec.epilog.iter.check318, %vec.epilog.middle.block330
  %.012.i.i.i.i.i.i138.ph = phi ptr [ %i.lh, %iter.check317 ], [ %i.ls, %vec.epilog.iter.check318 ], [ %i.md, %vec.epilog.middle.block330 ]
  %.0911.i.i.i.i.i.i139.ph = phi ptr [ %i.kw, %iter.check317 ], [ %i.lt, %vec.epilog.iter.check318 ], [ %i.me, %vec.epilog.middle.block330 ]
  br label %.lr.ph.i.i.i.i.i.i137

.lr.ph.i.i.i.i.i.i137:                            ; preds = %.lr.ph.i.i.i.i.i.i137.preheader, %.lr.ph.i.i.i.i.i.i137
  %.012.i.i.i.i.i.i138 = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i137 ], [ %.012.i.i.i.i.i.i138.ph, %.lr.ph.i.i.i.i.i.i137.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i139 = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i.i137 ], [ %.0911.i.i.i.i.i.i139.ph, %.lr.ph.i.i.i.i.i.i137.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.mh = load i64, ptr %.0911.i.i.i.i.i.i139, align 4, !alias.scope !253
  store i64 %i.mh, ptr %.012.i.i.i.i.i.i138, align 4, !alias.scope !252
  %i.mi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i139, i64 8 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i138, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i140 = icmp eq ptr %i.mi, %i.ks
  br i1 %.not.i.i.i.i.i.i140, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i141, label %.lr.ph.i.i.i.i.i.i137, !llvm.loop !243

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i141: ; preds = %.lr.ph.i.i.i.i.i.i137, %middle.block315, %vec.epilog.middle.block330, %.noexc146
  %.0.lcssa.i.i.i.i.i.i142 = phi ptr [ %i.lh, %.noexc146 ], [ %i.md, %vec.epilog.middle.block330 ], [ %i.ls, %middle.block315 ], [ %i.mj, %.lr.ph.i.i.i.i.i.i137 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i142, i64 8
  %.not.i24.i.i.i143 = icmp eq ptr %i.kw, null
  br i1 %.not.i24.i.i.i143, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i144, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i141
  %i.ml = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = sub i64 %i.mm, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.mn) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i144

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i144: ; preds = %bb.aj, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i141
  store ptr %i.lh, ptr %i.i, align 8, !tbaa !105
  store ptr %i.mk, ptr %i.j, align 8, !tbaa !100
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lf
  store ptr %i.mo, ptr %i.k, align 8, !tbaa !101
  br label %_ZN3re214ByteMapBuilder4MarkEii.exit147

_ZN3re214ByteMapBuilder4MarkEii.exit147:          ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i144, %bb.ag, %.critedge
  %i.mp = icmp slt i32 %.058.in.lcssa, 255
  br i1 %i.mp, label %.preheader, label %_ZN3re214ByteMapBuilder4MarkEii.exit147.thread, !llvm.loop !244

_ZN3re214ByteMapBuilder5MergeEv.exit:             ; preds = %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i
  br i1 %.not, label %.critedge84, label %bb.v

.critedge84:                                      ; preds = %_ZN3re214ByteMapBuilder5MergeEv.exit, %bb.n, %bb.c, %bb.u, %bb.o
  %.373 = phi i1 [ %.070171, %bb.o ], [ %.070171, %bb.c ], [ %.171, %bb.u ], [ %.070171, %bb.n ], [ %.171, %_ZN3re214ByteMapBuilder5MergeEv.exit ]
  %.269 = phi i1 [ %.067172, %bb.o ], [ %.067172, %bb.c ], [ %.067172, %bb.u ], [ %.067172, %bb.n ], [ true, %_ZN3re214ByteMapBuilder5MergeEv.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mq = load i32, ptr %i.e, align 8, !tbaa !72
  %i.mr = sext i32 %i.mq to i64
  %i.ms = icmp slt i64 %indvars.iv.next, %i.mr
  br i1 %i.ms, label %bb.c, label %._crit_edge, !llvm.loop !245

bb.ak:                                            ; preds = %.loopexit.i
  %i.mt = load i32, ptr %i.d, align 8, !tbaa !116
  store i32 %i.mt, ptr %i.o, align 4, !tbaa !87
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i148 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i148, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !101
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mv to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.na) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i:      ; preds = %bb.al, %bb.ak
  %i.nb = load ptr, ptr %i.a, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i1.i, label %_ZN3re214ByteMapBuilderD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !101
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nb to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ng) #23
  br label %_ZN3re214ByteMapBuilderD2Ev.exit

_ZN3re214ByteMapBuilderD2Ev.exit:                 ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3re214ByteMapBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1112) dereferenceable(1112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit2

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit2:       ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re24Prog7FlattenEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.re2::SparseSetT", align 8   ; 12 uses
  %2 = alloca %"class.std::vector.40", align 8    ; 13 uses
  %3 = alloca %"class.re2::SparseArray", align 8  ; 19 uses
  %4 = alloca %"class.re2::SparseArray", align 8  ; 11 uses
  %5 = alloca %"class.std::vector.54", align 8    ; 10 uses
  %6 = alloca %"class.re2::SparseArray", align 8  ; 11 uses
  %7 = alloca %"class.std::vector.59", align 8    ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !70, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !72   ; 5 uses
  store i32 0, ptr %1, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSaIiE8allocateEm.exit.i.i, !prof !86

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSaIiE8allocateEm.exit.i.i:                     ; preds = %bb.b
  %i.h = zext nneg i32 %i.e to i64
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26 ; 2 uses
  store i32 %i.e, ptr %i.f, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !88
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26
          to label %_ZN3re210SparseSetTIvEC2Ei.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSaIiE8allocateEm.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = zext nneg i32 %i.e to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit109
  %common.resume.op = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn259, %_ZNSt6vectorIiSaIiEED2Ev.exit109 ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN3re210SparseSetTIvEC2Ei.exit:                  ; preds = %_ZNSaIiE8allocateEm.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i32 %i.e, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.q, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.r = load i32, ptr %i.d, align 8, !tbaa !72   ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3re210SparseSetTIvEC2Ei.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZN3re210SparseSetTIvEC2Ei.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not246 = icmp eq i32 %i.r, 0
  br i1 %.not246, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread:       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 0, ptr %3, align 8, !tbaa !129
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZNSaIN3re211SparseArrayIiE10IndexValueEE8allocateEm.exit.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.w = shl nuw nsw i64 %i.s, 2
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.x, ptr %2, align 8, !tbaa !131
  store ptr %i.x, ptr %i.y, align 8, !tbaa !132
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.s
  store ptr %i.z, ptr %i.u, align 8, !tbaa !133
  %.pre = load i32, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 0, ptr %3, align 8, !tbaa !129
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = icmp slt i32 %.pre, 0
  br i1 %i.ab, label %.noexc.i.i56, label %_ZNSaIN3re211SparseArrayIiE10IndexValueEE8allocateEm.exit.i.i, !prof !262

.noexc.i.i56:                                     ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc57 unwind label %bb.ad

.noexc57:                                         ; preds = %.noexc.i.i56
  unreachable

_ZNSaIN3re211SparseArrayIiE10IndexValueEE8allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ac = phi ptr [ %i.v, %_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread ], [ %i.aa, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %i.ad = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread ], [ %.pre, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %.pre194196250 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE7reserveEm.exit.thread ], [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 5 uses
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #26
          to label %.noexc58 unwind label %bb.ad

.noexc58:                                         ; preds = %_ZNSaIN3re211SparseArrayIiE10IndexValueEE8allocateEm.exit.i.i
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !88
end_hunk_0
