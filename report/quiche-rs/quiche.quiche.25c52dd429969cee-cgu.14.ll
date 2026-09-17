Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.14?download=true
inline.NumInlined: 192
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtCs3f36owOmepS_6quiche2h35qpack7decoder10decode_int:bb.a
    #dbg_value(i1 false, !11835, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11841)
    #dbg_value(i64 %i.bi, !11734, !DIExpression(), !11790)
    #dbg_value(i64 %i.bi, !11791, !DIExpression(), !11795)
    #dbg_value(i64 35, !11737, !DIExpression(), !11796)
  %i.bj = icmp sgt i8 %i.be, -1, !dbg !11872
  br i1 %i.bj, label %bb.ap, label %bb.w, !dbg !11872

bb.w:                                             ; preds = %bb.v
    #dbg_value(i64 %i.bi, !11791, !DIExpression(), !11795)
    #dbg_value(i64 %i.bi, !11734, !DIExpression(), !11790)
    #dbg_value(i64 35, !11737, !DIExpression(), !11796)
  %i.bk = load i64, ptr %i.h, align 8, !dbg !11856, !noundef !900
  %i.bl = load i64, ptr %i.i, align 8, !dbg !11857, !noundef !900
  %.not65.5 = icmp eq i64 %i.bk, %i.bl, !dbg !11858
  br i1 %.not65.5, label %bb.e, label %bb.x, !dbg !11858

