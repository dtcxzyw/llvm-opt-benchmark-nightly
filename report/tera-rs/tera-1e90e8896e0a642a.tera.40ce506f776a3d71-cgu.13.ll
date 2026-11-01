Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.13?download=true
inline.NumInlined: 849
inline.NumDeleted: 466
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE23insert_before_uncheckedB1C_:bb.a
    #dbg_value(ptr %i.bd, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(ptr %i.bd, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21776)
    #dbg_value(ptr %i.bd, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21777)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 538, !dbg !21868
  %i.bf = load i16, ptr %i.be, align 2, !dbg !21868, !noalias !21837, !noundef !1328 ; 2 uses
  %i.bg = zext nneg i16 %i.bf to i64, !dbg !21869
    #dbg_value(i64 %i.bg, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21777)
    #dbg_value(i64 %i.bg, !5375, !DIExpression(), !21781)
    #dbg_value(i64 %i.bg, !5387, !DIExpression(), !21783)
    #dbg_value(ptr %i.bd, !5364, !DIExpression(), !21784)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 544, !dbg !21870
    #dbg_value(ptr %i.bh, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21781)
    #dbg_value(ptr %i.bh, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21783)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21781)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21783)
  %i.bi = icmp ult i16 %i.bf, 12, !dbg !21871
  tail call void @llvm.assume(i1 %i.bi), !dbg !21872
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg, !dbg !21873
    #dbg_value(ptr %i.bj, !5397, !DIExpression(), !21786)
    #dbg_value(ptr %i.bj, !5403, !DIExpression(), !21788)
    #dbg_value(ptr %i.bj, !5407, !DIExpression(), !21790)
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !21874, !noalias !21837, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.bk, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21769)
    #dbg_value(ptr %i.bk, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21771)
    #dbg_value(ptr %i.bk, !5352, !DIExpression(), !21773)
    #dbg_value(i64 %.sroa.05.018.i, !5326, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21769)
    #dbg_value(i64 %.sroa.05.018.i, !5335, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21771)
    #dbg_value(i64 %.sroa.05.018.i, !5328, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 %.sroa.05.018.i, !5366, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21776)
    #dbg_value(i64 %.sroa.05.018.i, !5362, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21777)
    #dbg_value(ptr %i.bk, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(ptr %i.bk, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21776)
    #dbg_value(ptr %i.bk, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21777)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 538, !dbg !21868
  %i.bm = load i16, ptr %i.bl, align 2, !dbg !21868, !noalias !21837, !noundef !1328 ; 2 uses
  %i.bn = zext nneg i16 %i.bm to i64, !dbg !21869
    #dbg_value(i64 %i.bn, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21777)
    #dbg_value(i64 %i.bn, !5375, !DIExpression(), !21781)
    #dbg_value(i64 %i.bn, !5387, !DIExpression(), !21783)
    #dbg_value(ptr %i.bk, !5364, !DIExpression(), !21784)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 544, !dbg !21870
    #dbg_value(ptr %i.bo, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21781)
    #dbg_value(ptr %i.bo, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21783)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21781)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21783)
  %i.bp = icmp ult i16 %i.bm, 12, !dbg !21871
  tail call void @llvm.assume(i1 %i.bp), !dbg !21872
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn, !dbg !21873
    #dbg_value(ptr %i.bq, !5397, !DIExpression(), !21786)
    #dbg_value(ptr %i.bq, !5403, !DIExpression(), !21788)
    #dbg_value(ptr %i.bq, !5407, !DIExpression(), !21790)
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !21874, !noalias !21837, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.br, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21769)
    #dbg_value(ptr %i.br, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21771)
    #dbg_value(ptr %i.br, !5352, !DIExpression(), !21773)
    #dbg_value(i64 %.sroa.05.018.i, !5326, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21769)
    #dbg_value(i64 %.sroa.05.018.i, !5335, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21771)
    #dbg_value(i64 %.sroa.05.018.i, !5328, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 %.sroa.05.018.i, !5366, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21776)
    #dbg_value(i64 %.sroa.05.018.i, !5362, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21777)
    #dbg_value(ptr %i.br, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(ptr %i.br, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21776)
    #dbg_value(ptr %i.br, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21777)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 538, !dbg !21868
  %i.bt = load i16, ptr %i.bs, align 2, !dbg !21868, !noalias !21837, !noundef !1328 ; 2 uses
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !21869
    #dbg_value(i64 %i.bu, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21777)
    #dbg_value(i64 %i.bu, !5375, !DIExpression(), !21781)
    #dbg_value(i64 %i.bu, !5387, !DIExpression(), !21783)
    #dbg_value(ptr %i.br, !5364, !DIExpression(), !21784)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 544, !dbg !21870
    #dbg_value(ptr %i.bv, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21781)
    #dbg_value(ptr %i.bv, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21783)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21781)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21783)
  %i.bw = icmp ult i16 %i.bt, 12, !dbg !21871
  tail call void @llvm.assume(i1 %i.bw), !dbg !21872
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu, !dbg !21873
    #dbg_value(ptr %i.bx, !5397, !DIExpression(), !21786)
    #dbg_value(ptr %i.bx, !5403, !DIExpression(), !21788)
    #dbg_value(ptr %i.bx, !5407, !DIExpression(), !21790)
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !21874, !noalias !21837, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.by, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21769)
    #dbg_value(ptr %i.by, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21771)
    #dbg_value(ptr %i.by, !5352, !DIExpression(), !21773)
  %i.bz = add i64 %.sroa.05.018.i, -8, !dbg !21875 ; 2 uses
    #dbg_value(i64 %i.bz, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21771)
    #dbg_value(i64 %i.bz, !5326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21769)
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !21867
  br i1 %i.ca, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit, label %.lr.ph.i, !dbg !21867

_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.03.0.lcssa.i = phi ptr [ %i.i, %bb.d ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.by, %.lr.ph.i ], !dbg !21876 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.lcssa.i, !5327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21792)
    #dbg_value(ptr %.sroa.03.0.lcssa.i, !5417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21794)
    #dbg_value(i64 0, !5327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21792)
    #dbg_value(i64 0, !5417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21794)
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i, i64 538, !dbg !21877
  %i.cc = load i16, ptr %i.cb, align 2, !dbg !21877, !noalias !21837, !noundef !1328
  %i.cd = zext i16 %i.cc to i64, !dbg !21878
  store ptr %.sroa.03.0.lcssa.i, ptr %i.b, align 8, !dbg !21879, !alias.scope !21837
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21879
  store i64 0, ptr %i.ce, align 8, !dbg !21879, !alias.scope !21837
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !21879
  store i64 %i.cd, ptr %i.cf, align 8, !dbg !21879, !alias.scope !21837
  br label %bb.h, !dbg !21880

bb.e:                                             ; preds = %bb.c
  %i.cg = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1R_()
          to label %bb.f unwind label %bb.j, !dbg !21881 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0, !dbg !21881 ; 3 uses
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1, !dbg !21881 ; 2 uses
    #dbg_value(ptr %i.ch, !21807, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21842)
    #dbg_value(i64 %i.ci, !21807, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21842)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !21882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21883
    #dbg_value(ptr poison, !21843, !DIExpression(), !21846)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !21884
  store i64 %i.ci, ptr %i.cj, align 8, !dbg !21884
  store ptr %i.ch, ptr %i.e, align 8, !dbg !21884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !21885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !21886
  call void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB19_4LeafE16push_with_handleB1O_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !21887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21888
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ], !dbg !21889
  store ptr %i.ch, ptr %i.h, align 8, !dbg !21890
  store i64 %i.ci, ptr %i.j, align 8, !dbg !21890
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21891
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !21891, !nonnull !1328, !align !3522, !noundef !1328 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !dbg !21891, !noundef !1328
  %i.cn = add i64 %i.cm, 1, !dbg !21891
  store i64 %i.cn, ptr %i.cl, align 8, !dbg !21891
  %i.co = load ptr, ptr %i.f, align 8, !dbg !21892, !nonnull !1328, !noundef !1328
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !21892
    #dbg_value(ptr %i.co, !21847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21853)
    #dbg_value(i64 poison, !21847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21853)
    #dbg_value(i64 poison, !21847, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21853)
  store ptr %i.co, ptr %i.g, align 8, !dbg !21893
  %i.cq = load <2 x i64>, ptr %i.cp, align 8, !dbg !21892
  %i.cr = add <2 x i64> %i.cq, <i64 0, i64 1>, !dbg !21894
  store <2 x i64> %i.cr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !21893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21895
  br label %bb.g, !dbg !21896

bb.g:                                             ; preds = %bb.h, %bb.f
  ret void, !dbg !21897

bb.h:                                             ; preds = %bb.b, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21898
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21899
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !21900, !nonnull !1328, !noundef !1328
  call void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs1I_NtB8_3mapINtB3G_12CursorMutKeyB1D_B1Y_E23insert_before_unchecked0EB22_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.ct), !dbg !21901
  %i.cu = load ptr, ptr %i.a, align 8, !dbg !21902, !nonnull !1328, !noundef !1328
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21902
    #dbg_value(ptr %i.cu, !21847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21855)
    #dbg_value(i64 poison, !21847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21855)
    #dbg_value(i64 poison, !21847, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21855)
  store ptr %i.cu, ptr %i.g, align 8, !dbg !21903
  %i.cw = load <2 x i64>, ptr %i.cv, align 8, !dbg !21902
  %i.cx = add <2 x i64> %i.cw, <i64 0, i64 1>, !dbg !21904
  store <2 x i64> %i.cx, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !21903
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21905
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !21905, !nonnull !1328, !align !3522, !noundef !1328 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !dbg !21905, !noundef !1328
  %i.db = add i64 %i.da, 1, !dbg !21905
  store i64 %i.db, ptr %i.cz, align 8, !dbg !21905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21906
  br label %bb.g, !dbg !21896

bb.i:                                             ; preds = %bb.k, %bb.j
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21907
  unreachable, !dbg !21907

bb.j:                                             ; preds = %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #25
          to label %bb.k unwind label %bb.i, !dbg !21896

