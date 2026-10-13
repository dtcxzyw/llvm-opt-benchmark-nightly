Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.04?download=true
inline.NumInlined: 300
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1h_11collections5btree3mapINtB23_8BTreeMapyyEINtNtBa_7convert4FromAB15_j4_E4from0E0ECs3f36owOmepS_6quiche:bb.a
    #dbg_value(i64 1, !8412, !DIExpression(), !7812)
    #dbg_value(i64 1, !8417, !DIExpression(), !7815)
    #dbg_value(i64 1, !8420, !DIExpression(), !7818)
    #dbg_value(i64 1, !8412, !DIExpression(), !7820)
    #dbg_value(i64 %.sroa.16.0135308, !8379, !DIExpression(), !7821)
    #dbg_value(i64 %.sroa.16.0135308, !8423, !DIExpression(), !7824)
  %.not98 = icmp samesign ult i64 %3, %.sroa.16.0135308, !dbg !8760
  br i1 %.not98, label %bb.x, label %bb.w, !dbg !8760, !prof !2071

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr %.sroa.0.0.ph142, !8380, !DIExpression(), !7825)
    #dbg_value(ptr %.sroa.0.0.ph142, !8407, !DIExpression(), !7806)
    #dbg_value(ptr %.sroa.0.0.ph142, !8427, !DIExpression(), !7824)
    #dbg_value(ptr %.sroa.0.0.ph142, !8407, !DIExpression(), !7827)
    #dbg_value(ptr %.sroa.0.0.ph142, !8407, !DIExpression(), !7829)
    #dbg_value(ptr %2, !8381, !DIExpression(), !7830)
    #dbg_value(ptr %2, !8428, !DIExpression(), !7824)
    #dbg_value(ptr %2, !8430, !DIExpression(), !7833)
    #dbg_value(ptr %i.er, !8382, !DIExpression(), !7834)
    #dbg_value(ptr %i.er, !8413, !DIExpression(), !7812)
  %i.ev = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0135308, !dbg !8761 ; 4 uses
    #dbg_value(ptr %2, !8383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7836)
    #dbg_value(ptr %.sroa.0.0.ph142, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(i64 0, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %i.ev, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
    #dbg_value(ptr null, !8384, !DIExpression(), !7837)
    #dbg_value(ptr null, !8414, !DIExpression(), !7812)
  br label %bb.y, !dbg !8762

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap(), !dbg !8763
  unreachable, !dbg !8763

bb.y:                                             ; preds = %bb.aa, %bb.w
  %.sroa.43.0.i = phi ptr [ %i.ev, %bb.w ], [ %i.gi, %bb.aa ], !dbg !8764 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.aa ], !dbg !8764 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph142, %bb.w ], [ %i.gk, %bb.aa ], !dbg !8764 ; 3 uses
  %.sroa.0.0.i53 = phi i64 [ %.sroa.0.0.i52, %bb.w ], [ %.sroa.16.0135308, %bb.aa ] ; 3 uses
    #dbg_value(ptr %.sroa.9.0.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(i64 %.sroa.27.0.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %.sroa.43.0.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
    #dbg_value(i64 %.sroa.0.0.i53, !8406, !DIExpression(), !7806)
    #dbg_value(i64 %.sroa.0.0.i53, !8385, !DIExpression(), !7803)
    #dbg_value(i64 %.sroa.0.0.i53, !8376, !DIExpression(), !7802)
    #dbg_value(ptr poison, !8414, !DIExpression(), !7812)
    #dbg_value(ptr poison, !8384, !DIExpression(), !7837)
    #dbg_value(i64 %.sroa.0.0.i53, !8410, !DIExpression(), !7809)
  %i.ew = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i53, i64 3), !dbg !8765
    #dbg_value(i64 %i.ew, !8406, !DIExpression(), !7827)
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph142, i64 %i.ew, !dbg !8766 ; 2 uses
    #dbg_value(ptr %i.ex, !8386, !DIExpression(), !7838)
    #dbg_value(ptr %.sroa.9.0.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(i64 %.sroa.27.0.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %.sroa.43.0.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %i.ey = icmp ult ptr %.sroa.9.0.i, %i.ex, !dbg !8767
  br i1 %i.ey, label %.lr.ph.i55, label %._crit_edge.i, !dbg !8767

.lr.ph.i55:                                       ; preds = %bb.y
  %.val51.i = load i64, ptr %i.er, align 8, !alias.scope !8433, !noalias !8362, !noundef !584 ; 4 uses
  br label %bb.z, !dbg !8767

