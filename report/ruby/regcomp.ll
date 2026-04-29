inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@optimize_node_left:bb.a

vector.ph1002:                                    ; preds = %vector.main.loop.iter.check1000
  %n.mod.vf1003 = and i64 %i.dx, 28
  %n.vec1004 = and i64 %i.dx, 8589934560          ; 6 uses
  %.cast1005 = trunc i64 %n.vec1004 to i32
  %i.eh = add i32 %.050.i.i, %.cast1005           ; 2 uses
  %i.ei = getelementptr i8, ptr %.03849.i.i, i64 %n.vec1004 ; 2 uses
  %8 = trunc i64 %n.vec1004 to i32
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1002
end_hunk_0
begin_hunk_1_@optimize_node_left:bb.a

vec.epilog.ph1024:                                ; preds = %vector.main.loop.iter.check1000, %vec.epilog.iter.check1022
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec1004, %vec.epilog.iter.check1022 ], [ 0, %vector.main.loop.iter.check1000 ]
  %n.vec1026 = and i64 %i.dx, 8589934588          ; 5 uses
  %.cast1027 = trunc i64 %n.vec1026 to i32
  %i.eo = add i32 %.050.i.i, %.cast1027           ; 2 uses
  %i.ep = getelementptr i8, ptr %.03849.i.i, i64 %n.vec1026 ; 2 uses
  %9 = trunc i64 %n.vec1026 to i32
  br label %vec.epilog.vector.body1029

