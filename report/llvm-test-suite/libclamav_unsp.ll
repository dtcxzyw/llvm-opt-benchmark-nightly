inline.NumInlined: 24
inline.NumDeleted: 1
begin_hunk_0_@very_real_unpack:bb.a
  %.0259555 = phi i32 [ 1, %.lr.ph ], [ %.3262, %select.unfold ] ; 11 uses
  %.0263552 = phi i32 [ 1, %.lr.ph ], [ %.2265, %select.unfold ] ; 11 uses
  %.0266548 = phi i32 [ 1, %.lr.ph ], [ %.2268, %select.unfold ] ; 7 uses
  %.0269547 = phi i32 [ 0, %.lr.ph ], [ %.3272, %select.unfold ] ; 25 uses
  %.0273546 = phi i32 [ 0, %.lr.ph ], [ %.3276, %select.unfold ]
  %.0279541 = phi i32 [ %6, %.lr.ph ], [ %.3282, %select.unfold ] ; 4 uses
  %i.bq = shl i32 %.0251561, 4                    ; 2 uses
end_hunk_0
begin_hunk_1_@very_real_unpack:bb.a
  br label %bb.fk

bb.fk:                                            ; preds = %bb.bw, %getbit_from_table.exit391, %bb.fj
  %.1267 = phi i32 [ %.1242, %getbit_from_table.exit391 ], [ %.0266548, %bb.bw ], [ %i.yo, %bb.fj ] ; 7 uses
  %.1264 = phi i32 [ %.0266548, %getbit_from_table.exit391 ], [ %.0263552, %bb.bw ], [ %.0266548, %bb.fj ]
  %.2261 = phi i32 [ %.1260, %getbit_from_table.exit391 ], [ %.0259555, %bb.bw ], [ %.0263552, %bb.fj ]
  %.3258 = phi i32 [ %.2257, %getbit_from_table.exit391 ], [ %.0255558, %bb.bw ], [ %.0259555, %bb.fj ]
end_hunk_1
begin_hunk_2_@very_real_unpack:bb.a
  br i1 %i.yp, label %.thread490, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yq = add i32 %.0243, 2                       ; 6 uses
  %i.yr = add i32 %.0243, 1                       ; 3 uses
  %i.ys = icmp uge i32 %i.yr, %8
  %or.cond = select i1 %.not325, i1 true, i1 %i.ys
end_hunk_2
begin_hunk_3_@very_real_unpack:bb.a
  %i.yz = xor i32 %.0269547, -1
  %i.za = add i32 %umax796, %i.yz
  %umin797 = tail call i32 @llvm.umin.i32(i32 %i.za, i32 %i.yr)
  %i.zb = add i32 %umin797, 1                     ; 7 uses
  %min.iters.check = icmp ult i32 %i.zb, 4
  br i1 %min.iters.check, label %.preheader.preheader813, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.preheader.a
end_hunk_3
begin_hunk_4_@very_real_unpack:bb.a
  %i.zk = sub nsw i64 %.pre, %i.yw
  %diff.check = icmp ult i64 %i.zk, 32
  %or.cond812 = select i1 %i.zj, i1 true, i1 %diff.check
  br i1 %or.cond812, label %.preheader.preheader813, label %vector.main.loop.iter.check798

vector.main.loop.iter.check798:                   ; preds = %vector.scevcheck
  %min.iters.check799 = icmp ult i32 %i.zb, 32
  br i1 %min.iters.check799, label %vec.epilog.ph818, label %vector.ph798

vector.ph798:                                     ; preds = %vector.main.loop.iter.check798
  %n.mod.vf801 = and i32 %i.zb, 28
  %n.vec800 = and i32 %i.zb, -32                  ; 5 uses
  %i.zl = add i32 %.0269547, %n.vec800            ; 3 uses
  %i.zm = sub i32 %i.yq, %n.vec800
  %i.zn = add i32 %.0269547, 15
  br label %vector.body803
end_hunk_4
begin_hunk_5_@very_real_unpack:bb.a
  %index.next807 = add nuw i32 %index804, 32      ; 2 uses
  %i.zw = add i32 %i.zo, 32
  %i.zx = icmp eq i32 %index.next807, %n.vec800
  br i1 %i.zx, label %middle.block810, label %vector.body803, !llvm.loop !48

middle.block810:                                  ; preds = %vector.body803
  %10 = extractelement <16 x i8> %wide.load806, i64 15
  %11 = add i32 %i.zo, 17
  %12 = icmp ult i32 %11, %8
  %cmp.n811 = icmp eq i32 %i.zb, %n.vec800
  br i1 %cmp.n811, label %.loopexit, label %vec.epilog.iter.check816

vec.epilog.iter.check816:                         ; preds = %middle.block810
  %min.epilog.iters.check817 = icmp eq i32 %n.mod.vf801, 0
  br i1 %min.epilog.iters.check817, label %.preheader.preheader813, label %vec.epilog.ph818, !prof !49

vec.epilog.ph818:                                 ; preds = %vector.main.loop.iter.check798, %vec.epilog.iter.check816
  %vec.epilog.resume.val812 = phi i32 [ %n.vec800, %vec.epilog.iter.check816 ], [ 0, %vector.main.loop.iter.check798 ]
  %bc.resume.val = phi i32 [ %i.zl, %vec.epilog.iter.check816 ], [ %.0269547, %vector.main.loop.iter.check798 ]
  %n.vec820 = and i32 %i.zb, -4                   ; 4 uses
  %13 = add i32 %.0269547, %n.vec820              ; 2 uses
  %14 = sub i32 %i.yq, %n.vec820
  %15 = add i32 %bc.resume.val, 3
  br label %vec.epilog.vector.body826

