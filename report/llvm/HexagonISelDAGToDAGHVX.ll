Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4llvm11HvxSelector5packsEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackENS_15MutableArrayRefIiEEj:bb.a
  %lcmp.mod88 = trunc i64 %i.ox to i1
  call void @llvm.assume(i1 %lcmp.mod88)
  %i.px = load i32, ptr %.013.i324.epil.init, align 4, !tbaa !34 ; 5 uses
  %i.py = icmp eq i32 %i.px, -1
  br i1 %i.py, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328, label %.cont.i326.epil

.cont.i326.epil:                                  ; preds = %.lr.ph.i323.epil.preheader
  %i.pz = icmp eq i32 %.else.val.i325.epil.init, -1
  %i.qa = call i32 @llvm.smin.i32(i32 %i.px, i32 %.else.val.i325.epil.init)
  %i.qb = select i1 %i.pz, i32 %i.px, i32 %i.qa
  %i.qc = icmp eq i32 %.epil.init84, -1
  %i.qd = call i32 @llvm.smax.i32(i32 %.epil.init84, i32 %i.px)
  %i.qe = select i1 %i.qc, i32 %i.px, i32 %i.qd
  br label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328: ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328.loopexit.unr-lcssa, %.cont.i326.epil, %.lr.ph.i323.epil.preheader, %bb.bd
  %.sroa.9.2 = phi i32 [ -1, %bb.bd ], [ %.sroa.9.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328.loopexit.unr-lcssa ], [ %.sroa.9.0.epil.init, %.lr.ph.i323.epil.preheader ], [ %i.qe, %.cont.i326.epil ]
  %.sroa.54.2 = phi i32 [ -1, %bb.bd ], [ %.sroa.54.1.1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328.loopexit.unr-lcssa ], [ %.sroa.54.0.epil.init, %.lr.ph.i323.epil.preheader ], [ %i.qb, %.cont.i326.epil ] ; 8 uses
  %i.qf = sub nsw i32 %.sroa.9.2, %.sroa.54.2
  %i.qg = load i32, ptr %i.aw, align 8, !tbaa !243 ; 3 uses
  %i.qh = icmp slt i32 %i.qf, %i.qg
  br i1 %i.qh, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328
  %.not200 = icmp slt i32 %.sroa.54.2, %i.qg
  br i1 %.not200, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !291
  %i.qi = zext nneg i16 %.sroa.0.0.i199 to i32
  %i.qj = or disjoint i32 %i.qi, -2147483648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i32 %i.qj, ptr %i.i, align 8, !tbaa !34
  %i.qk = sub i32 %.sroa.54.2, %i.qg
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0167 = phi i32 [ %i.qk, %bb.bg ], [ %.sroa.54.2, %bb.bf ]
  call fastcc void @"_ZZN4llvm11HvxSelector5packsEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackENS_15MutableArrayRefIiEEjENK3$_0clES3_S3_jNS_3MVTES5_"(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %2, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %3, i32 noundef %.0167, i16 %.sroa.0.0.i199, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.not201155 = icmp eq i32 %i.bh, 0
  br i1 %.not201155, label %.loopexit, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %bb.bh
  %i.ql = and i64 %.8.val, 4294967295             ; 4 uses
  %min.iters.check11 = icmp samesign ult i64 %i.ql, 8
  %i.qm = sub i64 %i.ot, %i.a
  %diff.check = icmp ugt i64 %i.qm, -32
  %or.cond48 = select i1 %min.iters.check11, i1 true, i1 %diff.check
  br i1 %or.cond48, label %.lr.ph158.preheader49, label %vector.ph12

vector.ph12:                                      ; preds = %.lr.ph158.preheader
  %n.vec13 = and i64 %.8.val, 4294967288          ; 3 uses
  %broadcast.splatinsert14 = insertelement <4 x i32> poison, i32 %.sroa.54.2, i64 0
  %broadcast.splat15 = shufflevector <4 x i32> %broadcast.splatinsert14, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph12
  %index17 = phi i64 [ 0, %vector.ph12 ], [ %index.next20, %vector.body16 ] ; 3 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %index17 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %wide.load18 = load <4 x i32>, ptr %i.qn, align 4, !tbaa !34 ; 2 uses
  %wide.load19 = load <4 x i32>, ptr %i.qo, align 4, !tbaa !34 ; 2 uses
  %i.qp = icmp eq <4 x i32> %wide.load18, splat (i32 -1)
  %i.qq = icmp eq <4 x i32> %wide.load19, splat (i32 -1)
  %i.qr = sub nsw <4 x i32> %wide.load18, %broadcast.splat15
  %i.qs = sub nsw <4 x i32> %wide.load19, %broadcast.splat15
  %i.qt = select <4 x i1> %i.qp, <4 x i32> splat (i32 -1), <4 x i32> %i.qr
  %i.qu = select <4 x i1> %i.qq, <4 x i32> splat (i32 -1), <4 x i32> %i.qs
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index17 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  store <4 x i32> %i.qt, ptr %i.qv, align 4, !tbaa !34
  store <4 x i32> %i.qu, ptr %i.qw, align 4, !tbaa !34
  %index.next20 = add nuw i64 %index17, 8         ; 2 uses
  %i.qx = icmp eq i64 %index.next20, %n.vec13
  br i1 %i.qx, label %middle.block21, label %vector.body16, !llvm.loop !890

middle.block21:                                   ; preds = %vector.body16
  %cmp.n22 = icmp eq i64 %i.ql, %n.vec13
  br i1 %cmp.n22, label %.loopexit, label %.lr.ph158.preheader49

.lr.ph158.preheader49:                            ; preds = %.lr.ph158.preheader, %middle.block21
  %indvars.iv161.ph = phi i64 [ 0, %.lr.ph158.preheader ], [ %n.vec13, %middle.block21 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv161.ph, 1
  %xtraiter91 = and i64 %.8.val, 1
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph158.prol.loopexit, label %.lr.ph158.prol

.lr.ph158.prol:                                   ; preds = %.lr.ph158.preheader49
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv161.ph
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !34 ; 2 uses
  %.not202.prol = icmp eq i32 %i.qz, -1
  %i.ra = sub nsw i32 %i.qz, %.sroa.54.2
  %.0165.prol = select i1 %.not202.prol, i32 -1, i32 %i.ra
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv161.ph
  store i32 %.0165.prol, ptr %i.rb, align 4, !tbaa !34
  %indvars.iv.next162.prol = or disjoint i64 %indvars.iv161.ph, 1
  br label %.lr.ph158.prol.loopexit

.lr.ph158.prol.loopexit:                          ; preds = %.lr.ph158.prol, %.lr.ph158.preheader49
  %indvars.iv161.unr = phi i64 [ %indvars.iv161.ph, %.lr.ph158.preheader49 ], [ %indvars.iv.next162.prol, %.lr.ph158.prol ]
  %i.rc = icmp eq i64 %i.ql, %.neg
  br i1 %i.rc, label %.loopexit, label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.1, %.lr.ph158 ], [ %indvars.iv161.unr, %.lr.ph158.prol.loopexit ] ; 4 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv161
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !34 ; 2 uses
  %.not202 = icmp eq i32 %i.re, -1
  %i.rf = sub nsw i32 %i.re, %.sroa.54.2
  %.0165 = select i1 %.not202, i32 -1, i32 %i.rf
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv161
  store i32 %.0165, ptr %i.rg, align 4, !tbaa !34
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv.next162
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !34 ; 2 uses
  %.not202.1 = icmp eq i32 %i.ri, -1
  %i.rj = sub nsw i32 %i.ri, %.sroa.54.2
  %.0165.1 = select i1 %.not202.1, i32 -1, i32 %i.rj
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next162
  store i32 %.0165.1, ptr %i.rk, align 4, !tbaa !34
  %indvars.iv.next162.1 = add nuw nsw i64 %indvars.iv161, 2 ; 2 uses
  %.not201.1 = icmp eq i64 %indvars.iv.next162.1, %i.ql
  br i1 %.not201.1, label %.loopexit, label %.lr.ph158, !llvm.loop !891

bb.bi:                                            ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit328
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !897
  store i32 268435456, ptr %i.rl, align 8, !tbaa !293, !alias.scope !897
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158, %middle.block21, %bb.bh, %bb.bi
  %i.rm = load ptr, ptr %16, align 8, !tbaa !31   ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.lp
  br i1 %i.rn, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit329, label %bb.bj

bb.bj:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.rm) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit329

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit329:       ; preds = %.loopexit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %.pre170 = load ptr, ptr %12, align 8, !tbaa !31
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge154, %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit329, %bb.y
  %i.ro = phi ptr [ %i.ej, %._crit_edge154 ], [ %.pre170, %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit329 ], [ %i.ej, %bb.y ] ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.do
  br i1 %i.rp, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef %i.ro) #23
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit:            ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.rq = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit330, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit
  call void @free(ptr noundef %i.rq) #23
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit330

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit330:         ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.rt = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.bj
  br i1 %i.ru, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit331, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit330
  call void @free(ptr noundef %i.rt) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit331

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit331:       ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit330, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit331, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, %_ZN4llvm4copyIRNS_8ArrayRefIiEEPiEET0_OT_S5_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm11HvxSelector7shuffs1EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 captures(none) %2, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::OpRef") align 8 captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %7 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %8 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %10 = alloca %"struct.(anonymous namespace)::ForwardDeltaNetwork", align 8 ; 11 uses
  %11 = alloca %"struct.(anonymous namespace)::ReverseDeltaNetwork", align 8 ; 11 uses
  %12 = alloca %"struct.(anonymous namespace)::BenesNetwork", align 8 ; 12 uses
  %13 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %14 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %.sroa.0120 = alloca [64 x i8], align 8         ; 6 uses
  %16 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !302  ; 7 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %.sroa.023.0.copyload = load ptr, ptr %2, align 8, !tbaa !286 ; 12 uses
  %i.d = and i64 %i.b, 4294967295                 ; 3 uses
  %.not14.i = icmp eq i64 %i.d, 0
  br i1 %.not14.i, label %.loopexit177, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.d
  br i1 %.not.i, label %.loopexit177, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %indvars.iv.i
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34   ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  %i.h = zext i32 %i.f to i64
  %.not13.i = icmp eq i64 %indvars.iv.i, %i.h
  %or.cond.i = or i1 %i.g, %.not13.i
  br i1 %or.cond.i, label %bb.b, label %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit

.loopexit177:                                     ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !291
  br label %bb.al

_ZL10isIdentityN4llvm8ArrayRefIiEE.exit:          ; preds = %.lr.ph.i
  %.idx.i = shl nuw nsw i64 %i.b, 2
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 %.idx.i ; 2 uses
  %.not14.i63 = icmp eq i64 %i.b, 0
  br i1 %.not14.i63, label %.loopexit, label %.lr.ph.i64

bb.c:                                             ; preds = %.lr.ph.i64
  %i.j = getelementptr inbounds nuw i8, ptr %.0915.i, i64 4 ; 2 uses
  %.not.i66 = icmp eq ptr %i.j, %i.i
  br i1 %.not.i66, label %.loopexit, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit, %bb.c
  %.0915.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.023.0.copyload, %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit ] ; 2 uses
  %i.k = load i32, ptr %.0915.i, align 4, !tbaa !34
  %.not12.i = icmp eq i32 %i.k, -1
  br i1 %.not12.i, label %bb.c, label %.lr.ph.i68

.loopexit:                                        ; preds = %bb.c, %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !243
  switch i32 %i.m, label %bb.d [
    i32 1, label %_ZN4llvm3MVT11getVectorVTES0_j.exit
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split155
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split156
    i32 5, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split157
    i32 6, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split158
    i32 7, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split159
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split160
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split161
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split162
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split163
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split164
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split165
    i32 512, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split166
    i32 1024, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split167
  ]