.critedge35:                                      ; preds = %bb.k
  resume { ptr, i32 } %i.dd, !dbg !21907

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #25
          to label %.critedge35 unwind label %bb.i, !dbg !21896
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6appendB1w_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21909 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !22373, !DIExpression(), !21951)
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [56 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [72 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [56 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [48 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 21 uses
  %i.ak = alloca [48 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 13 uses
  %i.an = alloca [72 x i8], align 8               ; 14 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
    #dbg_value(ptr %0, !22368, !DIExpression(), !22455)
    #dbg_value(ptr %1, !22369, !DIExpression(), !22455)
    #dbg_value(ptr %1, !22456, !DIExpression(), !22462)
    #dbg_declare(ptr %i.ao, !22370, !DIExpression(), !22463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !22774
    #dbg_value(ptr null, !22459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22462)
    #dbg_value(i64 undef, !22459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22462)
    #dbg_value(i64 0, !22459, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22462)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !22775
  store ptr null, ptr %1, align 8, !dbg !22776
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22776
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22776
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22464), !dbg !22777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22465), !dbg !22777
    #dbg_value(ptr %0, !22436, !DIExpression(), !21956)
    #dbg_value(ptr %0, !22466, !DIExpression(), !21959)
    #dbg_value(ptr %0, !22471, !DIExpression(), !21962)
    #dbg_value(ptr %0, !22477, !DIExpression(), !21965)
    #dbg_declare(ptr %i.ao, !22437, !DIExpression(), !21966)
    #dbg_declare(ptr poison, !22438, !DIExpression(), !21967)
    #dbg_declare(ptr %i.an, !22439, !DIExpression(), !21968)
    #dbg_declare(ptr %i.am, !22440, !DIExpression(), !21969)
    #dbg_declare(ptr %i.al, !22441, !DIExpression(), !21970)
    #dbg_declare(ptr %i.ak, !22480, !DIExpression(), !21974)
    #dbg_declare(ptr %i.aj, !22442, !DIExpression(), !21975)
    #dbg_declare(ptr %i.ah, !22444, !DIExpression(), !21976)
    #dbg_declare(ptr poison, !22445, !DIExpression(), !21977)
    #dbg_declare(ptr %i.ag, !22446, !DIExpression(), !21978)
    #dbg_declare(ptr %i.ag, !22486, !DIExpression(), !21981)
    #dbg_declare(ptr %i.ae, !22491, !DIExpression(), !21982)
    #dbg_declare(ptr %i.ad, !22493, !DIExpression(), !21985)
    #dbg_declare(ptr %i.ac, !22496, !DIExpression(), !21986)
    #dbg_declare(ptr %i.ab, !22493, !DIExpression(), !21988)
    #dbg_declare(ptr %i.aa, !22496, !DIExpression(), !21989)
    #dbg_declare(ptr %i.z, !22447, !DIExpression(), !21990)
    #dbg_declare(ptr %i.x, !22448, !DIExpression(), !21991)
    #dbg_declare(ptr %i.w, !22449, !DIExpression(), !21992)
    #dbg_declare(ptr %i.u, !22451, !DIExpression(), !21993)
    #dbg_declare(ptr poison, !22452, !DIExpression(), !21994)
    #dbg_declare(ptr %i.t, !22453, !DIExpression(), !21995)
    #dbg_declare(ptr %i.t, !22486, !DIExpression(), !21997)
    #dbg_declare(ptr %i.r, !22491, !DIExpression(), !21998)
    #dbg_declare(ptr %i.q, !22493, !DIExpression(), !22000)
    #dbg_declare(ptr %i.p, !22496, !DIExpression(), !22001)
    #dbg_declare(ptr %i.o, !22493, !DIExpression(), !22003)
    #dbg_declare(ptr %i.n, !22496, !DIExpression(), !22004)
    #dbg_value(ptr %i.ao, !22466, !DIExpression(), !22006)
    #dbg_value(ptr %i.ao, !22471, !DIExpression(), !22008)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !22778 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !22778, !alias.scope !22465, !noundef !1328 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !22779
  br i1 %i.ar, label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtB19_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB2p_.exit.i, label %bb.b, !dbg !22780

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22781 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !dbg !22781, !alias.scope !22464, !noundef !1328
  %i.au = icmp eq i64 %i.at, 0, !dbg !22782
  br i1 %i.au, label %bb.d, label %bb.c, !dbg !22783

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !22784, !noalias !22498
  %.sroa.017.0.copyload.i = load ptr, ptr %i.ao, align 8, !dbg !22785, !alias.scope !22465 ; 3 uses
    #dbg_value(ptr %.sroa.017.0.copyload.i, !22499, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22014)
    #dbg_value(i64 poison, !22499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22014)
    #dbg_value(i64 poison, !22499, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22014)
    #dbg_value(i64 poison, !22500, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22015)
    #dbg_value(ptr poison, !22500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22015)
    #dbg_value(i64 poison, !22500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22015)
  %.not.i = icmp eq ptr %.sroa.017.0.copyload.i, null, !dbg !22786
  br i1 %.not.i, label %bb.g, label %bb.f, !dbg !22787

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.ao, !22478, !DIExpression(), !22016)
    #dbg_value(ptr %0, !22505, !DIExpression(), !22019)
    #dbg_value(ptr %i.ao, !22508, !DIExpression(), !22019)
    #dbg_value(ptr %0, !22510, !DIExpression(), !22022)
    #dbg_value(ptr %0, !22516, !DIExpression(), !22031)
    #dbg_value(ptr %i.ao, !22513, !DIExpression(), !22022)
    #dbg_value(ptr %i.ao, !22520, !DIExpression(), !22031)
    #dbg_value(i64 1, !22514, !DIExpression(), !22022)
    #dbg_value(i64 1, !22521, !DIExpression(), !22031)
    #dbg_value(ptr %0, !22522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22032)
    #dbg_value(i64 1, !22522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22032)
    #dbg_value(i64 24, !22523, !DIExpression(), !22033)
    #dbg_value(i64 24, !22524, !DIExpression(), !22034)
    #dbg_value(ptr %0, !22536, !DIExpression(), !22043)
    #dbg_value(ptr %i.ao, !22539, !DIExpression(), !22043)
    #dbg_value(i64 24, !22540, !DIExpression(), !22043)
    #dbg_value(i64 24, !22541, !DIExpression(), !22044)
    #dbg_value(i64 3, !22542, !DIExpression(), !22045)
    #dbg_value(i64 0, !22543, !DIExpression(), !22046)
    #dbg_value(i64 3, !22544, !DIExpression(), !22047)
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5yXxDE1DkoT_4tera(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtB19_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB2p_.exit.i unwind label %bb.e, !dbg !22788

bb.e:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24, !dbg !22789
  unreachable, !dbg !22789

bb.f:                                             ; preds = %bb.c
    #dbg_value(i64 %i.aq, !22499, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22014)
    #dbg_value(i64 %i.aq, !22500, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22015)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !22785
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !22785, !alias.scope !22465 ; 2 uses
    #dbg_value(i64 %.sroa.4.0.copyload.i, !22499, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22014)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !22500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22015)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !22501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22048)
    #dbg_value(ptr %.sroa.017.0.copyload.i, !22501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22048)
    #dbg_value(i64 1, !22502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22049)
    #dbg_value(ptr null, !22502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22049)
    #dbg_value(ptr %.sroa.017.0.copyload.i, !22502, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22049)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !22502, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22049)
    #dbg_value(i64 1, !22502, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !22049)
    #dbg_value(ptr null, !22502, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !22049)
    #dbg_value(ptr %.sroa.017.0.copyload.i, !22502, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !22049)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !22502, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !22049)
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !22790
  store ptr null, ptr %.sroa.428.0..sroa_idx.i, align 8, !dbg !22790, !noalias !22498
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !22790
  store ptr %.sroa.017.0.copyload.i, ptr %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx.i, align 8, !dbg !22790, !noalias !22498
  %.sroa.428.sroa.5.0..sroa.428.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !22790
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.428.sroa.5.0..sroa.428.0..sroa_idx.sroa_idx.i, align 8, !dbg !22790, !noalias !22498
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40, !dbg !22790
  store ptr null, ptr %.sroa.630.0..sroa_idx.i, align 8, !dbg !22790, !noalias !22498
  %.sroa.630.sroa.4.0..sroa.630.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 48, !dbg !22790
  store ptr %.sroa.017.0.copyload.i, ptr %.sroa.630.sroa.4.0..sroa.630.0..sroa_idx.sroa_idx.i, align 8, !dbg !22790, !noalias !22498
  %.sroa.630.sroa.5.0..sroa.630.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 56, !dbg !22790
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.630.sroa.5.0..sroa.630.0..sroa_idx.sroa_idx.i, align 8, !dbg !22790, !noalias !22498
  br label %bb.g, !dbg !22791

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sink184.i = phi i64 [ 1, %bb.f ], [ 0, %bb.c ], !dbg !22792 ; 2 uses
  %.sink.i = phi i64 [ %i.aq, %bb.f ], [ 0, %bb.c ], !dbg !22792
  store i64 %.sink184.i, ptr %i.an, align 8, !dbg !22792, !noalias !22498
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 32, !dbg !22792
  store i64 %.sink184.i, ptr %i.aw, align 8, !dbg !22792, !noalias !22498
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 64, !dbg !22792
  store i64 %.sink.i, ptr %i.ax, align 8, !dbg !22792, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !22793, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !22794, !noalias !22498
    #dbg_value(ptr %i.an, !22550, !DIExpression(), !22052)
    #dbg_declare(ptr %i.m, !22552, !DIExpression(), !22057)
    #dbg_declare(ptr %i.m, !22560, !DIExpression(), !22058)
    #dbg_declare(ptr %i.m, !22562, !DIExpression(), !22061)
    #dbg_declare(ptr poison, !22559, !DIExpression(), !22062)
  invoke fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.an)
          to label %.noexc.i unwind label %.body.thread122.i, !dbg !22794, !noalias !22465

.noexc.i:                                         ; preds = %bb.g
  %i.ay = load ptr, ptr %i.m, align 8, !dbg !22795, !noalias !22566, !noundef !1328
  %.not.i.i = icmp eq ptr %i.ay, null, !dbg !22795
  br i1 %.not.i.i, label %.thread.i, label %bb.h, !dbg !22796

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_key_valB23_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
          to label %bb.j unwind label %.body.thread122.i, !dbg !22797, !noalias !22465

.thread.i:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !22798, !noalias !22498
end_hunk_0
begin_hunk_1_@_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6appendB1w_:bb.a
.noexc71.i:                                       ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !22828, !noalias !22651
  %i.bm = load ptr, ptr %i.l, align 8, !dbg !22829, !noalias !22651, !noundef !1328 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null, !dbg !22829
  br i1 %i.bn, label %bb.s, label %bb.t, !dbg !22830

bb.s:                                             ; preds = %.noexc71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !22831, !noalias !22651
  br label %.thread132.i, !dbg !22832

bb.t:                                             ; preds = %.noexc71.i
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !22833
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !22824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i.i.i, i64 16, i1 false), !dbg !22833, !noalias !22651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !22831, !noalias !22651
  store ptr %i.bm, ptr %i.j, align 8, !dbg !22824, !noalias !22651
  %i.bo = invoke { ptr, ptr } @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE11into_kv_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.u unwind label %bb.p, !dbg !22834, !noalias !22465

.thread132.i:                                     ; preds = %bb.s, %bb.q, %.thread197.i
  %i.bp = phi ptr [ %.sroa.6.0..sroa_idx.i.i, %.thread197.i ], [ %.sroa.611.0..sroa_idx.i.i, %bb.q ], [ %.sroa.611.0..sroa_idx.i.i, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !22835, !noalias !22644
    #dbg_value(ptr null, !22657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22142)
    #dbg_value(ptr poison, !22657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22142)
  br label %bb.v, !dbg !22836

bb.u:                                             ; preds = %bb.t
  %i.bq = extractvalue { ptr, ptr } %i.bo, 0, !dbg !22834 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !22835, !noalias !22644
    #dbg_value(ptr %i.bq, !22657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22142)
    #dbg_value(ptr poison, !22657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22142)
  %.not.i70.i = icmp eq ptr %i.bq, null, !dbg !22837
  br i1 %.not.i70.i, label %bb.v, label %bb.w, !dbg !22836

bb.v:                                             ; preds = %bb.u, %.thread132.i
  %i.br = phi ptr [ %i.bp, %.thread132.i ], [ %.sroa.611.0..sroa_idx.i.i, %bb.u ]
    #dbg_value(ptr %i.aj, !22495, !DIExpression(), !22143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !22838, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !22838, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !22839, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !22839, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE23insert_before_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.aj unwind label %bb.p, !dbg !22840, !noalias !22465

bb.w:                                             ; preds = %bb.u
    #dbg_value(ptr %i.bq, !22443, !DIExpression(), !22144)
  call void @llvm.experimental.noalias.scope.decl(metadata !22673), !dbg !22841
  call void @llvm.experimental.noalias.scope.decl(metadata !22674), !dbg !22841
    #dbg_value(ptr %i.bq, !22675, !DIExpression(), !22150)
    #dbg_value(ptr %i.bq, !22681, !DIExpression(), !22157)
    #dbg_value(ptr %i.am, !22679, !DIExpression(), !22150)
    #dbg_value(ptr %i.am, !22681, !DIExpression(), !22159)
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !22842
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !dbg !22842, !alias.scope !22673, !noalias !22465, !nonnull !1328, !noundef !1328
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !22842
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !dbg !22842, !alias.scope !22673, !noalias !22465, !noundef !1328 ; 2 uses
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !22843
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.0.in.i.i, align 8, !dbg !22843, !alias.scope !22674, !noalias !22498, !nonnull !1328, !noundef !1328
  %.sroa.32.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !22843
  %.sroa.32.0.i.i = load i64, ptr %.sroa.32.0.in.i.i, align 8, !dbg !22843, !alias.scope !22674, !noalias !22498, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !22689, !DIExpression(), !22173)
    #dbg_value(ptr %.sroa.0.0.i.i, !22714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22174)
    #dbg_value(i64 %.sroa.3.0.i.i, !22714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22174)
    #dbg_value(ptr %.sroa.01.0.i.i, !22715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22174)
    #dbg_value(i64 %.sroa.32.0.i.i, !22715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22174)
    #dbg_value(ptr poison, !22693, !DIExpression(), !22175)
    #dbg_value(ptr %.sroa.0.0.i.i, !22708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22176)
    #dbg_value(ptr %.sroa.0.0.i.i, !22698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22177)
    #dbg_value(i64 %.sroa.3.0.i.i, !22708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22176)
    #dbg_value(i64 %.sroa.3.0.i.i, !22698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22177)
    #dbg_value(ptr %.sroa.01.0.i.i, !22709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22176)
    #dbg_value(ptr %.sroa.01.0.i.i, !22699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22177)
    #dbg_value(i64 %.sroa.32.0.i.i, !22709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22176)
    #dbg_value(i64 %.sroa.32.0.i.i, !22699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22177)
    #dbg_value(i64 %.sroa.3.0.i.i, !22701, !DIExpression(), !22178)
  %i.bs = sub i64 %.sroa.3.0.i.i, %.sroa.32.0.i.i, !dbg !22844
    #dbg_value(i64 %i.bs, !22700, !DIExpression(), !22179)
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i, i64 %.sroa.32.0.i.i), !dbg !22845
    #dbg_value(i64 %spec.store.select.i.i.i, !22701, !DIExpression(), !22178)
    #dbg_value(ptr %.sroa.0.0.i.i, !22702, !DIExpression(), !22180)
    #dbg_value(ptr %.sroa.01.0.i.i, !22703, !DIExpression(), !22181)
  %i.bt = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i, ptr nonnull readonly %.sroa.01.0.i.i, i64 %spec.store.select.i.i.i), !dbg !22846, !alias.scope !22717, !noalias !22718 ; 2 uses
  %i.bu = sext i32 %i.bt to i64, !dbg !22846
    #dbg_value(i64 %i.bu, !22704, !DIExpression(), !22185)
  %i.bv = icmp eq i32 %i.bt, 0, !dbg !22847
  %spec.store.select1.i.i.i = select i1 %i.bv, i64 %i.bs, i64 %i.bu, !dbg !22847
    #dbg_value(i64 %spec.store.select1.i.i.i, !22704, !DIExpression(), !22185)
    #dbg_value(ptr undef, !22689, !DIExpression(), !22173)
  %i.bw = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i.i, i64 0), !dbg !22848
  switch i8 %i.bw, label %.loopexit178.i [
    i8 -1, label %bb.x
    i8 0, label %bb.y
    i8 1, label %bb.z
  ], !dbg !22849, !prof !22719

.loopexit178.i:                                   ; preds = %bb.az, %bb.w
  unreachable, !dbg !22850

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 161 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %bb.n unwind label %bb.p, !dbg !22851, !noalias !22465

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !22852, !noalias !22498
    #dbg_value(ptr %i.aj, !22721, !DIExpression(), !22188)
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE11remove_nextB1C_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.ai, ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.aa unwind label %bb.p, !dbg !22853, !noalias !22465