bb.x:                                             ; preds = %bb.w
  %i.bm = tail call { i1, i8 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets6get_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !11863 ; 2 uses
  %i.bn = extractvalue { i1, i8 } %i.bm, 0, !dbg !11863
    #dbg_value(i1 %i.bn, !11771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11799)
    #dbg_value(i8 poison, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
  br i1 %i.bn, label %bb.h, label %bb.y, !dbg !11864

bb.y:                                             ; preds = %bb.x
  %i.bo = extractvalue { i1, i8 } %i.bm, 1, !dbg !11863 ; 2 uses
    #dbg_value(i8 %i.bo, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
    #dbg_value(i8 %i.bo, !11738, !DIExpression(), !11801)
    #dbg_value(i8 %i.bo, !11782, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !11804)
    #dbg_value(i8 %i.bo, !11806, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
    #dbg_value(i8 %i.bo, !11813, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i64 35, !11809, !DIExpression(), !11812)
    #dbg_value(i64 35, !11816, !DIExpression(), !11819)
  %i.bp = and i8 %i.bo, 127, !dbg !11869
    #dbg_value(i8 %i.bp, !11782, !DIExpression(), !11804)
    #dbg_value(i8 %i.bp, !11813, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i8 %i.bp, !11806, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
  %i.bq = zext nneg i8 %i.bp to i64, !dbg !11870
    #dbg_value(i64 %i.bq, !11806, !DIExpression(), !11812)
    #dbg_value(i64 %i.bq, !11813, !DIExpression(), !11819)
  %i.br = shl nuw nsw i64 %i.bq, 35, !dbg !11873
    #dbg_value(i64 %i.br, !11741, !DIExpression(), !11833)
    #dbg_value(i64 %i.br, !11792, !DIExpression(), !11795)
  %i.bs = add nuw nsw i64 %i.br, %i.bi, !dbg !11871 ; 2 uses
    #dbg_value(i1 false, !11835, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11841)
    #dbg_value(i64 %i.bs, !11734, !DIExpression(), !11790)
    #dbg_value(i64 %i.bs, !11791, !DIExpression(), !11795)
    #dbg_value(i64 42, !11737, !DIExpression(), !11796)
  %i.bt = icmp sgt i8 %i.bo, -1, !dbg !11872
  br i1 %i.bt, label %bb.ap, label %bb.z, !dbg !11872

bb.z:                                             ; preds = %bb.y
    #dbg_value(i64 %i.bs, !11791, !DIExpression(), !11795)
    #dbg_value(i64 %i.bs, !11734, !DIExpression(), !11790)
    #dbg_value(i64 42, !11737, !DIExpression(), !11796)
  %i.bu = load i64, ptr %i.h, align 8, !dbg !11856, !noundef !900
  %i.bv = load i64, ptr %i.i, align 8, !dbg !11857, !noundef !900
  %.not65.6 = icmp eq i64 %i.bu, %i.bv, !dbg !11858
  br i1 %.not65.6, label %bb.e, label %bb.aa, !dbg !11858

bb.aa:                                            ; preds = %bb.z
  %i.bw = tail call { i1, i8 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets6get_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !11863 ; 2 uses
  %i.bx = extractvalue { i1, i8 } %i.bw, 0, !dbg !11863
    #dbg_value(i1 %i.bx, !11771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11799)
    #dbg_value(i8 poison, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
  br i1 %i.bx, label %bb.h, label %bb.ab, !dbg !11864

bb.ab:                                            ; preds = %bb.aa
  %i.by = extractvalue { i1, i8 } %i.bw, 1, !dbg !11863 ; 2 uses
    #dbg_value(i8 %i.by, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
    #dbg_value(i8 %i.by, !11738, !DIExpression(), !11801)
    #dbg_value(i8 %i.by, !11782, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !11804)
    #dbg_value(i8 %i.by, !11806, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
    #dbg_value(i8 %i.by, !11813, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i64 42, !11809, !DIExpression(), !11812)
    #dbg_value(i64 42, !11816, !DIExpression(), !11819)
  %i.bz = and i8 %i.by, 127, !dbg !11869
    #dbg_value(i8 %i.bz, !11782, !DIExpression(), !11804)
    #dbg_value(i8 %i.bz, !11813, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i8 %i.bz, !11806, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
  %i.ca = zext nneg i8 %i.bz to i64, !dbg !11870
    #dbg_value(i64 %i.ca, !11806, !DIExpression(), !11812)
    #dbg_value(i64 %i.ca, !11813, !DIExpression(), !11819)
  %i.cb = shl nuw nsw i64 %i.ca, 42, !dbg !11873
    #dbg_value(i64 %i.cb, !11741, !DIExpression(), !11833)
    #dbg_value(i64 %i.cb, !11792, !DIExpression(), !11795)
  %i.cc = add nuw nsw i64 %i.cb, %i.bs, !dbg !11871 ; 2 uses
    #dbg_value(i1 false, !11835, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11841)
    #dbg_value(i64 %i.cc, !11734, !DIExpression(), !11790)
    #dbg_value(i64 %i.cc, !11791, !DIExpression(), !11795)
    #dbg_value(i64 49, !11737, !DIExpression(), !11796)
  %i.cd = icmp sgt i8 %i.by, -1, !dbg !11872
  br i1 %i.cd, label %bb.ap, label %bb.ac, !dbg !11872

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(i64 %i.cc, !11791, !DIExpression(), !11795)
    #dbg_value(i64 %i.cc, !11734, !DIExpression(), !11790)
    #dbg_value(i64 49, !11737, !DIExpression(), !11796)
  %i.ce = load i64, ptr %i.h, align 8, !dbg !11856, !noundef !900
  %i.cf = load i64, ptr %i.i, align 8, !dbg !11857, !noundef !900
  %.not65.7 = icmp eq i64 %i.ce, %i.cf, !dbg !11858
  br i1 %.not65.7, label %bb.e, label %bb.ad, !dbg !11858

bb.ad:                                            ; preds = %bb.ac
  %i.cg = tail call { i1, i8 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets6get_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !11863 ; 2 uses
  %i.ch = extractvalue { i1, i8 } %i.cg, 0, !dbg !11863
    #dbg_value(i1 %i.ch, !11771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11799)
    #dbg_value(i8 poison, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
  br i1 %i.ch, label %bb.h, label %bb.ae, !dbg !11864

bb.ae:                                            ; preds = %bb.ad
  %i.ci = extractvalue { i1, i8 } %i.cg, 1, !dbg !11863 ; 2 uses
    #dbg_value(i8 %i.ci, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
    #dbg_value(i8 %i.ci, !11738, !DIExpression(), !11801)
    #dbg_value(i8 %i.ci, !11782, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !11804)
    #dbg_value(i8 %i.ci, !11806, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
    #dbg_value(i8 %i.ci, !11813, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i64 49, !11809, !DIExpression(), !11812)
    #dbg_value(i64 49, !11816, !DIExpression(), !11819)
  %i.cj = and i8 %i.ci, 127, !dbg !11869
    #dbg_value(i8 %i.cj, !11782, !DIExpression(), !11804)
    #dbg_value(i8 %i.cj, !11813, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i8 %i.cj, !11806, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
  %i.ck = zext nneg i8 %i.cj to i64, !dbg !11870
    #dbg_value(i64 %i.ck, !11806, !DIExpression(), !11812)
    #dbg_value(i64 %i.ck, !11813, !DIExpression(), !11819)
  %i.cl = shl nuw nsw i64 %i.ck, 49, !dbg !11873
    #dbg_value(i64 %i.cl, !11741, !DIExpression(), !11833)
    #dbg_value(i64 %i.cl, !11792, !DIExpression(), !11795)
  %i.cm = add nuw nsw i64 %i.cl, %i.cc, !dbg !11871 ; 2 uses
    #dbg_value(i1 false, !11835, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11841)
    #dbg_value(i64 %i.cm, !11734, !DIExpression(), !11790)
    #dbg_value(i64 %i.cm, !11791, !DIExpression(), !11795)
    #dbg_value(i64 56, !11737, !DIExpression(), !11796)
  %i.cn = icmp sgt i8 %i.ci, -1, !dbg !11872
  br i1 %i.cn, label %bb.ap, label %bb.af, !dbg !11872

bb.af:                                            ; preds = %bb.ae
    #dbg_value(i64 %i.cm, !11791, !DIExpression(), !11795)
    #dbg_value(i64 %i.cm, !11734, !DIExpression(), !11790)
    #dbg_value(i64 56, !11737, !DIExpression(), !11796)
  %i.co = load i64, ptr %i.h, align 8, !dbg !11856, !noundef !900
  %i.cp = load i64, ptr %i.i, align 8, !dbg !11857, !noundef !900
  %.not65.8 = icmp eq i64 %i.co, %i.cp, !dbg !11858
  br i1 %.not65.8, label %bb.e, label %bb.ag, !dbg !11858

bb.ag:                                            ; preds = %bb.af
  %i.cq = tail call { i1, i8 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets6get_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !11863 ; 2 uses
  %i.cr = extractvalue { i1, i8 } %i.cq, 0, !dbg !11863
    #dbg_value(i1 %i.cr, !11771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11799)
    #dbg_value(i8 poison, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
  br i1 %i.cr, label %bb.h, label %bb.ah, !dbg !11864

bb.ah:                                            ; preds = %bb.ag
  %i.cs = extractvalue { i1, i8 } %i.cq, 1, !dbg !11863 ; 2 uses
    #dbg_value(i8 %i.cs, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
    #dbg_value(i8 %i.cs, !11738, !DIExpression(), !11801)
    #dbg_value(i8 %i.cs, !11782, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !11804)
    #dbg_value(i8 %i.cs, !11806, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
    #dbg_value(i8 %i.cs, !11813, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i64 56, !11809, !DIExpression(), !11812)
    #dbg_value(i64 56, !11816, !DIExpression(), !11819)
  %i.ct = and i8 %i.cs, 127, !dbg !11869
    #dbg_value(i8 %i.ct, !11782, !DIExpression(), !11804)
    #dbg_value(i8 %i.ct, !11813, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i8 %i.ct, !11806, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
  %i.cu = zext nneg i8 %i.ct to i64, !dbg !11870
    #dbg_value(i64 %i.cu, !11806, !DIExpression(), !11812)
    #dbg_value(i64 %i.cu, !11813, !DIExpression(), !11819)
  %i.cv = shl nuw nsw i64 %i.cu, 56, !dbg !11873
    #dbg_value(i64 %i.cv, !11741, !DIExpression(), !11833)
    #dbg_value(i64 %i.cv, !11792, !DIExpression(), !11795)
  %i.cw = add nuw i64 %i.cv, %i.cm, !dbg !11871   ; 3 uses
    #dbg_value(i1 false, !11835, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11841)
    #dbg_value(i64 %i.cw, !11734, !DIExpression(), !11790)
    #dbg_value(i64 %i.cw, !11791, !DIExpression(), !11795)
    #dbg_value(i64 63, !11737, !DIExpression(), !11796)
  %i.cx = icmp sgt i8 %i.cs, -1, !dbg !11872
  br i1 %i.cx, label %bb.ap, label %bb.ai, !dbg !11872

bb.ai:                                            ; preds = %bb.ah
    #dbg_value(i64 %i.cw, !11791, !DIExpression(), !11795)
    #dbg_value(i64 %i.cw, !11734, !DIExpression(), !11790)
    #dbg_value(i64 63, !11737, !DIExpression(), !11796)
  %i.cy = load i64, ptr %i.h, align 8, !dbg !11856, !noundef !900
  %i.cz = load i64, ptr %i.i, align 8, !dbg !11857, !noundef !900
  %.not65.9 = icmp eq i64 %i.cy, %i.cz, !dbg !11858
  br i1 %.not65.9, label %bb.e, label %bb.aj, !dbg !11858

bb.aj:                                            ; preds = %bb.ai
  %i.da = tail call { i1, i8 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets6get_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !11863 ; 2 uses
  %i.db = extractvalue { i1, i8 } %i.da, 0, !dbg !11863
  %i.dc = extractvalue { i1, i8 } %i.da, 1, !dbg !11863 ; 2 uses
    #dbg_value(i1 %i.db, !11771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11799)
    #dbg_value(i8 %i.dc, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
  br i1 %i.db, label %bb.h, label %bb.ak, !dbg !11864

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(i8 %i.dc, !11738, !DIExpression(), !11801)
    #dbg_value(i64 63, !11809, !DIExpression(), !11812)
    #dbg_value(i64 63, !11816, !DIExpression(), !11819)
    #dbg_value(i8 %i.dc, !11782, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value), !11804)
    #dbg_value(i8 %i.dc, !11813, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11819)
    #dbg_value(i8 %i.dc, !11806, !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11812)
  %i.dd = zext i8 %i.dc to i64, !dbg !11870
    #dbg_value(i64 %i.dd, !11806, !DIExpression(), !11812)
    #dbg_value(i64 %i.dd, !11813, !DIExpression(), !11819)
  %i.de = shl i64 %i.dd, 63, !dbg !11873
    #dbg_value(i64 %i.de, !11741, !DIExpression(), !11833)
    #dbg_value(i64 %i.de, !11792, !DIExpression(), !11795)
  %i.df = add i64 %i.de, %i.cw, !dbg !11871       ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.cw, !dbg !11871
    #dbg_value(i1 %i.dg, !11835, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11841)
  br i1 %i.dg, label %bb.ao, label %bb.al, !dbg !11874, !prof !1546

bb.al:                                            ; preds = %bb.ak
    #dbg_value(i64 %i.df, !11734, !DIExpression(), !11790)
    #dbg_value(i64 %i.df, !11791, !DIExpression(), !11795)
    #dbg_value(i64 70, !11737, !DIExpression(), !11796)
  %i.dh = icmp sgt i8 %i.dc, -1, !dbg !11872
  br i1 %i.dh, label %bb.ap, label %bb.am, !dbg !11872

bb.am:                                            ; preds = %bb.al
    #dbg_value(i64 %i.df, !11791, !DIExpression(), !11795)
    #dbg_value(i64 %i.df, !11734, !DIExpression(), !11790)
    #dbg_value(i64 70, !11737, !DIExpression(), !11796)
  %i.di = load i64, ptr %i.h, align 8, !dbg !11856, !noundef !900
  %i.dj = load i64, ptr %i.i, align 8, !dbg !11857, !noundef !900
  %.not65.10 = icmp eq i64 %i.di, %i.dj, !dbg !11858
  br i1 %.not65.10, label %bb.e, label %bb.an, !dbg !11858

bb.an:                                            ; preds = %bb.am
  %i.dk = tail call { i1, i8 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets6get_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !11863
  %i.dl = extractvalue { i1, i8 } %i.dk, 0, !dbg !11863
    #dbg_value(i1 %i.dl, !11771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11799)
    #dbg_value(i8 poison, !11771, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11799)
  br i1 %i.dl, label %bb.h, label %bb.i, !dbg !11864

bb.ao:                                            ; preds = %bb.ak
    #dbg_value(i8 0, !11744, !DIExpression(), !11842)
    #dbg_value(i8 0, !11821, !DIExpression(), !11845)
    #dbg_value(i8 0, !11825, !DIExpression(), !11846)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11875
  store i8 0, ptr %i.dm, align 1, !dbg !11875
  br label %bb.g, !dbg !11876

bb.ap:                                            ; preds = %bb.al, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j
  %.lcssa67 = phi i64 [ %i.u, %bb.j ], [ %i.ae, %bb.m ], [ %i.ao, %bb.p ], [ %i.ay, %bb.s ], [ %i.bi, %bb.v ], [ %i.bs, %bb.y ], [ %i.cc, %bb.ab ], [ %i.cm, %bb.ae ], [ %i.cw, %bb.ah ], [ %i.df, %bb.al ], !dbg !11871
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11877
  store i64 %.lcssa67, ptr %i.dn, align 8, !dbg !11877
  br label %bb.g, !dbg !11876
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs3f36owOmepS_6quiche2h35qpack7decoder10decode_str(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 9)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 !dbg !11891 {
bb.a:
    #dbg_declare(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !11937)
    #dbg_declare(ptr poison, !11938, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !11950)
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !11933, !DIExpression(DW_OP_LLVM_fragment, 72, 120), !11951)
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !11916, !DIExpression(), !11952)
    #dbg_value(i64 %2, !11917, !DIExpression(), !11952)
    #dbg_declare(ptr %i.e, !11953, !DIExpression(), !11958)
    #dbg_declare(ptr %i.d, !11925, !DIExpression(), !11959)
    #dbg_declare(ptr %i.c, !11960, !DIExpression(), !11965)
    #dbg_declare(ptr poison, !11927, !DIExpression(), !11966)
    #dbg_declare(ptr %i.b, !11945, !DIExpression(), !11967)
    #dbg_declare(ptr %i.a, !11928, !DIExpression(), !11968)
    #dbg_declare(ptr poison, !11961, !DIExpression(), !11969)
    #dbg_declare(ptr poison, !11919, !DIExpression(), !11970)
    #dbg_declare(ptr poison, !11926, !DIExpression(), !11971)
    #dbg_declare(ptr poison, !11972, !DIExpression(), !11981)
    #dbg_declare(ptr poison, !11975, !DIExpression(), !11982)
    #dbg_declare(ptr poison, !11972, !DIExpression(), !11985)
    #dbg_declare(ptr poison, !11976, !DIExpression(), !11986)
    #dbg_declare(ptr poison, !11946, !DIExpression(), !11987)
  %i.f = tail call { i1, i8 } @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets7peek_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !12021 ; 2 uses
  %i.g = extractvalue { i1, i8 } %i.f, 0, !dbg !12021
    #dbg_value(i1 %i.g, !11988, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11993)
    #dbg_value(i8 poison, !11988, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11993)
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !12022

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12023
  store i8 0, ptr %i.h, align 8, !dbg !12023
  store i64 -1, ptr %0, align 8, !dbg !12023
  br label %bb.n, !dbg !12024

bb.c:                                             ; preds = %bb.a
  %i.i = extractvalue { i1, i8 } %i.f, 1, !dbg !12021
    #dbg_value(i8 %i.i, !11988, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11993)
    #dbg_value(i8 %i.i, !11918, !DIExpression(), !11995)
  %.not = icmp sgt i8 %i.i, -1, !dbg !12025
    #dbg_value(i1 %.not, !11921, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11957
  call fastcc void @_RNvNtNtNtCs3f36owOmepS_6quiche2h35qpack7decoder10decode_int(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 7), !dbg !11957
  %i.j = load i8, ptr %i.e, align 8, !dbg !12026, !range !1840, !noundef !900
  %i.k = trunc nuw i8 %i.j to i1, !dbg !12026
  br i1 %i.k, label %bb.d, label %bb.e, !dbg !12027

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !12028
  %i.m = load i8, ptr %i.l, align 1, !dbg !12028, !range !2050, !noundef !900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12029
    #dbg_value(i8 %i.m, !11923, !DIExpression(), !11997)
    #dbg_value(i8 %i.m, !11998, !DIExpression(), !12007)
    #dbg_value(i8 %i.m, !12001, !DIExpression(), !12008)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12030
  store i8 %i.m, ptr %i.n, align 8, !dbg !12030
  store i64 -1, ptr %0, align 8, !dbg !12030
  br label %bb.n, !dbg !12031

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12032
  %i.p = load i64, ptr %i.o, align 8, !dbg !12032, !noundef !900 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12029
    #dbg_value(i64 %i.p, !11922, !DIExpression(), !12010)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11964
  call void @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets9get_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p), !dbg !12034
  %i.q = load ptr, ptr %i.c, align 8, !dbg !12035, !noundef !900
  %i.r = icmp eq ptr %i.q, null, !dbg !12035
  br i1 %i.r, label %bb.f, label %bb.g, !dbg !12036

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12037
  br label %bb.o, !dbg !12038

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12037
  br i1 %.not, label %bb.h, label %bb.i, !dbg !12040

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ugt i64 %i.p, %2, !dbg !12041
  br i1 %i.s, label %bb.o, label %bb.j, !dbg !12041

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11936
  call void @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets35get_huffman_decoded_with_max_length(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %2), !dbg !12042
  %i.t = load i64, ptr %i.b, align 8, !dbg !12043, !range !957, !noundef !900 ; 2 uses
  %i.u = icmp eq i64 %i.t, -1, !dbg !12043
  br i1 %i.u, label %bb.l, label %bb.m, !dbg !12044

bb.j:                                             ; preds = %bb.h
  call void @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets6to_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !dbg !12045
  br label %bb.k, !dbg !12046

bb.k:                                             ; preds = %bb.m, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !12047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12048
  br label %bb.n, !dbg !12049

bb.l:                                             ; preds = %bb.i
    #dbg_value(i8 4, !11933, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12012)
    #dbg_value(i64 -1, !11933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12012)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12050
    #dbg_value(i8 4, !11929, !DIExpression(), !12013)
    #dbg_value(i8 4, !11998, !DIExpression(), !12016)
    #dbg_value(i8 4, !12002, !DIExpression(), !12017)
  br label %bb.o, !dbg !12051

bb.m:                                             ; preds = %bb.i
    #dbg_value(i64 %i.t, !11938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12019)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12052
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 8, !dbg !12052
    #dbg_value(i8 %.sroa.419.0.copyload, !11938, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12019)
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9, !dbg !12052
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 9, !dbg !11936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.8.0..sroa_idx10, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.520.0..sroa_idx, i64 15, i1 false), !dbg !12052
    #dbg_value(i64 %i.t, !11933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12012)
    #dbg_value(i8 %.sroa.419.0.copyload, !11933, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12012)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12050
    #dbg_value(i64 %i.t, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12020)
    #dbg_value(i8 %.sroa.419.0.copyload, !11932, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12020)
  store i64 %i.t, ptr %i.a, align 8, !dbg !11936
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11936
  store i8 %.sroa.419.0.copyload, ptr %.sroa.6.0..sroa_idx8, align 8, !dbg !11936
  br label %bb.k, !dbg !12046

bb.n:                                             ; preds = %bb.b, %bb.o, %bb.d, %bb.k
  ret void, !dbg !12049

bb.o:                                             ; preds = %bb.h, %bb.l, %bb.f
  %.sink = phi i8 [ 0, %bb.f ], [ 4, %bb.l ], [ 4, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12010
  store i8 %.sink, ptr %i.v, align 8, !dbg !12010
  store i64 -1, ptr %0, align 8, !dbg !12010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12048
  br label %bb.n, !dbg !12038
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 1) i8 @_RNvNtNtNtCs3f36owOmepS_6quiche2h35qpack7encoder10encode_int(i64 noundef %0, i8 noundef %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 !dbg !12062 {
bb.a:
    #dbg_value(i64 %0, !12097, !DIExpression(), !12111)
    #dbg_value(i8 %1, !12098, !DIExpression(), !12111)
    #dbg_value(i64 %2, !12099, !DIExpression(), !12111)
    #dbg_value(ptr %3, !12100, !DIExpression(), !12111)
    #dbg_value(i64 2, !12112, !DIExpression(), !12118)
end_hunk_0