bb.d:                                             ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split:   ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split155: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split156: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split157: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split158: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split159: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split160: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split161: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split162: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split163: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split164: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split165: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split166: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split167: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %.loopexit, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split167, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split166, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split165, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split164, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split163, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split162, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split161, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split160, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split159, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split158, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split157, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split156, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split155, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split, %bb.d
  %.sroa.0.0.i = phi i32 [ -2147483648, %bb.d ], [ -2147483600, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split161 ], [ -2147483599, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split162 ], [ -2147483598, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split163 ], [ -2147483597, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split164 ], [ -2147483596, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split165 ], [ -2147483595, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split166 ], [ -2147483608, %.loopexit ], [ -2147483601, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split160 ], [ -2147483607, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split ], [ -2147483606, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split155 ], [ -2147483605, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split156 ], [ -2147483604, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split157 ], [ -2147483603, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split158 ], [ -2147483602, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split159 ], [ -2147483594, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split167 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !919
  store i32 %.sroa.0.0.i, ptr %i.n, align 8, !tbaa !293, !alias.scope !919
  br label %bb.al

.lr.ph.i68:                                       ; preds = %.lr.ph.i64, %_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i ], [ 0, %.lr.ph.i64 ] ; 3 uses
  %.sroa.8.024.i = phi i8 [ %.sroa.8.2.ph.i, %_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i ], [ 0, %.lr.ph.i64 ] ; 2 uses
  %.sroa.03.023.i = phi i32 [ %.sroa.03.1.ph.i, %_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i ], [ undef, %.lr.ph.i64 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %indvars.iv.i69
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i68
  %i.r = trunc nuw i8 %.sroa.8.024.i to i1
  %i.s = trunc nuw nsw i64 %indvars.iv.i69 to i32 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %.sroa.03.023.i, %i.s
  %i.u = srem i32 %i.t, %i.c
  %.not15.i = icmp eq i32 %i.u, %i.p
  br i1 %.not15.i, label %_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.v = sub nsw i32 %i.p, %i.s                   ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %i.x = select i1 %i.w, i32 %i.c, i32 0
  %spec.select.i = add i32 %i.x, %i.v
  br label %_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i

_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i: ; preds = %bb.g, %bb.f, %.lr.ph.i68
  %.sroa.03.1.ph.i = phi i32 [ %spec.select.i, %bb.g ], [ %.sroa.03.023.i, %.lr.ph.i68 ], [ %.sroa.03.023.i, %bb.f ] ; 2 uses
  %.sroa.8.2.ph.i = phi i8 [ 1, %bb.g ], [ %.sroa.8.024.i, %.lr.ph.i68 ], [ 1, %bb.f ] ; 2 uses
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %.not.i71 = icmp eq i64 %indvars.iv.next.i70, %i.d
  br i1 %.not.i71, label %_ZN4llvm11HvxSelector16rotationDistanceEN12_GLOBAL__N_111ShuffleMaskEj.exit, label %.lr.ph.i68, !llvm.loop !5

_ZN4llvm11HvxSelector16rotationDistanceEN12_GLOBAL__N_111ShuffleMaskEj.exit: ; preds = %_ZNSt8optionalIiEaSIjEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIiES4_IiNSt5decayIS7_E4typeEEEEESt16is_constructibleIiJS7_EESt13is_assignableIRiS7_EEERS0_E4typeEOS7_.exit.i
  %i.y = trunc nuw i8 %.sroa.8.2.ph.i to i1
  br i1 %i.y, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN4llvm11HvxSelector16rotationDistanceEN12_GLOBAL__N_111ShuffleMaskEj.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val57 = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val58 = load i32, ptr %i.aa, align 8, !tbaa !243
  tail call fastcc void @_ZN4llvm11HvxSelector7funnelsEN12_GLOBAL__N_15OpRefES2_iRNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %0, ptr %.val57, i32 %.val58, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %3, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %3, i32 noundef %.sroa.03.1.ph.i, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.val53 = load ptr, ptr %0, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %0, i64 16
  %.val54 = load i32, ptr %i.ab, align 8
  %i.ac = icmp ne ptr %.val53, null
  %i.ad = and i32 %.val54, 268435456
  %.not.i72 = icmp eq i32 %i.ad, 0
  %i.ae = select i1 %i.ac, i1 true, i1 %.not.i72
  br i1 %i.ae, label %bb.al, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.h, %_ZN4llvm11HvxSelector16rotationDistanceEN12_GLOBAL__N_111ShuffleMaskEj.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !243
  %i.ah = lshr i32 %i.ag, 1                       ; 8 uses
  %i.ai = load i32, ptr %.sroa.023.0.copyload, align 4, !tbaa !34 ; 5 uses
  %.not15.i73 = icmp eq i32 %i.ah, 1
  br i1 %.not15.i73, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.thread, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.critedge, %bb.i
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i77, %bb.i ], [ 1, %.critedge ] ; 3 uses
  %.0317.i = phi i32 [ %i.ak, %bb.i ], [ %i.ai, %.critedge ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %indvars.iv.i75
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34 ; 2 uses
  %i.al = sub nsw i32 %i.ak, %.0317.i
  %.not5.i = icmp eq i32 %i.al, 1
  br i1 %.not5.i, label %bb.i, label %.critedge.loopexit.split.loop.exit21.i

bb.i:                                             ; preds = %.lr.ph.i74
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i77 to i32
  %exitcond = icmp eq i32 %i.ah, %lftr.wideiv
  br i1 %exitcond, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit, label %.lr.ph.i74, !llvm.loop !7

.critedge.loopexit.split.loop.exit21.i:           ; preds = %.lr.ph.i74
  %i.am = trunc nuw i64 %indvars.iv.i75 to i32
  %i.an = icmp eq i32 %i.ah, %i.am
  br label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit

_ZL9findStripN4llvm8ArrayRefIiEEij.exit:          ; preds = %bb.i, %.critedge.loopexit.split.loop.exit21.i
  %.sroa.3.0.i = phi i1 [ %i.an, %.critedge.loopexit.split.loop.exit21.i ], [ true, %bb.i ]
  %i.ao = xor i32 %i.ah, -1
  %i.ap = and i32 %i.ai, %i.ao
  %i.aq = icmp eq i32 %i.ap, 0
  %or.cond = select i1 %i.aq, i1 %.sroa.3.0.i, i1 false
  br i1 %or.cond, label %bb.j, label %.critedge39

_ZL9findStripN4llvm8ArrayRefIiEEij.exit.thread:   ; preds = %.critedge
  %i.ar = icmp ult i32 %i.ai, 2
  br i1 %i.ar, label %.thread, label %.critedge39

.thread:                                          ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.thread
  %i.as = zext nneg i32 %i.ah to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34
  br label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit92

bb.j:                                             ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit
  %i.av = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.023.0.copyload, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !34 ; 3 uses
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.j, %bb.k
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i89, %bb.k ], [ 1, %bb.j ] ; 3 uses
  %.0317.i81 = phi i32 [ %i.az, %bb.k ], [ %i.ax, %bb.j ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i80
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !34 ; 2 uses
  %i.ba = sub nsw i32 %i.az, %.0317.i81
  %.not5.i82 = icmp eq i32 %i.ba, 1
  br i1 %.not5.i82, label %bb.k, label %.critedge.loopexit.split.loop.exit21.i83

bb.k:                                             ; preds = %.lr.ph.i79
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %lftr.wideiv182 = trunc i64 %indvars.iv.next.i89 to i32
  %exitcond183 = icmp eq i32 %i.ah, %lftr.wideiv182
  br i1 %exitcond183, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit92, label %.lr.ph.i79, !llvm.loop !7

.critedge.loopexit.split.loop.exit21.i83:         ; preds = %.lr.ph.i79
  %i.bb = trunc nuw i64 %indvars.iv.i80 to i32
  %i.bc = icmp eq i32 %i.ah, %i.bb
  br label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit92

_ZL9findStripN4llvm8ArrayRefIiEEij.exit92:        ; preds = %bb.k, %.thread, %.critedge.loopexit.split.loop.exit21.i83
  %i.bd = phi i32 [ %i.au, %.thread ], [ %i.ax, %.critedge.loopexit.split.loop.exit21.i83 ], [ %i.ax, %bb.k ]
  %i.be = phi i64 [ 1, %.thread ], [ %i.av, %.critedge.loopexit.split.loop.exit21.i83 ], [ %i.av, %bb.k ]
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112BenesNetwork5routeEPiPSt6vectorIhSaIhEEjj:bb.a
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = extractelement <4 x i32> %wide.load, i64 1
  %i.bi = sub nuw nsw i32 %i.bh, %i.j
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !34
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue
  %i.bj = extractelement <4 x i1> %i.az, i64 2
  br i1 %i.bj, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = extractelement <4 x i32> %wide.load, i64 2
  %i.bn = sub nuw nsw i32 %i.bm, %i.j
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !34
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.bo = extractelement <4 x i1> %i.az, i64 3
  br i1 %i.bo, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = extractelement <4 x i32> %wide.load, i64 3
  %i.bs = sub nuw nsw i32 %i.br, %i.j
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !34
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.bt = extractelement <4 x i1> %i.ba, i64 0
  br i1 %i.bt, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = extractelement <4 x i32> %wide.load208, i64 0
  %i.bx = sub nuw nsw i32 %i.bw, %i.j
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !34
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.by = extractelement <4 x i1> %i.ba, i64 1
  br i1 %i.by, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cb = extractelement <4 x i32> %wide.load208, i64 1
  %i.cc = sub nuw nsw i32 %i.cb, %i.j
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !34
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %i.cd = extractelement <4 x i1> %i.ba, i64 2
  br i1 %i.cd, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = extractelement <4 x i32> %wide.load208, i64 2
  %i.ch = sub nuw nsw i32 %i.cg, %i.j
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !34
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %i.ci = extractelement <4 x i1> %i.ba, i64 3
  br i1 %i.ci, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue220
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cl = extractelement <4 x i32> %wide.load208, i64 3
  %i.cm = sub nuw nsw i32 %i.cl, %i.j
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !34
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue220
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1124

middle.block:                                     ; preds = %pred.store.continue222
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph150.preheader223

.lr.ph150.preheader223:                           ; preds = %.lr.ph150.preheader, %middle.block
  %indvars.iv154.ph = phi i64 [ 0, %.lr.ph150.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph150

bb.j:                                             ; preds = %.lr.ph146, %bb.j
  %indvars.iv151 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next152, %bb.j ] ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv151 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !34 ; 2 uses
  %i.cq = add nuw nsw i64 %indvars.iv151, %i.o    ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !34 ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv151
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !535
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.n
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !232
  %i.cx = icmp eq i8 %i.cw, 2
  %spec.select = select i1 %i.cx, i32 %i.cp, i32 %i.cs
  %i.cy = getelementptr inbounds [24 x i8], ptr %2, i64 %i.cq
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !535
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.n
  %i.db = load i8, ptr %i.da, align 1, !tbaa !232
  %i.dc = icmp eq i8 %i.db, 2
  %.093 = select i1 %i.dc, i32 %i.cs, i32 %i.cp
  store i32 %.093, ptr %i.co, align 4, !tbaa !34
  store i32 %spec.select, ptr %i.cr, align 4, !tbaa !34
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %.not120 = icmp eq i64 %indvars.iv.next152, %i.p
  br i1 %.not120, label %.lr.ph150.preheader, label %bb.j, !llvm.loop !1125

._crit_edge:                                      ; preds = %bb.l, %middle.block
  %i.dd = add i32 %4, 1                           ; 3 uses
  %i.de = load i32, ptr %0, align 8, !tbaa !533
  %i.df = icmp ult i32 %i.dd, %i.de
  br i1 %i.df, label %bb.m, label %.thread191

.lr.ph150:                                        ; preds = %.lr.ph150.preheader223, %bb.l
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %bb.l ], [ %indvars.iv154.ph, %.lr.ph150.preheader223 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv154 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !34 ; 2 uses
  %.not123 = icmp slt i32 %i.dh, %i.j
  br i1 %.not123, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph150
  %i.di = sub nuw nsw i32 %i.dh, %i.j
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph150, %bb.k
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %.not121 = icmp eq i64 %indvars.iv.next155, %i.a
  br i1 %.not121, label %._crit_edge, label %.lr.ph150, !llvm.loop !1126

bb.m:                                             ; preds = %._crit_edge
  br i1 %.3104, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = lshr i32 %3, 1
  %i.dk = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112BenesNetwork5routeEPiPSt6vectorIhSaIhEEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %i.dj, i32 noundef %i.dd)
  br i1 %i.dk, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.3100, label %bb.p, label %.thread191