bb.z:                                             ; preds = %bb.w
    #dbg_value(ptr %i.aj, !22495, !DIExpression(), !22189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !22854, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !22854, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !22855, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !22855, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE23insert_before_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.ah unwind label %bb.p, !dbg !22856, !noalias !22465

bb.aa:                                            ; preds = %bb.y
  %i.bx = load i64, ptr %i.ai, align 8, !dbg !22852, !range !22726, !noalias !22498, !noundef !1328
  %.not56.i = icmp eq i64 %i.bx, -2, !dbg !22852
  br i1 %.not56.i, label %bb.ac, label %bb.ab, !dbg !22857

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !22858, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !22858, !noalias !22498
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !22859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !22860, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !dbg !22859, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !22861, !noalias !22498
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !22860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !22862, !noalias !22498
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !22860
  store ptr %i.ah, ptr %i.ca, align 8, !dbg !22860, !noalias !22498
    #dbg_value(ptr poison, !22728, !DIExpression(), !22192)
    #dbg_value(ptr poison, !22731, !DIExpression(), !22192)
    #dbg_declare(ptr %i.af, !22732, !DIExpression(), !22193)
    #dbg_declare(ptr %i.bz, !22733, !DIExpression(), !22194)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !22863, !noalias !22498
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit.i unwind label %bb.af, !dbg !22864, !noalias !22465

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !22865, !noalias !22498
  br label %bb.ai, !dbg !22866

bb.ad:                                            ; preds = %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.i, !dbg !22865

_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !22867, !noalias !22498
    #dbg_value(ptr %i.aj, !22490, !DIExpression(), !22195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !22868, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !dbg !22868, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE22insert_after_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag)
          to label %bb.ae unwind label %bb.ad, !dbg !22869, !noalias !22465

bb.ae:                                            ; preds = %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !22870, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !22871, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !22865, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !22865, !noalias !22498
  br label %bb.ai, !dbg !22866

bb.af:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #25
          to label %.thread143.i unwind label %bb.ag, !dbg !22865, !noalias !22465

bb.ag:                                            ; preds = %bb.bv, %.thread143.i, %bb.bu, %.thread150.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo, %.body112.i, %bb.af
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !22872, !noalias !22465
  unreachable, !dbg !22872

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !22873, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !22873, !noalias !22498
  br label %bb.ai, !dbg !22874

bb.ai:                                            ; preds = %bb.aj, %bb.ah, %bb.ae, %bb.ac
  %i.ce = phi ptr [ %i.br, %bb.aj ], [ %.sroa.611.0..sroa_idx.i.i, %bb.ae ], [ %.sroa.611.0..sroa_idx.i.i, %bb.ac ], [ %.sroa.611.0..sroa_idx.i.i, %bb.ah ] ; 6 uses
  %.sroa.010.3.i = phi i8 [ 0, %bb.aj ], [ 1, %bb.ae ], [ 1, %bb.ac ], [ 0, %bb.ah ], !dbg !22820 ; 4 uses
  %.sroa.08.3.i = phi i8 [ 0, %bb.aj ], [ 0, %bb.ae ], [ 1, %bb.ac ], [ 0, %bb.ah ], !dbg !22875 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !22876, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.an, i64 72, i1 false), !dbg !22876, !noalias !22498
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.47.0..sroa_idx.i.i80.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i81.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.01.0.in.i93.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.32.0.in.i95.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.5.0..sroa_idx.i.i100.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %bb.ak, !dbg !22877

bb.aj:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !22878, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !22878, !noalias !22498
  br label %bb.ai, !dbg !22879

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit115.i, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !22880, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22881, !noalias !22498
    #dbg_value(ptr %i.z, !22550, !DIExpression(), !22197)
    #dbg_declare(ptr %i.i, !22552, !DIExpression(), !22199)
    #dbg_declare(ptr %i.i, !22560, !DIExpression(), !22200)
    #dbg_declare(ptr %i.i, !22562, !DIExpression(), !22202)
    #dbg_declare(ptr poison, !22559, !DIExpression(), !22203)
  invoke fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.z)
          to label %.noexc75.i unwind label %bb.bp, !dbg !22881, !noalias !22465

.noexc75.i:                                       ; preds = %bb.ak
  %i.cp = load ptr, ptr %i.i, align 8, !dbg !22882, !noalias !22735, !noundef !1328
  %.not.i74.i = icmp eq ptr %i.cp, null, !dbg !22882
  br i1 %.not.i74.i, label %.thread141.i, label %bb.al, !dbg !22883

bb.al:                                            ; preds = %.noexc75.i
  invoke void @_RNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_key_valB23_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.am unwind label %bb.bp, !dbg !22884, !noalias !22465

.thread141.i:                                     ; preds = %.noexc75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22885, !noalias !22498
  br label %.loopexit179.i, !dbg !22880

.body112.i:                                       ; preds = %.thread150.i, %bb.bp, %bb.bm
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.ph.i, %.thread150.i ], [ %lpad.thr_comm.split-lp156.i, %bb.bp ], [ %i.gk, %bb.bm ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterINtNtBK_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z) #25
          to label %bb.o unwind label %bb.ag, !dbg !22886, !noalias !22465

bb.am:                                            ; preds = %bb.al
  %.pr140.i = load i64, ptr %i.y, align 8, !dbg !22880, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22885, !noalias !22498
  %.not57.i = icmp eq i64 %.pr140.i, -2, !dbg !22880
  br i1 %.not57.i, label %.loopexit179.i, label %bb.an, !dbg !22880

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !22887, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !22887, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !22888, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !dbg !22888, !noalias !22498
  call void @llvm.experimental.noalias.scope.decl(metadata !22736), !dbg !22889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22890, !noalias !22737
  %i.cq = load ptr, ptr %i.ce, align 8, !dbg !22890, !alias.scope !22738, !noalias !22498, !noundef !1328 ; 2 uses
  %.not.i.i79180.i = icmp eq ptr %i.cq, null, !dbg !22890
  br i1 %.not.i.i79180.i, label %.thread163.i, label %.lr.ph.i, !dbg !22891

.loopexit179.i:                                   ; preds = %bb.am, %.thread141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !22892, !noalias !22498
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterINtNtBK_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z)
          to label %bb.ao unwind label %bb.p, !dbg !22886, !noalias !22465

bb.ao:                                            ; preds = %.loopexit179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !22886, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !22893, !noalias !22498
  %i.cr = trunc nuw i8 %.sroa.08.3.i to i1, !dbg !22821
  br i1 %i.cr, label %bb.aq, label %bb.ap, !dbg !22821

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !22821, !noalias !22498
  %i.cs = trunc nuw i8 %.sroa.010.3.i to i1, !dbg !22821
    #dbg_value(ptr %i.am, !1878, !DIExpression(), !22215)
  %i.ct = load i64, ptr %i.am, align 8, !range !1882, !noalias !22498
  %i.cu = icmp ne i64 %i.ct, -1
  %or.cond.not.i = select i1 %i.cs, i1 %i.cu, i1 false, !dbg !22821
  br i1 %or.cond.not.i, label %bb.at, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit.i, !dbg !22821

bb.aq:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al)
          to label %bb.ap unwind label %bb.as, !dbg !22821, !noalias !22465

bb.ar:                                            ; preds = %bb.bu, %bb.as, %bb.o
  %.pn63.pn.i = phi { ptr, i32 } [ %.pn63.i, %bb.bu ], [ %.pn63.i, %bb.o ], [ %i.cw, %bb.as ] ; 2 uses
  %.sroa.014.4.i = phi i1 [ %.sroa.014.2.i, %bb.bu ], [ %.sroa.014.2.i, %bb.o ], [ false, %bb.as ], !dbg !22800 ; 2 uses
  %.sroa.010.4.i = phi i8 [ %.sroa.010.0.i, %bb.bu ], [ %.sroa.010.0.i, %bb.o ], [ %.sroa.010.3.i, %bb.as ], !dbg !22803
  %i.cv = trunc nuw i8 %.sroa.010.4.i to i1, !dbg !22821
  br i1 %i.cv, label %.thread143.i, label %bb.i, !dbg !22821

bb.as:                                            ; preds = %bb.aq
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !22821, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !22801, !noalias !22498
  br label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE5mergeNCNvB2_6append0EB1x_.exit, !dbg !22801

bb.at:                                            ; preds = %bb.ap
    #dbg_value(ptr %i.am, !1884, !DIExpression(), !22217)
    #dbg_value(ptr %i.am, !1889, !DIExpression(), !22219)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.au, !dbg !22894, !noalias !22465

bb.au:                                            ; preds = %bb.at
  %i.cx = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.am, !1894, !DIExpression(), !22221)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body.thread.i unwind label %bb.av, !dbg !22895, !noalias !22465

bb.av:                                            ; preds = %bb.au
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !22894, !noalias !22465
  unreachable, !dbg !22894

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.at
    #dbg_value(ptr %i.am, !1894, !DIExpression(), !22223)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am), !dbg !22896, !noalias !22465
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit.i, !dbg !22896

.lr.ph.i:                                         ; preds = %bb.an, %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i
  %i.cz = phi ptr [ %.pre185.i, %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i ], [ %i.cq, %bb.an ]
  call void @llvm.experimental.noalias.scope.decl(metadata !22739), !dbg !22889
  call void @llvm.experimental.noalias.scope.decl(metadata !22740), !dbg !22897
    #dbg_value(ptr %i.ce, !22631, !DIExpression(), !22228)
    #dbg_value(ptr %i.ce, !22645, !DIExpression(), !22230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !22898, !noalias !22741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !22898, !noalias !22741
  store ptr %i.cz, ptr %i.g, align 8, !dbg !22899, !noalias !22741
  %i.da = load <2 x i64>, ptr %i.cg, align 8, !dbg !22900, !alias.scope !22742, !noalias !22498
  store <2 x i64> %i.da, ptr %i.ci, align 8, !dbg !22899, !noalias !22741
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvB2e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %.noexc86.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22901, !noalias !22465

.noexc86.i:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22902, !noalias !22741
  %i.db = load ptr, ptr %i.h, align 8, !dbg !22903, !noalias !22741, !noundef !1328 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null, !dbg !22903
  br i1 %i.dc, label %bb.aw, label %bb.ax, !dbg !22904

bb.aw:                                            ; preds = %.noexc86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22905, !noalias !22741
  br label %.thread163.i, !dbg !22906

bb.ax:                                            ; preds = %.noexc86.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i81.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i.i80.i, i64 16, i1 false), !dbg !22907, !noalias !22741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22905, !noalias !22741
  store ptr %i.db, ptr %i.f, align 8, !dbg !22898, !noalias !22741
  %i.dd = invoke { ptr, ptr } @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE11into_kv_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22908, !noalias !22465

.thread163.i:                                     ; preds = %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i, %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.thread.i, %bb.aw, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22909, !noalias !22743
    #dbg_value(ptr null, !22657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22234)
    #dbg_value(ptr poison, !22657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22234)
  br label %.loopexit177.i, !dbg !22910

bb.ay:                                            ; preds = %bb.ax
  %i.de = extractvalue { ptr, ptr } %i.dd, 0, !dbg !22908 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22909, !noalias !22743
    #dbg_value(ptr %i.de, !22657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22234)
    #dbg_value(ptr poison, !22657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22234)
  %.not.i84.i = icmp eq ptr %i.de, null, !dbg !22911
  br i1 %.not.i84.i, label %.loopexit177.i, label %bb.az, !dbg !22910

.loopexit177.i:                                   ; preds = %bb.ay, %.thread163.i
    #dbg_value(ptr %i.aj, !22495, !DIExpression(), !22235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !22912, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !22912, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !22913, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !22913, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE23insert_before_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.bt unwind label %bb.bp, !dbg !22914, !noalias !22465

