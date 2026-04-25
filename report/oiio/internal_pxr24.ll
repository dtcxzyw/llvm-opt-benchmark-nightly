inline.NumInlined: 17
inline.NumDeleted: 13
begin_hunk_0_@internal_exr_apply_pxr24:bb.a

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.dh ; 4 uses
  %i.dl = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 6 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.x ; 4 uses
  %i.dn = icmp sgt i32 %i.w, 0
  br i1 %i.dn, label %.lr.ph243.i.preheader, label %.loopexit.i

.lr.ph243.i.preheader:                            ; preds = %bb.j
  %i.do = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check100 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check100, label %.lr.ph243.i.preheader179, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.lr.ph243.i.preheader
  %scevgep83 = getelementptr i8, ptr %.1138255.i, i64 1
  %i.dp = add nsw i32 %i.w, -1
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = getelementptr i8, ptr %scevgep83, i64 %i.x
  %scevgep85.a = getelementptr i8, ptr %i.dr, i64 %i.dq
  %scevgep86.a = getelementptr i8, ptr %.1158253.i, i64 2
  %i.ds = shl nuw nsw i64 %i.dq, 1
  %scevgep87.a = getelementptr i8, ptr %scevgep86.a, i64 %i.ds ; 2 uses
  %scevgep87 = getelementptr i8, ptr %.1138255.i, i64 1
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.dq
  %bound091 = icmp ult ptr %i.dl, %scevgep87.a
  %bound192 = icmp ult ptr %.1158253.i, %scevgep85.a
  %found.conflict93 = and i1 %bound091, %bound192
  %bound095 = icmp ult ptr %.1138255.i, %scevgep87.a
  %bound196 = icmp ult ptr %.1158253.i, %scevgep88
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %found.conflict93, %found.conflict97
  br i1 %conflict.rdx98, label %.lr.ph243.i.preheader179, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck82
end_hunk_0
begin_hunk_1_@internal_exr_apply_pxr24:bb.a
  %i.ea = sub nsw <8 x i32> %i.dy, %i.dz          ; 2 uses
  %i.eb = lshr <8 x i32> %i.ea, splat (i32 8)
  %i.ec = trunc <8 x i32> %i.eb to <8 x i8>
  store <8 x i8> %i.ec, ptr %next.gep109, align 1, !tbaa !31, !alias.scope !51, !noalias !48
  %i.ed = trunc <8 x i32> %i.ea to <8 x i8>
  store <8 x i8> %i.ed, ptr %next.gep110, align 1, !tbaa !31, !alias.scope !53, !noalias !48
  %index.next112 = add nuw i64 %index105, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next112, %n.vec103
  br i1 %i.ee, label %middle.block113, label %vector.body104, !llvm.loop !55

middle.block113:                                  ; preds = %vector.body104
  %vector.recur.extract114 = extractelement <8 x i32> %i.dy, i64 7
end_hunk_1
begin_hunk_2_@internal_exr_apply_pxr24:bb.a
  %i.eo = add nuw nsw i32 %.0166242.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol, !llvm.loop !56

.lr.ph243.i.prol.loopexit:                        ; preds = %.lr.ph243.i.prol, %.lr.ph243.i.preheader179
  %.0166242.i.unr = phi i32 [ %.0166242.i.ph, %.lr.ph243.i.preheader179 ], [ %i.eo, %.lr.ph243.i.prol ]
end_hunk_2
begin_hunk_3_@internal_exr_apply_pxr24:bb.a
  store i8 %i.fv, ptr %i.fo, align 1, !tbaa !31
  %i.fx = add nuw nsw i32 %.0166242.i, 4          ; 2 uses
  %exitcond269.not.i.3 = icmp eq i32 %i.fx, %i.w
  br i1 %exitcond269.not.i.3, label %.loopexit.i, label %.lr.ph243.i, !llvm.loop !58

bb.k:                                             ; preds = %bb.f
  %i.fy = mul nsw i64 %i.x, 3
end_hunk_3
begin_hunk_4_@internal_exr_apply_pxr24:bb.a
  %next.gep161 = getelementptr i8, ptr %.1138255.i, i64 %index157
  %next.gep162 = getelementptr i8, ptr %i.ge, i64 %index157
  %next.gep163 = getelementptr i8, ptr %i.gf, i64 %index157
  %wide.load164 = load <4 x i32>, ptr %next.gep160.a, align 1, !alias.scope !59 ; 6 uses
  %i.gv = and <4 x i32> %wide.load164, splat (i32 2139095040)
  %i.gw = and <4 x i32> %wide.load164, splat (i32 8388607) ; 2 uses
  %i.gx = icmp ne <4 x i32> %i.gv, splat (i32 2139095040)