bb.p:                                             ; preds = %bb.o
  %i.dl = lshr i32 %3, 1                          ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dm
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.dm
  %i.dp = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112BenesNetwork5routeEPiPSt6vectorIhSaIhEEjj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.dn, ptr noundef %i.do, i32 noundef %i.dl, i32 noundef %i.dd)
  br i1 %i.dp, label %.thread191, label %bb.q

.thread191:                                       ; preds = %bb.b, %bb.o, %bb.p, %._crit_edge
  br label %bb.q

bb.q:                                             ; preds = %.thread191, %bb.n, %bb.p, %bb.a
  %.1106 = phi i1 [ false, %bb.a ], [ true, %.thread191 ], [ false, %bb.n ], [ false, %bb.p ]
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !148
  call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIiSt4lessIiESaIiEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr noundef %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !148
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.val.i = load ptr, ptr %i.dw, align 8, !tbaa !148
  call fastcc void @_ZNSt8_Rb_treeIiSt4pairIKiN12_GLOBAL__N_19ColorKindEESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef %.val.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.1106
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm11HvxSelector7shuffp1EN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::ShuffleMask") align 8 captures(none) %2, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::OpRef") align 8 captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %8 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %9 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %10 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %11 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %12 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %13 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %14 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %15 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %16 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %17 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %18 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 4 uses
  %19 = alloca %"struct.(anonymous namespace)::ShuffleMask", align 8 ; 5 uses
  %20 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %21 = alloca %"struct.(anonymous namespace)::OpRef", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !302  ; 11 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !tbaa !286 ; 9 uses
  %i.c = and i64 %i.b, 4294967295                 ; 2 uses
  %.not14.i = icmp eq i64 %i.c, 0
  br i1 %.not14.i, label %.loopexit133, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.c
  br i1 %.not.i, label %.loopexit133, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.copyload, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %i.g = zext i32 %i.e to i64
  %.not13.i = icmp eq i64 %indvars.iv.i, %i.g
  %or.cond.i = or i1 %i.f, %.not13.i
  br i1 %or.cond.i, label %bb.b, label %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit

.loopexit133:                                     ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !291
  br label %bb.ag

_ZL10isIdentityN4llvm8ArrayRefIiEE.exit:          ; preds = %.lr.ph.i
  %.idx.i = shl nuw nsw i64 %i.b, 2
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 %.idx.i
  %.not14.i50 = icmp eq i64 %i.b, 0
  br i1 %.not14.i50, label %.loopexit, label %.lr.ph.i51

bb.c:                                             ; preds = %.lr.ph.i51
  %i.i = getelementptr inbounds nuw i8, ptr %.0915.i, i64 4 ; 2 uses
  %.not.i53 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i53, label %.loopexit, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit, %bb.c
  %.0915.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.04.0.copyload, %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit ] ; 2 uses
  %i.j = load i32, ptr %.0915.i, align 4, !tbaa !34
  %.not12.i = icmp eq i32 %i.j, -1
  br i1 %.not12.i, label %bb.c, label %_ZL7isUndefN4llvm8ArrayRefIiEE.exit

.loopexit:                                        ; preds = %bb.c, %_ZL10isIdentityN4llvm8ArrayRefIiEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !243
  %i.m = and i32 %i.l, 2147483647
  switch i32 %i.m, label %bb.d [
    i32 1, label %_ZN4llvm3MVT11getVectorVTES0_j.exit
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split123
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split124
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split125
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split130
    i32 512, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split131
  ]