bb.az:                                            ; preds = %bb.ay
    #dbg_value(ptr %i.de, !22450, !DIExpression(), !22236)
  call void @llvm.experimental.noalias.scope.decl(metadata !22744), !dbg !22915
  call void @llvm.experimental.noalias.scope.decl(metadata !22745), !dbg !22915
    #dbg_value(ptr %i.de, !22675, !DIExpression(), !22241)
    #dbg_value(ptr %i.de, !22681, !DIExpression(), !22243)
    #dbg_value(ptr %i.x, !22679, !DIExpression(), !22241)
    #dbg_value(ptr %i.x, !22681, !DIExpression(), !22245)
  %.sroa.0.0.in.i89.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !22916
  %.sroa.0.0.i90.i = load ptr, ptr %.sroa.0.0.in.i89.i, align 8, !dbg !22916, !alias.scope !22744, !noalias !22465, !nonnull !1328, !noundef !1328
  %.sroa.3.0.in.i91.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !22916
  %.sroa.3.0.i92.i = load i64, ptr %.sroa.3.0.in.i91.i, align 8, !dbg !22916, !alias.scope !22744, !noalias !22465, !noundef !1328 ; 2 uses
  %.sroa.01.0.i94.i = load ptr, ptr %.sroa.01.0.in.i93.i, align 8, !dbg !22917, !alias.scope !22745, !noalias !22498, !nonnull !1328, !noundef !1328
  %.sroa.32.0.i96.i = load i64, ptr %.sroa.32.0.in.i95.i, align 8, !dbg !22917, !alias.scope !22745, !noalias !22498, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !22689, !DIExpression(), !22250)
    #dbg_value(ptr %.sroa.0.0.i90.i, !22714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22251)
    #dbg_value(i64 %.sroa.3.0.i92.i, !22714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22251)
    #dbg_value(ptr %.sroa.01.0.i94.i, !22715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22251)
    #dbg_value(i64 %.sroa.32.0.i96.i, !22715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22251)
    #dbg_value(ptr poison, !22693, !DIExpression(), !22252)
    #dbg_value(ptr %.sroa.0.0.i90.i, !22708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22253)
    #dbg_value(ptr %.sroa.0.0.i90.i, !22698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22254)
    #dbg_value(i64 %.sroa.3.0.i92.i, !22708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22253)
    #dbg_value(i64 %.sroa.3.0.i92.i, !22698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22254)
    #dbg_value(ptr %.sroa.01.0.i94.i, !22709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22253)
    #dbg_value(ptr %.sroa.01.0.i94.i, !22699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22254)
    #dbg_value(i64 %.sroa.32.0.i96.i, !22709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22253)
    #dbg_value(i64 %.sroa.32.0.i96.i, !22699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22254)
    #dbg_value(i64 %.sroa.3.0.i92.i, !22701, !DIExpression(), !22255)
  %i.df = sub i64 %.sroa.3.0.i92.i, %.sroa.32.0.i96.i, !dbg !22918
    #dbg_value(i64 %i.df, !22700, !DIExpression(), !22256)
  %spec.store.select.i.i97.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i92.i, i64 %.sroa.32.0.i96.i), !dbg !22919
    #dbg_value(i64 %spec.store.select.i.i97.i, !22701, !DIExpression(), !22255)
    #dbg_value(ptr %.sroa.0.0.i90.i, !22702, !DIExpression(), !22257)
    #dbg_value(ptr %.sroa.01.0.i94.i, !22703, !DIExpression(), !22258)
  %i.dg = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i90.i, ptr nonnull readonly %.sroa.01.0.i94.i, i64 %spec.store.select.i.i97.i), !dbg !22920, !alias.scope !22746, !noalias !22747 ; 2 uses
  %i.dh = sext i32 %i.dg to i64, !dbg !22920
    #dbg_value(i64 %i.dh, !22704, !DIExpression(), !22262)
  %i.di = icmp eq i32 %i.dg, 0, !dbg !22921
  %spec.store.select1.i.i98.i = select i1 %i.di, i64 %i.df, i64 %i.dh, !dbg !22921
    #dbg_value(i64 %spec.store.select1.i.i98.i, !22704, !DIExpression(), !22262)
    #dbg_value(ptr undef, !22689, !DIExpression(), !22250)
  %i.dj = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i98.i, i64 0), !dbg !22922
  switch i8 %i.dj, label %.loopexit178.i [
    i8 -1, label %bb.ba
    i8 0, label %bb.be
    i8 1, label %bb.bf
  ], !dbg !22923

bb.ba:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !22748), !dbg !22924
    #dbg_value(ptr %i.aj, !22424, !DIExpression(), !22265)
  call void @llvm.experimental.noalias.scope.decl(metadata !22749), !dbg !22925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22926, !noalias !22750
    #dbg_declare(ptr poison, !22755, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !22275)
    #dbg_value(ptr %i.aj, !22395, !DIExpression(), !22276)
    #dbg_declare(ptr %i.e, !22396, !DIExpression(), !22277)
    #dbg_value(ptr %i.aj, !22753, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22278)
    #dbg_value(ptr %i.aj, !22751, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22279)
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.ce, align 8, !dbg !22926, !alias.scope !22758, !noalias !22498 ; 2 uses
    #dbg_value(ptr %.sroa.01.0.copyload.i.i.i, !22755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22280)
  store ptr null, ptr %i.ce, align 8, !dbg !22927, !alias.scope !22758, !noalias !22498
  %.not.i.i99.i = icmp eq ptr %.sroa.01.0.copyload.i.i.i, null, !dbg !22928
  br i1 %.not.i.i99.i, label %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.thread.i, label %bb.bb, !dbg !22929

_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.thread.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22930, !noalias !22750
    #dbg_value(ptr %i.aj, !22605, !DIExpression(), !22281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22890, !noalias !22759
    #dbg_value(ptr %i.aj, !22630, !DIExpression(), !22284)
    #dbg_declare(ptr %i.h, !22638, !DIExpression(), !22285)
    #dbg_value(ptr %i.aj, !22626, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22286)
  br label %.thread163.i, !dbg !22891

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i100.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !dbg !22931, !noalias !22498
  store ptr %.sroa.01.0.copyload.i.i.i, ptr %i.e, align 8, !dbg !22932, !noalias !22760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22933, !noalias !22760
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvB2e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %.noexc105.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22934, !noalias !22465

.noexc105.i:                                      ; preds = %bb.bb
  %i.dk = load ptr, ptr %i.d, align 8, !dbg !22933, !noalias !22760, !noundef !1328 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null, !dbg !22933
  %3 = load i64, ptr %i.ck, align 8, !dbg !22935, !noalias !22760 ; 6 uses
  br i1 %i.dl, label %bb.bc, label %bb.bd, !dbg !22936

bb.bc:                                            ; preds = %.noexc105.i
  %i.dm = load ptr, ptr %i.cj, align 8, !dbg !22937, !noalias !22760, !nonnull !1328, !noundef !1328 ; 3 uses
    #dbg_value(ptr %i.dm, !22404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22287)
    #dbg_value(i64 %3, !22404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22287)
    #dbg_value(ptr %i.dm, !5321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22289)
    #dbg_value(i64 %3, !5321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22289)
    #dbg_value(i64 %3, !5326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %3, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(ptr %i.dm, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.dm, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.dm, !5352, !DIExpression(), !22294)
  %i.dn = icmp eq i64 %3, 0, !dbg !22938
  br i1 %i.dn, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader, !dbg !22938

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bc
  %xtraiter = and i64 %3, 7, !dbg !22938          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22938
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !dbg !22938

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.03.019.i.i.i.i.prol = phi ptr [ %i.du, %.lr.ph.i.i.i.i.prol ], [ %i.dm, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.018.i.i.i.i.prol = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i.prol, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i.prol, !5328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i.prol, !5366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i.prol, !5362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.prol, i64 538, !dbg !22939
  %i.dp = load i16, ptr %i.do, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.dq = zext nneg i16 %i.dp to i64, !dbg !22940
    #dbg_value(i64 %i.dq, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.dq, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.dq, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5364, !DIExpression(), !22307)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.prol, i64 544, !dbg !22941
    #dbg_value(ptr %i.dr, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.dr, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.ds = icmp ult i16 %i.dp, 12, !dbg !22942
  call void @llvm.assume(i1 %i.ds), !dbg !22943
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq, !dbg !22944
    #dbg_value(ptr %i.dt, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.dt, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.dt, !5407, !DIExpression(), !22313)
  %i.du = load ptr, ptr %i.dt, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 3 uses
    #dbg_value(ptr %i.du, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.du, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.du, !5352, !DIExpression(), !22294)
  %i.dv = add i64 %.sroa.05.018.i.i.i.i.prol, -1, !dbg !22946 ; 2 uses
    #dbg_value(i64 %i.dv, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %i.dv, !5326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22290)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !22938 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !22938
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !dbg !22938, !llvm.loop !22314

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.du, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.019.i.i.i.i.unr = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.preheader ], [ %i.du, %.lr.ph.i.i.i.i.prol ]
  %.sroa.05.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.dv, %.lr.ph.i.i.i.i.prol ]
  %i.dw = icmp ult i64 %3, 8, !dbg !22938
  br i1 %i.dw, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !22938

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.03.019.i.i.i.i = phi ptr [ %i.ga, %.lr.ph.i.i.i.i ], [ %.sroa.03.019.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.018.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i ], [ %.sroa.05.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i, i64 538, !dbg !22939
  %i.dy = load i16, ptr %i.dx, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.dz = zext nneg i16 %i.dy to i64, !dbg !22940
    #dbg_value(i64 %i.dz, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.dz, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.dz, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5364, !DIExpression(), !22307)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i, i64 544, !dbg !22941
    #dbg_value(ptr %i.ea, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.ea, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.eb = icmp ult i16 %i.dy, 12, !dbg !22942
  call void @llvm.assume(i1 %i.eb), !dbg !22943
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz, !dbg !22944
    #dbg_value(ptr %i.ec, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.ec, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.ec, !5407, !DIExpression(), !22313)
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.ed, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.ed, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.ed, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.ed, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.ed, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.ed, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 538, !dbg !22939
  %i.ef = load i16, ptr %i.ee, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.eg = zext nneg i16 %i.ef to i64, !dbg !22940
    #dbg_value(i64 %i.eg, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.eg, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.eg, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.ed, !5364, !DIExpression(), !22307)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 544, !dbg !22941
    #dbg_value(ptr %i.eh, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.eh, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.ei = icmp ult i16 %i.ef, 12, !dbg !22942
  call void @llvm.assume(i1 %i.ei), !dbg !22943
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg, !dbg !22944
    #dbg_value(ptr %i.ej, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.ej, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.ej, !5407, !DIExpression(), !22313)
  %i.ek = load ptr, ptr %i.ej, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.ek, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.ek, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.ek, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.ek, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.ek, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.ek, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 538, !dbg !22939
  %i.em = load i16, ptr %i.el, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.en = zext nneg i16 %i.em to i64, !dbg !22940
    #dbg_value(i64 %i.en, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.en, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.en, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.ek, !5364, !DIExpression(), !22307)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 544, !dbg !22941
    #dbg_value(ptr %i.eo, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.eo, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.ep = icmp ult i16 %i.em, 12, !dbg !22942
  call void @llvm.assume(i1 %i.ep), !dbg !22943
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.en, !dbg !22944
    #dbg_value(ptr %i.eq, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.eq, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.eq, !5407, !DIExpression(), !22313)
  %i.er = load ptr, ptr %i.eq, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.er, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.er, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.er, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.er, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.er, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.er, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 538, !dbg !22939
  %i.et = load i16, ptr %i.es, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.eu = zext nneg i16 %i.et to i64, !dbg !22940
    #dbg_value(i64 %i.eu, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.eu, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.eu, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.er, !5364, !DIExpression(), !22307)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 544, !dbg !22941
    #dbg_value(ptr %i.ev, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.ev, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.ew = icmp ult i16 %i.et, 12, !dbg !22942
  call void @llvm.assume(i1 %i.ew), !dbg !22943
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eu, !dbg !22944
    #dbg_value(ptr %i.ex, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.ex, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.ex, !5407, !DIExpression(), !22313)
  %i.ey = load ptr, ptr %i.ex, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.ey, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.ey, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.ey, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.ey, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.ey, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.ey, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 538, !dbg !22939
  %i.fa = load i16, ptr %i.ez, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.fb = zext nneg i16 %i.fa to i64, !dbg !22940
    #dbg_value(i64 %i.fb, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.fb, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.fb, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.ey, !5364, !DIExpression(), !22307)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 544, !dbg !22941
    #dbg_value(ptr %i.fc, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.fc, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.fd = icmp ult i16 %i.fa, 12, !dbg !22942
  call void @llvm.assume(i1 %i.fd), !dbg !22943
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb, !dbg !22944
    #dbg_value(ptr %i.fe, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.fe, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.fe, !5407, !DIExpression(), !22313)
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.ff, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.ff, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.ff, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.ff, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.ff, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.ff, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 538, !dbg !22939
  %i.fh = load i16, ptr %i.fg, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.fi = zext nneg i16 %i.fh to i64, !dbg !22940
    #dbg_value(i64 %i.fi, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.fi, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.fi, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.ff, !5364, !DIExpression(), !22307)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 544, !dbg !22941
    #dbg_value(ptr %i.fj, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.fj, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.fk = icmp ult i16 %i.fh, 12, !dbg !22942
  call void @llvm.assume(i1 %i.fk), !dbg !22943
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fi, !dbg !22944
    #dbg_value(ptr %i.fl, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.fl, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.fl, !5407, !DIExpression(), !22313)
  %i.fm = load ptr, ptr %i.fl, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.fm, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.fm, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.fm, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.fm, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.fm, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.fm, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 538, !dbg !22939
  %i.fo = load i16, ptr %i.fn, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.fp = zext nneg i16 %i.fo to i64, !dbg !22940
    #dbg_value(i64 %i.fp, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.fp, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.fp, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.fm, !5364, !DIExpression(), !22307)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 544, !dbg !22941
    #dbg_value(ptr %i.fq, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.fq, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.fr = icmp ult i16 %i.fo, 12, !dbg !22942
  call void @llvm.assume(i1 %i.fr), !dbg !22943
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp, !dbg !22944
    #dbg_value(ptr %i.fs, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.fs, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.fs, !5407, !DIExpression(), !22313)
  %i.ft = load ptr, ptr %i.fs, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.ft, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.ft, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.ft, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.ft, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.ft, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.ft, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 538, !dbg !22939
  %i.fv = load i16, ptr %i.fu, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.fw = zext nneg i16 %i.fv to i64, !dbg !22940
    #dbg_value(i64 %i.fw, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.fw, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.fw, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.ft, !5364, !DIExpression(), !22307)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 544, !dbg !22941
    #dbg_value(ptr %i.fx, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.fx, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.fy = icmp ult i16 %i.fv, 12, !dbg !22942
  call void @llvm.assume(i1 %i.fy), !dbg !22943
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fw, !dbg !22944
    #dbg_value(ptr %i.fz, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.fz, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.fz, !5407, !DIExpression(), !22313)
  %i.ga = load ptr, ptr %i.fz, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.ga, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.ga, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.ga, !5352, !DIExpression(), !22294)
  %i.gb = add i64 %.sroa.05.018.i.i.i.i, -8, !dbg !22946 ; 2 uses
    #dbg_value(i64 %i.gb, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %i.gb, !5326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22290)
  %i.gc = icmp eq i64 %i.gb, 0, !dbg !22938
  br i1 %i.gc, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !22938