vec.epilog.vector.body826:                        ; preds = %vec.epilog.vector.body826, %vec.epilog.ph818
  %index827 = phi i32 [ %vec.epilog.resume.val812, %vec.epilog.ph818 ], [ %index.next830, %vec.epilog.vector.body826 ] ; 2 uses
  %16 = phi i32 [ %15, %vec.epilog.ph818 ], [ %23, %vec.epilog.vector.body826 ] ; 2 uses
  %17 = add i32 %.0269547, %index827              ; 2 uses
  %18 = sub i32 %17, %.1267
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 %19
  %wide.load829 = load <4 x i8>, ptr %20, align 1, !tbaa !8 ; 2 uses
  %21 = zext i32 %17 to i64
  %22 = getelementptr inbounds nuw i8, ptr %7, i64 %21
  store <4 x i8> %wide.load829, ptr %22, align 1, !tbaa !8
  %index.next830 = add nuw i32 %index827, 4       ; 2 uses
  %23 = add i32 %16, 4
  %24 = icmp eq i32 %index.next830, %n.vec820
  br i1 %24, label %middle.block808, label %vec.epilog.vector.body826, !llvm.loop !50

middle.block808:                                  ; preds = %vec.epilog.vector.body826
  %i.zy = extractelement <4 x i8> %wide.load829, i64 3
  %i.zz = add i32 %16, 1
  %i.aaa = icmp ult i32 %i.zz, %8
  %cmp.n809 = icmp eq i32 %i.zb, %n.vec820
  br i1 %cmp.n809, label %.loopexit, label %.preheader.preheader813

.preheader.preheader813:                          ; preds = %vector.scevcheck, %.preheader.preheader.a, %vec.epilog.iter.check816, %middle.block808
  %.2271.ph = phi i32 [ %.0269547, %vector.scevcheck ], [ %.0269547, %.preheader.preheader.a ], [ %i.zl, %vec.epilog.iter.check816 ], [ %13, %middle.block808 ]
  %.1244.ph = phi i32 [ %i.yq, %vector.scevcheck ], [ %i.yq, %.preheader.preheader.a ], [ %i.zm, %vec.epilog.iter.check816 ], [ %14, %middle.block808 ]
  br label %.preheader

split:                                            ; preds = %bb.fo, %bb.fn, %bb.fm
end_hunk_5
begin_hunk_6_@very_real_unpack:bb.a
  %i.aak = icmp ne i32 %i.aaj, 0
  %i.aal = icmp ult i32 %i.aai, %8                ; 2 uses
  %i.aam = and i1 %i.aal, %i.aak
  br i1 %i.aam, label %.preheader, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %.preheader, %middle.block808, %middle.block810
  %.lcssa783 = phi i8 [ %i.zy, %middle.block808 ], [ %10, %middle.block810 ], [ %i.aaf, %.preheader ]
  %.lcssa782 = phi i32 [ %13, %middle.block808 ], [ %i.zl, %middle.block810 ], [ %i.aai, %.preheader ]
  %.lcssa781 = phi i1 [ %i.aaa, %middle.block808 ], [ %12, %middle.block810 ], [ %i.aal, %.preheader ]
  %i.aan = zext i8 %.lcssa783 to i32
  br i1 %.lcssa781, label %select.unfold, label %.thread490

end_hunk_6
begin_hunk_7_@get_100_bits_from_tablesize:bb.a
.loopexit:                                        ; preds = %getbit_from_table.exit37, %getbit_from_table.exit37.us, %getbit_from_table.exit
  %.2 = phi i32 [ %i.bc, %getbit_from_table.exit ], [ %i.bg, %getbit_from_table.exit37.us ], [ %i.cu, %getbit_from_table.exit37 ] ; 3 uses
  %i.cv = icmp ult i32 %.2, 256
  br i1 %i.cv, label %bb.b, label %bb.y, !llvm.loop !52

bb.y:                                             ; preds = %.loopexit
  %i.cw = and i32 %.2, 255
end_hunk_7
begin_hunk_8_@get_n_bits_from_table:bb.a
  %i.bb = add i32 %i.ba, 255                      ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %getbit_from_table.exit.us.epil, !llvm.loop !53

._crit_edge:                                      ; preds = %getbit_from_table.exit, %._crit_edge.loopexit.unr-lcssa, %getbit_from_table.exit.us.epil, %bb.a
  %.07.lcssa = phi i32 [ 1, %bb.a ], [ %i.bb, %getbit_from_table.exit.us.epil ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ], [ %i.az, %getbit_from_table.exit ]
end_hunk_8
begin_hunk_9_@get_bb:bb.a
  %i.bg = add nuw nsw i32 %.01319.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %getbit_from_table.exit.us.epil, !llvm.loop !54

.loopexit:                                        ; preds = %getbit_from_table.exit, %.loopexit.loopexit.unr-lcssa, %getbit_from_table.exit.us.epil, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.bf, %getbit_from_table.exit.us.epil ], [ %i.j, %.loopexit.loopexit.unr-lcssa ], [ %i.bc, %getbit_from_table.exit ]
end_hunk_9
begin_hunk_10_@llvm.assume
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30, !31, !32}
!49 = !{!"branch_weights", i32 4, i32 28}
!50 = distinct !{!50, !30, !31, !32}
!51 = distinct !{!51, !30, !31}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !46}
!54 = distinct !{!54, !46}
end_hunk_10