bb.d:                                             ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split:   ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split123: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split124: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split125: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split130: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split131: ; preds = %.loopexit
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %.loopexit, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split131, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split130, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split125, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split124, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split123, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split, %bb.d
  %.sroa.0.0.i = phi i32 [ -2147483648, %bb.d ], [ -2147483607, %.loopexit ], [ -2147483597, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split128 ], [ -2147483598, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split127 ], [ -2147483596, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split129 ], [ -2147483605, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split ], [ -2147483595, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split130 ], [ -2147483603, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split123 ], [ -2147483601, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split124 ], [ -2147483600, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split125 ], [ -2147483599, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split126 ], [ -2147483594, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split131 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !1156
  store i32 %.sroa.0.0.i, ptr %i.n, align 8, !tbaa !293, !alias.scope !1156
  br label %bb.ag

_ZL7isUndefN4llvm8ArrayRefIiEE.exit:              ; preds = %.lr.ph.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.o = ashr exact i64 %sext, 32                 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 128, ptr %i.r, align 4, !tbaa !33
  %i.s = icmp eq i64 %sext, 0
  br i1 %i.s, label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit, label %bb.e

bb.e:                                             ; preds = %_ZL7isUndefN4llvm8ArrayRefIiEE.exit
  %i.t = icmp ugt i64 %i.o, 128
  br i1 %i.t, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(528) %7, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 4) #23
  %.pre.i.i.i = load i32, ptr %i.q, align 8, !tbaa !32
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.o, %.pre13.i.i.i
  %.pre.pre = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %bb.e
  %i.u = phi ptr [ %i.p, %bb.e ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.e ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.pre-phi.i.i3.i
  %i.w = sub nsw i64 %i.o, %.pre-phi.i.i3.i
  %i.x = shl nsw i64 %i.w, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.x, i1 false), !tbaa !34
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %.pre = phi ptr [ %i.u, %.lr.ph.preheader.i.i.i ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.y = trunc i64 %i.b to i32
  store i32 %i.y, ptr %i.q, align 8, !tbaa !32
  %i.z = and i64 %i.b, 4294967295
  br label %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit

_ZN4llvm11SmallVectorIiLj128EEC2Em.exit:          ; preds = %_ZL7isUndefN4llvm8ArrayRefIiEE.exit, %.sink.split.i.i.i
  %i.aa = phi i64 [ 0, %_ZL7isUndefN4llvm8ArrayRefIiEE.exit ], [ %i.z, %.sink.split.i.i.i ]
  %i.ab = phi ptr [ %i.p, %_ZL7isUndefN4llvm8ArrayRefIiEE.exit ], [ %.pre, %.sink.split.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val36 = load i32, ptr %i.ac, align 8, !tbaa !293 ; 2 uses
  %i.ad = and i32 %.val36, -1342177281            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, i8 0, i64 16, i1 false), !alias.scope !1157
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !293, !alias.scope !1157
  %i.af = and i32 %.val36, -805306369             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 16, i1 false), !alias.scope !1158
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !293, !alias.scope !1158
  call fastcc void @_ZN4llvm11HvxSelector5packsEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefES3_RNS1_11ResultStackENS_15MutableArrayRefIiEEj(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %.sroa.04.0.copyload, i64 %i.b, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %8, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %i.ab, i64 %i.aa)
  %.val29 = load ptr, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val30 = load i32, ptr %i.ah, align 8
  %i.ai = icmp ne ptr %.val29, null
  %i.aj = and i32 %.val30, 268435456
  %.not.i54 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %i.ai, i1 true, i1 %.not.i54
  br i1 %i.ak, label %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit, label %bb.o