bb.z:                                             ; preds = %bb.z, %.lr.ph.i55
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i55 ], [ %i.fw, %bb.z ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i55 ], [ %i.fv, %bb.z ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i55 ], [ %i.fs, %bb.z ] ; 4 uses
    #dbg_value(ptr %.sroa.9.131.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(i64 %.sroa.27.130.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %.sroa.43.129.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %.val50.i = load i64, ptr %.sroa.9.131.i, align 8, !dbg !8768, !alias.scope !8433, !noalias !8362, !noundef !584
    #dbg_value(ptr poison, !1898, !DIExpression(), !7841)
    #dbg_value(ptr poison, !1901, !DIExpression(), !7841)
    #dbg_value(ptr poison, !1907, !DIExpression(), !7843)
    #dbg_value(ptr poison, !1911, !DIExpression(), !7844)
  %i.ez = icmp ult i64 %.val50.i, %.val51.i, !dbg !8769 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !7801)
    #dbg_value(i1 %i.ez, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7801)
    #dbg_value(i64 1, !8434, !DIExpression(), !7847)
    #dbg_value(i64 1, !8437, !DIExpression(), !7850)
    #dbg_value(i64 1, !8441, !DIExpression(), !7853)
    #dbg_value(ptr %.sroa.43.129.i, !8435, !DIExpression(), !7847)
  %i.fa = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !8770
    #dbg_value(ptr %i.fa, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %.sroa.01.0.i.i = select i1 %i.ez, ptr %2, ptr %i.fa, !dbg !8771
    #dbg_value(ptr %.sroa.01.0.i.i, !8444, !DIExpression(), !7856)
    #dbg_value(ptr %.sroa.01.0.i.i, !8403, !DIExpression(), !7857)
    #dbg_value(i64 %.sroa.27.130.i, !8445, !DIExpression(), !7856)
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !8772
    #dbg_value(ptr %i.fb, !8404, !DIExpression(), !7858)
    #dbg_value(ptr %i.fb, !8439, !DIExpression(), !7850)
    #dbg_value(ptr %.sroa.9.131.i, !8438, !DIExpression(), !7850)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !dbg !8773, !alias.scope !8447, !noalias !8448
  %i.fc = zext i1 %i.ez to i64, !dbg !8774
  %i.fd = add i64 %.sroa.27.130.i, %i.fc, !dbg !8775 ; 2 uses
    #dbg_value(i64 %i.fd, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %.sroa.9.131.i, !8442, !DIExpression(), !7853)
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !8776 ; 2 uses
    #dbg_value(ptr %i.fe, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
  %.val48.i = load i64, ptr %i.fe, align 8, !dbg !8777, !alias.scope !8433, !noalias !8362, !noundef !584
    #dbg_value(ptr poison, !1898, !DIExpression(), !7862)
    #dbg_value(ptr poison, !1901, !DIExpression(), !7862)
    #dbg_value(ptr poison, !1907, !DIExpression(), !7864)
    #dbg_value(ptr poison, !1911, !DIExpression(), !7865)
  %i.ff = icmp ult i64 %.val48.i, %.val51.i, !dbg !8778 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !7799)
    #dbg_value(i1 %i.ff, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7799)
    #dbg_value(i64 1, !8434, !DIExpression(), !7867)
    #dbg_value(i64 1, !8437, !DIExpression(), !7869)
    #dbg_value(i64 1, !8441, !DIExpression(), !7871)
    #dbg_value(ptr %i.fa, !8435, !DIExpression(), !7867)
  %i.fg = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !8779
    #dbg_value(ptr %i.fg, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %.sroa.01.0.i52.i = select i1 %i.ff, ptr %2, ptr %i.fg, !dbg !8780
    #dbg_value(ptr %.sroa.01.0.i52.i, !8444, !DIExpression(), !7873)
    #dbg_value(ptr %.sroa.01.0.i52.i, !8403, !DIExpression(), !7874)
    #dbg_value(i64 %i.fd, !8445, !DIExpression(), !7873)
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i52.i, i64 %i.fd, !dbg !8781
    #dbg_value(ptr %i.fh, !8404, !DIExpression(), !7875)
    #dbg_value(ptr %i.fh, !8439, !DIExpression(), !7869)
    #dbg_value(ptr %i.fe, !8438, !DIExpression(), !7869)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !dbg !8782, !alias.scope !8447, !noalias !8449
  %i.fi = zext i1 %i.ff to i64, !dbg !8783
  %i.fj = add i64 %i.fd, %i.fi, !dbg !8784        ; 2 uses
    #dbg_value(i64 %i.fj, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %i.fe, !8442, !DIExpression(), !7871)
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !8785 ; 2 uses
    #dbg_value(ptr %i.fk, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
  %.val46.i = load i64, ptr %i.fk, align 8, !dbg !8786, !alias.scope !8433, !noalias !8362, !noundef !584
    #dbg_value(ptr poison, !1898, !DIExpression(), !7879)
    #dbg_value(ptr poison, !1901, !DIExpression(), !7879)
    #dbg_value(ptr poison, !1907, !DIExpression(), !7881)
    #dbg_value(ptr poison, !1911, !DIExpression(), !7882)
  %i.fl = icmp ult i64 %.val46.i, %.val51.i, !dbg !8787 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !7797)
    #dbg_value(i1 %i.fl, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7797)
    #dbg_value(i64 1, !8434, !DIExpression(), !7884)
    #dbg_value(i64 1, !8437, !DIExpression(), !7886)
    #dbg_value(i64 1, !8441, !DIExpression(), !7888)
    #dbg_value(ptr %i.fg, !8435, !DIExpression(), !7884)
  %i.fm = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48, !dbg !8788
    #dbg_value(ptr %i.fm, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %.sroa.01.0.i53.i = select i1 %i.fl, ptr %2, ptr %i.fm, !dbg !8789
    #dbg_value(ptr %.sroa.01.0.i53.i, !8444, !DIExpression(), !7890)
    #dbg_value(ptr %.sroa.01.0.i53.i, !8403, !DIExpression(), !7891)
    #dbg_value(i64 %i.fj, !8445, !DIExpression(), !7890)
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i53.i, i64 %i.fj, !dbg !8790
    #dbg_value(ptr %i.fn, !8404, !DIExpression(), !7892)
    #dbg_value(ptr %i.fn, !8439, !DIExpression(), !7886)
    #dbg_value(ptr %i.fk, !8438, !DIExpression(), !7886)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i64 16, i1 false), !dbg !8791, !alias.scope !8447, !noalias !8450
  %i.fo = zext i1 %i.fl to i64, !dbg !8792
  %i.fp = add i64 %i.fj, %i.fo, !dbg !8793        ; 2 uses
    #dbg_value(i64 %i.fp, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %i.fk, !8442, !DIExpression(), !7888)
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48, !dbg !8794 ; 2 uses
    #dbg_value(ptr %i.fq, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
  %.val44.i = load i64, ptr %i.fq, align 8, !dbg !8795, !alias.scope !8433, !noalias !8362, !noundef !584
    #dbg_value(ptr poison, !1898, !DIExpression(), !7896)
    #dbg_value(ptr poison, !1901, !DIExpression(), !7896)
    #dbg_value(ptr poison, !1907, !DIExpression(), !7898)
    #dbg_value(ptr poison, !1911, !DIExpression(), !7899)
  %i.fr = icmp ult i64 %.val44.i, %.val51.i, !dbg !8796 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !7795)
    #dbg_value(i1 %i.fr, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7795)
    #dbg_value(i64 1, !8434, !DIExpression(), !7901)
    #dbg_value(i64 1, !8437, !DIExpression(), !7903)
    #dbg_value(i64 1, !8441, !DIExpression(), !7905)
    #dbg_value(ptr %i.fm, !8435, !DIExpression(), !7901)
  %i.fs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64, !dbg !8797 ; 3 uses
    #dbg_value(ptr %i.fs, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %.sroa.01.0.i54.i = select i1 %i.fr, ptr %2, ptr %i.fs, !dbg !8798
    #dbg_value(ptr %.sroa.01.0.i54.i, !8444, !DIExpression(), !7907)
    #dbg_value(ptr %.sroa.01.0.i54.i, !8403, !DIExpression(), !7908)
    #dbg_value(i64 %i.fp, !8445, !DIExpression(), !7907)
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i54.i, i64 %i.fp, !dbg !8799
    #dbg_value(ptr %i.ft, !8404, !DIExpression(), !7909)
    #dbg_value(ptr %i.ft, !8439, !DIExpression(), !7903)
    #dbg_value(ptr %i.fq, !8438, !DIExpression(), !7903)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !dbg !8800, !alias.scope !8447, !noalias !8451
  %i.fu = zext i1 %i.fr to i64, !dbg !8801
  %i.fv = add i64 %i.fp, %i.fu, !dbg !8802        ; 2 uses
    #dbg_value(i64 %i.fv, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %i.fq, !8442, !DIExpression(), !7905)
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64, !dbg !8803 ; 3 uses
    #dbg_value(ptr %i.fw, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(i64 %i.fv, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %i.fs, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %i.fx = icmp ult ptr %i.fw, %i.ex, !dbg !8767
  br i1 %i.fx, label %bb.z, label %._crit_edge.i, !dbg !8767

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.fs, %bb.z ], !dbg !8764 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.fv, %bb.z ], !dbg !8764 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.fw, %bb.z ], !dbg !8764 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i53, !8406, !DIExpression(), !7829)
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph142, i64 %.sroa.0.0.i53, !dbg !8804 ; 2 uses
    #dbg_value(ptr %i.fy, !8387, !DIExpression(), !7912)
    #dbg_value(ptr %.sroa.9.1.lcssa.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(i64 %.sroa.27.1.lcssa.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %.sroa.43.1.lcssa.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %i.fz = icmp ult ptr %.sroa.9.1.lcssa.i, %i.fy, !dbg !8805
  br i1 %i.fz, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !8805

.lr.ph38.i:                                       ; preds = %._crit_edge.i
  %.val43.i = load i64, ptr %i.er, align 8, !alias.scope !8433, !noalias !8362, !noundef !584
  br label %.lr.ph38.i.a, !dbg !8805

._crit_edge39.i:                                  ; preds = %.lr.ph38.i.a, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gc, %.lr.ph38.i.a ], !dbg !8764
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gf, %.lr.ph38.i.a ], !dbg !8764 ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gg, %.lr.ph38.i.a ], !dbg !8764 ; 2 uses
  %i.ga = icmp eq i64 %.sroa.0.0.i53, %.sroa.16.0135308, !dbg !8806
  br i1 %i.ga, label %bb.ab, label %bb.aa, !dbg !8806