vec.epilog.vector.body1029:                       ; preds = %vec.epilog.vector.body1029, %vec.epilog.ph1024
end_hunk_1
begin_hunk_2_@optimize_node_left:bb.a
.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck996, %vector.scevcheck993, %iter.check1020, %vec.epilog.iter.check1022, %vec.epilog.middle.block1035
  %.147.i.i.ph = phi i32 [ %.050.i.i, %iter.check1020 ], [ %.050.i.i, %vector.scevcheck993 ], [ %.050.i.i, %vector.memcheck996 ], [ %i.eh, %vec.epilog.iter.check1022 ], [ %i.eo, %vec.epilog.middle.block1035 ]
  %.13946.i.i.ph = phi ptr [ %.03849.i.i, %iter.check1020 ], [ %.03849.i.i, %vector.scevcheck993 ], [ %.03849.i.i, %vector.memcheck996 ], [ %i.ei, %vec.epilog.iter.check1022 ], [ %i.ep, %vec.epilog.middle.block1035 ]
  %.04045.i.i.ph = phi i32 [ 0, %iter.check1020 ], [ 0, %vector.scevcheck993 ], [ 0, %vector.memcheck996 ], [ %8, %vec.epilog.iter.check1022 ], [ %9, %vec.epilog.middle.block1035 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@optimize_node_left:bb.a

vector.ph955:                                     ; preds = %vector.main.loop.iter.check953
  %n.mod.vf956 = and i64 %i.gk, 28
  %n.vec957 = and i64 %i.gk, 8589934560           ; 6 uses
  %.cast958 = trunc i64 %n.vec957 to i32
  %i.gu = add i32 %.050.i82.i, %.cast958          ; 2 uses
  %i.gv = getelementptr i8, ptr %.03849.i83.i, i64 %n.vec957 ; 2 uses
  %10 = trunc i64 %n.vec957 to i32
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %vector.ph955
end_hunk_3
begin_hunk_4_@optimize_node_left:bb.a

vec.epilog.ph977:                                 ; preds = %vector.main.loop.iter.check953, %vec.epilog.iter.check975
  %vec.epilog.resume.val970 = phi i64 [ %n.vec957, %vec.epilog.iter.check975 ], [ 0, %vector.main.loop.iter.check953 ]
  %n.vec979 = and i64 %i.gk, 8589934588           ; 5 uses
  %.cast980 = trunc i64 %n.vec979 to i32
  %i.hb = add i32 %.050.i82.i, %.cast980          ; 2 uses
  %i.hc = getelementptr i8, ptr %.03849.i83.i, i64 %n.vec979 ; 2 uses
  %11 = trunc i64 %n.vec979 to i32
  br label %vec.epilog.vector.body982

vec.epilog.vector.body982:                        ; preds = %vec.epilog.vector.body982, %vec.epilog.ph977
end_hunk_4
begin_hunk_5_@optimize_node_left:bb.a
.lr.ph.i88.i.preheader:                           ; preds = %vector.memcheck949, %vector.scevcheck946, %iter.check973, %vec.epilog.iter.check975, %vec.epilog.middle.block988
  %.147.i89.i.ph = phi i32 [ %.050.i82.i, %iter.check973 ], [ %.050.i82.i, %vector.scevcheck946 ], [ %.050.i82.i, %vector.memcheck949 ], [ %i.gu, %vec.epilog.iter.check975 ], [ %i.hb, %vec.epilog.middle.block988 ]
  %.13946.i90.i.ph = phi ptr [ %.03849.i83.i, %iter.check973 ], [ %.03849.i83.i, %vector.scevcheck946 ], [ %.03849.i83.i, %vector.memcheck949 ], [ %i.gv, %vec.epilog.iter.check975 ], [ %i.hc, %vec.epilog.middle.block988 ]
  %.04045.i91.i.ph = phi i32 [ 0, %iter.check973 ], [ 0, %vector.scevcheck946 ], [ 0, %vector.memcheck949 ], [ %10, %vec.epilog.iter.check975 ], [ %11, %vec.epilog.middle.block988 ]
  br label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %.lr.ph.i88.i.preheader, %.lr.ph.i88.i
end_hunk_5
begin_hunk_6_@optimize_node_left:bb.a

vector.ph908:                                     ; preds = %vector.main.loop.iter.check906
  %n.mod.vf909 = and i64 %i.no, 28
  %n.vec910 = and i64 %i.no, 8589934560           ; 6 uses
  %i.nz = getelementptr i8, ptr %.034.i, i64 %n.vec910 ; 2 uses
  %.cast911 = trunc i64 %n.vec910 to i32
  %i.oa = add i32 %.02433.i, %.cast911            ; 2 uses
  %12 = trunc i64 %n.vec910 to i32
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph908
end_hunk_6
begin_hunk_7_@optimize_node_left:bb.a

vec.epilog.ph930:                                 ; preds = %vector.main.loop.iter.check906, %vec.epilog.iter.check928
  %vec.epilog.resume.val923 = phi i64 [ %n.vec910, %vec.epilog.iter.check928 ], [ 0, %vector.main.loop.iter.check906 ]
  %n.vec932 = and i64 %i.no, 8589934588           ; 5 uses
  %i.og = getelementptr i8, ptr %.034.i, i64 %n.vec932 ; 2 uses
  %.cast933 = trunc i64 %n.vec932 to i32
  %i.oh = add i32 %.02433.i, %.cast933            ; 2 uses
  %13 = trunc i64 %n.vec932 to i32
  br label %vec.epilog.vector.body935

vec.epilog.vector.body935:                        ; preds = %vec.epilog.vector.body935, %vec.epilog.ph930
end_hunk_7
begin_hunk_8_@optimize_node_left:bb.a
.lr.ph.i.preheader:                               ; preds = %vector.memcheck902, %vector.scevcheck899, %iter.check926, %vec.epilog.iter.check928, %vec.epilog.middle.block941
  %.131.i.ph = phi ptr [ %.034.i, %iter.check926 ], [ %.034.i, %vector.scevcheck899 ], [ %.034.i, %vector.memcheck902 ], [ %i.nz, %vec.epilog.iter.check928 ], [ %i.og, %vec.epilog.middle.block941 ]
  %.12530.i.ph = phi i32 [ %.02433.i, %iter.check926 ], [ %.02433.i, %vector.scevcheck899 ], [ %.02433.i, %vector.memcheck902 ], [ %i.oa, %vec.epilog.iter.check928 ], [ %i.oh, %vec.epilog.middle.block941 ]
  %.02629.i.ph = phi i32 [ 0, %iter.check926 ], [ 0, %vector.scevcheck899 ], [ 0, %vector.memcheck902 ], [ %12, %vec.epilog.iter.check928 ], [ %13, %vec.epilog.middle.block941 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
end_hunk_8
begin_hunk_9_@optimize_node_left:bb.a

vector.ph861:                                     ; preds = %vector.main.loop.iter.check859
  %n.mod.vf862 = and i64 %i.qu, 28
  %n.vec863 = and i64 %i.qu, 8589934560           ; 6 uses
  %i.rf = getelementptr i8, ptr %.034.i332, i64 %n.vec863 ; 2 uses
  %.cast864 = trunc i64 %n.vec863 to i32
  %i.rg = add i32 %.02433.i333, %.cast864         ; 2 uses
  %14 = trunc i64 %n.vec863 to i32
  br label %vector.body866

vector.body866:                                   ; preds = %vector.body866, %vector.ph861
end_hunk_9
begin_hunk_10_@optimize_node_left:bb.a

vec.epilog.ph883:                                 ; preds = %vector.main.loop.iter.check859, %vec.epilog.iter.check881
  %vec.epilog.resume.val876 = phi i64 [ %n.vec863, %vec.epilog.iter.check881 ], [ 0, %vector.main.loop.iter.check859 ]
  %n.vec885 = and i64 %i.qu, 8589934588           ; 5 uses
  %i.rm = getelementptr i8, ptr %.034.i332, i64 %n.vec885 ; 2 uses
  %.cast886 = trunc i64 %n.vec885 to i32
  %i.rn = add i32 %.02433.i333, %.cast886         ; 2 uses
  %15 = trunc i64 %n.vec885 to i32
  br label %vec.epilog.vector.body888

vec.epilog.vector.body888:                        ; preds = %vec.epilog.vector.body888, %vec.epilog.ph883
end_hunk_10
begin_hunk_11_@optimize_node_left:bb.a
.lr.ph.i338.preheader:                            ; preds = %vector.memcheck855, %vector.scevcheck852, %iter.check879, %vec.epilog.iter.check881, %vec.epilog.middle.block894
  %.131.i339.ph = phi ptr [ %.034.i332, %iter.check879 ], [ %.034.i332, %vector.scevcheck852 ], [ %.034.i332, %vector.memcheck855 ], [ %i.rf, %vec.epilog.iter.check881 ], [ %i.rm, %vec.epilog.middle.block894 ]
  %.12530.i340.ph = phi i32 [ %.02433.i333, %iter.check879 ], [ %.02433.i333, %vector.scevcheck852 ], [ %.02433.i333, %vector.memcheck855 ], [ %i.rg, %vec.epilog.iter.check881 ], [ %i.rn, %vec.epilog.middle.block894 ]
  %.02629.i341.ph = phi i32 [ 0, %iter.check879 ], [ 0, %vector.scevcheck852 ], [ 0, %vector.memcheck855 ], [ %14, %vec.epilog.iter.check881 ], [ %15, %vec.epilog.middle.block894 ]
  br label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %.lr.ph.i338.preheader, %.lr.ph.i338
end_hunk_11
begin_hunk_12_@optimize_node_left:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ade, 28
  %n.vec = and i64 %i.ade, 8589934560             ; 6 uses
  %.cast = trunc i64 %n.vec to i32
  %i.ado = add i32 %.050.i, %.cast                ; 2 uses
  %i.adp = getelementptr i8, ptr %.03849.i, i64 %n.vec ; 2 uses
  %16 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_12
begin_hunk_13_@optimize_node_left:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec840 = and i64 %i.ade, 8589934588          ; 5 uses
  %.cast841 = trunc i64 %n.vec840 to i32
  %i.adv = add i32 %.050.i, %.cast841             ; 2 uses
  %i.adw = getelementptr i8, ptr %.03849.i, i64 %n.vec840 ; 2 uses
  %17 = trunc i64 %n.vec840 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
end_hunk_13
begin_hunk_14_@optimize_node_left:bb.a
.lr.ph.i364.preheader:                            ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.147.i.ph = phi i32 [ %.050.i, %iter.check ], [ %.050.i, %vector.scevcheck ], [ %.050.i, %vector.memcheck ], [ %i.ado, %vec.epilog.iter.check ], [ %i.adv, %vec.epilog.middle.block ]
  %.13946.i.ph = phi ptr [ %.03849.i, %iter.check ], [ %.03849.i, %vector.scevcheck ], [ %.03849.i, %vector.memcheck ], [ %i.adp, %vec.epilog.iter.check ], [ %i.adw, %vec.epilog.middle.block ]
  %.04045.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %16, %vec.epilog.iter.check ], [ %17, %vec.epilog.middle.block ]
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %.lr.ph.i364.preheader, %.lr.ph.i364
end_hunk_14