end_hunk_4
begin_hunk_5_@internal_exr_apply_pxr24:bb.a
  %i.hs = sub nsw <4 x i32> %i.hq, %i.hr          ; 3 uses
  %i.ht = lshr <4 x i32> %i.hs, splat (i32 16)
  %i.hu = trunc <4 x i32> %i.ht to <4 x i8>
  store <4 x i8> %i.hu, ptr %next.gep161, align 1, !tbaa !31, !alias.scope !62, !noalias !64
  %i.hv = lshr <4 x i32> %i.hs, splat (i32 8)
  %i.hw = trunc <4 x i32> %i.hv to <4 x i8>
  store <4 x i8> %i.hw, ptr %next.gep162, align 1, !tbaa !31, !alias.scope !67, !noalias !68
  %i.hx = trunc <4 x i32> %i.hs to <4 x i8>
  store <4 x i8> %i.hx, ptr %next.gep163, align 1, !tbaa !31, !alias.scope !69, !noalias !59
  %index.next166 = add nuw i64 %index157, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next166, %n.vec155
  br i1 %i.hy, label %middle.block167, label %vector.body156, !llvm.loop !70

middle.block167:                                  ; preds = %vector.body156
  %vector.recur.extract168 = extractelement <4 x i32> %i.hq, i64 3
end_hunk_5
begin_hunk_6_@internal_exr_apply_pxr24:bb.a
  store i8 %i.iy, ptr %.sroa.8.0232.i, align 1, !tbaa !31
  %i.ja = add nuw nsw i32 %.0154237.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ja, %i.w
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !71

.loopexit.i:                                      ; preds = %float_to_float24.exit.i, %.lr.ph243.i.prol.loopexit, %.lr.ph243.i, %.lr.ph251.i.prol.loopexit, %.lr.ph251.i, %middle.block167, %middle.block113, %middle.block, %bb.l, %bb.j, %bb.h, %bb.e, %.lr.ph256.i
  %.6163.i = phi ptr [ %.1158253.i, %bb.e ], [ %.1158253.i, %.lr.ph256.i ], [ %i.dk, %bb.j ], [ %i.ak, %bb.h ], [ %i.gd, %bb.l ], [ %i.dk, %middle.block113 ], [ %i.ak, %middle.block ], [ %i.gd, %middle.block167 ], [ %i.dk, %.lr.ph243.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i ], [ %i.dk, %.lr.ph243.i ], [ %i.gd, %float_to_float24.exit.i ] ; 2 uses
end_hunk_6
begin_hunk_7_@internal_exr_apply_pxr24:bb.a
  %i.jb = load i16, ptr %i.m, align 8, !tbaa !18  ; 2 uses
  %i.jc = sext i16 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next.i, %i.jc
  br i1 %i.jd, label %.lr.ph256.i, label %._crit_edge.loopexit.i, !llvm.loop !72

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i
  %.pre272.i = load i32, ptr %i.j, align 4, !tbaa !17
end_hunk_7
begin_hunk_8_@internal_exr_apply_pxr24:bb.a
  %.1138.lcssa.i = phi ptr [ %.0137263.i, %bb.c ], [ %.6143.i, %._crit_edge.loopexit.i ]
  %i.jg = add nuw nsw i32 %.0165260.i, 1          ; 2 uses
  %.not187.i = icmp slt i32 %i.jg, %i.je
  br i1 %.not187.i, label %bb.c, label %.thread222.loopexit.i, !llvm.loop !73

.thread222.loopexit.i:                            ; preds = %._crit_edge.i
  %.pre273.i = load ptr, ptr %i.b, align 8, !tbaa !15