_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.bc
  %.sroa.03.0.lcssa.i.i.i.i = phi ptr [ %i.dm, %bb.bc ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ga, %.lr.ph.i.i.i.i ], !dbg !22947 ; 3 uses
    #dbg_value(ptr %.sroa.03.0.lcssa.i.i.i.i, !5327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22315)
    #dbg_value(ptr %.sroa.03.0.lcssa.i.i.i.i, !5417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22317)
    #dbg_value(i64 0, !5327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22315)
    #dbg_value(i64 0, !5417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22317)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i, i64 538, !dbg !22948
  %i.ge = load i16, ptr %i.gd, align 2, !dbg !22948, !noalias !22761, !noundef !1328
  %i.gf = zext i16 %i.ge to i64, !dbg !22949
  store ptr %.sroa.03.0.lcssa.i.i.i.i, ptr %i.ce, align 8, !dbg !22950, !alias.scope !22758, !noalias !22498
  store i64 0, ptr %i.cg, align 8, !dbg !22950, !alias.scope !22758, !noalias !22498
  store i64 %i.gf, ptr %i.ch, align 8, !dbg !22950, !alias.scope !22758, !noalias !22498
  br label %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i, !dbg !22951

bb.bd:                                            ; preds = %.noexc105.i
    #dbg_value(ptr %i.dk, !22399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22320)
  %.sroa.4.0.copyload.i.i = load i64, ptr %i.cj, align 8, !dbg !22952, !noalias !22760
    #dbg_value(i64 %.sroa.4.0.copyload.i.i, !22399, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22320)
    #dbg_value(i64 %3, !22399, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22320)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22953, !noalias !22760
    #dbg_value(ptr undef, !22373, !DIExpression(), !21951)
  store ptr %i.dk, ptr %i.c, align 8, !dbg !22954, !noalias !22760
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.cl, align 8, !dbg !22954, !noalias !22760
  store i64 %3, ptr %2, align 8, !dbg !22954, !noalias !22760
  %i.gg = invoke { ptr, ptr } @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE11into_kv_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %.noexc106.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22955, !noalias !22465 ; 0 uses

.noexc106.i:                                      ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22956, !noalias !22760
    #dbg_value(ptr poison, !22400, !DIExpression(), !22321)
    #dbg_value(ptr poison, !22401, !DIExpression(), !22321)
    #dbg_value(ptr poison, !22402, !DIExpression(), !22322)
    #dbg_value(ptr poison, !22403, !DIExpression(), !22322)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22957, !noalias !22760
  invoke void @_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB2e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %.noexc107.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22958, !noalias !22465

.noexc107.i:                                      ; preds = %.noexc106.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !22959, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22960, !noalias !22760
  %.pre185.pre.i = load ptr, ptr %i.ce, align 8, !dbg !22890, !alias.scope !22762, !noalias !22498
  br label %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i, !dbg !22961

_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i: ; preds = %.noexc107.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit.i.i.i
  %.pre185.i = phi ptr [ %.pre185.pre.i, %.noexc107.i ], [ %.sroa.03.0.lcssa.i.i.i.i, %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit.i.i.i ], !dbg !22890 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22962, !noalias !22760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22930, !noalias !22750
  call void @llvm.experimental.noalias.scope.decl(metadata !22763), !dbg !22889
    #dbg_value(ptr %i.aj, !22605, !DIExpression(), !22281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22890, !noalias !22764
    #dbg_value(ptr %i.aj, !22630, !DIExpression(), !22284)
    #dbg_declare(ptr %i.h, !22638, !DIExpression(), !22285)
    #dbg_value(ptr %i.aj, !22626, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22286)
  %.not.i.i79.i = icmp eq ptr %.pre185.i, null, !dbg !22890
  br i1 %.not.i.i79.i, label %.thread163.i, label %.lr.ph.i, !dbg !22891

bb.be:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !22963, !noalias !22498
    #dbg_value(ptr %i.aj, !22721, !DIExpression(), !22328)
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE11remove_nextB1C_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.v, ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22964, !noalias !22465

bb.bf:                                            ; preds = %bb.az
    #dbg_value(ptr %i.aj, !22495, !DIExpression(), !22329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !22965, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !22965, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !22966, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !22966, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE23insert_before_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.br unwind label %bb.bp, !dbg !22967, !noalias !22465

bb.bg:                                            ; preds = %bb.be
  %i.gh = load i64, ptr %i.v, align 8, !dbg !22963, !range !22726, !noalias !22498, !noundef !1328
  %.not59.i = icmp eq i64 %i.gh, -2, !dbg !22963
  br i1 %.not59.i, label %bb.bi, label %bb.bh, !dbg !22968

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !22969, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !22969, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !22970, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !dbg !22971, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !22972, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !22973, !noalias !22498
  store ptr %i.u, ptr %i.cn, align 8, !dbg !22970, !noalias !22498
    #dbg_value(ptr poison, !22728, !DIExpression(), !22331)
    #dbg_value(ptr poison, !22731, !DIExpression(), !22331)
    #dbg_declare(ptr %i.s, !22732, !DIExpression(), !22332)
    #dbg_declare(ptr %i.co, !22733, !DIExpression(), !22333)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !22974, !noalias !22498
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit109.i unwind label %bb.bo, !dbg !22975, !noalias !22465

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !22976, !noalias !22498
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w)
          to label %bb.bk unwind label %bb.bq, !dbg !22892, !noalias !22465

_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit109.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !22977, !noalias !22498
    #dbg_value(ptr %i.aj, !22490, !DIExpression(), !22334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !22978, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !22978, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE22insert_after_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.bj unwind label %bb.bq, !dbg !22979, !noalias !22465

bb.bj:                                            ; preds = %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !22980, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !22981, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !22976, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !22976, !noalias !22498
  br label %bb.bk, !dbg !22892

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !22892, !noalias !22498
    #dbg_value(ptr %i.x, !1878, !DIExpression(), !22336)
  %i.gi = load i64, ptr %i.x, align 8, !dbg !22982, !range !1882, !alias.scope !22765, !noalias !22498, !noundef !1328
  %i.gj = icmp eq i64 %i.gi, -1, !dbg !22982
  br i1 %i.gj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit115.i, label %bb.bl, !dbg !22982

bb.bl:                                            ; preds = %bb.bk
    #dbg_value(ptr %i.x, !1884, !DIExpression(), !22340)
    #dbg_value(ptr %i.x, !1889, !DIExpression(), !22342)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i111.i unwind label %bb.bm, !dbg !22983, !noalias !22465

bb.bm:                                            ; preds = %bb.bl
  %i.gk = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.x, !1894, !DIExpression(), !22344)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body112.i unwind label %bb.bn, !dbg !22984, !noalias !22465

bb.bn:                                            ; preds = %bb.bm
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !22983, !noalias !22465
  unreachable, !dbg !22983

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i111.i: ; preds = %bb.bl
    #dbg_value(ptr %i.x, !1894, !DIExpression(), !22346)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit115.i unwind label %bb.bp, !dbg !22985, !noalias !22465

bb.bo:                                            ; preds = %bb.bh
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #25
          to label %.thread150.i unwind label %bb.ag, !dbg !22976, !noalias !22465

bb.bp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i111.i, %bb.bf, %.loopexit177.i, %bb.al, %bb.ak
  %lpad.thr_comm.split-lp156.i = landingpad { ptr, i32 }
          cleanup
  br label %.body112.i, !dbg !22892

bb.bq:                                            ; preds = %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit109.i, %bb.bi
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.thread150.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit115.i: ; preds = %bb.bs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i111.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !22892, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !22892, !noalias !22498
  br label %bb.ak, !dbg !22877

bb.br:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !22986, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !22986, !noalias !22498
  br label %bb.bs, !dbg !22987

bb.bs:                                            ; preds = %bb.bt, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !22892, !noalias !22498
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit115.i, !dbg !22892

bb.bt:                                            ; preds = %.loopexit177.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !22988, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !22988, !noalias !22498
  br label %bb.bs, !dbg !22989

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc106.i, %bb.bd, %bb.bb, %bb.ax, %.lr.ph.i, %bb.be
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #25
          to label %.thread150.i unwind label %bb.ag, !dbg !22892, !noalias !22465

.thread150.i:                                     ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq, %bb.bo
  %.pn.pn.ph.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp12, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gn, %bb.bq ], [ %i.gm, %bb.bo ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #25
          to label %.body112.i unwind label %bb.ag, !dbg !22892, !noalias !22465

bb.bu:                                            ; preds = %bb.o
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #25
          to label %bb.ar unwind label %bb.ag, !dbg !22821, !noalias !22465

.thread143.i:                                     ; preds = %bb.ar, %bb.af, %bb.ad
  %.sroa.014.4148.i = phi i1 [ %.sroa.014.4.i, %bb.ar ], [ true, %bb.ad ], [ true, %bb.af ]
  %.pn63.pn147.i = phi { ptr, i32 } [ %.pn63.pn.i, %bb.ar ], [ %i.cb, %bb.ad ], [ %i.cc, %bb.af ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #25
          to label %bb.i unwind label %bb.ag, !dbg !22821, !noalias !22465

bb.bv:                                            ; preds = %.body.thread122.i, %bb.i
  %.pn63.pn.pn119.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread122.i ], [ %.pn63.pn.pn.i, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterINtNtBK_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.an) #25
          to label %.body.thread.i unwind label %bb.ag, !dbg !22801, !noalias !22465

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtB19_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB2p_.exit.i: ; preds = %bb.d, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !22767), !dbg !22801
    #dbg_value(ptr %i.ao, !22768, !DIExpression(), !22351)
  call void @llvm.experimental.noalias.scope.decl(metadata !22770), !dbg !22990
    #dbg_value(ptr %i.ao, !5445, !DIExpression(), !22355)
    #dbg_value(ptr %i.ao, !5447, !DIExpression(), !22357)
    #dbg_declare(ptr %i.a, !5451, !DIExpression(), !22359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22991, !noalias !22771
  %.sroa.01.0.copyload.i.i116.i = load ptr, ptr %i.ao, align 8, !dbg !22992, !alias.scope !22772 ; 3 uses
    #dbg_value(ptr %.sroa.01.0.copyload.i.i116.i, !5455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22361)
    #dbg_value(i64 poison, !5455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22361)
    #dbg_value(i64 poison, !5455, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22361)
    #dbg_value(i64 poison, !5456, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22362)
    #dbg_value(ptr poison, !5456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22362)
    #dbg_value(i64 poison, !5456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22362)
  %.not.i.i117.i = icmp eq ptr %.sroa.01.0.copyload.i.i116.i, null, !dbg !22993
  br i1 %.not.i.i117.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtBK_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i, label %bb.bw, !dbg !22994