_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit: ; preds = %_ZN4llvm11SmallVectorIiLj128EEC2Em.exit
  %i.al = load ptr, ptr %7, align 8, !tbaa !31    ; 8 uses
  %i.am = load i32, ptr %i.q, align 8, !tbaa !32  ; 9 uses
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val39 = load i32, ptr %i.ao, align 8
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.am, 1
  br i1 %.not15.i.i, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ] ; 3 uses
  %.0317.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.ap, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %i.as = sub nsw i32 %i.ar, %.0317.i.i
  %.not5.i.i = icmp eq i32 %i.as, 1
  br i1 %.not5.i.i, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond = icmp eq i32 %i.am, %lftr.wideiv
  br i1 %exitcond, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !7

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.3.0.ph.i.i = phi i64 [ %i.an, %bb.f ], [ %indvars.iv.i.i, %.lr.ph.i.i ]
  %i.at = and i64 %.sroa.3.0.ph.i.i, 4294967295
  br label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i

_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i:        ; preds = %.critedge.loopexit.i.i, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit
  %.sroa.3.0.i.i = phi i64 [ 1, %_ZN12_GLOBAL__N_111ShuffleMaskC2EN4llvm8ArrayRefIiEE.exit ], [ %i.at, %.critedge.loopexit.i.i ] ; 8 uses
  %.sroa.440.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.i.i to i32 ; 2 uses
  %.not.i59 = icmp ne i32 %i.ap, 0
  %i.au = add nsw i64 %.sroa.3.0.i.i, -3
  %or.cond.i60 = icmp ult i64 %i.au, -2
  %or.cond33.i = select i1 %.not.i59, i1 true, i1 %or.cond.i60
  br i1 %or.cond33.i, label %_ZN4llvm11HvxSelector9expandingEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit.i
  %i.av = shl nuw nsw i32 %.sroa.440.0.extract.trunc.i, 1 ; 2 uses
  %.not5415.i = icmp slt i32 %i.av, %i.am
  br i1 %.not5415.i, label %.lr.ph.preheader.i61, label %.critedge58.preheader.i