.lr.ph38.i.a:                                     ; preds = %.lr.ph38.i.a, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %.sroa.9.1.lcssa.i, %.lr.ph38.i ], [ %i.gg, %.lr.ph38.i.a ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %.sroa.27.1.lcssa.i, %.lr.ph38.i ], [ %i.gf, %.lr.ph38.i.a ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %.sroa.43.1.lcssa.i, %.lr.ph38.i ], [ %i.gc, %.lr.ph38.i.a ]
    #dbg_value(ptr %.sroa.9.236.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(i64 %.sroa.27.235.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %.sroa.43.234.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %.val43.i.a = load i64, ptr %.sroa.9.236.i, align 8, !dbg !8807, !alias.scope !8433, !noalias !8362, !noundef !584
    #dbg_value(ptr poison, !1898, !DIExpression(), !7914)
    #dbg_value(ptr poison, !1901, !DIExpression(), !7914)
    #dbg_value(ptr poison, !1907, !DIExpression(), !7916)
    #dbg_value(ptr poison, !1911, !DIExpression(), !7917)
  %i.gb = icmp ult i64 %.val43.i.a, %.val43.i, !dbg !8808 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !7793)
    #dbg_value(i1 %i.gb, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7793)
    #dbg_value(i64 1, !8434, !DIExpression(), !7919)
    #dbg_value(i64 1, !8437, !DIExpression(), !7921)
    #dbg_value(i64 1, !8441, !DIExpression(), !7923)
    #dbg_value(ptr %.sroa.43.234.i, !8435, !DIExpression(), !7919)
  %i.gc = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16, !dbg !8809 ; 3 uses
    #dbg_value(ptr %i.gc, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %.sroa.01.0.i55.i = select i1 %i.gb, ptr %2, ptr %i.gc, !dbg !8810
    #dbg_value(ptr %.sroa.01.0.i55.i, !8444, !DIExpression(), !7925)
    #dbg_value(ptr %.sroa.01.0.i55.i, !8403, !DIExpression(), !7926)
    #dbg_value(i64 %.sroa.27.235.i, !8445, !DIExpression(), !7925)
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i55.i, i64 %.sroa.27.235.i, !dbg !8811
    #dbg_value(ptr %i.gd, !8404, !DIExpression(), !7927)
    #dbg_value(ptr %i.gd, !8439, !DIExpression(), !7921)
    #dbg_value(ptr %.sroa.9.236.i, !8438, !DIExpression(), !7921)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !dbg !8812, !alias.scope !8447, !noalias !8452
  %i.ge = zext i1 %i.gb to i64, !dbg !8813
  %i.gf = add i64 %.sroa.27.235.i, %i.ge, !dbg !8814 ; 2 uses
    #dbg_value(i64 %i.gf, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %.sroa.9.236.i, !8442, !DIExpression(), !7923)
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16, !dbg !8815 ; 3 uses
    #dbg_value(ptr %i.gg, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(i64 %i.gf, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %i.gc, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
  %i.gh = icmp ult ptr %i.gg, %i.fy, !dbg !8805
  br i1 %i.gh, label %.lr.ph38.i.a, label %._crit_edge39.i, !dbg !8805

bb.aa:                                            ; preds = %._crit_edge39.i
    #dbg_value(ptr undef, !8398, !DIExpression(), !7791)
    #dbg_value(i1 false, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7791)
    #dbg_value(i64 1, !8434, !DIExpression(), !7931)
    #dbg_value(i64 1, !8437, !DIExpression(), !7933)
    #dbg_value(i64 1, !8441, !DIExpression(), !7935)
    #dbg_value(ptr %.sroa.43.2.lcssa.i, !8435, !DIExpression(), !7931)
  %i.gi = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16, !dbg !8816 ; 2 uses
    #dbg_value(ptr %i.gi, !8383, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7836)
    #dbg_value(ptr %i.gi, !8444, !DIExpression(), !7937)
    #dbg_value(ptr %i.gi, !8403, !DIExpression(), !7938)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8445, !DIExpression(), !7937)
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %.sroa.27.2.lcssa.i, !dbg !8817
    #dbg_value(ptr %i.gj, !8404, !DIExpression(), !7939)
    #dbg_value(ptr %i.gj, !8439, !DIExpression(), !7933)
    #dbg_value(ptr %.sroa.9.2.lcssa.i, !8438, !DIExpression(), !7933)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !dbg !8818, !alias.scope !8447, !noalias !8453
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8383, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7836)
    #dbg_value(ptr %.sroa.9.2.lcssa.i, !8442, !DIExpression(), !7935)
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16, !dbg !8819
    #dbg_value(ptr %i.gk, !8383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7836)
    #dbg_value(ptr poison, !8384, !DIExpression(), !7837)
    #dbg_value(ptr poison, !8414, !DIExpression(), !7812)
    #dbg_value(i64 %.sroa.16.0135308, !8376, !DIExpression(), !7802)
    #dbg_value(i64 %.sroa.16.0135308, !8385, !DIExpression(), !7803)
    #dbg_value(i64 %.sroa.16.0135308, !8406, !DIExpression(), !7806)
  br label %bb.y, !dbg !8762

bb.ab:                                            ; preds = %._crit_edge39.i
    #dbg_value(ptr %.sroa.0.0.ph142, !8388, !DIExpression(), !7942)
    #dbg_value(ptr %.sroa.0.0.ph142, !8414, !DIExpression(), !7944)
    #dbg_value(ptr %.sroa.0.0.ph142, !8430, !DIExpression(), !7946)
    #dbg_value(ptr %2, !8413, !DIExpression(), !7944)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8415, !DIExpression(), !7944)
  %i.gl = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4, !dbg !8820
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph142, ptr nonnull align 8 %2, i64 %i.gl, i1 false), !dbg !8820, !alias.scope !8447
  %i.gm = sub i64 %.sroa.16.0135308, %.sroa.27.2.lcssa.i, !dbg !8821 ; 4 uses
    #dbg_value(i64 0, !8389, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %i.gm, !8389, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7947)
    #dbg_value(ptr undef, !8369, !DIExpression(), !7786)
    #dbg_value(ptr undef, !8366, !DIExpression(), !7785)
    #dbg_value(ptr undef, !8363, !DIExpression(), !7784)
    #dbg_value(ptr undef, !8364, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7948)
  %.not47.i = icmp eq i64 %.sroa.16.0135308, %.sroa.27.2.lcssa.i, !dbg !8822
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !8823

.lr.ph45.i:                                       ; preds = %bb.ab
  %i.gn = getelementptr [16 x i8], ptr %.sroa.0.0.ph142, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1, !dbg !8823
  %xtraiter = and i64 %i.gm, 1, !dbg !8823
  %i.go = icmp eq i64 %.sroa.16.0135308, %.neg, !dbg !8823
  br i1 %i.go, label %.epil.preheader, label %.lr.ph45.i.new, !dbg !8823

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.gm, -2, !dbg !8823
  br label %bb.ac, !dbg !8823

bb.ac:                                            ; preds = %bb.ac, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.gs, %bb.ac ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.ac ]
    #dbg_value(i64 %.sroa.07.043.i, !8367, !DIExpression(), !7949)
    #dbg_value(i64 %.sroa.07.043.i, !8418, !DIExpression(), !7815)
    #dbg_value(i64 %.sroa.07.043.i, !8421, !DIExpression(), !7818)
    #dbg_value(i64 %.sroa.07.043.i, !8389, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %.sroa.07.043.i, !8390, !DIExpression(), !7950)
  %i.gp = xor i64 %.sroa.07.043.i, -1, !dbg !8824
    #dbg_value(!DIArgList(i64 %.sroa.16.0135308, i64 %i.gp), !8431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7833)
  %i.gq = getelementptr [16 x i8], ptr %i.ev, i64 %i.gp, !dbg !8825
    #dbg_value(ptr %i.gq, !8413, !DIExpression(), !7820)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i, i64 %.sroa.07.043.i), !8431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7946)
  %i.gr = getelementptr [16 x i8], ptr %i.gn, i64 %.sroa.07.043.i, !dbg !8826
    #dbg_value(ptr %i.gr, !8414, !DIExpression(), !7820)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !dbg !8827, !alias.scope !8447
    #dbg_value(ptr undef, !8369, !DIExpression(), !7786)
    #dbg_value(ptr undef, !8366, !DIExpression(), !7785)
    #dbg_value(ptr undef, !8363, !DIExpression(), !7784)
    #dbg_value(ptr undef, !8364, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7948)
    #dbg_value(i64 %.sroa.07.043.i, !8367, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7949)
    #dbg_value(i64 %.sroa.07.043.i, !8418, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7815)
    #dbg_value(i64 %.sroa.07.043.i, !8421, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7818)
  %i.gs = add nuw i64 %.sroa.07.043.i, 2, !dbg !8828 ; 2 uses
    #dbg_value(i64 %i.gs, !8389, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %.sroa.07.043.i, !8390, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !7950)
  %i.gt = xor i64 %.sroa.07.043.i, -2, !dbg !8824
    #dbg_value(!DIArgList(i64 %.sroa.16.0135308, i64 %i.gt), !8431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7833)
  %i.gu = getelementptr [16 x i8], ptr %i.ev, i64 %i.gt, !dbg !8825
    #dbg_value(ptr %i.gu, !8413, !DIExpression(), !7820)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i, i64 %.sroa.07.043.i), !8431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_plus, DW_OP_stack_value), !7946)
  %i.gv = getelementptr [16 x i8], ptr %i.gn, i64 %.sroa.07.043.i, !dbg !8826
  %i.gw = getelementptr i8, ptr %i.gv, i64 16, !dbg !8826
    #dbg_value(ptr %i.gw, !8414, !DIExpression(), !7820)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false), !dbg !8827, !alias.scope !8447
  %niter.next.1 = add i64 %niter, 2, !dbg !8823   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !8823
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ac, !dbg !8823

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !8823
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader, !dbg !8823

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.gs, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod394 = trunc i64 %i.gm to i1, !dbg !8823
  call void @llvm.assume(i1 %lcmp.mod394), !dbg !8823
    #dbg_value(i64 %.sroa.07.043.i.epil.init, !8367, !DIExpression(), !7949)
    #dbg_value(i64 %.sroa.07.043.i.epil.init, !8418, !DIExpression(), !7815)
    #dbg_value(i64 %.sroa.07.043.i.epil.init, !8421, !DIExpression(), !7818)
    #dbg_value(i64 %.sroa.07.043.i.epil.init, !8389, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !7947)
    #dbg_value(i64 %.sroa.07.043.i.epil.init, !8390, !DIExpression(), !7950)
  %i.gx = xor i64 %.sroa.07.043.i.epil.init, -1, !dbg !8824
    #dbg_value(!DIArgList(i64 %.sroa.16.0135308, i64 %i.gx), !8431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7833)
  %i.gy = getelementptr [16 x i8], ptr %i.ev, i64 %i.gx, !dbg !8825
    #dbg_value(ptr %i.gy, !8413, !DIExpression(), !7820)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i, i64 %.sroa.07.043.i.epil.init), !8431, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !7946)
  %i.gz = getelementptr [16 x i8], ptr %i.gn, i64 %.sroa.07.043.i.epil.init, !dbg !8826
    #dbg_value(ptr %i.gz, !8414, !DIExpression(), !7820)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !dbg !8827, !alias.scope !8447
    #dbg_value(ptr undef, !8369, !DIExpression(), !7786)
    #dbg_value(ptr undef, !8366, !DIExpression(), !7785)
    #dbg_value(ptr undef, !8363, !DIExpression(), !7784)
    #dbg_value(ptr undef, !8364, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7948)
  br label %.loopexit, !dbg !8829

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ab
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8194, !DIExpression(), !8361)
  %i.ha = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !8829
    #dbg_value(i1 %i.ha, !8192, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8359)
  br i1 %i.ha, label %.thread, label %bb.ad, !dbg !8830