bb.bw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtB19_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB2p_.exit.i
  %.sroa.52.0.copyload.i.i.i = load i64, ptr %i.ap, align 8, !dbg !22992, !alias.scope !22772
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!22735 = !{!22206, !22205, !21954, !21955}
!22736 = !{!22208}
!22737 = !{!22208, !21954, !21955}
!22738 = !{!22213, !22208}
!22739 = !{!22225}
!22740 = !{!22227}
!22741 = !{!22227, !22225, !21954, !21955}
!22742 = !{!22227, !22225}
!22743 = !{!22225, !21954, !21955}
!22744 = !{!22238}
!22745 = !{!22239}
!22746 = !{!22261, !22260}
!22747 = !{!22238, !22239, !21955}
!22748 = !{!22264}
!22749 = !{!22267}
!22750 = !{!22264, !21954, !21955}
!22751 = !DILocalVariable(name: "dest", arg: 1, scope: !22268, file: !2983, line: 961, type: !5275)
!22752 = !{!22751}
!22753 = !DILocalVariable(name: "self", arg: 1, scope: !22269, file: !1793, line: 1902, type: !5275)
!22754 = !{!22753}
!22755 = !DILocalVariable(name: "self", arg: 1, scope: !22273, file: !1793, line: 2875, type: !1008)
!22756 = !DILocalVariable(name: "v", scope: !22272, file: !1793, line: 2877, type: !1004, align: 64)
!22757 = !{!22755, !22756}
!22758 = !{!22267, !22264}
!22759 = !{!22283, !21954, !21955}
!22760 = !{!22267, !22264, !21954, !21955}
!22761 = !{!22301, !22267, !22264, !21955}
!22762 = !{!22326, !22324}
!22763 = !{!22324}
!22764 = !{!22324, !21954, !21955}
!22765 = !{!22338}
!22766 = !DILexicalBlockFile(scope: !21945, file: !3915, discriminator: 0)
!22767 = !{!22348}
!22768 = !DILocalVariable(arg: 1, scope: !22349, file: !1876, line: 848, type: !1796)
!22769 = !{!22768}
!22770 = !{!22353}
!22771 = !{!22353, !22348, !21954, !21955}
!22772 = !{!22353, !22348, !21955}
!22773 = !{!22353, !22348}
!22774 = !DILocation(line: 1243, column: 13, scope: !21909)
!22775 = !DILocation(line: 975, column: 22, scope: !21952, inlinedAt: !22461)
!22776 = !DILocation(line: 976, column: 49, scope: !21952, inlinedAt: !22461)
!22777 = !DILocation(line: 1244, column: 14, scope: !21908)
!22778 = !DILocation(line: 2835, column: 9, scope: !21960, inlinedAt: !22007)
!22779 = !DILocation(line: 2858, column: 9, scope: !21957, inlinedAt: !22005)
!22780 = !DILocation(line: 1299, column: 12, scope: !21940, inlinedAt: !21947)
!22781 = !DILocation(line: 2835, column: 9, scope: !21960, inlinedAt: !21961)
!22782 = !DILocation(line: 2858, column: 9, scope: !21957, inlinedAt: !21958)
!22783 = !DILocation(line: 1304, column: 12, scope: !21940, inlinedAt: !21947)
!22784 = !DILocation(line: 1309, column: 13, scope: !21940, inlinedAt: !21947)
!22785 = !DILocation(line: 1309, column: 30, scope: !21940, inlinedAt: !21947)
!22786 = !DILocation(line: 1892, column: 29, scope: !22010, inlinedAt: !22013)
!22787 = !DILocation(line: 1892, column: 16, scope: !22010, inlinedAt: !22013)
!22788 = !DILocation(line: 1528, column: 18, scope: !22037, inlinedAt: !22042)
!22789 = !DILocation(line: 2633, column: 1, scope: !22017, inlinedAt: !22018)
!22790 = !DILocation(line: 1895, column: 13, scope: !22009, inlinedAt: !22013)
!22791 = !DILocation(line: 1892, column: 9, scope: !22011, inlinedAt: !22013)
!22792 = !DILocation(line: 0, scope: !22011, inlinedAt: !22013)
!22793 = !DILocation(line: 1310, column: 50, scope: !21941, inlinedAt: !21947)
!22794 = !DILocation(line: 1975, column: 14, scope: !22050, inlinedAt: !22051)
!22795 = !DILocation(line: 1164, column: 15, scope: !22055, inlinedAt: !22056)
!22796 = !DILocation(line: 1164, column: 9, scope: !22055, inlinedAt: !22056)
!22797 = !DILocation(line: 1975, column: 48, scope: !22059, inlinedAt: !22060)
!22798 = !DILocation(line: 1976, column: 6, scope: !22050, inlinedAt: !22051)
!22799 = !DILocation(line: 1014, column: 9, scope: !21972, inlinedAt: !21973)
!22800 = !DILocation(line: 0, scope: !21940, inlinedAt: !21947)
!22801 = !DILocation(line: 1401, column: 5, scope: !21940, inlinedAt: !21947)
!22802 = !DILocation(line: 1014, column: 15, scope: !21972, inlinedAt: !21973)
!22803 = !DILocation(line: 1310, column: 14, scope: !21941, inlinedAt: !21947)
!22804 = !DILocation(line: 1015, column: 18, scope: !21972, inlinedAt: !21973)
!22805 = !DILocation(line: 1310, column: 31, scope: !21941, inlinedAt: !21947)
!22806 = !DILocation(line: 1310, column: 75, scope: !21941, inlinedAt: !21947)
!22807 = !DILocation(line: 1314, column: 13, scope: !21942, inlinedAt: !21947)
!22808 = !DILocation(line: 1314, column: 36, scope: !21942, inlinedAt: !21947)
!22809 = !DILocation(line: 767, column: 15, scope: !22084, inlinedAt: !22085)
!22810 = !DILocation(line: 767, column: 9, scope: !22084, inlinedAt: !22085)
!22811 = !DILocation(line: 659, column: 27, scope: !22088, inlinedAt: !22089)
!22812 = !DILocation(line: 2974, column: 9, scope: !22074, inlinedAt: !22079)
!22813 = !DILocation(line: 2973, column: 30, scope: !22076, inlinedAt: !22079)
!22814 = !DILocation(line: 2962, column: 24, scope: !22077, inlinedAt: !22079)
!22815 = !DILocation(line: 280, column: 9, scope: !22092, inlinedAt: !22095)
!22816 = !DILocation(line: 0, scope: !22077, inlinedAt: !22079)
!22817 = !DILocation(line: 767, column: 15, scope: !22109, inlinedAt: !22118)
!22818 = !DILocation(line: 767, column: 9, scope: !22109, inlinedAt: !22118)
!22819 = !DILocation(line: 1016, column: 21, scope: !21972, inlinedAt: !21973)
!22820 = !DILocation(line: 0, scope: !21941, inlinedAt: !21947)
!22821 = !DILocation(line: 1401, column: 5, scope: !21941, inlinedAt: !21947)
!22822 = !DILocation(line: 1316, column: 50, scope: !21939, inlinedAt: !21947)
!22823 = !DILocation(line: 3300, column: 33, scope: !22099, inlinedAt: !22100)
!22824 = !DILocation(line: 3402, column: 18, scope: !22115, inlinedAt: !22117)
!22825 = !DILocation(line: 446, column: 27, scope: !22133, inlinedAt: !22134)
!22826 = !DILocation(line: 870, column: 9, scope: !22130, inlinedAt: !22131)
!22827 = !DILocation(line: 3402, column: 52, scope: !22115, inlinedAt: !22117)
!22828 = !DILocation(line: 3402, column: 60, scope: !22115, inlinedAt: !22117)
!22829 = !DILocation(line: 714, column: 15, scope: !22121, inlinedAt: !22122)
!22830 = !DILocation(line: 714, column: 9, scope: !22121, inlinedAt: !22122)
!22831 = !DILocation(line: 3402, column: 65, scope: !22115, inlinedAt: !22117)
!22832 = !DILocation(line: 0, scope: !22656, inlinedAt: !22117)
!22833 = !DILocation(line: 715, column: 16, scope: !22121, inlinedAt: !22122)
!22834 = !DILocation(line: 3402, column: 68, scope: !22115, inlinedAt: !22117)
!22835 = !DILocation(line: 3404, column: 6, scope: !22116, inlinedAt: !22117)
!22836 = !DILocation(line: 1316, column: 16, scope: !21939, inlinedAt: !21947)
!22837 = !DILocation(line: 2876, column: 15, scope: !22140, inlinedAt: !22141)
!22838 = !DILocation(line: 1346, column: 53, scope: !21943, inlinedAt: !21947)
!22839 = !DILocation(line: 1346, column: 70, scope: !21943, inlinedAt: !21947)
!22840 = !DILocation(line: 3678, column: 29, scope: !21983, inlinedAt: !21987)
!22841 = !DILocation(line: 1317, column: 19, scope: !21939, inlinedAt: !21947)
!22842 = !DILocation(line: 0, scope: !22155, inlinedAt: !22156)
!22843 = !DILocation(line: 0, scope: !22155, inlinedAt: !22158)
!22844 = !DILocation(line: 328, column: 20, scope: !22161, inlinedAt: !22171)
!22845 = !DILocation(line: 331, column: 22, scope: !22162, inlinedAt: !22171)
!22846 = !DILocation(line: 339, column: 34, scope: !22165, inlinedAt: !22171)
!22847 = !DILocation(line: 340, column: 12, scope: !22166, inlinedAt: !22171)
!22848 = !DILocation(line: 2348, column: 21, scope: !22160, inlinedAt: !22172)
!22849 = !DILocation(line: 1317, column: 13, scope: !21939, inlinedAt: !21947)
!22850 = !DILocation(line: 0, scope: !22720, inlinedAt: !21947)
!22851 = !DILocation(line: 1339, column: 21, scope: !21939, inlinedAt: !21947)
!22852 = !DILocation(line: 1324, column: 43, scope: !21938, inlinedAt: !21947)
!22853 = !DILocation(line: 3717, column: 20, scope: !22186, inlinedAt: !22187)
!22854 = !DILocation(line: 1336, column: 57, scope: !21939, inlinedAt: !21947)
!22855 = !DILocation(line: 1336, column: 74, scope: !21939, inlinedAt: !21947)
!22856 = !DILocation(line: 3678, column: 29, scope: !21983, inlinedAt: !21984)
!22857 = !DILocation(line: 1324, column: 28, scope: !21938, inlinedAt: !21947)
!22858 = !DILocation(line: 1324, column: 34, scope: !21938, inlinedAt: !21947)
!22859 = !DILocation(line: 1324, column: 37, scope: !21938, inlinedAt: !21947)
!22860 = !DILocation(line: 1325, column: 33, scope: !21938, inlinedAt: !21947)
!22861 = !DILocation(line: 1325, column: 29, scope: !21938, inlinedAt: !21947)
!22862 = !DILocation(line: 1325, column: 49, scope: !21938, inlinedAt: !21947)
!22863 = !DILocation(line: 1244, column: 56, scope: !22190, inlinedAt: !22191)
!22864 = !DILocation(line: 1244, column: 64, scope: !22190, inlinedAt: !22191)
!22865 = !DILocation(line: 1330, column: 21, scope: !21939, inlinedAt: !21947)
!22866 = !DILocation(line: 1324, column: 21, scope: !21939, inlinedAt: !21947)
!22867 = !DILocation(line: 1325, column: 64, scope: !21938, inlinedAt: !21947)
!22868 = !DILocation(line: 1329, column: 69, scope: !21937, inlinedAt: !21947)
!22869 = !DILocation(line: 3659, column: 29, scope: !21979, inlinedAt: !21980)
!22870 = !DILocation(line: 1329, column: 73, scope: !21937, inlinedAt: !21947)
!22871 = !DILocation(line: 1330, column: 21, scope: !21938, inlinedAt: !21947)
!22872 = !DILocation(line: 1293, column: 5, scope: !21940, inlinedAt: !21947)
!22873 = !DILocation(line: 1336, column: 89, scope: !21939, inlinedAt: !21947)
!22874 = !DILocation(line: 1335, column: 17, scope: !21939, inlinedAt: !21947)
!22875 = !DILocation(line: 0, scope: !21943, inlinedAt: !21947)
!22876 = !DILocation(line: 1350, column: 39, scope: !21943, inlinedAt: !21947)
!22877 = !DILocation(line: 1350, column: 9, scope: !21944, inlinedAt: !21947)
!22878 = !DILocation(line: 1346, column: 85, scope: !21943, inlinedAt: !21947)
!22879 = !DILocation(line: 1316, column: 9, scope: !21943, inlinedAt: !21947)
!22880 = !DILocation(line: 1350, column: 39, scope: !21944, inlinedAt: !21947)
!22881 = !DILocation(line: 1975, column: 14, scope: !22050, inlinedAt: !22196)
!22882 = !DILocation(line: 1164, column: 15, scope: !22055, inlinedAt: !22198)
!22883 = !DILocation(line: 1164, column: 9, scope: !22055, inlinedAt: !22198)
!22884 = !DILocation(line: 1975, column: 48, scope: !22059, inlinedAt: !22201)
!22885 = !DILocation(line: 1976, column: 6, scope: !22050, inlinedAt: !22196)
!22886 = !DILocation(line: 1400, column: 9, scope: !21943, inlinedAt: !21947)
!22887 = !DILocation(line: 1350, column: 14, scope: !21944, inlinedAt: !21947)
!22888 = !DILocation(line: 1350, column: 25, scope: !21944, inlinedAt: !21947)
!22889 = !DILocation(line: 1352, column: 58, scope: !21946, inlinedAt: !21947)
!22890 = !DILocation(line: 767, column: 15, scope: !22109, inlinedAt: !22211)
!22891 = !DILocation(line: 767, column: 9, scope: !22109, inlinedAt: !22211)
!22892 = !DILocation(line: 1400, column: 9, scope: !21944, inlinedAt: !21947)
!22893 = !DILocation(line: 1401, column: 5, scope: !21942, inlinedAt: !21947)
!22894 = !DILocation(line: 848, column: 1, scope: !164, inlinedAt: !22218)
!22895 = !DILocation(line: 848, column: 1, scope: !165, inlinedAt: !22220)
!22896 = !DILocation(line: 848, column: 1, scope: !165, inlinedAt: !22222)
!22897 = !DILocation(line: 3300, column: 33, scope: !22099, inlinedAt: !22209)
!22898 = !DILocation(line: 3402, column: 18, scope: !22115, inlinedAt: !22210)
!22899 = !DILocation(line: 870, column: 9, scope: !22130, inlinedAt: !22229)
!22900 = !DILocation(line: 446, column: 27, scope: !22133, inlinedAt: !22231)
!22901 = !DILocation(line: 3402, column: 52, scope: !22115, inlinedAt: !22210)
!22902 = !DILocation(line: 3402, column: 60, scope: !22115, inlinedAt: !22210)
!22903 = !DILocation(line: 714, column: 15, scope: !22121, inlinedAt: !22232)
!22904 = !DILocation(line: 714, column: 9, scope: !22121, inlinedAt: !22232)
!22905 = !DILocation(line: 3402, column: 65, scope: !22115, inlinedAt: !22210)
!22906 = !DILocation(line: 0, scope: !22656, inlinedAt: !22210)
!22907 = !DILocation(line: 715, column: 16, scope: !22121, inlinedAt: !22232)
!22908 = !DILocation(line: 3402, column: 68, scope: !22115, inlinedAt: !22210)
!22909 = !DILocation(line: 3404, column: 6, scope: !22116, inlinedAt: !22210)
!22910 = !DILocation(line: 1352, column: 24, scope: !21946, inlinedAt: !21947)
!22911 = !DILocation(line: 2876, column: 15, scope: !22140, inlinedAt: !22233)
!22912 = !DILocation(line: 1395, column: 61, scope: !21945, inlinedAt: !21947)
!22913 = !DILocation(line: 1395, column: 72, scope: !21945, inlinedAt: !21947)
!22914 = !DILocation(line: 3678, column: 29, scope: !21983, inlinedAt: !22002)
!22915 = !DILocation(line: 1353, column: 27, scope: !21946, inlinedAt: !21947)
!22916 = !DILocation(line: 0, scope: !22155, inlinedAt: !22242)
!22917 = !DILocation(line: 0, scope: !22155, inlinedAt: !22244)
!22918 = !DILocation(line: 328, column: 20, scope: !22161, inlinedAt: !22248)
!22919 = !DILocation(line: 331, column: 22, scope: !22162, inlinedAt: !22248)
!22920 = !DILocation(line: 339, column: 34, scope: !22165, inlinedAt: !22248)
!22921 = !DILocation(line: 340, column: 12, scope: !22166, inlinedAt: !22248)
!22922 = !DILocation(line: 2348, column: 21, scope: !22160, inlinedAt: !22249)
!22923 = !DILocation(line: 1353, column: 21, scope: !21946, inlinedAt: !21947)
!22924 = !DILocation(line: 1383, column: 41, scope: !21946, inlinedAt: !21947)
!22925 = !DILocation(line: 3279, column: 33, scope: !21933, inlinedAt: !21948)
!22926 = !DILocation(line: 975, column: 22, scope: !22268, inlinedAt: !22271)
!22927 = !DILocation(line: 976, column: 49, scope: !22268, inlinedAt: !22271)
!22928 = !DILocation(line: 2876, column: 15, scope: !22273, inlinedAt: !22274)
!22929 = !DILocation(line: 2876, column: 9, scope: !22273, inlinedAt: !22274)
!22930 = !DILocation(line: 3366, column: 6, scope: !21921, inlinedAt: !21949)
!22931 = !DILocation(line: 2877, column: 18, scope: !22273, inlinedAt: !22274)
!22932 = !DILocation(line: 3349, column: 23, scope: !21921, inlinedAt: !21949)
!22933 = !DILocation(line: 3350, column: 15, scope: !21922, inlinedAt: !21949)
!22934 = !DILocation(line: 3350, column: 23, scope: !21922, inlinedAt: !21949)
!22935 = !DILocation(line: 0, scope: !21922, inlinedAt: !21949)
!22936 = !DILocation(line: 3350, column: 9, scope: !21922, inlinedAt: !21949)
!22937 = !DILocation(line: 3361, column: 17, scope: !21922, inlinedAt: !21949)
!22938 = !DILocation(line: 751, column: 12, scope: !1037, inlinedAt: !22291)
!22939 = !DILocation(line: 291, column: 30, scope: !1043, inlinedAt: !22299)
!22940 = !DILocation(line: 154, column: 17, scope: !1044, inlinedAt: !22302)
!22941 = !DILocation(line: 1151, column: 29, scope: !1040, inlinedAt: !22293)
!22942 = !DILocation(line: 218, column: 39, scope: !1048, inlinedAt: !22305)
!22943 = !DILocation(line: 218, column: 13, scope: !1048, inlinedAt: !22305)
!22944 = !DILocation(line: 219, column: 13, scope: !1048, inlinedAt: !22305)
!22945 = !DILocation(line: 1758, column: 9, scope: !1051, inlinedAt: !22312)
!22946 = !DILocation(line: 1152, column: 33, scope: !1041, inlinedAt: !22293)
!22947 = !DILocation(line: 0, scope: !1032, inlinedAt: !22288)
!22948 = !DILocation(line: 291, column: 30, scope: !1053, inlinedAt: !22318)
!22949 = !DILocation(line: 154, column: 17, scope: !1044, inlinedAt: !22319)
!22950 = !DILocation(line: 3362, column: 17, scope: !21916, inlinedAt: !21949)
!22951 = !DILocation(line: 3364, column: 13, scope: !21922, inlinedAt: !21949)
!22952 = !DILocation(line: 3351, column: 16, scope: !21922, inlinedAt: !21949)
!22953 = !DILocation(line: 3355, column: 39, scope: !21923, inlinedAt: !21949)
!22954 = !DILocation(line: 870, column: 9, scope: !21910, inlinedAt: !21950)
!22955 = !DILocation(line: 3355, column: 57, scope: !21923, inlinedAt: !21949)
!22956 = !DILocation(line: 3355, column: 69, scope: !21923, inlinedAt: !21949)
!22957 = !DILocation(line: 3357, column: 32, scope: !21917, inlinedAt: !21949)
!22958 = !DILocation(line: 3357, column: 40, scope: !21917, inlinedAt: !21949)
!22959 = !DILocation(line: 3357, column: 17, scope: !21917, inlinedAt: !21949)
!22960 = !DILocation(line: 3357, column: 56, scope: !21917, inlinedAt: !21949)
!22961 = !DILocation(line: 3360, column: 13, scope: !21922, inlinedAt: !21949)
!22962 = !DILocation(line: 3365, column: 9, scope: !21922, inlinedAt: !21949)
!22963 = !DILocation(line: 1360, column: 51, scope: !21936, inlinedAt: !21947)
!22964 = !DILocation(line: 3717, column: 20, scope: !22186, inlinedAt: !22327)
!22965 = !DILocation(line: 1373, column: 69, scope: !21946, inlinedAt: !21947)
!22966 = !DILocation(line: 1373, column: 80, scope: !21946, inlinedAt: !21947)
!22967 = !DILocation(line: 3678, column: 29, scope: !21983, inlinedAt: !21999)
!22968 = !DILocation(line: 1360, column: 36, scope: !21936, inlinedAt: !21947)
!22969 = !DILocation(line: 1360, column: 42, scope: !21936, inlinedAt: !21947)
!22970 = !DILocation(line: 1361, column: 41, scope: !21936, inlinedAt: !21947)
!22971 = !DILocation(line: 1360, column: 45, scope: !21936, inlinedAt: !21947)
!22972 = !DILocation(line: 1361, column: 37, scope: !21936, inlinedAt: !21947)
!22973 = !DILocation(line: 1361, column: 57, scope: !21936, inlinedAt: !21947)
!22974 = !DILocation(line: 1244, column: 56, scope: !22190, inlinedAt: !22330)
!22975 = !DILocation(line: 1244, column: 64, scope: !22190, inlinedAt: !22330)
!22976 = !DILocation(line: 1366, column: 29, scope: !21946, inlinedAt: !21947)
!22977 = !DILocation(line: 1361, column: 66, scope: !21936, inlinedAt: !21947)
!22978 = !DILocation(line: 1365, column: 77, scope: !21935, inlinedAt: !21947)
!22979 = !DILocation(line: 3659, column: 29, scope: !21979, inlinedAt: !21996)
!22980 = !DILocation(line: 1365, column: 81, scope: !21935, inlinedAt: !21947)
!22981 = !DILocation(line: 1366, column: 29, scope: !21936, inlinedAt: !21947)
!22982 = !DILocation(line: 848, column: 1, scope: !162, inlinedAt: !22335)
!22983 = !DILocation(line: 848, column: 1, scope: !164, inlinedAt: !22341)
!22984 = !DILocation(line: 848, column: 1, scope: !165, inlinedAt: !22343)
!22985 = !DILocation(line: 848, column: 1, scope: !165, inlinedAt: !22345)
!22986 = !DILocation(line: 1373, column: 89, scope: !21946, inlinedAt: !21947)
!22987 = !DILocation(line: 0, scope: !22766, inlinedAt: !21947)
!22988 = !DILocation(line: 1395, column: 81, scope: !21945, inlinedAt: !21947)
!22989 = !DILocation(line: 1397, column: 21, scope: !21945, inlinedAt: !21947)
!22990 = !DILocation(line: 848, column: 1, scope: !22349, inlinedAt: !22350)
!22991 = !DILocation(line: 209, column: 14, scope: !1059, inlinedAt: !22354)
!22992 = !DILocation(line: 1758, column: 9, scope: !1060, inlinedAt: !22356)
!22993 = !DILocation(line: 1892, column: 29, scope: !1063, inlinedAt: !22360)
!22994 = !DILocation(line: 1892, column: 16, scope: !1063, inlinedAt: !22360)
!22995 = !DILocation(line: 1895, column: 13, scope: !1062, inlinedAt: !22360)
!22996 = !DILocation(line: 1892, column: 9, scope: !1064, inlinedAt: !22360)
!22997 = !DILocation(line: 0, scope: !1064, inlinedAt: !22360)
!22998 = !DILocation(line: 1049, column: 1, scope: !1061, inlinedAt: !22358)
!22999 = !DILocation(line: 209, column: 52, scope: !1059, inlinedAt: !22354)
!23000 = !DILocation(line: 1245, column: 5, scope: !21909)
!23001 = !DILocation(line: 1245, column: 6, scope: !21909)
!23002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VacantEntry<alloc::borrow::Cow<str>, tera::value::Value, alloc::alloc::Global>", scope: !1850, file: !1113, size: 448, align: 64, flags: DIFlagPublic, elements: !23055, templateParams: !1742, identifier: "896cff8490a0319935e04228a33b161b")
!23003 = distinct !DILexicalBlock(scope: !23005, file: !1619, line: 1053, column: 13)
!23004 = distinct !DILexicalBlock(scope: !23005, file: !1619, line: 1052, column: 13)
!23005 = distinct !DISubprogram(name: "insert<alloc::borrow::Cow<str>, tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6insertB1w_", scope: !121, file: !1619, line: 1047, type: !23042, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, templateParams: !1742, declaration: !23043, retainedNodes: !23049)
!23006 = distinct !DISubprogram(name: "insert<alloc::borrow::Cow<str>, tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6insertB1I_", scope: !23002, file: !1849, line: 425, type: !23063, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, templateParams: !1742, declaration: !23064, retainedNodes: !23066)
!23007 = distinct !{!23007, i1 true, !"_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE5entryB1w_"}
!23008 = distinct !{!23008, !23007, !"_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE5entryB1w_: argument 0"}
!23009 = distinct !{!23009, !23007, !"_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE5entryB1w_: argument 1"}
!23010 = distinct !{!23010, !23007, !"_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE5entryB1w_: argument 2"}
!23011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Occupied", scope: !23014, file: !1113, size: 448, align: 64, flags: DIFlagPublic, elements: !23081, templateParams: !1742, identifier: "6da5f3d5172dd2883a6429ea5893ec41")
!23012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vacant", scope: !23014, file: !1113, size: 448, align: 64, flags: DIFlagPublic, elements: !23083, templateParams: !1742, identifier: "2148a5f0dad08e708f196abbe1ee27eb")
!23013 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23014, file: !1113, size: 448, align: 64, elements: !23079, templateParams: !1328, identifier: "845de886e4c9e17cd49d39de6af198", discriminator: !23084)
!23014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Entry<alloc::borrow::Cow<str>, tera::value::Value, alloc::alloc::Global>", scope: !1850, file: !1113, size: 448, align: 64, flags: DIFlagPublic, elements: !23076, templateParams: !1328, identifier: "859f3814da5ba9665d01da49316ccf76")
!23015 = distinct !DILexicalBlock(scope: !23017, file: !1619, line: 1523, column: 17)
!23016 = distinct !DILexicalBlock(scope: !23017, file: !1619, line: 1517, column: 17)
!23017 = distinct !DILexicalBlock(scope: !23018, file: !1619, line: 1516, column: 13)
!23018 = distinct !DILexicalBlock(scope: !23019, file: !1619, line: 1507, column: 9)
!23019 = distinct !DISubprogram(name: "entry<alloc::borrow::Cow<str>, tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE5entryB1w_", scope: !121, file: !1619, line: 1503, type: !23075, scopeLine: 1503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, templateParams: !1742, declaration: !23085, retainedNodes: !23092)
!23020 = distinct !DILocation(line: 1051, column: 20, scope: !23005)
!23021 = distinct !DILocation(line: 0, scope: !23019, inlinedAt: !23020)
!23022 = distinct !DILocation(line: 1503, column: 29, scope: !23019, inlinedAt: !23020)
!23023 = distinct !DILocation(line: 1523, column: 24, scope: !23015, inlinedAt: !23020)
!23024 = distinct !DILocation(line: 0, scope: !23018, inlinedAt: !23020)
!23025 = distinct !DILocation(line: 1516, column: 18, scope: !23017, inlinedAt: !23020)
!23026 = distinct !DISubprogram(name: "borrow_mut<alloc::borrow::Cow<str>, tera::value::Value, alloc::collections::btree::node::marker::LeafOrInternal>", linkageName: "_RNvMst_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5OwnedINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB19_14LeafOrInternalE10borrow_mutB1Q_", scope: !116, file: !1794, line: 658, type: !1873, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, templateParams: !1874, declaration: !1875, retainedNodes: !23094)
!23027 = distinct !DILocation(line: 1516, column: 46, scope: !23017, inlinedAt: !23020)
!23028 = distinct !DILocation(line: 658, column: 30, scope: !23026, inlinedAt: !23027)
!23029 = distinct !DILocation(line: 1532, column: 5, scope: !23019, inlinedAt: !23020)
!23030 = distinct !DILocation(line: 0, scope: !162, inlinedAt: !23029)
!23031 = distinct !{!23031, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera"}
!23032 = distinct !{!23032, !23031, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera: argument 0"}
!23033 = distinct !DILocation(line: 848, column: 1, scope: !162, inlinedAt: !23029)
!23034 = distinct !DILocation(line: 0, scope: !163, inlinedAt: !23033)
!23035 = distinct !DILocation(line: 848, column: 1, scope: !163, inlinedAt: !23033)
!23036 = distinct !DILocation(line: 0, scope: !164, inlinedAt: !23035)
!23037 = distinct !DILocation(line: 848, column: 1, scope: !164, inlinedAt: !23035)
!23038 = distinct !DILocation(line: 0, scope: !165, inlinedAt: !23037)
!23039 = distinct !DILocation(line: 848, column: 1, scope: !164, inlinedAt: !23035)
!23040 = distinct !DILocation(line: 0, scope: !165, inlinedAt: !23039)
!23041 = !{!142, !1796, !90, !83}
!23042 = !DISubroutineType(types: !23041)
!23043 = !DISubprogram(name: "insert<alloc::borrow::Cow<str>, tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6insertB1w_", scope: !121, file: !1619, line: 1047, type: !23042, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1742)
!23044 = !DILocalVariable(name: "self", arg: 1, scope: !23005, file: !1619, line: 1047, type: !1796)
!23045 = !DILocalVariable(name: "key", arg: 2, scope: !23005, file: !1619, line: 1047, type: !90)
!23046 = !DILocalVariable(name: "value", arg: 3, scope: !23005, file: !1619, line: 1047, type: !83)
!23047 = !DILocalVariable(name: "entry", scope: !23004, file: !1619, line: 1052, type: !157, align: 64)
!23048 = !DILocalVariable(name: "entry", scope: !23003, file: !1619, line: 1053, type: !23002, align: 64)
!23049 = !{!23044, !23045, !23046, !23047, !23048}
!23050 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !23002, file: !1113, baseType: !90, size: 192, align: 64, flags: DIFlagProtected)
!23051 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !23002, file: !1113, baseType: !1008, size: 192, align: 64, offset: 256, flags: DIFlagProtected)
!23052 = !DIDerivedType(tag: DW_TAG_member, name: "dormant_map", scope: !23002, file: !1113, baseType: !155, size: 64, align: 64, offset: 192, flags: DIFlagProtected)
!23053 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !23002, file: !1113, baseType: !1, align: 8, offset: 448, flags: DIFlagProtected)
!23054 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !23002, file: !1113, baseType: !156, align: 8, offset: 448, flags: DIFlagProtected)
!23055 = !{!23050, !23051, !23052, !23053, !23054}
!23056 = !DILocation(line: 0, scope: !23005)
!23057 = !DILocation(line: 1047, column: 30, scope: !23005)
!23058 = !DILocation(line: 1047, column: 38, scope: !23005)
!23059 = !DILocation(line: 1052, column: 22, scope: !23004)
!23060 = !DILocation(line: 1053, column: 20, scope: !23003)
!23061 = !DILocalVariable(name: "self", arg: 1, scope: !23006, file: !1849, line: 425, type: !23002)
!23062 = !{!3653, !23002, !83}
!23063 = !DISubroutineType(types: !23062)
!23064 = !DISubprogram(name: "insert<alloc::borrow::Cow<str>, tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6insertB1I_", scope: !23002, file: !1849, line: 425, type: !23063, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1742)
!23065 = !DILocalVariable(name: "value", arg: 2, scope: !23006, file: !1849, line: 425, type: !83)
!23066 = !{!23061, !23065}
!23067 = !DILocation(line: 1054, column: 23, scope: !23003)
!23068 = !DILocation(line: 425, column: 19, scope: !23006, inlinedAt: !23067)
!23069 = !DILocation(line: 425, column: 25, scope: !23006, inlinedAt: !23067)
!23070 = !{!23008}
!23071 = !{!23009}
!23072 = !{!23010}
!23073 = !DILocalVariable(name: "self", arg: 1, scope: !23019, file: !1619, line: 1503, type: !1796)
!23074 = !{!23014, !1796, !90}
!23075 = !DISubroutineType(types: !23074)
!23076 = !{!23013}
!23077 = !DIDerivedType(tag: DW_TAG_member, name: "Vacant", scope: !23013, file: !1113, baseType: !23012, size: 448, align: 64)
!23078 = !DIDerivedType(tag: DW_TAG_member, name: "Occupied", scope: !23013, file: !1113, baseType: !23011, size: 448, align: 64, extraData: i64 -2)
!23079 = !{!23077, !23078}
!23080 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23011, file: !1113, baseType: !157, size: 256, align: 64, offset: 64, flags: DIFlagPublic)
!23081 = !{!23080}
!23082 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23012, file: !1113, baseType: !23002, size: 448, align: 64, flags: DIFlagPublic)
!23083 = !{!23082}
!23084 = !DIDerivedType(tag: DW_TAG_member, scope: !23014, file: !1113, baseType: !1161, size: 64, align: 64, flags: DIFlagArtificial)
!23085 = !DISubprogram(name: "entry<alloc::borrow::Cow<str>, tera::value::Value, alloc::alloc::Global>", linkageName: "_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE5entryB1w_", scope: !121, file: !1619, line: 1503, type: !23075, scopeLine: 1503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1742)
!23086 = !DILocalVariable(name: "key", arg: 2, scope: !23019, file: !1619, line: 1503, type: !90)
!23087 = !DILocalVariable(name: "map", scope: !23018, file: !1619, line: 1507, type: !1796, align: 64)
!23088 = !DILocalVariable(name: "dormant_map", scope: !23018, file: !1619, line: 1507, type: !155, align: 64)
!23089 = !DILocalVariable(name: "root", scope: !23017, file: !1619, line: 1516, type: !1815, align: 64)
!23090 = !DILocalVariable(name: "handle", scope: !23016, file: !1619, line: 1517, type: !147, align: 64)
!23091 = !DILocalVariable(name: "handle", scope: !23015, file: !1619, line: 1523, type: !1004, align: 64)
!23092 = !{!23073, !23086, !23087, !23088, !23089, !23090, !23091}
!23093 = !DILocalVariable(name: "self", arg: 1, scope: !23026, file: !1794, line: 658, type: !1815)
!23094 = !{!23093}
!23095 = !{!23008, !23009, !23010}
!23096 = !{!23008, !23009}
!23097 = !{!23008, !23010}
!23098 = !{!23009, !23010}
!23099 = !{!23032, !23010}
!23100 = !DILocation(line: 1051, column: 15, scope: !23005)
!23101 = !DILocation(line: 1051, column: 20, scope: !23005)
!23102 = !DILocation(line: 1508, column: 15, scope: !23018, inlinedAt: !23020)
!23103 = !DILocation(line: 1508, column: 9, scope: !23018, inlinedAt: !23020)
!23104 = !DILocation(line: 1516, column: 41, scope: !23017, inlinedAt: !23020)
!23105 = !DILocation(line: 659, column: 27, scope: !23026, inlinedAt: !23027)
!23106 = !DILocation(line: 1516, column: 59, scope: !23017, inlinedAt: !23020)
!23107 = !DILocation(line: 1510, column: 17, scope: !23018, inlinedAt: !23020)
!23108 = !DILocation(line: 1515, column: 14, scope: !23018, inlinedAt: !23020)
!23109 = !DILocation(line: 1503, column: 5, scope: !23019, inlinedAt: !23020)
!23110 = !DILocation(line: 1516, column: 35, scope: !23017, inlinedAt: !23020)
!23111 = !DILocation(line: 0, scope: !23017, inlinedAt: !23020)
!23112 = !DILocation(line: 1517, column: 23, scope: !23017, inlinedAt: !23020)
!23113 = !DILocation(line: 1530, column: 13, scope: !23018, inlinedAt: !23020)
!23114 = !DILocation(line: 848, column: 1, scope: !162, inlinedAt: !23029)
!23115 = !DILocation(line: 848, column: 1, scope: !164, inlinedAt: !23035)
!23116 = !DILocation(line: 848, column: 1, scope: !165, inlinedAt: !23037)
!23117 = !DILocation(line: 848, column: 1, scope: !165, inlinedAt: !23039)
!23118 = !DILocation(line: 1523, column: 24, scope: !23017, inlinedAt: !23020)
!23119 = !DILocation(line: 1524, column: 21, scope: !23015, inlinedAt: !23020)
!23120 = !DILocation(line: 1532, column: 5, scope: !23019, inlinedAt: !23020)
!23121 = !DILocation(line: 1058, column: 5, scope: !23005)
!23122 = !DILocation(line: 0, scope: !23018, inlinedAt: !23020)
!23123 = !DILocation(line: 1051, column: 9, scope: !23005)
!23124 = !DILocation(line: 1052, column: 22, scope: !23005)
!23125 = !DILocation(line: 1052, column: 54, scope: !23004)
!23126 = !DILocation(line: 1052, column: 47, scope: !23004)
!23127 = !DILocation(line: 1052, column: 59, scope: !23004)
!23128 = !DILocation(line: 1052, column: 60, scope: !23005)
!23129 = !DILocation(line: 1053, column: 20, scope: !23005)
!23130 = !DILocation(line: 1054, column: 30, scope: !23003)
!23131 = !DILocation(line: 426, column: 9, scope: !23006, inlinedAt: !23067)
!23132 = !DILocation(line: 426, column: 14, scope: !23006, inlinedAt: !23067)
!23133 = !DILocation(line: 426, column: 34, scope: !23006, inlinedAt: !23067)
!23134 = !DILocation(line: 426, column: 43, scope: !23006, inlinedAt: !23067)
!23135 = !DILocation(line: 1054, column: 35, scope: !23003)
!23136 = !DILocation(line: 1055, column: 17, scope: !23003)
!23137 = !DILocation(line: 1056, column: 13, scope: !23005)
!23138 = !DILocation(line: 1057, column: 9, scope: !23005)
!23139 = !DILocation(line: 1058, column: 6, scope: !23005)
!23140 = !DILocation(line: 1047, column: 5, scope: !23005)
!23141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !23144, file: !1113, size: 8, align: 8, flags: DIFlagPublic, elements: !23200, templateParams: !1939, identifier: "7ea87df8fce9577123fe361416806655")
!23142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !23144, file: !1113, size: 8, align: 8, flags: DIFlagPublic, elements: !1328, templateParams: !1939, identifier: "6fb0338db8f9e827de383a7dfeb58bd0")
!23143 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23144, file: !1113, size: 8, align: 8, elements: !23198, templateParams: !1328, identifier: "515054dd4c55da34a356fd9303c1676", discriminator: !23201)
!23144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::collections::btree::set_val::SetValZST>", scope: !1651, file: !1113, size: 8, align: 8, flags: DIFlagPublic, elements: !23195, templateParams: !1328, identifier: "4b27558c4ff010ebb60d030d1dfe8e22")
!23145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut (alloc::string::String, alloc::collections::btree::set_val::SetValZST)>", scope: !1327, file: !1113, align: 8, flags: DIFlagPublic, elements: !1328, templateParams: !23217, identifier: "5a3fd39c2b09fee6be9ecb5da2e2904c")
!23146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&mut alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::collections::btree::set_val::SetValZST, alloc::alloc::Global>>", scope: !1327, file: !1113, align: 8, flags: DIFlagPublic, elements: !1328, templateParams: !23222, identifier: "f08957aadb751ad5bc8a9603a668b0c5")
!23147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::collections::btree::set_val::SetValZST, alloc::alloc::Global>>", scope: !1358, file: !1113, size: 64, align: 64, flags: DIFlagPublic, elements: !23224, templateParams: !5463, identifier: "2e6a49b03c71578838d392e15daf14d9")
!23148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DormantMutRef<alloc::collections::btree::map::BTreeMap<alloc::string::String, alloc::collections::btree::set_val::SetValZST, alloc::alloc::Global>>", scope: !1838, file: !1113, size: 64, align: 64, flags: DIFlagProtected, elements: !23220, templateParams: !5463, identifier: "84b3ea0eb563fd6348daae81634f3eb0")
!23149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NodeRef<alloc::collections::btree::node::marker::Mut, alloc::string::String, alloc::collections::btree::set_val::SetValZST, alloc::collections::btree::node::marker::Leaf>", scope: !1658, file: !1113, size: 128, align: 64, flags: DIFlagProtected, elements: !23238, templateParams: !23239, identifier: "7678befd407b0169cd8f0059c1b46e89")
!23150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut, alloc::string::String, alloc::collections::btree::set_val::SetValZST, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", scope: !1658, file: !1113, size: 192, align: 64, flags: DIFlagProtected, elements: !23234, templateParams: !23241, identifier: "d7078d0a79c780e596db5aaaf070b94")
!23151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !23154, file: !1113, size: 192, align: 64, flags: DIFlagPublic, elements: !23230, templateParams: !23243, identifier: "5a9b43349c58a214a1ef16570f334c75")
!23152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !23154, file: !1113, size: 192, align: 64, flags: DIFlagPublic, elements: !1328, templateParams: !23243, identifier: "1796f9638926fecbd94ca1129236149a")
!23153 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !23154, file: !1113, size: 192, align: 64, elements: !23228, templateParams: !1328, identifier: "b4fd76fe774ec27737e45fe1cf43d194", discriminator: !23244)
!23154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Mut, alloc::string::String, alloc::collections::btree::set_val::SetValZST, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", scope: !1651, file: !1113, size: 192, align: 64, flags: DIFlagPublic, elements: !23225, templateParams: !1328, identifier: "a3f2729d5a09d96fff037a3fcf625ee3")
end_hunk_2