.lr.ph.preheader.i61:                             ; preds = %bb.g
  %i.aw = shl nuw nsw i64 %.sroa.3.0.i.i, 1       ; 2 uses
  br label %.lr.ph.i62

bb.h:                                             ; preds = %_ZL9findStripN4llvm8ArrayRefIiEEij.exit83.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, %i.aw ; 2 uses
  %i.ax = trunc nuw i64 %indvars.iv.next25.i to i32
  %.not54.i = icmp sgt i32 %i.am, %i.ax
  br i1 %.not54.i, label %.lr.ph.i62, label %.critedge58.preheader.i, !llvm.loop !1135

.critedge58.preheader.i:                          ; preds = %bb.h, %bb.g
  %.not5717.i = icmp sgt i32 %i.am, %.sroa.440.0.extract.trunc.i
  br i1 %.not5717.i, label %.lr.ph19.preheader.i, label %.critedge63.i

.lr.ph19.preheader.i:                             ; preds = %.critedge58.preheader.i
  %i.ay = shl nuw nsw i64 %.sroa.3.0.i.i, 1
  br label %.lr.ph19.i

.lr.ph.i62:                                       ; preds = %bb.h, %.lr.ph.preheader.i61
  %indvars.iv.pn = phi i32 [ %indvars.iv, %bb.h ], [ %i.am, %.lr.ph.preheader.i61 ]
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %bb.h ], [ %i.aw, %.lr.ph.preheader.i61 ] ; 4 uses
  %indvars.iv = sub i32 %indvars.iv.pn, %i.av     ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv24.i ; 2 uses
  %i.ba = sub nuw nsw i64 %i.an, %indvars.iv24.i  ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %.not15.i69.i = icmp eq i64 %i.ba, 1
  br i1 %.not15.i69.i, label %_ZL9findStripN4llvm8ArrayRefIiEEij.exit83.i, label %.lr.ph.i70.i

.lr.ph.i70.i:                                     ; preds = %.lr.ph.i62, %bb.i
  %indvars.iv.i71.i = phi i64 [ %indvars.iv.next.i80.i, %bb.i ], [ 1, %.lr.ph.i62 ] ; 3 uses
  %.0317.i72.i = phi i32 [ %i.bd, %bb.i ], [ %i.bb, %.lr.ph.i62 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i71.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !34, !noalias !1159 ; 2 uses
  %i.be = sub nsw i32 %i.bd, %.0317.i72.i
  %.not5.i73.i = icmp eq i32 %i.be, 1
end_hunk_1