bb.ad:                                            ; preds = %.loopexit
    #dbg_value(ptr %.sroa.0.0.ph142, !8456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7955)
    #dbg_value(ptr %.sroa.0.0.ph142, !8465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7962)
    #dbg_value(i64 %.sroa.16.0135308, !8456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7955)
    #dbg_value(i64 %.sroa.16.0135308, !8465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7962)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8462, !DIExpression(), !7955)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8477, !DIExpression(), !7962)
  %.not.i56 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0135308, !dbg !8831
  br i1 %.not.i56, label %bb.ae, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit, !dbg !8831, !prof !1050

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !dbg !8832, !noalias !8479
  unreachable, !dbg !8832

_RNvMNtCskKLDkoKarTP_4core5sliceSTyyE12split_at_mutCs3f36owOmepS_6quiche.exit: ; preds = %bb.ad
    #dbg_value(ptr %.sroa.0.0.ph142, !8480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7970)
    #dbg_value(i64 poison, !8480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7970)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8482, !DIExpression(), !7970)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8486, !DIExpression(), !7973)
    #dbg_value(i64 poison, !8483, !DIExpression(), !7974)
    #dbg_value(ptr %.sroa.0.0.ph142, !8484, !DIExpression(), !7975)
    #dbg_value(ptr %.sroa.0.0.ph142, !8487, !DIExpression(), !7973)
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph142, i64 %.sroa.27.2.lcssa.i, !dbg !8833
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph142) ]
    #dbg_value(ptr %.sroa.0.0.ph142, !8183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8199)
    #dbg_value(ptr %.sroa.0.0.ph142, !8196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8200)
    #dbg_value(ptr %.sroa.0.0.ph142, !8201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8205)
    #dbg_value(ptr %.sroa.0.0.ph142, !8206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8211)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8199)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8200)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8205)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8211)
    #dbg_value(ptr %i.hb, !8197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8200)
    #dbg_value(i64 %i.gm, !8197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8200)
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1h_11collections5btree3mapINtB23_8BTreeMapyyEINtNtBa_7convert4FromAB15_j4_E4from0E0ECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 %i.hb, i64 noundef %i.gm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ed, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #21, !dbg !8834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8835
    #dbg_value(ptr %.sroa.0.0.ph142, !8206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8211)
    #dbg_value(ptr %.sroa.0.0.ph142, !8201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8205)
    #dbg_value(ptr %.sroa.0.0.ph142, !8196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8200)
    #dbg_value(ptr %.sroa.0.0.ph142, !8183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8199)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8211)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8205)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !8196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8200)
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs1z_NtNtNtB1h_11collections5btree3mapINtB23_8BTreeMapyyEINtNtBa_7convert4FromAB15_j4_E4from0E0ECs3f36owOmepS_6quiche:bb.a
    #dbg_value(ptr %.sroa.0.0.ph142, !8543, !DIExpression(), !8037)
    #dbg_value(ptr %.sroa.0.0.ph142, !8526, !DIExpression(), !8040)
    #dbg_value(ptr %.sroa.0.0.ph142, !8526, !DIExpression(), !8042)
    #dbg_value(ptr %2, !8512, !DIExpression(), !8043)
    #dbg_value(ptr %2, !8544, !DIExpression(), !8037)
    #dbg_value(ptr %2, !8546, !DIExpression(), !8046)
    #dbg_value(ptr %i.er, !8513, !DIExpression(), !8047)
    #dbg_value(ptr %i.er, !8532, !DIExpression(), !8025)
  %i.hd = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0135308, !dbg !8838 ; 4 uses
    #dbg_value(ptr %2, !8514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8049)
    #dbg_value(ptr %.sroa.0.0.ph142, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(i64 0, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %i.hd, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
    #dbg_value(ptr null, !8515, !DIExpression(), !8050)
    #dbg_value(ptr null, !8533, !DIExpression(), !8025)
  br label %bb.ah, !dbg !8839

bb.ag:                                            ; preds = %.thread
  call void @llvm.trap(), !dbg !8840
  unreachable, !dbg !8840

bb.ah:                                            ; preds = %bb.aj, %bb.af
  %.sroa.43.0.i59 = phi ptr [ %i.hd, %bb.af ], [ %i.iq, %bb.aj ], !dbg !8841 ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ 0, %bb.af ], [ %i.is, %bb.aj ], !dbg !8841 ; 2 uses
  %.sroa.9.0.i61 = phi ptr [ %.sroa.0.0.ph142, %bb.af ], [ %i.it, %bb.aj ], !dbg !8841 ; 3 uses
  %.sroa.0.0.i62 = phi i64 [ %.sroa.0.0.i52, %bb.af ], [ %.sroa.16.0135308, %bb.aj ] ; 3 uses
    #dbg_value(ptr %.sroa.9.0.i61, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(i64 %.sroa.27.0.i60, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %.sroa.43.0.i59, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
    #dbg_value(i64 %.sroa.0.0.i62, !8525, !DIExpression(), !8019)
    #dbg_value(i64 %.sroa.0.0.i62, !8516, !DIExpression(), !8016)
    #dbg_value(i64 %.sroa.0.0.i62, !8507, !DIExpression(), !8015)
    #dbg_value(ptr poison, !8533, !DIExpression(), !8025)
    #dbg_value(ptr poison, !8515, !DIExpression(), !8050)
    #dbg_value(i64 %.sroa.0.0.i62, !8529, !DIExpression(), !8022)
  %i.he = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i62, i64 3), !dbg !8842
    #dbg_value(i64 %i.he, !8525, !DIExpression(), !8040)
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph142, i64 %i.he, !dbg !8843 ; 2 uses
    #dbg_value(ptr %i.hf, !8517, !DIExpression(), !8051)
    #dbg_value(ptr %.sroa.9.0.i61, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(i64 %.sroa.27.0.i60, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %.sroa.43.0.i59, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %i.hg = icmp ult ptr %.sroa.9.0.i61, %i.hf, !dbg !8844
  br i1 %i.hg, label %.lr.ph.i82, label %._crit_edge.i63, !dbg !8844