end_hunk_8
begin_hunk_9_@internal_exr_apply_pxr24:bb.a
  %i.jh = phi ptr [ %i.g, %bb.b ], [ %.pre273.i, %.thread222.loopexit.i ]
  %.0145.lcssa.i = phi i64 [ 0, %bb.b ], [ %.1146.lcssa.i, %.thread222.loopexit.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !74
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !75
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !76
  %i.jo = call i32 @exr_compress_buffer(ptr noundef %i.jj, i32 noundef -1, ptr noundef %i.jh, i64 noundef %.0145.lcssa.i, ptr noundef %i.jl, i64 noundef %i.jn, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.p, label %apply_pxr24_impl.exit

bb.p:                                             ; preds = %.thread222.i
  %i.jq = load i64, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  %i.jr = load i64, ptr %i.d, align 8, !tbaa !7   ; 2 uses
  %i.js = icmp ugt i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !75
  %i.ju = load ptr, ptr %i.h, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.ju, i64 %i.jr, i1 false)
  %i.jv = load i64, ptr %i.d, align 8, !tbaa !7
end_hunk_9
begin_hunk_10_@internal_exr_apply_pxr24:bb.a
bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jw = phi i64 [ %i.jv, %bb.q ], [ %i.jq, %bb.p ]
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !78
  br label %apply_pxr24_impl.exit

apply_pxr24_impl.exit:                            ; preds = %bb.f, %bb.g, %bb.i, %bb.k, %.thread222.i, %bb.r
end_hunk_10
begin_hunk_11_@internal_exr_undo_pxr24:bb.a
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.g = load i64, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.h = icmp ult i64 %i.g, %4
  br i1 %i.h, label %undo_pxr24_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = call i32 @exr_uncompress_buffer(ptr noundef %i.j, ptr noundef %1, i64 noundef %2, ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %.preheader215.i, label %undo_pxr24_impl.exit

.preheader215.i:                                  ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !83   ; 2 uses
  %.not175251.i = icmp sgt i32 %i.m, 0
  br i1 %.not175251.i, label %.lr.ph257.i, label %.thread207.i

end_hunk_11
begin_hunk_12_@internal_exr_undo_pxr24:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i16, ptr %i.o, align 8, !tbaa !84 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph257.i
end_hunk_12
begin_hunk_13_@internal_exr_undo_pxr24:bb.a
  %.0142254.i = phi i64 [ 0, %.lr.ph257.i ], [ %.1143.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0150253.i = phi ptr [ %i.f, %.lr.ph257.i ], [ %.1151.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0162252.i = phi i32 [ 0, %.lr.ph257.i ], [ %i.go, %._crit_edge.i ] ; 2 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !85
  %i.u = add nsw i32 %i.t, %.0162252.i
  %i.v = icmp sgt i16 %i.s, 0
  br i1 %i.v, label %.lr.ph247.i, label %._crit_edge.i
end_hunk_13
begin_hunk_14_@internal_exr_undo_pxr24:bb.a
  %.1135244.i = phi i64 [ %.2136.i, %bb.l ], [ %.0134255.i, %bb.d ] ; 3 uses
  %.1143243.i = phi i64 [ %.6148.i, %bb.l ], [ %.0142254.i, %bb.d ] ; 5 uses
  %.1151242.i = phi ptr [ %.3153.i, %bb.l ], [ %.0150253.i, %bb.d ] ; 11 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21  ; 17 uses
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !87
  %i.ae = sext i8 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.ab                ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
end_hunk_14
begin_hunk_15_@internal_exr_undo_pxr24:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %.0140238.i, i64 8 ; 2 uses
  %niter48.next.1 = add i32 %niter48, 2           ; 2 uses
  %niter48.ncmp.1 = icmp eq i32 %niter48.next.1, %unroll_iter47
  br i1 %niter48.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph240.i, !llvm.loop !88

bb.j:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds i8, ptr %.1151242.i, i64 %i.ab ; 3 uses
end_hunk_15
begin_hunk_16_@internal_exr_undo_pxr24:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %.0132230.i, i64 4 ; 2 uses
  %niter43.next.1 = add i32 %niter43, 2           ; 2 uses
  %niter43.ncmp.1 = icmp eq i32 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %.loopexit.i.loopexit36.unr-lcssa, label %.lr.ph232.i, !llvm.loop !89

bb.k:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds i8, ptr %.1151242.i, i64 %i.ab ; 3 uses
end_hunk_16
begin_hunk_17_@internal_exr_undo_pxr24:bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %.0125225.i, i64 8 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit37.unr-lcssa, label %.lr.ph.i, !llvm.loop !90

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph240.i
  %lcmp.mod45.not = icmp eq i32 %xtraiter44, 0
end_hunk_17
begin_hunk_18_@internal_exr_undo_pxr24:bb.a
  %.2152.i = phi ptr [ %i.cn, %.preheader211.i ], [ %i.au, %.preheader.i ], [ %i.dn, %.preheader213.i ], [ %i.cn, %.lr.ph232.i.epil.preheader ], [ %i.au, %.lr.ph240.i.epil.preheader ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ], [ %i.cn, %.loopexit.i.loopexit36.unr-lcssa ], [ %i.dn, %.loopexit.i.loopexit37.unr-lcssa ], [ %i.dn, %.lr.ph.i.epil.preheader ]
  %.5147.i = phi i64 [ %i.co, %.preheader211.i ], [ %i.av, %.preheader.i ], [ %i.dq, %.preheader213.i ], [ %i.co, %.lr.ph232.i.epil.preheader ], [ %i.av, %.lr.ph240.i.epil.preheader ], [ %i.av, %.loopexit.i.loopexit.unr-lcssa ], [ %i.co, %.loopexit.i.loopexit36.unr-lcssa ], [ %i.dq, %.loopexit.i.loopexit37.unr-lcssa ], [ %i.dq, %.lr.ph.i.epil.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.1128245.i, i64 %i.af
  %.pre264.i = load i16, ptr %i.o, align 8, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %bb.f, %.lr.ph247.i
end_hunk_18
begin_hunk_19_@internal_exr_undo_pxr24:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gj = sext i16 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next.i, %i.gj
  br i1 %i.gk, label %.lr.ph247.i, label %._crit_edge.loopexit.i, !llvm.loop !91

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %.pre265.i = load i32, ptr %i.l, align 4, !tbaa !83
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
end_hunk_19
begin_hunk_20_@internal_exr_undo_pxr24:bb.a
  %.1128.lcssa.i = phi ptr [ %.0127256.i, %bb.d ], [ %.2129.i, %._crit_edge.loopexit.i ]
  %i.go = add nuw nsw i32 %.0162252.i, 1          ; 2 uses
  %.not175.i = icmp slt i32 %i.go, %i.gl
  br i1 %.not175.i, label %bb.d, label %.thread207.i, !llvm.loop !92

.thread207.i:                                     ; preds = %._crit_edge.i, %.preheader215.i
  %.0134.lcssa.i = phi i64 [ 0, %.preheader215.i ], [ %.1135.lcssa.i, %._crit_edge.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.0134.lcssa.i, ptr %i.gp, align 8, !tbaa !93
  br label %undo_pxr24_impl.exit

undo_pxr24_impl.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.b, %bb.c, %.thread207.i
end_hunk_20
begin_hunk_21_@llvm.assume
!50 = distinct !{!50, !"LVerDomain"}
!51 = !{!52}
!52 = distinct !{!52, !50}
!53 = !{!54}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !44, !45, !46}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !44, !45}
!59 = !{!60}
!60 = distinct !{!60, !61}
!61 = distinct !{!61, !"LVerDomain"}
!62 = !{!63}
!63 = distinct !{!63, !61}
!64 = !{!65, !66, !60}
!65 = distinct !{!65, !61}
!66 = distinct !{!66, !61}
!67 = !{!65}
!68 = !{!66, !60}
!69 = !{!66}
!70 = distinct !{!70, !44, !45, !46}
!71 = distinct !{!71, !44, !45}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44}
!74 = !{!8, !12, i64 24}
!75 = !{!8, !10, i64 168}
!76 = !{!8, !9, i64 184}
!77 = !{!9, !9, i64 0}
!78 = !{!8, !9, i64 176}
!79 = !{!80, !10, i64 184}
!80 = !{!"_exr_decode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !4, i64 20, !12, i64 24, !13, i64 32, !4, i64 96, !4, i64 100, !9, i64 104, !10, i64 112, !10, i64 120, !9, i64 128, !10, i64 136, !9, i64 144, !10, i64 152, !9, i64 160, !14, i64 168, !9, i64 176, !10, i64 184, !9, i64 192, !10, i64 200, !9, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !5, i64 264}
!81 = !{!80, !9, i64 192}
!82 = !{!80, !12, i64 24}
!83 = !{!80, !4, i64 44}
!84 = !{!80, !11, i64 16}
!85 = !{!80, !4, i64 40}
!86 = !{!80, !10, i64 8}
!87 = !{!22, !5, i64 25}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !44}
!92 = distinct !{!92, !44}
!93 = !{!80, !9, i64 104}
end_hunk_21