.lr.ph.i82:                                       ; preds = %bb.ah
  %.val51.i83 = load i64, ptr %i.er, align 8, !alias.scope !8549, !noalias !8489, !noundef !584 ; 4 uses
  br label %bb.ai, !dbg !8844

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i82
  %.sroa.9.131.i84 = phi ptr [ %.sroa.9.0.i61, %.lr.ph.i82 ], [ %i.ie, %bb.ai ] ; 6 uses
  %.sroa.27.130.i85 = phi i64 [ %.sroa.27.0.i60, %.lr.ph.i82 ], [ %i.id, %bb.ai ] ; 2 uses
  %.sroa.43.129.i86 = phi ptr [ %.sroa.43.0.i59, %.lr.ph.i82 ], [ %i.ia, %bb.ai ] ; 4 uses
    #dbg_value(ptr %.sroa.9.131.i84, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(i64 %.sroa.27.130.i85, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %.sroa.43.129.i86, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %.val50.i87 = load i64, ptr %.sroa.9.131.i84, align 8, !dbg !8845, !alias.scope !8549, !noalias !8489, !noundef !584
    #dbg_value(ptr poison, !8550, !DIExpression(DW_OP_deref, DW_OP_deref), !8055)
    #dbg_value(ptr poison, !8553, !DIExpression(), !8055)
    #dbg_value(ptr poison, !8554, !DIExpression(), !8055)
    #dbg_value(ptr poison, !1898, !DIExpression(), !8057)
    #dbg_value(ptr poison, !1901, !DIExpression(), !8057)
    #dbg_value(ptr poison, !1907, !DIExpression(), !8059)
    #dbg_value(ptr poison, !1911, !DIExpression(), !8060)
  %i.hh = icmp uge i64 %.val51.i83, %.val50.i87, !dbg !8846 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !8014)
    #dbg_value(i1 %i.hh, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8014)
    #dbg_value(i64 1, !8434, !DIExpression(), !8062)
    #dbg_value(i64 1, !8437, !DIExpression(), !8064)
    #dbg_value(i64 1, !8441, !DIExpression(), !8066)
    #dbg_value(ptr %.sroa.43.129.i86, !8435, !DIExpression(), !8062)
  %i.hi = getelementptr inbounds i8, ptr %.sroa.43.129.i86, i64 -16, !dbg !8847
    #dbg_value(ptr %i.hi, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %.sroa.01.0.i.i88 = select i1 %i.hh, ptr %2, ptr %i.hi, !dbg !8848
    #dbg_value(ptr %.sroa.01.0.i.i88, !8444, !DIExpression(), !8068)
    #dbg_value(ptr %.sroa.01.0.i.i88, !8403, !DIExpression(), !8069)
    #dbg_value(i64 %.sroa.27.130.i85, !8445, !DIExpression(), !8068)
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i88, i64 %.sroa.27.130.i85, !dbg !8849
    #dbg_value(ptr %i.hj, !8404, !DIExpression(), !8070)
    #dbg_value(ptr %i.hj, !8439, !DIExpression(), !8064)
    #dbg_value(ptr %.sroa.9.131.i84, !8438, !DIExpression(), !8064)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i84, i64 16, i1 false), !dbg !8850, !alias.scope !8556, !noalias !8557
  %i.hk = zext i1 %i.hh to i64, !dbg !8851
  %i.hl = add i64 %.sroa.27.130.i85, %i.hk, !dbg !8852 ; 2 uses
    #dbg_value(i64 %i.hl, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %.sroa.9.131.i84, !8442, !DIExpression(), !8066)
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i84, i64 16, !dbg !8853 ; 2 uses
    #dbg_value(ptr %i.hm, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
  %.val48.i89 = load i64, ptr %i.hm, align 8, !dbg !8854, !alias.scope !8549, !noalias !8489, !noundef !584
    #dbg_value(ptr poison, !8550, !DIExpression(DW_OP_deref, DW_OP_deref), !8074)
    #dbg_value(ptr poison, !8553, !DIExpression(), !8074)
    #dbg_value(ptr poison, !8554, !DIExpression(), !8074)
    #dbg_value(ptr poison, !1898, !DIExpression(), !8076)
    #dbg_value(ptr poison, !1901, !DIExpression(), !8076)
    #dbg_value(ptr poison, !1907, !DIExpression(), !8078)
    #dbg_value(ptr poison, !1911, !DIExpression(), !8079)
  %i.hn = icmp uge i64 %.val51.i83, %.val48.i89, !dbg !8855 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !8012)
    #dbg_value(i1 %i.hn, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8012)
    #dbg_value(i64 1, !8434, !DIExpression(), !8081)
    #dbg_value(i64 1, !8437, !DIExpression(), !8083)
    #dbg_value(i64 1, !8441, !DIExpression(), !8085)
    #dbg_value(ptr %i.hi, !8435, !DIExpression(), !8081)
  %i.ho = getelementptr inbounds i8, ptr %.sroa.43.129.i86, i64 -32, !dbg !8856
    #dbg_value(ptr %i.ho, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %.sroa.01.0.i52.i90 = select i1 %i.hn, ptr %2, ptr %i.ho, !dbg !8857
    #dbg_value(ptr %.sroa.01.0.i52.i90, !8444, !DIExpression(), !8087)
    #dbg_value(ptr %.sroa.01.0.i52.i90, !8403, !DIExpression(), !8088)
    #dbg_value(i64 %i.hl, !8445, !DIExpression(), !8087)
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i52.i90, i64 %i.hl, !dbg !8858
    #dbg_value(ptr %i.hp, !8404, !DIExpression(), !8089)
    #dbg_value(ptr %i.hp, !8439, !DIExpression(), !8083)
    #dbg_value(ptr %i.hm, !8438, !DIExpression(), !8083)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i64 16, i1 false), !dbg !8859, !alias.scope !8556, !noalias !8558
  %i.hq = zext i1 %i.hn to i64, !dbg !8860
  %i.hr = add i64 %i.hl, %i.hq, !dbg !8861        ; 2 uses
    #dbg_value(i64 %i.hr, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %i.hm, !8442, !DIExpression(), !8085)
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i84, i64 32, !dbg !8862 ; 2 uses
    #dbg_value(ptr %i.hs, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
  %.val46.i91 = load i64, ptr %i.hs, align 8, !dbg !8863, !alias.scope !8549, !noalias !8489, !noundef !584
    #dbg_value(ptr poison, !8550, !DIExpression(DW_OP_deref, DW_OP_deref), !8093)
    #dbg_value(ptr poison, !8553, !DIExpression(), !8093)
    #dbg_value(ptr poison, !8554, !DIExpression(), !8093)
    #dbg_value(ptr poison, !1898, !DIExpression(), !8095)
    #dbg_value(ptr poison, !1901, !DIExpression(), !8095)
    #dbg_value(ptr poison, !1907, !DIExpression(), !8097)
    #dbg_value(ptr poison, !1911, !DIExpression(), !8098)
  %i.ht = icmp uge i64 %.val51.i83, %.val46.i91, !dbg !8864 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !8010)
    #dbg_value(i1 %i.ht, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8010)
    #dbg_value(i64 1, !8434, !DIExpression(), !8100)
    #dbg_value(i64 1, !8437, !DIExpression(), !8102)
    #dbg_value(i64 1, !8441, !DIExpression(), !8104)
    #dbg_value(ptr %i.ho, !8435, !DIExpression(), !8100)
  %i.hu = getelementptr inbounds i8, ptr %.sroa.43.129.i86, i64 -48, !dbg !8865
    #dbg_value(ptr %i.hu, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %.sroa.01.0.i53.i92 = select i1 %i.ht, ptr %2, ptr %i.hu, !dbg !8866
    #dbg_value(ptr %.sroa.01.0.i53.i92, !8444, !DIExpression(), !8106)
    #dbg_value(ptr %.sroa.01.0.i53.i92, !8403, !DIExpression(), !8107)
    #dbg_value(i64 %i.hr, !8445, !DIExpression(), !8106)
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i53.i92, i64 %i.hr, !dbg !8867
    #dbg_value(ptr %i.hv, !8404, !DIExpression(), !8108)
    #dbg_value(ptr %i.hv, !8439, !DIExpression(), !8102)
    #dbg_value(ptr %i.hs, !8438, !DIExpression(), !8102)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false), !dbg !8868, !alias.scope !8556, !noalias !8559
  %i.hw = zext i1 %i.ht to i64, !dbg !8869
  %i.hx = add i64 %i.hr, %i.hw, !dbg !8870        ; 2 uses
    #dbg_value(i64 %i.hx, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %i.hs, !8442, !DIExpression(), !8104)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i84, i64 48, !dbg !8871 ; 2 uses
    #dbg_value(ptr %i.hy, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
  %.val44.i93 = load i64, ptr %i.hy, align 8, !dbg !8872, !alias.scope !8549, !noalias !8489, !noundef !584
    #dbg_value(ptr poison, !8550, !DIExpression(DW_OP_deref, DW_OP_deref), !8112)
    #dbg_value(ptr poison, !8553, !DIExpression(), !8112)
    #dbg_value(ptr poison, !8554, !DIExpression(), !8112)
    #dbg_value(ptr poison, !1898, !DIExpression(), !8114)
    #dbg_value(ptr poison, !1901, !DIExpression(), !8114)
    #dbg_value(ptr poison, !1907, !DIExpression(), !8116)
    #dbg_value(ptr poison, !1911, !DIExpression(), !8117)
  %i.hz = icmp uge i64 %.val51.i83, %.val44.i93, !dbg !8873 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !8008)
    #dbg_value(i1 %i.hz, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8008)
    #dbg_value(i64 1, !8434, !DIExpression(), !8119)
    #dbg_value(i64 1, !8437, !DIExpression(), !8121)
    #dbg_value(i64 1, !8441, !DIExpression(), !8123)
    #dbg_value(ptr %i.hu, !8435, !DIExpression(), !8119)
  %i.ia = getelementptr inbounds i8, ptr %.sroa.43.129.i86, i64 -64, !dbg !8874 ; 3 uses
    #dbg_value(ptr %i.ia, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %.sroa.01.0.i54.i94 = select i1 %i.hz, ptr %2, ptr %i.ia, !dbg !8875
    #dbg_value(ptr %.sroa.01.0.i54.i94, !8444, !DIExpression(), !8125)
    #dbg_value(ptr %.sroa.01.0.i54.i94, !8403, !DIExpression(), !8126)
    #dbg_value(i64 %i.hx, !8445, !DIExpression(), !8125)
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i54.i94, i64 %i.hx, !dbg !8876
    #dbg_value(ptr %i.ib, !8404, !DIExpression(), !8127)
    #dbg_value(ptr %i.ib, !8439, !DIExpression(), !8121)
    #dbg_value(ptr %i.hy, !8438, !DIExpression(), !8121)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i64 16, i1 false), !dbg !8877, !alias.scope !8556, !noalias !8560
  %i.ic = zext i1 %i.hz to i64, !dbg !8878
  %i.id = add i64 %i.hx, %i.ic, !dbg !8879        ; 2 uses
    #dbg_value(i64 %i.id, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %i.hy, !8442, !DIExpression(), !8123)
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i84, i64 64, !dbg !8880 ; 3 uses
    #dbg_value(ptr %i.ie, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(i64 %i.id, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %i.ia, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %i.if = icmp ult ptr %i.ie, %i.hf, !dbg !8844
  br i1 %i.if, label %bb.ai, label %._crit_edge.i63, !dbg !8844

._crit_edge.i63:                                  ; preds = %bb.ai, %bb.ah
  %.sroa.43.1.lcssa.i64 = phi ptr [ %.sroa.43.0.i59, %bb.ah ], [ %i.ia, %bb.ai ], !dbg !8841 ; 2 uses
  %.sroa.27.1.lcssa.i65 = phi i64 [ %.sroa.27.0.i60, %bb.ah ], [ %i.id, %bb.ai ], !dbg !8841 ; 2 uses
  %.sroa.9.1.lcssa.i66 = phi ptr [ %.sroa.9.0.i61, %bb.ah ], [ %i.ie, %bb.ai ], !dbg !8841 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i62, !8525, !DIExpression(), !8042)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph142, i64 %.sroa.0.0.i62, !dbg !8881 ; 2 uses
    #dbg_value(ptr %i.ig, !8518, !DIExpression(), !8130)
    #dbg_value(ptr %.sroa.9.1.lcssa.i66, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(i64 %.sroa.27.1.lcssa.i65, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %.sroa.43.1.lcssa.i64, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %i.ih = icmp ult ptr %.sroa.9.1.lcssa.i66, %i.ig, !dbg !8882
  br i1 %i.ih, label %.lr.ph38.i75, label %._crit_edge39.i67, !dbg !8882

.lr.ph38.i75:                                     ; preds = %._crit_edge.i63
  %.val43.i76 = load i64, ptr %i.er, align 8, !alias.scope !8549, !noalias !8489, !noundef !584
  br label %.lr.ph38.i75.a, !dbg !8882

._crit_edge39.i67:                                ; preds = %.lr.ph38.i75.a, %._crit_edge.i63
  %.sroa.43.2.lcssa.i68 = phi ptr [ %.sroa.43.1.lcssa.i64, %._crit_edge.i63 ], [ %i.ik, %.lr.ph38.i75.a ], !dbg !8841
  %.sroa.27.2.lcssa.i69 = phi i64 [ %.sroa.27.1.lcssa.i65, %._crit_edge.i63 ], [ %i.in, %.lr.ph38.i75.a ], !dbg !8841 ; 10 uses
  %.sroa.9.2.lcssa.i70 = phi ptr [ %.sroa.9.1.lcssa.i66, %._crit_edge.i63 ], [ %i.io, %.lr.ph38.i75.a ], !dbg !8841 ; 2 uses
  %i.ii = icmp eq i64 %.sroa.0.0.i62, %.sroa.16.0135308, !dbg !8883
  br i1 %i.ii, label %bb.ak, label %bb.aj, !dbg !8883

.lr.ph38.i75.a:                                   ; preds = %.lr.ph38.i75.a, %.lr.ph38.i75
  %.sroa.9.236.i76 = phi ptr [ %.sroa.9.1.lcssa.i66, %.lr.ph38.i75 ], [ %i.io, %.lr.ph38.i75.a ] ; 3 uses
  %.sroa.27.235.i77 = phi i64 [ %.sroa.27.1.lcssa.i65, %.lr.ph38.i75 ], [ %i.in, %.lr.ph38.i75.a ] ; 2 uses
  %.sroa.43.234.i78 = phi ptr [ %.sroa.43.1.lcssa.i64, %.lr.ph38.i75 ], [ %i.ik, %.lr.ph38.i75.a ]
    #dbg_value(ptr %.sroa.9.236.i76, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(i64 %.sroa.27.235.i77, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %.sroa.43.234.i78, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %.val43.i80 = load i64, ptr %.sroa.9.236.i76, align 8, !dbg !8884, !alias.scope !8549, !noalias !8489, !noundef !584
    #dbg_value(ptr poison, !8550, !DIExpression(DW_OP_deref, DW_OP_deref), !8132)
    #dbg_value(ptr poison, !8553, !DIExpression(), !8132)
    #dbg_value(ptr poison, !8554, !DIExpression(), !8132)
    #dbg_value(ptr poison, !1898, !DIExpression(), !8134)
    #dbg_value(ptr poison, !1901, !DIExpression(), !8134)
    #dbg_value(ptr poison, !1907, !DIExpression(), !8136)
    #dbg_value(ptr poison, !1911, !DIExpression(), !8137)
  %i.ij = icmp uge i64 %.val43.i76, %.val43.i80, !dbg !8885 ; 2 uses
    #dbg_value(ptr undef, !8398, !DIExpression(), !8006)
    #dbg_value(i1 %i.ij, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8006)
    #dbg_value(i64 1, !8434, !DIExpression(), !8139)
    #dbg_value(i64 1, !8437, !DIExpression(), !8141)
    #dbg_value(i64 1, !8441, !DIExpression(), !8143)
    #dbg_value(ptr %.sroa.43.234.i78, !8435, !DIExpression(), !8139)
  %i.ik = getelementptr inbounds i8, ptr %.sroa.43.234.i78, i64 -16, !dbg !8886 ; 3 uses
    #dbg_value(ptr %i.ik, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %.sroa.01.0.i55.i81 = select i1 %i.ij, ptr %2, ptr %i.ik, !dbg !8887
    #dbg_value(ptr %.sroa.01.0.i55.i81, !8444, !DIExpression(), !8145)
    #dbg_value(ptr %.sroa.01.0.i55.i81, !8403, !DIExpression(), !8146)
    #dbg_value(i64 %.sroa.27.235.i77, !8445, !DIExpression(), !8145)
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i55.i81, i64 %.sroa.27.235.i77, !dbg !8888
    #dbg_value(ptr %i.il, !8404, !DIExpression(), !8147)
    #dbg_value(ptr %i.il, !8439, !DIExpression(), !8141)
    #dbg_value(ptr %.sroa.9.236.i76, !8438, !DIExpression(), !8141)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i76, i64 16, i1 false), !dbg !8889, !alias.scope !8556, !noalias !8561
  %i.im = zext i1 %i.ij to i64, !dbg !8890
  %i.in = add i64 %.sroa.27.235.i77, %i.im, !dbg !8891 ; 2 uses
    #dbg_value(i64 %i.in, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %.sroa.9.236.i76, !8442, !DIExpression(), !8143)
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i76, i64 16, !dbg !8892 ; 3 uses
    #dbg_value(ptr %i.io, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(i64 %i.in, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %i.ik, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
  %i.ip = icmp ult ptr %i.io, %i.ig, !dbg !8882
  br i1 %i.ip, label %.lr.ph38.i75.a, label %._crit_edge39.i67, !dbg !8882

bb.aj:                                            ; preds = %._crit_edge39.i67
    #dbg_value(ptr undef, !8398, !DIExpression(), !8004)
    #dbg_value(i1 true, !8402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8004)
    #dbg_value(i64 1, !8434, !DIExpression(), !8151)
    #dbg_value(i64 1, !8437, !DIExpression(), !8153)
    #dbg_value(i64 1, !8441, !DIExpression(), !8155)
    #dbg_value(ptr %.sroa.43.2.lcssa.i68, !8435, !DIExpression(), !8151)
  %i.iq = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i68, i64 -16, !dbg !8893
    #dbg_value(ptr %i.iq, !8514, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8049)
    #dbg_value(ptr %2, !8444, !DIExpression(), !8157)
    #dbg_value(ptr %2, !8403, !DIExpression(), !8158)
    #dbg_value(i64 %.sroa.27.2.lcssa.i69, !8445, !DIExpression(), !8157)
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i69, !dbg !8894
    #dbg_value(ptr %i.ir, !8404, !DIExpression(), !8159)
    #dbg_value(ptr %i.ir, !8439, !DIExpression(), !8153)
    #dbg_value(ptr %.sroa.9.2.lcssa.i70, !8438, !DIExpression(), !8153)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i70, i64 16, i1 false), !dbg !8895, !alias.scope !8556, !noalias !8562
  %i.is = add i64 %.sroa.27.2.lcssa.i69, 1, !dbg !8896
    #dbg_value(i64 %i.is, !8514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8049)
    #dbg_value(ptr %.sroa.9.2.lcssa.i70, !8442, !DIExpression(), !8155)
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i70, i64 16, !dbg !8897
    #dbg_value(ptr %i.it, !8514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8049)
    #dbg_value(ptr poison, !8515, !DIExpression(), !8050)
    #dbg_value(ptr poison, !8533, !DIExpression(), !8025)
    #dbg_value(i64 %.sroa.16.0135308, !8507, !DIExpression(), !8015)
    #dbg_value(i64 %.sroa.16.0135308, !8516, !DIExpression(), !8016)
    #dbg_value(i64 %.sroa.16.0135308, !8525, !DIExpression(), !8019)
  br label %bb.ah, !dbg !8839

bb.ak:                                            ; preds = %._crit_edge39.i67
    #dbg_value(ptr %.sroa.0.0.ph142, !8519, !DIExpression(), !8162)
    #dbg_value(ptr %.sroa.0.0.ph142, !8533, !DIExpression(), !8164)
    #dbg_value(ptr %.sroa.0.0.ph142, !8546, !DIExpression(), !8166)
    #dbg_value(ptr %2, !8532, !DIExpression(), !8164)
    #dbg_value(i64 %.sroa.27.2.lcssa.i69, !8534, !DIExpression(), !8164)
  %i.iu = shl nuw nsw i64 %.sroa.27.2.lcssa.i69, 4, !dbg !8898
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph142, ptr nonnull align 8 %2, i64 %i.iu, i1 false), !dbg !8898, !alias.scope !8556
  %i.iv = sub i64 %.sroa.16.0135308, %.sroa.27.2.lcssa.i69, !dbg !8899 ; 6 uses
    #dbg_value(i64 0, !8520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8167)
    #dbg_value(i64 %i.iv, !8520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8167)
    #dbg_value(ptr undef, !8496, !DIExpression(), !8002)
    #dbg_value(ptr undef, !8493, !DIExpression(), !8001)
    #dbg_value(ptr undef, !8490, !DIExpression(), !8000)
    #dbg_value(ptr undef, !8491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8168)
  %.not47.i71 = icmp eq i64 %.sroa.16.0135308, %.sroa.27.2.lcssa.i69, !dbg !8900
  br i1 %.not47.i71, label %.outer._crit_edge.thread, label %.lr.ph45.i72, !dbg !8901

.lr.ph45.i72:                                     ; preds = %bb.ak
  %i.iw = getelementptr [16 x i8], ptr %.sroa.0.0.ph142, i64 %.sroa.27.2.lcssa.i69 ; 3 uses
  %.neg407 = add i64 %.sroa.27.2.lcssa.i69, 1, !dbg !8901
  %xtraiter402 = and i64 %i.iv, 1, !dbg !8901
  %i.ix = icmp eq i64 %.sroa.16.0135308, %.neg407, !dbg !8901
  br i1 %i.ix, label %.epil.preheader395, label %.lr.ph45.i72.new, !dbg !8901

.lr.ph45.i72.new:                                 ; preds = %.lr.ph45.i72
  %unroll_iter405 = and i64 %i.iv, -2, !dbg !8901
  br label %bb.al, !dbg !8901

bb.al:                                            ; preds = %bb.al, %.lr.ph45.i72.new
  %.sroa.07.043.i73 = phi i64 [ 0, %.lr.ph45.i72.new ], [ %i.jb, %bb.al ] ; 5 uses
  %niter406 = phi i64 [ 0, %.lr.ph45.i72.new ], [ %niter406.next.1, %bb.al ]
    #dbg_value(i64 %.sroa.07.043.i73, !8494, !DIExpression(), !8169)
    #dbg_value(i64 %.sroa.07.043.i73, !8537, !DIExpression(), !8028)
    #dbg_value(i64 %.sroa.07.043.i73, !8540, !DIExpression(), !8031)
    #dbg_value(i64 %.sroa.07.043.i73, !8520, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8167)
    #dbg_value(i64 %.sroa.07.043.i73, !8521, !DIExpression(), !8170)
  %i.iy = xor i64 %.sroa.07.043.i73, -1, !dbg !8902
    #dbg_value(!DIArgList(i64 %.sroa.16.0135308, i64 %i.iy), !8547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8046)
  %i.iz = getelementptr [16 x i8], ptr %i.hd, i64 %i.iy, !dbg !8903
    #dbg_value(ptr %i.iz, !8532, !DIExpression(), !8033)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i69, i64 %.sroa.07.043.i73), !8547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8166)
  %i.ja = getelementptr [16 x i8], ptr %i.iw, i64 %.sroa.07.043.i73, !dbg !8904
    #dbg_value(ptr %i.ja, !8533, !DIExpression(), !8033)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.iz, i64 16, i1 false), !dbg !8905, !alias.scope !8556
    #dbg_value(ptr undef, !8496, !DIExpression(), !8002)
    #dbg_value(ptr undef, !8493, !DIExpression(), !8001)
    #dbg_value(ptr undef, !8490, !DIExpression(), !8000)
    #dbg_value(ptr undef, !8491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8168)
    #dbg_value(i64 %.sroa.07.043.i73, !8494, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8169)
    #dbg_value(i64 %.sroa.07.043.i73, !8537, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8028)
    #dbg_value(i64 %.sroa.07.043.i73, !8540, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8031)
  %i.jb = add nuw i64 %.sroa.07.043.i73, 2, !dbg !8906 ; 2 uses
    #dbg_value(i64 %i.jb, !8520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8167)
    #dbg_value(i64 %.sroa.07.043.i73, !8521, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !8170)
  %i.jc = xor i64 %.sroa.07.043.i73, -2, !dbg !8902
    #dbg_value(!DIArgList(i64 %.sroa.16.0135308, i64 %i.jc), !8547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8046)
  %i.jd = getelementptr [16 x i8], ptr %i.hd, i64 %i.jc, !dbg !8903
    #dbg_value(ptr %i.jd, !8532, !DIExpression(), !8033)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i69, i64 %.sroa.07.043.i73), !8547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_or, DW_OP_plus, DW_OP_stack_value), !8166)
  %i.je = getelementptr [16 x i8], ptr %i.iw, i64 %.sroa.07.043.i73, !dbg !8904
  %i.jf = getelementptr i8, ptr %i.je, i64 16, !dbg !8904
    #dbg_value(ptr %i.jf, !8533, !DIExpression(), !8033)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.jd, i64 16, i1 false), !dbg !8905, !alias.scope !8556
  %niter406.next.1 = add i64 %niter406, 2, !dbg !8901 ; 2 uses
  %niter406.ncmp.1 = icmp eq i64 %niter406.next.1, %unroll_iter405, !dbg !8901
  br i1 %niter406.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyyENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs1z_NtNtNtB1L_11collections5btree3mapINtB2x_8BTreeMapyyEINtNtBa_7convert4FromAB1d_j4_E4from0E0E0ECs3f36owOmepS_6quiche.exit.unr-lcssa, label %bb.al, !dbg !8901

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyyENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs1z_NtNtNtB1L_11collections5btree3mapINtB2x_8BTreeMapyyEINtNtBa_7convert4FromAB1d_j4_E4from0E0E0ECs3f36owOmepS_6quiche.exit.unr-lcssa: ; preds = %bb.al
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0, !dbg !8901
  br i1 %lcmp.mod403.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyyENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs1z_NtNtNtB1L_11collections5btree3mapINtB2x_8BTreeMapyyEINtNtBa_7convert4FromAB1d_j4_E4from0E0E0ECs3f36owOmepS_6quiche.exit, label %.epil.preheader395, !dbg !8901

.epil.preheader395:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyyENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs1z_NtNtNtB1L_11collections5btree3mapINtB2x_8BTreeMapyyEINtNtBa_7convert4FromAB1d_j4_E4from0E0E0ECs3f36owOmepS_6quiche.exit.unr-lcssa, %.lr.ph45.i72
  %.sroa.07.043.i73.epil.init = phi i64 [ 0, %.lr.ph45.i72 ], [ %i.jb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyyENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs1z_NtNtNtB1L_11collections5btree3mapINtB2x_8BTreeMapyyEINtNtBa_7convert4FromAB1d_j4_E4from0E0E0ECs3f36owOmepS_6quiche.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod404 = trunc i64 %i.iv to i1, !dbg !8901
  call void @llvm.assume(i1 %lcmp.mod404), !dbg !8901
    #dbg_value(i64 %.sroa.07.043.i73.epil.init, !8494, !DIExpression(), !8169)
    #dbg_value(i64 %.sroa.07.043.i73.epil.init, !8537, !DIExpression(), !8028)
    #dbg_value(i64 %.sroa.07.043.i73.epil.init, !8540, !DIExpression(), !8031)
    #dbg_value(i64 %.sroa.07.043.i73.epil.init, !8520, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8167)
    #dbg_value(i64 %.sroa.07.043.i73.epil.init, !8521, !DIExpression(), !8170)
  %i.jg = xor i64 %.sroa.07.043.i73.epil.init, -1, !dbg !8902
    #dbg_value(!DIArgList(i64 %.sroa.16.0135308, i64 %i.jg), !8547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8046)
  %i.jh = getelementptr [16 x i8], ptr %i.hd, i64 %i.jg, !dbg !8903
    #dbg_value(ptr %i.jh, !8532, !DIExpression(), !8033)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i69, i64 %.sroa.07.043.i73.epil.init), !8547, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8166)
  %i.ji = getelementptr [16 x i8], ptr %i.iw, i64 %.sroa.07.043.i73.epil.init, !dbg !8904
    #dbg_value(ptr %i.ji, !8533, !DIExpression(), !8033)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i64 16, i1 false), !dbg !8905, !alias.scope !8556
    #dbg_value(ptr undef, !8496, !DIExpression(), !8002)
    #dbg_value(ptr undef, !8493, !DIExpression(), !8001)
    #dbg_value(ptr undef, !8490, !DIExpression(), !8000)
    #dbg_value(ptr undef, !8491, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8168)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyyENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs1z_NtNtNtB1L_11collections5btree3mapINtB2x_8BTreeMapyyEINtNtBa_7convert4FromAB1d_j4_E4from0E0E0ECs3f36owOmepS_6quiche.exit, !dbg !8907

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyyENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs1z_NtNtNtB1L_11collections5btree3mapINtB2x_8BTreeMapyyEINtNtBa_7convert4FromAB1d_j4_E4from0E0E0ECs3f36owOmepS_6quiche.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTyyENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs1z_NtNtNtB1L_11collections5btree3mapINtB2x_8BTreeMapyyEINtNtBa_7convert4FromAB1d_j4_E4from0E0E0ECs3f36owOmepS_6quiche.exit.unr-lcssa, %.epil.preheader395
    #dbg_value(i64 %.sroa.27.2.lcssa.i69, !8195, !DIExpression(), !8563)
    #dbg_value(i64 %.sroa.27.2.lcssa.i69, !8202, !DIExpression(), !8205)
    #dbg_value(i64 %.sroa.27.2.lcssa.i69, !8207, !DIExpression(), !8211)
    #dbg_value(i64 %.sroa.27.2.lcssa.i69, !8564, !DIExpression(), !8569)
  %i.jj = icmp ugt i64 %.sroa.27.2.lcssa.i69, %.sroa.16.0135308, !dbg !8907
  br i1 %i.jj, label %bb.am, label %.outer, !dbg !8907, !prof !1050

.outer._crit_edge.thread:                         ; preds = %bb.ak
    #dbg_value(i64 poison, !8195, !DIExpression(), !8563)
    #dbg_value(i64 poison, !8202, !DIExpression(), !8205)
    #dbg_value(i64 poison, !8207, !DIExpression(), !8211)
    #dbg_value(i64 poison, !8564, !DIExpression(), !8569)
    #dbg_value(i64 poison, !8208, !DIExpression(), !8570)
    #dbg_value(i64 poison, !8566, !DIExpression(), !8569)
    #dbg_value(ptr poison, !8565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8569)
    #dbg_value(i64 poison, !8565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8569)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !8183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8199)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !8196, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8200)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !8201, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8205)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !8206, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8211)
    #dbg_value(i64 poison, !8183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8199)
    #dbg_value(i64 poison, !8196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8200)
    #dbg_value(i64 poison, !8201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8205)
    #dbg_value(i64 poison, !8206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8211)
    #dbg_value(ptr null, !8186, !DIExpression(), !8199)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8835
    #dbg_value(!DIArgList(ptr poison, i64 poison), !8206, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8211)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !8201, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8205)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !8196, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8200)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !8183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8199)
    #dbg_value(i64 poison, !8206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8211)
    #dbg_value(i64 poison, !8201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8205)
    #dbg_value(i64 poison, !8196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8200)
    #dbg_value(i64 poison, !8183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8199)
    #dbg_value(i32 %i.ed, !8185, !DIExpression(), !8199)
    #dbg_value(i64 poison, !8188, !DIExpression(), !8213)
    #dbg_value(ptr poison, !8214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7174)
    #dbg_value(i64 poison, !8214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7174)
    #dbg_value(ptr %2, !8216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7174)
    #dbg_value(i64 %3, !8216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7174)
    #dbg_value(ptr %6, !8217, !DIExpression(), !7174)
    #dbg_value(ptr poison, !2095, !DIExpression(), !7202)
    #dbg_value(ptr poison, !2100, !DIExpression(), !7203)
    #dbg_value(ptr poison, !8264, !DIExpression(), !7211)
    #dbg_value(ptr poison, !8267, !DIExpression(), !7212)
    #dbg_value(ptr poison, !8270, !DIExpression(), !7213)
    #dbg_value(ptr poison, !8222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7214)
end_hunk_1
