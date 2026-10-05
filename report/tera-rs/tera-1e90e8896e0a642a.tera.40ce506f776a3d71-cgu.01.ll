Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.01?download=true
inline.NumInlined: 2035
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
    #dbg_value(ptr %2, !21853, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !21856)
    #dbg_value(ptr %2, !21857, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !21861)
    #dbg_value(ptr %2, !21862, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !21866)
    #dbg_value(i64 %i.cij, !21779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21783)
    #dbg_value(i64 %i.cij, !21785, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21789)
    #dbg_value(ptr %i.cii, !21779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21783)
    #dbg_value(ptr %i.cii, !21785, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21789)
  store i64 %i.ciz, ptr %i.cix, align 8, !dbg !25939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ub), !dbg !25940
    #dbg_value(i64 1, !18954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19604)
    #dbg_value(i64 1, !18995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19608)
    #dbg_value(i64 1, !18954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19604)
    #dbg_value(i64 1, !18995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !25941
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.uv unwind label %.thread5762.loopexit.split-lp.loopexit, !dbg !25941

bb.uv:                                            ; preds = %bb.uu
  %i.cjg = load i64, ptr %i.bq, align 8, !dbg !25941, !range !5418, !noundef !1852
  %i.cjh = trunc nuw i64 %i.cjg to i1, !dbg !25942
  %i.cji = load i64, ptr %i.agd, align 8, !dbg !19604, !range !5419, !noundef !1852 ; 3 uses
  br i1 %i.cjh, label %bb.uw, label %bb.ux, !dbg !25942, !prof !5366

bb.uw:                                            ; preds = %bb.uv
  %i.cjj = load i64, ptr %i.age, align 8, !dbg !25943
    #dbg_value(i64 %i.cji, !18983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21867)
    #dbg_value(i64 %i.cjj, !18983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21867)
  br label %.invoke9338, !dbg !25944

bb.ux:                                            ; preds = %bb.uv
  %i.cjk = load ptr, ptr %i.age, align 8, !dbg !25945, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.cji, !18982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21868)
    #dbg_value(ptr %i.cjk, !18982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21868)
    #dbg_value(ptr poison, !18993, !DIExpression(), !21869)
    #dbg_value(ptr poison, !17903, !DIExpression(), !21870)
    #dbg_value(i64 %i.cji, !20832, !DIExpression(), !21873)
  %i.cjl = icmp samesign ugt i64 %i.cji, 127, !dbg !25946
    #dbg_value(i1 true, !20837, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21875)
  call void @llvm.assume(i1 %i.cjl), !dbg !25947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !25948
  store i64 %i.cji, ptr %i.ub, align 8, !dbg !25949
  store ptr %i.cjk, ptr %i.agf, align 8, !dbg !25949
  store i64 0, ptr %i.agg, align 8, !dbg !25949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ua), !dbg !25950
    #dbg_value(ptr %2, !21876, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21879)
    #dbg_value(ptr %2, !21880, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21885)
    #dbg_value(i64 0, !21881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21886)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !21881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21886)
    #dbg_value(i64 0, !21881, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21886)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ua, ptr noundef nonnull align 8 dereferenceable(24) %i.adh, i64 24, i1 false), !dbg !25951
  store i64 0, ptr %i.adh, align 8, !dbg !25952
  store ptr inttoptr (i64 8 to ptr), ptr %i.aax, align 8, !dbg !25952
  store i64 0, ptr %i.aaw, align 8, !dbg !25952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tz), !dbg !25953
  invoke fastcc void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.tz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(264) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ub)
          to label %bb.uy unwind label %bb.wa, !dbg !25954

bb.uy:                                            ; preds = %bb.ux
    #dbg_value(ptr %i.adh, !7161, !DIExpression(), !13379)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %bb.va unwind label %bb.uz, !dbg !25955

bb.uz:                                            ; preds = %bb.uy
  %i.cjm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.adh, !7166, !DIExpression(), !13381)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %.thread5779 unwind label %bb.vb, !dbg !25956

bb.va:                                            ; preds = %bb.uy
    #dbg_value(ptr %i.adh, !7166, !DIExpression(), !13383)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit unwind label %bb.vc, !dbg !25957

bb.vb:                                            ; preds = %bb.uz
  %i.cjn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !25955
  unreachable, !dbg !25955

bb.vc:                                            ; preds = %bb.va
  %i.cjo = landingpad { ptr, i32 }
          cleanup
  br label %.thread5779, !dbg !25958

.thread5779:                                      ; preds = %bb.vc, %bb.uz
  %eh.lpad-body3809 = phi { ptr, i32 } [ %i.cjo, %bb.vc ], [ %i.cjm, %bb.uz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adh, ptr noundef nonnull align 8 dereferenceable(24) %i.ua, i64 24, i1 false), !dbg !25958
  br label %bb.vy, !dbg !25959

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.va
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adh, ptr noundef nonnull align 8 dereferenceable(24) %i.ua, i64 24, i1 false), !dbg !25958
  store ptr %i.aic, ptr %i.aai, align 8, !dbg !25960
    #dbg_value(ptr %2, !21774, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !21887)
    #dbg_value(ptr %2, !21853, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !21889)
    #dbg_value(ptr %2, !21857, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !21892)
    #dbg_value(ptr %2, !21862, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !21895)
  %i.cjp = load i64, ptr %i.adx, align 8, !dbg !25961, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !21779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21794)
    #dbg_value(ptr poison, !21785, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21797)
    #dbg_value(i64 %i.cjp, !21779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21794)
    #dbg_value(i64 %i.cjp, !21785, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21797)
  %i.cjq = icmp ult i64 %i.cio, %i.cjp, !dbg !25962
  br i1 %i.cjq, label %bb.vd, label %bb.ve, !dbg !25962

bb.vd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit
  %i.cjr = load ptr, ptr %i.ady, align 8, !dbg !25963, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.cjr, !21779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21794)
    #dbg_value(ptr %i.cjr, !21785, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21797)
  %i.cjs = getelementptr inbounds nuw [32 x i8], ptr %i.cjr, i64 %i.cio, !dbg !25964
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 24, !dbg !25965
  store i64 %i.ciy, ptr %i.cjt, align 8, !dbg !25965
  %.sroa.072.0.copyload = load i8, ptr %i.tz, align 8, !dbg !17901 ; 2 uses
    #dbg_value(i8 %.sroa.072.0.copyload, !17828, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !21902)
  %.not2713 = icmp eq i8 %.sroa.072.0.copyload, -1, !dbg !25966
  br i1 %.not2713, label %bb.vh, label %bb.vg, !dbg !25967

bb.ve:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cio, i64 noundef %i.cjp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #27
          to label %bb.fy unwind label %bb.vf, !dbg !25962

.thread5799.loopexit:                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i
  %lpad.loopexit6383 = landingpad { ptr, i32 }
          cleanup
  br label %.thread5755

.thread5799.loopexit.split-lp:                    ; preds = %bb.vm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread5755

bb.vf:                                            ; preds = %bb.ve
  %lpad.thr_comm.split-lp5798 = landingpad { ptr, i32 }
          cleanup
  br label %bb.vy, !dbg !25959

bb.vg:                                            ; preds = %bb.vd
    #dbg_value(i8 %.sroa.072.0.copyload, !17832, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !21903)
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4465.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.674.0..sroa_idx, i64 71, i1 false), !dbg !25969
    #dbg_value(i8 %.sroa.072.0.copyload, !17201, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !21904)
    #dbg_value(i8 %.sroa.072.0.copyload, !17817, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !21905)
    #dbg_value(i8 %.sroa.072.0.copyload, !17821, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !21906)
  store i8 %.sroa.072.0.copyload, ptr %0, align 8, !dbg !25968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !25959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !25970
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ub)
          to label %bb.vx unwind label %.thread5762.loopexit.split-lp.loopexit.split-lp, !dbg !25971

bb.vh:                                            ; preds = %bb.vd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ty), !dbg !25972
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !17895
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !17895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tx), !dbg !25973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tx, ptr noundef nonnull align 8 dereferenceable(24) %i.ub, i64 24, i1 false), !dbg !25973
  call void @llvm.experimental.noalias.scope.decl(metadata !21907), !dbg !17895
  call void @llvm.experimental.noalias.scope.decl(metadata !21908), !dbg !17895
    #dbg_declare(ptr %i.tx, !7172, !DIExpression(), !13388)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !13389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !25974, !noalias !21909
    #dbg_value(ptr %i.tx, !7178, !DIExpression(), !13391)
    #dbg_value(ptr %i.tx, !7180, !DIExpression(), !13393)
    #dbg_value(ptr %i.tx, !7182, !DIExpression(), !13395)
  %i.cju = load ptr, ptr %i.agh, align 8, !dbg !25975, !alias.scope !21908, !noalias !21907, !nonnull !1852, !noundef !1852
  %i.cjv = load i64, ptr %i.agi, align 8, !dbg !25976, !alias.scope !21908, !noalias !21907, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cju, i64 noundef %i.cjv)
          to label %bb.vj unwind label %bb.vi, !dbg !25974, !noalias !21909

bb.vi:                                            ; preds = %bb.vh
  %i.cjw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tx) #24
          to label %.thread5755 unwind label %bb.vk, !dbg !25977, !noalias !21907

bb.vj:                                            ; preds = %bb.vh
  %i.cjx = load i64, ptr %i.ac, align 8, !dbg !25974, !range !5418, !noalias !21909, !noundef !1852
  %i.cjy = trunc nuw i64 %i.cjx to i1, !dbg !25978
  br i1 %i.cjy, label %bb.vl, label %.thread5802, !dbg !25978

.thread5802:                                      ; preds = %bb.vj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.tx, i64 16, i1 false), !dbg !25979, !alias.scope !21909
    #dbg_value(i64 %i.cjv, !17840, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21910)
    #dbg_value(i64 -1, !17840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21910)
    #dbg_value(i64 poison, !17840, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !21910)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !25980, !noalias !21909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tx), !dbg !25981
  br label %bb.vn, !dbg !25982

bb.vk:                                            ; preds = %bb.vi
  %i.cjz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !25983, !noalias !21907
  unreachable, !dbg !25983

bb.vl:                                            ; preds = %bb.vj
  %i.cka = load <2 x i64>, ptr %i.agj, align 8, !dbg !25984, !noalias !21909
  %i.ckb = load i64, ptr %i.agj, align 8, !dbg !25984, !noalias !21909
  %.sroa.05585.0.copyload = load i64, ptr %i.tx, align 8, !dbg !25985, !noalias !21907 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.agh, i64 16, i1 false), !dbg !25985, !noalias !1852
    #dbg_value(i64 %.sroa.05585.0.copyload, !17840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21910)
    #dbg_value(i64 poison, !17840, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21910)
    #dbg_value(i64 poison, !17840, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !21910)
    #dbg_value(i64 %.sroa.05585.0.copyload, !17840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21910)
    #dbg_value(i64 poison, !17840, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !21910)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !25980, !noalias !21909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tx), !dbg !25981
  %.not2714 = icmp eq i64 %.sroa.05585.0.copyload, -1, !dbg !25986
  br i1 %.not2714, label %bb.vn, label %bb.vm, !dbg !25982

bb.vm:                                            ; preds = %bb.vl
    #dbg_value(i64 %.sroa.05585.0.copyload, !17842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21911)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, i64 16, i1 false), !dbg !25987
    #dbg_value(i64 poison, !17842, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21911)
    #dbg_value(i64 poison, !17842, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !21911)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !25988
    #dbg_value(i64 %.sroa.05585.0.copyload, !17204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21912)
    #dbg_value(i64 %.sroa.05585.0.copyload, !17974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21913)
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !25989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !25989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.483.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, i64 16, i1 false), !dbg !25988
    #dbg_value(i64 poison, !17974, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21913)
    #dbg_value(i64 poison, !17204, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21912)
    #dbg_value(i64 poison, !17204, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !21912)
    #dbg_value(i64 poison, !17974, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !21913)
  store i64 %.sroa.05585.0.copyload, ptr %i.bp, align 8, !dbg !25989
  %.sroa.483.sroa.4.0..sroa.483.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !25989
  store <2 x i64> %i.cka, ptr %.sroa.483.sroa.4.0..sroa.483.0..sroa_idx.sroa_idx, align 8, !dbg !25989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !25990
  invoke void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bp)
          to label %bb.vw unwind label %.thread5799.loopexit.split-lp, !dbg !25990

bb.vn:                                            ; preds = %.thread5802, %bb.vl
  %.sroa.74783.sroa.7.0 = phi i64 [ %i.ckb, %bb.vl ], [ %i.cjv, %.thread5802 ], !dbg !25991 ; 2 uses
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !17840, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !21910)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, i64 16, i1 false), !dbg !25992
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !17841, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21914)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !25988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, i64 16, i1 false), !dbg !17895
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !17205, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21915)
  store i64 %.sroa.74783.sroa.7.0, ptr %i.agl, align 8, !dbg !17999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !25993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tw), !dbg !25994
    #dbg_value(ptr %i.ty, !20171, !DIExpression(), !21917)
    #dbg_value(ptr %i.ty, !20175, !DIExpression(), !21920)
  %i.ckc = load ptr, ptr %i.agk, align 8, !dbg !25995, !nonnull !1852, !noundef !1852
  invoke void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value11safe_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.tw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ckc, i64 noundef %.sroa.74783.sroa.7.0)
          to label %bb.vp unwind label %bb.vo, !dbg !25994

bb.vo:                                            ; preds = %bb.vn
  %i.ckd = landingpad { ptr, i32 }
          cleanup
  br label %.body3813, !dbg !25996

.body3813:                                        ; preds = %bb.vr, %bb.vo
  %eh.lpad-body3814 = phi { ptr, i32 } [ %i.ckd, %bb.vo ], [ %i.ckh, %bb.vr ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty) #24
          to label %.thread5755 unwind label %bb.gi, !dbg !25996

bb.vp:                                            ; preds = %bb.vn
    #dbg_value(i32 %i.anu, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21931)
    #dbg_value(i32 %i.anu, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !21931)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !21931)
  call void @llvm.experimental.noalias.scope.decl(metadata !21932), !dbg !25997
    #dbg_value(ptr %2, !4354, !DIExpression(), !13402)
    #dbg_declare(ptr %i.tw, !4355, !DIExpression(), !13403)
    #dbg_declare(ptr %i.ab, !5239, !DIExpression(), !13405)
    #dbg_value(ptr %2, !5244, !DIExpression(), !13406)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !25998, !noalias !21933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.tw, i64 24, i1 false), !dbg !25998, !noalias !21934
  store i32 %i.anu, ptr %i.agm, align 8, !dbg !25998, !noalias !21935
  store i32 %i.anu, ptr %.sroa.44786.0..sroa_idx, align 4, !dbg !25998, !noalias !21935
  store i8 0, ptr %.sroa.54787.0..sroa_idx, align 8, !dbg !25998, !noalias !21935
    #dbg_value(ptr %2, !5246, !DIExpression(), !13410)
    #dbg_value(ptr %2, !5256, !DIExpression(), !13412)
    #dbg_declare(ptr %i.ab, !5251, !DIExpression(), !13413)
    #dbg_value(i64 40, !5261, !DIExpression(), !13416)
  %i.cke = load i64, ptr %i.aan, align 8, !dbg !25999, !alias.scope !21936, !noalias !21937, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.cke, !5252, !DIExpression(), !13420)
    #dbg_value(i64 %i.cke, !5271, !DIExpression(), !13422)
    #dbg_value(ptr %2, !5268, !DIExpression(), !13423)
  %i.ckf = load i64, ptr %2, align 8, !dbg !26000, !range !5278, !alias.scope !21936, !noalias !21937, !noundef !1852
  %i.ckg = icmp eq i64 %i.cke, %i.ckf, !dbg !26001
  br i1 %i.ckg, label %bb.vq, label %bb.vt, !dbg !26001

bb.vq:                                            ; preds = %bb.vp
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.vt unwind label %bb.vr, !dbg !26002, !noalias !21937

bb.vr:                                            ; preds = %bb.vq
  %i.ckh = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ab, !5279, !DIExpression(), !13425)
    #dbg_value(ptr %i.ab, !5283, !DIExpression(), !13427)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %.body3813 unwind label %bb.vs, !dbg !26003, !noalias !21938

bb.vs:                                            ; preds = %bb.vr
  %i.cki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !26004, !noalias !21938
  unreachable, !dbg !26004

bb.vt:                                            ; preds = %bb.vq, %bb.vp
  %i.ckj = load ptr, ptr %i.aam, align 8, !dbg !26005, !alias.scope !21936, !noalias !21937, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.ckj, !5276, !DIExpression(), !13422)
  %i.ckk = getelementptr inbounds nuw [40 x i8], ptr %i.ckj, i64 %i.cke, !dbg !26006
    #dbg_value(ptr %i.ckk, !5254, !DIExpression(), !13431)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ckk, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !dbg !26007, !noalias !21938
  %i.ckl = add i64 %i.cke, 1, !dbg !26008
  store i64 %i.ckl, ptr %i.aan, align 8, !dbg !26008, !alias.scope !21936, !noalias !21937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !26009, !noalias !21933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tw), !dbg !26010
    #dbg_value(ptr %i.ty, !7185, !DIExpression(), !13433)
    #dbg_value(ptr %i.ty, !6429, !DIExpression(), !13435)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.vu, !dbg !26011

bb.vu:                                            ; preds = %bb.vt
  %i.ckm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ty, !6432, !DIExpression(), !13437)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %.thread5755 unwind label %bb.vv, !dbg !26012

bb.vv:                                            ; preds = %bb.vu
  %i.ckn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !26011
  unreachable, !dbg !26011

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.vt
    #dbg_value(ptr %i.ty, !6432, !DIExpression(), !13439)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %.thread5799.loopexit, !dbg !26013

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ty), !dbg !25996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !25959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !25970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ub), !dbg !25971
    #dbg_value(ptr %i.uo, !5283, !DIExpression(), !13441)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uo), !dbg !26014
  br label %bb.uh, !dbg !25886

bb.vw:                                            ; preds = %bb.vm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i64 72, i1 false), !dbg !26015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !26016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !26017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !25993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ty), !dbg !25996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !25959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !25970
  br label %bb.vx, !dbg !25971

bb.vx:                                            ; preds = %bb.vw, %bb.vg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ub), !dbg !25971
  br label %bb.wm, !dbg !26018

bb.vy:                                            ; preds = %bb.vf, %.thread5779
  %.pn27155785 = phi { ptr, i32 } [ %eh.lpad-body3809, %.thread5779 ], [ %lpad.thr_comm.split-lp5798, %bb.vf ] ; 2 uses
    #dbg_value(ptr %i.tz, !6439, !DIExpression(), !13443)
  %i.cko = load i8, ptr %i.tz, align 8, !dbg !26019, !range !3904, !alias.scope !21940, !noundef !1852
  %i.ckp = icmp eq i8 %i.cko, -1, !dbg !26019
  br i1 %i.ckp, label %.thread5806, label %bb.vz, !dbg !26019

bb.vz:                                            ; preds = %bb.vy
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tz)
          to label %.thread5806 unwind label %bb.gi, !dbg !26019

bb.wa:                                            ; preds = %bb.ux
  %i.ckq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ua) #24
          to label %.thread5806 unwind label %bb.gi, !dbg !25970

.thread5806:                                      ; preds = %bb.wa, %bb.vy, %bb.vz
  %.pn2715.pn57785810 = phi { ptr, i32 } [ %.pn27155785, %bb.vy ], [ %.pn27155785, %bb.vz ], [ %i.ckq, %bb.wa ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ub) #24
          to label %.thread5755 unwind label %bb.gi, !dbg !25971

bb.wb:                                            ; preds = %bb.ut
    #dbg_value(ptr %i.aic, !18832, !DIExpression(), !19544)
    #dbg_value(ptr %i.aic, !17191, !DIExpression(), !21941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uh), !dbg !26020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ug), !dbg !26021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uf), !dbg !20120
  store i32 %i.anu, ptr %i.uf, align 4, !dbg !26022
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.uf, i64 4, !dbg !26022
  store i32 %i.anu, ptr %i.ckr, align 4, !dbg !26022
  %i.cks = getelementptr inbounds nuw i8, ptr %i.uf, i64 8, !dbg !26022
  store i8 0, ptr %i.cks, align 4, !dbg !26022
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk11expand_span(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ug, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.uf)
          to label %bb.wc unwind label %.thread5762.loopexit.split-lp.loopexit.split-lp, !dbg !26023

bb.wc:                                            ; preds = %bb.wb
  %i.ckt = load i64, ptr %i.ug, align 8, !dbg !26024, !range !5418, !noundef !1852
  %i.cku = trunc nuw i64 %i.ckt to i1, !dbg !26025
  br i1 %i.cku, label %bb.wd, label %.invoke9340, !dbg !26025, !prof !5808

bb.wd:                                            ; preds = %bb.wc
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.ug, i64 8, !dbg !26026
end_hunk_0
begin_hunk_1_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
  %.sroa.45.0..sroa_idx.i4130 = getelementptr inbounds nuw i8, ptr %i.dlg, i64 32, !dbg !27187
  %.sroa.45.0.copyload.i4131 = load i8, ptr %.sroa.45.0..sroa_idx.i4130, align 8, !dbg !27187, !noalias !22629
  %.sroa.56.0..sroa_idx.i4132 = getelementptr inbounds nuw i8, ptr %i.dlg, i64 33, !dbg !27187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3.i4133, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.56.0..sroa_idx.i4132, i64 7, i1 false), !dbg !27187, !noalias !22628
    #dbg_value(i8 %.sroa.45.0.copyload.i4131, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !14983)
  store i8 %.sroa.45.0.copyload.i4131, ptr %.sroa.4.0..sroa_idx1.i4134, align 8, !dbg !27188, !alias.scope !22627, !noalias !22628
    #dbg_value(ptr %i.og, !5279, !DIExpression(), !15000)
    #dbg_value(ptr %i.og, !5283, !DIExpression(), !15002)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.og), !dbg !27189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.og), !dbg !27190
  br label %.outer, !dbg !27191

bb.ajb:                                           ; preds = %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack4peek.exit3283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.of), !dbg !27192
  call void @llvm.experimental.noalias.scope.decl(metadata !22630), !dbg !27193
  call void @llvm.experimental.noalias.scope.decl(metadata !22631), !dbg !27193
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !15008)
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !15008)
    #dbg_value(ptr %2, !5339, !DIExpression(), !15009)
    #dbg_value(i64 40, !5342, !DIExpression(), !15014)
    #dbg_value(ptr @116, !5333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15015)
    #dbg_value(i64 15, !5333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15015)
    #dbg_value(ptr %2, !5356, !DIExpression(), !15016)
    #dbg_value(ptr %2, !5351, !DIExpression(), !15017)
    #dbg_value(ptr %2, !5358, !DIExpression(), !15019)
    #dbg_value(ptr %2, !5363, !DIExpression(), !15021)
  %i.dlh = load i64, ptr %i.aan, align 8, !dbg !27194, !alias.scope !22631, !noalias !22630, !noundef !1852 ; 3 uses
  %i.dli = icmp eq i64 %i.dlh, 0, !dbg !27194
  br i1 %i.dli, label %bb.ajc, label %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack3pop.exit4141, !dbg !27194, !prof !5366

bb.ajc:                                           ; preds = %bb.ajb
    #dbg_value(i8 2, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !15015)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #26, !dbg !27195, !noalias !22632
  unreachable, !dbg !27195

_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack3pop.exit4141: ; preds = %bb.ajb
  %i.dlj = add nsw i64 %i.dlh, -1, !dbg !27196    ; 3 uses
  store i64 %i.dlj, ptr %i.aan, align 8, !dbg !27196, !alias.scope !22631, !noalias !22630
  %i.dlk = load i64, ptr %2, align 8, !dbg !27197, !range !5278, !alias.scope !22631, !noalias !22630, !noundef !1852
  %i.dll = icmp samesign ult i64 %i.dlj, %i.dlk, !dbg !27198
    #dbg_value(i1 true, !5370, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15023)
  call void @llvm.assume(i1 %i.dll), !dbg !27199
  %i.dlm = load ptr, ptr %i.aam, align 8, !dbg !27200, !alias.scope !22631, !noalias !22630, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dlm, !5376, !DIExpression(), !15028)
    #dbg_value(i64 %i.dlj, !5381, !DIExpression(), !15028)
  %i.dln = icmp ult i64 %i.dlh, 230584300921369397, !dbg !27201
  call void @llvm.assume(i1 %i.dln), !dbg !27202
  %i.dlo = getelementptr inbounds nuw [40 x i8], ptr %i.dlm, i64 %i.dlj, !dbg !27203 ; 3 uses
    #dbg_value(ptr %i.dlo, !5383, !DIExpression(), !15030)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.of, ptr noundef nonnull align 8 dereferenceable(32) %i.dlo, i64 32, i1 false), !dbg !27204, !noalias !22631
  %.sroa.45.0..sroa_idx.i4136 = getelementptr inbounds nuw i8, ptr %i.dlo, i64 32, !dbg !27204
  %.sroa.45.0.copyload.i4137 = load i8, ptr %.sroa.45.0..sroa_idx.i4136, align 8, !dbg !27204, !noalias !22632
  %.sroa.56.0..sroa_idx.i4138 = getelementptr inbounds nuw i8, ptr %i.dlo, i64 33, !dbg !27204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3.i4139, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.56.0..sroa_idx.i4138, i64 7, i1 false), !dbg !27204, !noalias !22631
    #dbg_value(i8 %.sroa.45.0.copyload.i4137, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !15015)
  store i8 %.sroa.45.0.copyload.i4137, ptr %.sroa.4.0..sroa_idx1.i4140, align 8, !dbg !27205, !alias.scope !22630, !noalias !22631
    #dbg_value(ptr %i.of, !5279, !DIExpression(), !15032)
    #dbg_value(ptr %i.of, !5283, !DIExpression(), !15034)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.of), !dbg !27206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.of), !dbg !27207
  br label %.outer, !dbg !27208

bb.ajd:                                           ; preds = %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack4peek.exit3283
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.aig, i64 8, !dbg !27209
  %i.dlq = load i64, ptr %i.dlp, align 8, !dbg !27209, !noundef !1852
    #dbg_value(i64 %i.dlq, !16989, !DIExpression(), !20087)
  br label %bb.ait, !dbg !24115

bb.aje:                                           ; preds = %bb.cf
  %i.dlr = load i64, ptr %i.adp, align 8, !dbg !27210
    #dbg_value(i64 %i.auk, !18956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22633)
    #dbg_value(i64 %i.dlr, !18956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22633)
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.auk, i64 %i.dlr) #27, !dbg !27211
  unreachable, !dbg !27211

bb.ajf:                                           ; preds = %bb.cf
    #dbg_value(ptr %i.adh, !18542, !DIExpression(), !20572)
  %i.dls = load ptr, ptr %i.adp, align 8, !dbg !27212, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.auk, !18955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22634)
    #dbg_value(ptr %i.dls, !18955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22634)
    #dbg_value(ptr poison, !18993, !DIExpression(), !22635)
    #dbg_value(ptr poison, !17903, !DIExpression(), !22636)
    #dbg_value(i64 %i.auk, !20832, !DIExpression(), !22639)
  %i.dlt = icmp samesign ugt i64 %i.auk, 127, !dbg !27213
    #dbg_value(i1 true, !20837, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22641)
  call void @llvm.assume(i1 %i.dlt), !dbg !27214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !27215
  store i64 %i.auk, ptr %i.oe, align 8, !dbg !27216
  store ptr %i.dls, ptr %i.adq, align 8, !dbg !27216
  store i64 0, ptr %i.adr, align 8, !dbg !27216
    #dbg_value(ptr %i.adh, !7381, !DIExpression(), !15036)
    #dbg_value(ptr %i.adh, !7389, !DIExpression(), !15038)
    #dbg_declare(ptr %i.oe, !7385, !DIExpression(), !15039)
    #dbg_value(i64 24, !7391, !DIExpression(), !15042)
  %i.dlu = load i64, ptr %i.aaw, align 8, !dbg !27217, !alias.scope !22642, !noalias !22643, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.dlu, !7386, !DIExpression(), !15046)
    #dbg_value(i64 %i.dlu, !7396, !DIExpression(), !15048)
    #dbg_value(ptr %i.adh, !7394, !DIExpression(), !15049)
  %i.dlv = load i64, ptr %i.adh, align 8, !dbg !27218, !range !5278, !alias.scope !22642, !noalias !22643, !noundef !1852
  %i.dlw = icmp eq i64 %i.dlu, %i.dlv, !dbg !27219
  br i1 %i.dlw, label %bb.ajg, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit, !dbg !27219

bb.ajg:                                           ; preds = %bb.ajf
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit unwind label %bb.ajh, !dbg !27220, !noalias !22643

bb.ajh:                                           ; preds = %bb.ajg
  %i.dlx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oe) #24
          to label %common.resume unwind label %bb.aji, !dbg !27221

bb.aji:                                           ; preds = %bb.ajh
  %i.dly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !27222
  unreachable, !dbg !27222

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.ajf, %bb.ajg
  %i.dlz = load ptr, ptr %i.aax, align 8, !dbg !27223, !alias.scope !22642, !noalias !22643, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dlz, !7399, !DIExpression(), !15048)
  %i.dma = getelementptr inbounds nuw [24 x i8], ptr %i.dlz, i64 %i.dlu, !dbg !27224
    #dbg_value(ptr %i.dma, !7387, !DIExpression(), !15053)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dma, ptr noundef nonnull align 8 dereferenceable(24) %i.oe, i64 24, i1 false), !dbg !27225
  %i.dmb = add i64 %i.dlu, 1, !dbg !27226
  store i64 %i.dmb, ptr %i.aaw, align 8, !dbg !27226, !alias.scope !22642, !noalias !22643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !27227
  br label %.outer, !dbg !27228

bb.ajj:                                           ; preds = %bb.cg
    #dbg_value(i64 -1, !17982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22644)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #26, !dbg !27229
  unreachable, !dbg !27229

bb.ajk:                                           ; preds = %bb.cg
  %i.dmc = add nsw i64 %i.aum, -1, !dbg !27230    ; 3 uses
  store i64 %i.dmc, ptr %i.aaw, align 8, !dbg !27230
  %i.dmd = load i64, ptr %i.adh, align 8, !dbg !27231, !range !5278, !noundef !1852
    #dbg_value(i64 %i.dmd, !20832, !DIExpression(), !22647)
  %i.dme = icmp samesign ult i64 %i.dmc, %i.dmd, !dbg !27232
    #dbg_value(i1 true, !20837, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22649)
  call void @llvm.assume(i1 %i.dme), !dbg !27233
  %i.dmf = load ptr, ptr %i.aax, align 8, !dbg !27234, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dmf, !22656, !DIExpression(), !22660)
    #dbg_value(i64 %i.dmc, !22657, !DIExpression(), !22660)
  %i.dmg = icmp ult i64 %i.aum, 384307168202282327, !dbg !27235
  call void @llvm.assume(i1 %i.dmg), !dbg !27236
  %i.dmh = getelementptr inbounds nuw [24 x i8], ptr %i.dmf, i64 %i.dmc, !dbg !27237 ; 2 uses
    #dbg_value(ptr %i.dmh, !22661, !DIExpression(), !22664)
  %.sroa.0378.0.copyload = load i64, ptr %i.dmh, align 8, !dbg !27238 ; 3 uses
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dmh, i64 8, !dbg !27238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4379.0..sroa_idx, i64 16, i1 false), !dbg !27238
    #dbg_value(i64 %.sroa.0378.0.copyload, !17982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22644)
  store i64 %.sroa.0378.0.copyload, ptr %i.od, align 8, !dbg !27239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oc), !dbg !27240
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !17845
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !17845
  call void @llvm.experimental.noalias.scope.decl(metadata !22665), !dbg !17845
  call void @llvm.experimental.noalias.scope.decl(metadata !22666), !dbg !17845
    #dbg_declare(ptr %i.od, !7172, !DIExpression(), !15060)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !15061)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !27241, !noalias !22667
    #dbg_value(ptr %i.od, !7178, !DIExpression(), !15063)
    #dbg_value(ptr %i.od, !7180, !DIExpression(), !15065)
    #dbg_value(ptr %i.od, !7182, !DIExpression(), !15067)
  %i.dmi = load ptr, ptr %.sroa.5189.0..sroa_idx190, align 8, !dbg !27242, !alias.scope !22666, !noalias !22665, !nonnull !1852, !noundef !1852
  %i.dmj = load i64, ptr %i.adi, align 8, !dbg !27243, !alias.scope !22666, !noalias !22665, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dmi, i64 noundef %i.dmj)
          to label %bb.ajm unwind label %bb.ajl, !dbg !27241, !noalias !22667

bb.ajl:                                           ; preds = %bb.ajk
  %i.dmk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.od) #24
          to label %common.resume unwind label %bb.ajn, !dbg !27244, !noalias !22665

bb.ajm:                                           ; preds = %bb.ajk
  %i.dml = load i64, ptr %i.u, align 8, !dbg !27241, !range !5418, !noalias !22667, !noundef !1852
  %i.dmm = trunc nuw i64 %i.dml to i1, !dbg !27245
  br i1 %i.dmm, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread, !dbg !27245

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread: ; preds = %bb.ajm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.od, i64 16, i1 false), !dbg !27246, !alias.scope !22667
    #dbg_value(i64 %i.dmj, !17840, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22668)
    #dbg_value(i64 -1, !17840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22668)
    #dbg_value(i64 poison, !17840, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !22668)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !27247, !noalias !22667
  br label %bb.ajq, !dbg !27248

bb.ajn:                                           ; preds = %bb.ajl
  %i.dmn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !27249, !noalias !22665
  unreachable, !dbg !27249

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142: ; preds = %bb.ajm
  %i.dmo = load <2 x i64>, ptr %i.adj, align 8, !dbg !27250, !noalias !22667
  %i.dmp = load i64, ptr %i.adj, align 8, !dbg !27250, !noalias !22667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, i64 16, i1 false), !dbg !27251, !noalias !1852
    #dbg_value(i64 %.sroa.0378.0.copyload, !17840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22668)
    #dbg_value(i64 poison, !17840, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22668)
    #dbg_value(i64 poison, !17840, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !22668)
    #dbg_value(i64 %.sroa.0378.0.copyload, !17840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22668)
    #dbg_value(i64 poison, !17840, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !22668)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !27247, !noalias !22667
  %.not2631 = icmp eq i64 %.sroa.0378.0.copyload, -1, !dbg !27252
  br i1 %.not2631, label %bb.ajq, label %bb.ajo, !dbg !27248

bb.ajo:                                           ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142
    #dbg_value(i64 %.sroa.0378.0.copyload, !17839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22669)
    #dbg_value(i64 poison, !17839, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22669)
    #dbg_value(i64 poison, !17839, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !22669)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !27253
    #dbg_value(i64 %.sroa.0378.0.copyload, !17416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22670)
    #dbg_value(i64 %.sroa.0378.0.copyload, !17974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22671)
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !27254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !27254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4199.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, i64 16, i1 false), !dbg !27253
    #dbg_value(i64 poison, !17974, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22671)
    #dbg_value(i64 poison, !17416, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22670)
    #dbg_value(i64 poison, !17416, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !22670)
    #dbg_value(i64 poison, !17974, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !22671)
  store i64 %.sroa.0378.0.copyload, ptr %i.bi, align 8, !dbg !27254
  %.sroa.4199.sroa.4.0..sroa.4199.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24, !dbg !27254
  store <2 x i64> %i.dmo, ptr %.sroa.4199.sroa.4.0..sroa.4199.0..sroa_idx.sroa_idx, align 8, !dbg !27254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !27255
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bi), !dbg !27255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 72, i1 false), !dbg !27256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !27257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !27258
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !27259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oc), !dbg !27260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !27261
  br label %bb.biw, !dbg !24115

bb.ajp:                                           ; preds = %bb.ajs, %bb.ajr
  %.sroa.0331.0 = phi i8 [ 0, %bb.ajr ], [ 1, %bb.ajs ], !dbg !27262
  %i.dmq = landingpad { ptr, i32 }
          cleanup
  br label %.body4146, !dbg !27260

.body4146:                                        ; preds = %bb.ajw, %bb.ajp
  %.sroa.0331.0.lpad-body = phi i8 [ %.sroa.0331.0, %bb.ajp ], [ %.sroa.0331.1, %bb.ajw ]
  %eh.lpad-body4147 = phi { ptr, i32 } [ %i.dmq, %bb.ajp ], [ %i.dmz, %bb.ajw ] ; 2 uses
  %i.dmr = trunc nuw i8 %.sroa.0331.0.lpad-body to i1, !dbg !27260
  br i1 %i.dmr, label %bb.akd, label %common.resume, !dbg !27260

bb.ajq:                                           ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread
  %i.dms = phi i64 [ %i.dmp, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142 ], [ %i.dmj, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread ], !dbg !27263 ; 2 uses
    #dbg_value(i64 %i.dms, !17840, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !22668)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6193.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, i64 16, i1 false), !dbg !27264
    #dbg_value(i64 %i.dms, !17843, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22672)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !27253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6193.sroa.0, i64 16, i1 false), !dbg !17845
    #dbg_value(i64 %i.dms, !17417, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22673)
  store i64 %i.dms, ptr %i.adm, align 8, !dbg !17972
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !27259
    #dbg_value(ptr poison, !3874, !DIExpression(), !15072)
    #dbg_value(i8 %.val3137, !3880, !DIExpression(), !15074)
  %i.dmt = load i8, ptr %i.adk, align 1, !dbg !27265, !range !3887, !noundef !1852
    #dbg_value(i8 %i.dmt, !3884, !DIExpression(), !15074)
  %spec.select.i4144 = select i1 %.not.i4143, i8 %i.dmt, i8 %.val3137, !dbg !27266
    #dbg_value(i8 %spec.select.i4144, !3884, !DIExpression(), !15074)
  %i.dmu = trunc nuw i8 %spec.select.i4144 to i1, !dbg !27267
  br i1 %i.dmu, label %bb.ajs, label %bb.ajr, !dbg !27268

bb.ajr:                                           ; preds = %bb.ajq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oa), !dbg !27269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 8 dereferenceable(24) %i.oc, i64 24, i1 false), !dbg !27269
  invoke void @_RNvXsd_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ob, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.oa)
          to label %bb.ajt unwind label %bb.ajp, !dbg !27270

bb.ajs:                                           ; preds = %bb.ajq
    #dbg_value(ptr %i.oc, !20171, !DIExpression(), !22675)
    #dbg_value(ptr %i.oc, !20175, !DIExpression(), !22678)
  %i.dmv = load ptr, ptr %i.adl, align 8, !dbg !27271, !nonnull !1852, !noundef !1852
  invoke void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value11safe_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ob, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dmv, i64 noundef %i.dms)
          to label %bb.aju unwind label %bb.ajp, !dbg !27272

bb.ajt:                                           ; preds = %bb.ajr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oa), !dbg !27273
  br label %bb.aju, !dbg !27274

bb.aju:                                           ; preds = %bb.ajs, %bb.ajt
  %.sroa.0331.1 = phi i8 [ 1, %bb.ajs ], [ 0, %bb.ajt ], !dbg !27262 ; 2 uses
    #dbg_value(i32 %i.aul, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22689)
    #dbg_value(i32 %i.aul, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22689)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22689)
  call void @llvm.experimental.noalias.scope.decl(metadata !22690), !dbg !27275
    #dbg_value(ptr %2, !4354, !DIExpression(), !15078)
    #dbg_declare(ptr %i.ob, !4355, !DIExpression(), !15079)
    #dbg_declare(ptr %i.t, !5239, !DIExpression(), !15081)
    #dbg_value(ptr %2, !5244, !DIExpression(), !15082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !27276, !noalias !22691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ob, i64 24, i1 false), !dbg !27276, !noalias !22692
  store i32 %i.aul, ptr %i.adn, align 8, !dbg !27276, !noalias !22693
  store i32 %i.aul, ptr %.sroa.44974.0..sroa_idx, align 4, !dbg !27276, !noalias !22693
  store i8 0, ptr %.sroa.54975.0..sroa_idx, align 8, !dbg !27276, !noalias !22693
    #dbg_value(ptr %2, !5246, !DIExpression(), !15086)
    #dbg_value(ptr %2, !5256, !DIExpression(), !15088)
    #dbg_declare(ptr %i.t, !5251, !DIExpression(), !15089)
    #dbg_value(i64 40, !5261, !DIExpression(), !15092)
  %i.dmw = load i64, ptr %i.aan, align 8, !dbg !27277, !alias.scope !22694, !noalias !22695, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.dmw, !5252, !DIExpression(), !15096)
    #dbg_value(i64 %i.dmw, !5271, !DIExpression(), !15098)
    #dbg_value(ptr %2, !5268, !DIExpression(), !15099)
  %i.dmx = load i64, ptr %2, align 8, !dbg !27278, !range !5278, !alias.scope !22694, !noalias !22695, !noundef !1852
  %i.dmy = icmp eq i64 %i.dmw, %i.dmx, !dbg !27279
  br i1 %i.dmy, label %bb.ajv, label %bb.ajy, !dbg !27279

bb.ajv:                                           ; preds = %bb.aju
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ajy unwind label %bb.ajw, !dbg !27280, !noalias !22695

bb.ajw:                                           ; preds = %bb.ajv
  %i.dmz = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.t, !5279, !DIExpression(), !15101)
    #dbg_value(ptr %i.t, !5283, !DIExpression(), !15103)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.body4146 unwind label %bb.ajx, !dbg !27281, !noalias !22696

bb.ajx:                                           ; preds = %bb.ajw
  %i.dna = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !27282, !noalias !22696
  unreachable, !dbg !27282

bb.ajy:                                           ; preds = %bb.ajv, %bb.aju
  %i.dnb = load ptr, ptr %i.aam, align 8, !dbg !27283, !alias.scope !22694, !noalias !22695, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dnb, !5276, !DIExpression(), !15098)
  %i.dnc = getelementptr inbounds nuw [40 x i8], ptr %i.dnb, i64 %i.dmw, !dbg !27284
    #dbg_value(ptr %i.dnc, !5254, !DIExpression(), !15107)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dnc, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !dbg !27285, !noalias !22696
  %i.dnd = add i64 %i.dmw, 1, !dbg !27286
  store i64 %i.dnd, ptr %i.aan, align 8, !dbg !27286, !alias.scope !22694, !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !27287, !noalias !22691
  %i.dne = trunc nuw i8 %.sroa.0331.1 to i1, !dbg !27260
  br i1 %i.dne, label %bb.aka, label %bb.ajz, !dbg !27260

bb.ajz:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151, %bb.ajy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oc), !dbg !27260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !27261
  br label %.outer, !dbg !27261

bb.aka:                                           ; preds = %bb.ajy
    #dbg_value(ptr %i.oc, !7185, !DIExpression(), !15109)
    #dbg_value(ptr %i.oc, !6429, !DIExpression(), !15111)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151 unwind label %bb.akb, !dbg !27288

bb.akb:                                           ; preds = %bb.aka
  %i.dnf = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.oc, !6432, !DIExpression(), !15113)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %common.resume unwind label %bb.akc, !dbg !27289

bb.akc:                                           ; preds = %bb.akb
  %i.dng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !27288
  unreachable, !dbg !27288

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151: ; preds = %bb.aka
    #dbg_value(ptr %i.oc, !6432, !DIExpression(), !15115)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc), !dbg !27290
  br label %bb.ajz, !dbg !27260

bb.akd:                                           ; preds = %.body4146
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc) #24
          to label %common.resume unwind label %bb.gi, !dbg !27260

bb.ake:                                           ; preds = %bb.c, %bb.c
  %.sroa.0201.0 = getelementptr inbounds nuw i8, ptr %i.aig, i64 1, !dbg !20094
    #dbg_value(ptr %.sroa.0201.0, !17419, !DIExpression(), !22697)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04977.sroa.0), !dbg !27291
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64979), !dbg !27291
  call void @llvm.experimental.noalias.scope.decl(metadata !22698), !dbg !27292
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !15120)
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !15120)
    #dbg_value(ptr %2, !5339, !DIExpression(), !15121)
    #dbg_value(i64 40, !5342, !DIExpression(), !15126)
    #dbg_value(ptr @116, !5333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15127)
    #dbg_value(i64 15, !5333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15127)
    #dbg_value(ptr %2, !5356, !DIExpression(), !15128)
    #dbg_value(ptr %2, !5351, !DIExpression(), !15129)
    #dbg_value(ptr %2, !5358, !DIExpression(), !15131)
    #dbg_value(ptr %2, !5363, !DIExpression(), !15133)
  %i.dnh = load i64, ptr %i.aan, align 8, !dbg !27293, !alias.scope !22698, !noalias !22699, !noundef !1852 ; 3 uses
  %i.dni = icmp eq i64 %i.dnh, 0, !dbg !27293
  br i1 %i.dni, label %bb.akf, label %bb.akg, !dbg !27293, !prof !5366

bb.akf:                                           ; preds = %bb.ake
    #dbg_value(i8 2, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !15127)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #26, !dbg !27294, !noalias !22700
  unreachable, !dbg !27294

.body2929.thread6011:                             ; preds = %.invoke9359, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit4159, %bb.akl, %bb.aki, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit4161, %bb.akv, %bb.aku, %bb.aks, %bb.akk
  %lpad.thr_comm6009 = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_:bb.a
    #dbg_value(ptr %2, !42391, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !42394)
    #dbg_value(ptr %2, !42395, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !42399)
    #dbg_value(ptr %2, !42400, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !42404)
    #dbg_value(i64 %i.cif, !42317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42321)
    #dbg_value(i64 %i.cif, !42323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42327)
    #dbg_value(ptr %i.cie, !42317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42321)
    #dbg_value(ptr %i.cie, !42323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42327)
  store i64 %i.civ, ptr %i.cit, align 8, !dbg !46474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ub), !dbg !46475
    #dbg_value(i64 1, !39502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40152)
    #dbg_value(i64 1, !39543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40156)
    #dbg_value(i64 1, !39502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40152)
    #dbg_value(i64 1, !39543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !46476
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.uu unwind label %.thread5762.loopexit.split-lp.loopexit, !dbg !46476

bb.uu:                                            ; preds = %bb.ut
  %i.cjc = load i64, ptr %i.bq, align 8, !dbg !46476, !range !5418, !noundef !1852
  %i.cjd = trunc nuw i64 %i.cjc to i1, !dbg !46477
  %i.cje = load i64, ptr %i.agd, align 8, !dbg !40152, !range !5419, !noundef !1852 ; 3 uses
  br i1 %i.cjd, label %bb.uv, label %bb.uw, !dbg !46477, !prof !5366

bb.uv:                                            ; preds = %bb.uu
  %i.cjf = load i64, ptr %i.age, align 8, !dbg !46478
    #dbg_value(i64 %i.cje, !39531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42405)
    #dbg_value(i64 %i.cjf, !39531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42405)
  br label %.invoke9338, !dbg !46479

bb.uw:                                            ; preds = %bb.uu
  %i.cjg = load ptr, ptr %i.age, align 8, !dbg !46480, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.cje, !39530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42406)
    #dbg_value(ptr %i.cjg, !39530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42406)
    #dbg_value(ptr poison, !39541, !DIExpression(), !42407)
    #dbg_value(ptr poison, !38451, !DIExpression(), !42408)
    #dbg_value(i64 %i.cje, !41380, !DIExpression(), !42411)
  %i.cjh = icmp samesign ugt i64 %i.cje, 127, !dbg !46481
    #dbg_value(i1 true, !41385, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !42413)
  call void @llvm.assume(i1 %i.cjh), !dbg !46482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !46483
  store i64 %i.cje, ptr %i.ub, align 8, !dbg !46484
  store ptr %i.cjg, ptr %i.agf, align 8, !dbg !46484
  store i64 0, ptr %i.agg, align 8, !dbg !46484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ua), !dbg !46485
    #dbg_value(ptr %2, !42414, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !42417)
    #dbg_value(ptr %2, !42418, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !42423)
    #dbg_value(i64 0, !42419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42424)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !42419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42424)
    #dbg_value(i64 0, !42419, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !42424)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ua, ptr noundef nonnull align 8 dereferenceable(24) %i.adh, i64 24, i1 false), !dbg !46486
  store i64 0, ptr %i.adh, align 8, !dbg !46487
  store ptr inttoptr (i64 8 to ptr), ptr %i.aax, align 8, !dbg !46487
  store i64 0, ptr %i.aaw, align 8, !dbg !46487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tz), !dbg !46488
  invoke fastcc void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.tz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(264) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ub)
          to label %bb.ux unwind label %bb.vz, !dbg !46489

bb.ux:                                            ; preds = %bb.uw
    #dbg_value(ptr %i.adh, !7161, !DIExpression(), !33927)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %bb.uz unwind label %bb.uy, !dbg !46490

bb.uy:                                            ; preds = %bb.ux
  %i.cji = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.adh, !7166, !DIExpression(), !33929)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %.thread5779 unwind label %bb.va, !dbg !46491

bb.uz:                                            ; preds = %bb.ux
    #dbg_value(ptr %i.adh, !7166, !DIExpression(), !33931)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit unwind label %bb.vb, !dbg !46492

bb.va:                                            ; preds = %bb.uy
  %i.cjj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !46490
  unreachable, !dbg !46490

bb.vb:                                            ; preds = %bb.uz
  %i.cjk = landingpad { ptr, i32 }
          cleanup
  br label %.thread5779, !dbg !46493

.thread5779:                                      ; preds = %bb.vb, %bb.uy
  %eh.lpad-body3809 = phi { ptr, i32 } [ %i.cjk, %bb.vb ], [ %i.cji, %bb.uy ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adh, ptr noundef nonnull align 8 dereferenceable(24) %i.ua, i64 24, i1 false), !dbg !46493
  br label %bb.vx, !dbg !46494

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.uz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adh, ptr noundef nonnull align 8 dereferenceable(24) %i.ua, i64 24, i1 false), !dbg !46493
  store ptr %i.aic, ptr %i.aai, align 8, !dbg !46495
    #dbg_value(ptr %2, !42312, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !42425)
    #dbg_value(ptr %2, !42391, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !42427)
    #dbg_value(ptr %2, !42395, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !42430)
    #dbg_value(ptr %2, !42400, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !42433)
  %i.cjl = load i64, ptr %i.adx, align 8, !dbg !46496, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !42317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42332)
    #dbg_value(ptr poison, !42323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42335)
    #dbg_value(i64 %i.cjl, !42317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42332)
    #dbg_value(i64 %i.cjl, !42323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42335)
  %i.cjm = icmp ult i64 %i.cik, %i.cjl, !dbg !46497
  br i1 %i.cjm, label %bb.vc, label %bb.vd, !dbg !46497

bb.vc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit
  %i.cjn = load ptr, ptr %i.ady, align 8, !dbg !46498, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.cjn, !42317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42332)
    #dbg_value(ptr %i.cjn, !42323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42335)
  %i.cjo = getelementptr inbounds nuw [32 x i8], ptr %i.cjn, i64 %i.cik, !dbg !46499
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 24, !dbg !46500
  store i64 %i.ciu, ptr %i.cjp, align 8, !dbg !46500
  %.sroa.072.0.copyload = load i8, ptr %i.tz, align 8, !dbg !38449 ; 2 uses
    #dbg_value(i8 %.sroa.072.0.copyload, !38376, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !42440)
  %.not2713 = icmp eq i8 %.sroa.072.0.copyload, -1, !dbg !46501
  br i1 %.not2713, label %bb.vg, label %bb.vf, !dbg !46502

bb.vd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cik, i64 noundef %i.cjl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #27
          to label %bb.fy unwind label %bb.ve, !dbg !46497

.thread5799.loopexit:                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i
  %lpad.loopexit6383 = landingpad { ptr, i32 }
          cleanup
  br label %.thread5755

.thread5799.loopexit.split-lp:                    ; preds = %bb.vl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread5755

bb.ve:                                            ; preds = %bb.vd
  %lpad.thr_comm.split-lp5798 = landingpad { ptr, i32 }
          cleanup
  br label %bb.vx, !dbg !46494

bb.vf:                                            ; preds = %bb.vc
    #dbg_value(i8 %.sroa.072.0.copyload, !38380, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !42441)
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !46503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4465.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.674.0..sroa_idx, i64 71, i1 false), !dbg !46504
    #dbg_value(i8 %.sroa.072.0.copyload, !37749, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !42442)
    #dbg_value(i8 %.sroa.072.0.copyload, !38365, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !42443)
    #dbg_value(i8 %.sroa.072.0.copyload, !38369, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !42444)
  store i8 %.sroa.072.0.copyload, ptr %0, align 8, !dbg !46503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !46494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !46505
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ub)
          to label %bb.vw unwind label %.thread5762.loopexit.split-lp.loopexit.split-lp, !dbg !46506

bb.vg:                                            ; preds = %bb.vc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ty), !dbg !46507
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !38443
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !38443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tx), !dbg !46508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tx, ptr noundef nonnull align 8 dereferenceable(24) %i.ub, i64 24, i1 false), !dbg !46508
  call void @llvm.experimental.noalias.scope.decl(metadata !42445), !dbg !38443
  call void @llvm.experimental.noalias.scope.decl(metadata !42446), !dbg !38443
    #dbg_declare(ptr %i.tx, !7172, !DIExpression(), !33936)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !33937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !46509, !noalias !42447
    #dbg_value(ptr %i.tx, !7178, !DIExpression(), !33939)
    #dbg_value(ptr %i.tx, !7180, !DIExpression(), !33941)
    #dbg_value(ptr %i.tx, !7182, !DIExpression(), !33943)
  %i.cjq = load ptr, ptr %i.agh, align 8, !dbg !46510, !alias.scope !42446, !noalias !42445, !nonnull !1852, !noundef !1852
  %i.cjr = load i64, ptr %i.agi, align 8, !dbg !46511, !alias.scope !42446, !noalias !42445, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cjq, i64 noundef %i.cjr)
          to label %bb.vi unwind label %bb.vh, !dbg !46509, !noalias !42447

bb.vh:                                            ; preds = %bb.vg
  %i.cjs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tx) #24
          to label %.thread5755 unwind label %bb.vj, !dbg !46512, !noalias !42445

bb.vi:                                            ; preds = %bb.vg
  %i.cjt = load i64, ptr %i.ac, align 8, !dbg !46509, !range !5418, !noalias !42447, !noundef !1852
  %i.cju = trunc nuw i64 %i.cjt to i1, !dbg !46513
  br i1 %i.cju, label %bb.vk, label %.thread5802, !dbg !46513

.thread5802:                                      ; preds = %bb.vi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.tx, i64 16, i1 false), !dbg !46514, !alias.scope !42447
    #dbg_value(i64 %i.cjr, !38388, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !42448)
    #dbg_value(i64 -1, !38388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42448)
    #dbg_value(i64 poison, !38388, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !42448)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !46515, !noalias !42447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tx), !dbg !46516
  br label %bb.vm, !dbg !46517

bb.vj:                                            ; preds = %bb.vh
  %i.cjv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !46518, !noalias !42445
  unreachable, !dbg !46518

bb.vk:                                            ; preds = %bb.vi
  %i.cjw = load <2 x i64>, ptr %i.agj, align 8, !dbg !46519, !noalias !42447
  %i.cjx = load i64, ptr %i.agj, align 8, !dbg !46519, !noalias !42447
  %.sroa.05585.0.copyload = load i64, ptr %i.tx, align 8, !dbg !46520, !noalias !42445 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.agh, i64 16, i1 false), !dbg !46520, !noalias !1852
    #dbg_value(i64 %.sroa.05585.0.copyload, !38388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42448)
    #dbg_value(i64 poison, !38388, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !42448)
    #dbg_value(i64 poison, !38388, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !42448)
    #dbg_value(i64 %.sroa.05585.0.copyload, !38388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42448)
    #dbg_value(i64 poison, !38388, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !42448)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !46515, !noalias !42447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tx), !dbg !46516
  %.not2714 = icmp eq i64 %.sroa.05585.0.copyload, -1, !dbg !46521
  br i1 %.not2714, label %bb.vm, label %bb.vl, !dbg !46517

bb.vl:                                            ; preds = %bb.vk
    #dbg_value(i64 %.sroa.05585.0.copyload, !38390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42449)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, i64 16, i1 false), !dbg !46522
    #dbg_value(i64 poison, !38390, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !42449)
    #dbg_value(i64 poison, !38390, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !42449)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !46523
    #dbg_value(i64 %.sroa.05585.0.copyload, !37752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42450)
    #dbg_value(i64 %.sroa.05585.0.copyload, !38522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42451)
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !46524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !46524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.483.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, i64 16, i1 false), !dbg !46523
    #dbg_value(i64 poison, !38522, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !42451)
    #dbg_value(i64 poison, !37752, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !42450)
    #dbg_value(i64 poison, !37752, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !42450)
    #dbg_value(i64 poison, !38522, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !42451)
  store i64 %.sroa.05585.0.copyload, ptr %i.bp, align 8, !dbg !46524
  %.sroa.483.sroa.4.0..sroa.483.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !46524
  store <2 x i64> %i.cjw, ptr %.sroa.483.sroa.4.0..sroa.483.0..sroa_idx.sroa_idx, align 8, !dbg !46524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !46525
  invoke void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bp)
          to label %bb.vv unwind label %.thread5799.loopexit.split-lp, !dbg !46525

bb.vm:                                            ; preds = %.thread5802, %bb.vk
  %.sroa.74783.sroa.7.0 = phi i64 [ %i.cjx, %bb.vk ], [ %i.cjr, %.thread5802 ], !dbg !46526 ; 2 uses
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !38388, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !42448)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, i64 16, i1 false), !dbg !46527
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !38389, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !42452)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !46523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, i64 16, i1 false), !dbg !38443
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !37753, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !42453)
  store i64 %.sroa.74783.sroa.7.0, ptr %i.agl, align 8, !dbg !38547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !46528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tw), !dbg !46529
    #dbg_value(ptr %i.ty, !40719, !DIExpression(), !42455)
    #dbg_value(ptr %i.ty, !40723, !DIExpression(), !42458)
  %i.cjy = load ptr, ptr %i.agk, align 8, !dbg !46530, !nonnull !1852, !noundef !1852
  invoke void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value11safe_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.tw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cjy, i64 noundef %.sroa.74783.sroa.7.0)
          to label %bb.vo unwind label %bb.vn, !dbg !46529

bb.vn:                                            ; preds = %bb.vm
  %i.cjz = landingpad { ptr, i32 }
          cleanup
  br label %.body3813, !dbg !46531

.body3813:                                        ; preds = %bb.vq, %bb.vn
  %eh.lpad-body3814 = phi { ptr, i32 } [ %i.cjz, %bb.vn ], [ %i.ckd, %bb.vq ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty) #24
          to label %.thread5755 unwind label %bb.gi, !dbg !46531

bb.vo:                                            ; preds = %bb.vm
    #dbg_value(i32 %i.anu, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !42469)
    #dbg_value(i32 %i.anu, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !42469)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !42469)
  call void @llvm.experimental.noalias.scope.decl(metadata !42470), !dbg !46532
    #dbg_value(ptr %2, !4354, !DIExpression(), !33950)
    #dbg_declare(ptr %i.tw, !4355, !DIExpression(), !33951)
    #dbg_declare(ptr %i.ab, !5239, !DIExpression(), !33953)
    #dbg_value(ptr %2, !5244, !DIExpression(), !33954)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !46533, !noalias !42471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.tw, i64 24, i1 false), !dbg !46533, !noalias !42472
  store i32 %i.anu, ptr %i.agm, align 8, !dbg !46533, !noalias !42473
  store i32 %i.anu, ptr %.sroa.44786.0..sroa_idx, align 4, !dbg !46533, !noalias !42473
  store i8 0, ptr %.sroa.54787.0..sroa_idx, align 8, !dbg !46533, !noalias !42473
    #dbg_value(ptr %2, !5246, !DIExpression(), !33958)
    #dbg_value(ptr %2, !5256, !DIExpression(), !33960)
    #dbg_declare(ptr %i.ab, !5251, !DIExpression(), !33961)
    #dbg_value(i64 40, !5261, !DIExpression(), !33964)
  %i.cka = load i64, ptr %i.aan, align 8, !dbg !46534, !alias.scope !42474, !noalias !42475, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.cka, !5252, !DIExpression(), !33968)
    #dbg_value(i64 %i.cka, !5271, !DIExpression(), !33970)
    #dbg_value(ptr %2, !5268, !DIExpression(), !33971)
  %i.ckb = load i64, ptr %2, align 8, !dbg !46535, !range !5278, !alias.scope !42474, !noalias !42475, !noundef !1852
  %i.ckc = icmp eq i64 %i.cka, %i.ckb, !dbg !46536
  br i1 %i.ckc, label %bb.vp, label %bb.vs, !dbg !46536

bb.vp:                                            ; preds = %bb.vo
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.vs unwind label %bb.vq, !dbg !46537, !noalias !42475

bb.vq:                                            ; preds = %bb.vp
  %i.ckd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ab, !5279, !DIExpression(), !33973)
    #dbg_value(ptr %i.ab, !5283, !DIExpression(), !33975)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %.body3813 unwind label %bb.vr, !dbg !46538, !noalias !42476

bb.vr:                                            ; preds = %bb.vq
  %i.cke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !46539, !noalias !42476
  unreachable, !dbg !46539

bb.vs:                                            ; preds = %bb.vp, %bb.vo
  %i.ckf = load ptr, ptr %i.aam, align 8, !dbg !46540, !alias.scope !42474, !noalias !42475, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.ckf, !5276, !DIExpression(), !33970)
  %i.ckg = getelementptr inbounds nuw [40 x i8], ptr %i.ckf, i64 %i.cka, !dbg !46541
    #dbg_value(ptr %i.ckg, !5254, !DIExpression(), !33979)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ckg, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !dbg !46542, !noalias !42476
  %i.ckh = add i64 %i.cka, 1, !dbg !46543
  store i64 %i.ckh, ptr %i.aan, align 8, !dbg !46543, !alias.scope !42474, !noalias !42475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !46544, !noalias !42471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tw), !dbg !46545
    #dbg_value(ptr %i.ty, !7185, !DIExpression(), !33981)
    #dbg_value(ptr %i.ty, !6429, !DIExpression(), !33983)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.vt, !dbg !46546

bb.vt:                                            ; preds = %bb.vs
  %i.cki = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ty, !6432, !DIExpression(), !33985)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %.thread5755 unwind label %bb.vu, !dbg !46547

bb.vu:                                            ; preds = %bb.vt
  %i.ckj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !46546
  unreachable, !dbg !46546

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.vs
    #dbg_value(ptr %i.ty, !6432, !DIExpression(), !33987)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %.thread5799.loopexit, !dbg !46548

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ty), !dbg !46531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !46494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !46505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ub), !dbg !46506
    #dbg_value(ptr %i.uo, !5283, !DIExpression(), !33989)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uo), !dbg !46549
  br label %bb.ug, !dbg !46421

bb.vv:                                            ; preds = %bb.vl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i64 72, i1 false), !dbg !46550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !46551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !46552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !46528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ty), !dbg !46531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !46494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !46505
  br label %bb.vw, !dbg !46506

bb.vw:                                            ; preds = %bb.vv, %bb.vf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ub), !dbg !46506
  br label %bb.wl, !dbg !46553

bb.vx:                                            ; preds = %bb.ve, %.thread5779
  %.pn27155785 = phi { ptr, i32 } [ %eh.lpad-body3809, %.thread5779 ], [ %lpad.thr_comm.split-lp5798, %bb.ve ] ; 2 uses
    #dbg_value(ptr %i.tz, !6439, !DIExpression(), !33991)
  %i.ckk = load i8, ptr %i.tz, align 8, !dbg !46554, !range !3904, !alias.scope !42478, !noundef !1852
  %i.ckl = icmp eq i8 %i.ckk, -1, !dbg !46554
  br i1 %i.ckl, label %.thread5806, label %bb.vy, !dbg !46554

bb.vy:                                            ; preds = %bb.vx
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tz)
          to label %.thread5806 unwind label %bb.gi, !dbg !46554

bb.vz:                                            ; preds = %bb.uw
  %i.ckm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ua) #24
          to label %.thread5806 unwind label %bb.gi, !dbg !46505

.thread5806:                                      ; preds = %bb.vz, %bb.vx, %bb.vy
  %.pn2715.pn57785810 = phi { ptr, i32 } [ %.pn27155785, %bb.vx ], [ %.pn27155785, %bb.vy ], [ %i.ckm, %bb.vz ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ub) #24
          to label %.thread5755 unwind label %bb.gi, !dbg !46506

bb.wa:                                            ; preds = %bb.us
    #dbg_value(ptr %i.aic, !39380, !DIExpression(), !40092)
    #dbg_value(ptr %i.aic, !37739, !DIExpression(), !42479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uh), !dbg !46555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ug), !dbg !46556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uf), !dbg !40668
  store i32 %i.anu, ptr %i.uf, align 4, !dbg !46557
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.uf, i64 4, !dbg !46557
  store i32 %i.anu, ptr %i.ckn, align 4, !dbg !46557
  %i.cko = getelementptr inbounds nuw i8, ptr %i.uf, i64 8, !dbg !46557
  store i8 0, ptr %i.cko, align 4, !dbg !46557
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk11expand_span(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ug, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.uf)
          to label %bb.wb unwind label %.thread5762.loopexit.split-lp.loopexit.split-lp, !dbg !46558

bb.wb:                                            ; preds = %bb.wa
  %i.ckp = load i64, ptr %i.ug, align 8, !dbg !46559, !range !5418, !noundef !1852
  %i.ckq = trunc nuw i64 %i.ckp to i1, !dbg !46560
  br i1 %i.ckq, label %bb.wc, label %.invoke9340, !dbg !46560, !prof !5808

bb.wc:                                            ; preds = %bb.wb
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ug, i64 8, !dbg !46561
end_hunk_2
begin_hunk_3_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretNtNtNtCsf3Ta7LF998c_4core2io4util4SinkEB7_:bb.a
  %.sroa.45.0..sroa_idx.i4130 = getelementptr inbounds nuw i8, ptr %i.dlc, i64 32, !dbg !47722
  %.sroa.45.0.copyload.i4131 = load i8, ptr %.sroa.45.0..sroa_idx.i4130, align 8, !dbg !47722, !noalias !43167
  %.sroa.56.0..sroa_idx.i4132 = getelementptr inbounds nuw i8, ptr %i.dlc, i64 33, !dbg !47722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3.i4133, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.56.0..sroa_idx.i4132, i64 7, i1 false), !dbg !47722, !noalias !43166
    #dbg_value(i8 %.sroa.45.0.copyload.i4131, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !35531)
  store i8 %.sroa.45.0.copyload.i4131, ptr %.sroa.4.0..sroa_idx1.i4134, align 8, !dbg !47723, !alias.scope !43165, !noalias !43166
    #dbg_value(ptr %i.og, !5279, !DIExpression(), !35548)
    #dbg_value(ptr %i.og, !5283, !DIExpression(), !35550)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.og), !dbg !47724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.og), !dbg !47725
  br label %.outer, !dbg !47726

bb.aja:                                           ; preds = %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack4peek.exit3283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.of), !dbg !47727
  call void @llvm.experimental.noalias.scope.decl(metadata !43168), !dbg !47728
  call void @llvm.experimental.noalias.scope.decl(metadata !43169), !dbg !47728
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !35556)
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !35556)
    #dbg_value(ptr %2, !5339, !DIExpression(), !35557)
    #dbg_value(i64 40, !5342, !DIExpression(), !35562)
    #dbg_value(ptr @116, !5333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35563)
    #dbg_value(i64 15, !5333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35563)
    #dbg_value(ptr %2, !5356, !DIExpression(), !35564)
    #dbg_value(ptr %2, !5351, !DIExpression(), !35565)
    #dbg_value(ptr %2, !5358, !DIExpression(), !35567)
    #dbg_value(ptr %2, !5363, !DIExpression(), !35569)
  %i.dld = load i64, ptr %i.aan, align 8, !dbg !47729, !alias.scope !43169, !noalias !43168, !noundef !1852 ; 3 uses
  %i.dle = icmp eq i64 %i.dld, 0, !dbg !47729
  br i1 %i.dle, label %bb.ajb, label %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack3pop.exit4141, !dbg !47729, !prof !5366

bb.ajb:                                           ; preds = %bb.aja
    #dbg_value(i8 2, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !35563)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #26, !dbg !47730, !noalias !43170
  unreachable, !dbg !47730

_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack3pop.exit4141: ; preds = %bb.aja
  %i.dlf = add nsw i64 %i.dld, -1, !dbg !47731    ; 3 uses
  store i64 %i.dlf, ptr %i.aan, align 8, !dbg !47731, !alias.scope !43169, !noalias !43168
  %i.dlg = load i64, ptr %2, align 8, !dbg !47732, !range !5278, !alias.scope !43169, !noalias !43168, !noundef !1852
  %i.dlh = icmp samesign ult i64 %i.dlf, %i.dlg, !dbg !47733
    #dbg_value(i1 true, !5370, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !35571)
  call void @llvm.assume(i1 %i.dlh), !dbg !47734
  %i.dli = load ptr, ptr %i.aam, align 8, !dbg !47735, !alias.scope !43169, !noalias !43168, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dli, !5376, !DIExpression(), !35576)
    #dbg_value(i64 %i.dlf, !5381, !DIExpression(), !35576)
  %i.dlj = icmp ult i64 %i.dld, 230584300921369397, !dbg !47736
  call void @llvm.assume(i1 %i.dlj), !dbg !47737
  %i.dlk = getelementptr inbounds nuw [40 x i8], ptr %i.dli, i64 %i.dlf, !dbg !47738 ; 3 uses
    #dbg_value(ptr %i.dlk, !5383, !DIExpression(), !35578)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.of, ptr noundef nonnull align 8 dereferenceable(32) %i.dlk, i64 32, i1 false), !dbg !47739, !noalias !43169
  %.sroa.45.0..sroa_idx.i4136 = getelementptr inbounds nuw i8, ptr %i.dlk, i64 32, !dbg !47739
  %.sroa.45.0.copyload.i4137 = load i8, ptr %.sroa.45.0..sroa_idx.i4136, align 8, !dbg !47739, !noalias !43170
  %.sroa.56.0..sroa_idx.i4138 = getelementptr inbounds nuw i8, ptr %i.dlk, i64 33, !dbg !47739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3.i4139, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.56.0..sroa_idx.i4138, i64 7, i1 false), !dbg !47739, !noalias !43169
    #dbg_value(i8 %.sroa.45.0.copyload.i4137, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !35563)
  store i8 %.sroa.45.0.copyload.i4137, ptr %.sroa.4.0..sroa_idx1.i4140, align 8, !dbg !47740, !alias.scope !43168, !noalias !43169
    #dbg_value(ptr %i.of, !5279, !DIExpression(), !35580)
    #dbg_value(ptr %i.of, !5283, !DIExpression(), !35582)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.of), !dbg !47741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.of), !dbg !47742
  br label %.outer, !dbg !47743

bb.ajc:                                           ; preds = %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack4peek.exit3283
  %i.dll = getelementptr inbounds nuw i8, ptr %i.aig, i64 8, !dbg !47744
  %i.dlm = load i64, ptr %i.dll, align 8, !dbg !47744, !noundef !1852
    #dbg_value(i64 %i.dlm, !37537, !DIExpression(), !40635)
  br label %bb.ais, !dbg !44653

bb.ajd:                                           ; preds = %bb.cf
  %i.dln = load i64, ptr %i.adp, align 8, !dbg !47745
    #dbg_value(i64 %i.auk, !39504, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43171)
    #dbg_value(i64 %i.dln, !39504, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43171)
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.auk, i64 %i.dln) #27, !dbg !47746
  unreachable, !dbg !47746

bb.aje:                                           ; preds = %bb.cf
    #dbg_value(ptr %i.adh, !39090, !DIExpression(), !41120)
  %i.dlo = load ptr, ptr %i.adp, align 8, !dbg !47747, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.auk, !39503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43172)
    #dbg_value(ptr %i.dlo, !39503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !43172)
    #dbg_value(ptr poison, !39541, !DIExpression(), !43173)
    #dbg_value(ptr poison, !38451, !DIExpression(), !43174)
    #dbg_value(i64 %i.auk, !41380, !DIExpression(), !43177)
  %i.dlp = icmp samesign ugt i64 %i.auk, 127, !dbg !47748
    #dbg_value(i1 true, !41385, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !43179)
  call void @llvm.assume(i1 %i.dlp), !dbg !47749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !47750
  store i64 %i.auk, ptr %i.oe, align 8, !dbg !47751
  store ptr %i.dlo, ptr %i.adq, align 8, !dbg !47751
  store i64 0, ptr %i.adr, align 8, !dbg !47751
    #dbg_value(ptr %i.adh, !7381, !DIExpression(), !35584)
    #dbg_value(ptr %i.adh, !7389, !DIExpression(), !35586)
    #dbg_declare(ptr %i.oe, !7385, !DIExpression(), !35587)
    #dbg_value(i64 24, !7391, !DIExpression(), !35590)
  %i.dlq = load i64, ptr %i.aaw, align 8, !dbg !47752, !alias.scope !43180, !noalias !43181, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.dlq, !7386, !DIExpression(), !35594)
    #dbg_value(i64 %i.dlq, !7396, !DIExpression(), !35596)
    #dbg_value(ptr %i.adh, !7394, !DIExpression(), !35597)
  %i.dlr = load i64, ptr %i.adh, align 8, !dbg !47753, !range !5278, !alias.scope !43180, !noalias !43181, !noundef !1852
  %i.dls = icmp eq i64 %i.dlq, %i.dlr, !dbg !47754
  br i1 %i.dls, label %bb.ajf, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit, !dbg !47754

bb.ajf:                                           ; preds = %bb.aje
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit unwind label %bb.ajg, !dbg !47755, !noalias !43181

bb.ajg:                                           ; preds = %bb.ajf
  %i.dlt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oe) #24
          to label %common.resume unwind label %bb.ajh, !dbg !47756

bb.ajh:                                           ; preds = %bb.ajg
  %i.dlu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !47757
  unreachable, !dbg !47757

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.aje, %bb.ajf
  %i.dlv = load ptr, ptr %i.aax, align 8, !dbg !47758, !alias.scope !43180, !noalias !43181, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dlv, !7399, !DIExpression(), !35596)
  %i.dlw = getelementptr inbounds nuw [24 x i8], ptr %i.dlv, i64 %i.dlq, !dbg !47759
    #dbg_value(ptr %i.dlw, !7387, !DIExpression(), !35601)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dlw, ptr noundef nonnull align 8 dereferenceable(24) %i.oe, i64 24, i1 false), !dbg !47760
  %i.dlx = add i64 %i.dlq, 1, !dbg !47761
  store i64 %i.dlx, ptr %i.aaw, align 8, !dbg !47761, !alias.scope !43180, !noalias !43181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !47762
  br label %.outer, !dbg !47763

bb.aji:                                           ; preds = %bb.cg
    #dbg_value(i64 -1, !38530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43182)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #26, !dbg !47764
  unreachable, !dbg !47764

bb.ajj:                                           ; preds = %bb.cg
  %i.dly = add nsw i64 %i.aum, -1, !dbg !47765    ; 3 uses
  store i64 %i.dly, ptr %i.aaw, align 8, !dbg !47765
  %i.dlz = load i64, ptr %i.adh, align 8, !dbg !47766, !range !5278, !noundef !1852
    #dbg_value(i64 %i.dlz, !41380, !DIExpression(), !43185)
  %i.dma = icmp samesign ult i64 %i.dly, %i.dlz, !dbg !47767
    #dbg_value(i1 true, !41385, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !43187)
  call void @llvm.assume(i1 %i.dma), !dbg !47768
  %i.dmb = load ptr, ptr %i.aax, align 8, !dbg !47769, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dmb, !43194, !DIExpression(), !43198)
    #dbg_value(i64 %i.dly, !43195, !DIExpression(), !43198)
  %i.dmc = icmp ult i64 %i.aum, 384307168202282327, !dbg !47770
  call void @llvm.assume(i1 %i.dmc), !dbg !47771
  %i.dmd = getelementptr inbounds nuw [24 x i8], ptr %i.dmb, i64 %i.dly, !dbg !47772 ; 2 uses
    #dbg_value(ptr %i.dmd, !43199, !DIExpression(), !43202)
  %.sroa.0378.0.copyload = load i64, ptr %i.dmd, align 8, !dbg !47773 ; 3 uses
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dmd, i64 8, !dbg !47773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4379.0..sroa_idx, i64 16, i1 false), !dbg !47773
    #dbg_value(i64 %.sroa.0378.0.copyload, !38530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43182)
  store i64 %.sroa.0378.0.copyload, ptr %i.od, align 8, !dbg !47774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oc), !dbg !47775
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !38393
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !38393
  call void @llvm.experimental.noalias.scope.decl(metadata !43203), !dbg !38393
  call void @llvm.experimental.noalias.scope.decl(metadata !43204), !dbg !38393
    #dbg_declare(ptr %i.od, !7172, !DIExpression(), !35608)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !35609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !47776, !noalias !43205
    #dbg_value(ptr %i.od, !7178, !DIExpression(), !35611)
    #dbg_value(ptr %i.od, !7180, !DIExpression(), !35613)
    #dbg_value(ptr %i.od, !7182, !DIExpression(), !35615)
  %i.dme = load ptr, ptr %.sroa.5189.0..sroa_idx190, align 8, !dbg !47777, !alias.scope !43204, !noalias !43203, !nonnull !1852, !noundef !1852
  %i.dmf = load i64, ptr %i.adi, align 8, !dbg !47778, !alias.scope !43204, !noalias !43203, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dme, i64 noundef %i.dmf)
          to label %bb.ajl unwind label %bb.ajk, !dbg !47776, !noalias !43205

bb.ajk:                                           ; preds = %bb.ajj
  %i.dmg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.od) #24
          to label %common.resume unwind label %bb.ajm, !dbg !47779, !noalias !43203

bb.ajl:                                           ; preds = %bb.ajj
  %i.dmh = load i64, ptr %i.u, align 8, !dbg !47776, !range !5418, !noalias !43205, !noundef !1852
  %i.dmi = trunc nuw i64 %i.dmh to i1, !dbg !47780
  br i1 %i.dmi, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread, !dbg !47780

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread: ; preds = %bb.ajl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.od, i64 16, i1 false), !dbg !47781, !alias.scope !43205
    #dbg_value(i64 %i.dmf, !38388, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !43206)
    #dbg_value(i64 -1, !38388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43206)
    #dbg_value(i64 poison, !38388, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !43206)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !47782, !noalias !43205
  br label %bb.ajp, !dbg !47783

bb.ajm:                                           ; preds = %bb.ajk
  %i.dmj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !47784, !noalias !43203
  unreachable, !dbg !47784

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142: ; preds = %bb.ajl
  %i.dmk = load <2 x i64>, ptr %i.adj, align 8, !dbg !47785, !noalias !43205
  %i.dml = load i64, ptr %i.adj, align 8, !dbg !47785, !noalias !43205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, i64 16, i1 false), !dbg !47786, !noalias !1852
    #dbg_value(i64 %.sroa.0378.0.copyload, !38388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43206)
    #dbg_value(i64 poison, !38388, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !43206)
    #dbg_value(i64 poison, !38388, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !43206)
    #dbg_value(i64 %.sroa.0378.0.copyload, !38388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43206)
    #dbg_value(i64 poison, !38388, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !43206)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !47782, !noalias !43205
  %.not2631 = icmp eq i64 %.sroa.0378.0.copyload, -1, !dbg !47787
  br i1 %.not2631, label %bb.ajp, label %bb.ajn, !dbg !47783

bb.ajn:                                           ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142
    #dbg_value(i64 %.sroa.0378.0.copyload, !38387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43207)
    #dbg_value(i64 poison, !38387, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !43207)
    #dbg_value(i64 poison, !38387, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !43207)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !47788
    #dbg_value(i64 %.sroa.0378.0.copyload, !37964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43208)
    #dbg_value(i64 %.sroa.0378.0.copyload, !38522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !43209)
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !47789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !47789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4199.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, i64 16, i1 false), !dbg !47788
    #dbg_value(i64 poison, !38522, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !43209)
    #dbg_value(i64 poison, !37964, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !43208)
    #dbg_value(i64 poison, !37964, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !43208)
    #dbg_value(i64 poison, !38522, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !43209)
  store i64 %.sroa.0378.0.copyload, ptr %i.bi, align 8, !dbg !47789
  %.sroa.4199.sroa.4.0..sroa.4199.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24, !dbg !47789
  store <2 x i64> %i.dmk, ptr %.sroa.4199.sroa.4.0..sroa.4199.0..sroa_idx.sroa_idx, align 8, !dbg !47789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !47790
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bi), !dbg !47790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 72, i1 false), !dbg !47791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !47792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !47793
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !47794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oc), !dbg !47795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !47796
  br label %bb.biv, !dbg !44653

bb.ajo:                                           ; preds = %bb.ajr, %bb.ajq
  %.sroa.0331.0 = phi i8 [ 0, %bb.ajq ], [ 1, %bb.ajr ], !dbg !47797
  %i.dmm = landingpad { ptr, i32 }
          cleanup
  br label %.body4146, !dbg !47795

.body4146:                                        ; preds = %bb.ajv, %bb.ajo
  %.sroa.0331.0.lpad-body = phi i8 [ %.sroa.0331.0, %bb.ajo ], [ %.sroa.0331.1, %bb.ajv ]
  %eh.lpad-body4147 = phi { ptr, i32 } [ %i.dmm, %bb.ajo ], [ %i.dmv, %bb.ajv ] ; 2 uses
  %i.dmn = trunc nuw i8 %.sroa.0331.0.lpad-body to i1, !dbg !47795
  br i1 %i.dmn, label %bb.akc, label %common.resume, !dbg !47795

bb.ajp:                                           ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread
  %i.dmo = phi i64 [ %i.dml, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142 ], [ %i.dmf, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread ], !dbg !47798 ; 2 uses
    #dbg_value(i64 %i.dmo, !38388, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !43206)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6193.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, i64 16, i1 false), !dbg !47799
    #dbg_value(i64 %i.dmo, !38391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43210)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !47788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6193.sroa.0, i64 16, i1 false), !dbg !38393
    #dbg_value(i64 %i.dmo, !37965, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !43211)
  store i64 %i.dmo, ptr %i.adm, align 8, !dbg !38520
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !47794
    #dbg_value(ptr poison, !3874, !DIExpression(), !35620)
    #dbg_value(i8 %.val3137, !3880, !DIExpression(), !35622)
  %i.dmp = load i8, ptr %i.adk, align 1, !dbg !47800, !range !3887, !noundef !1852
    #dbg_value(i8 %i.dmp, !3884, !DIExpression(), !35622)
  %spec.select.i4144 = select i1 %.not.i4143, i8 %i.dmp, i8 %.val3137, !dbg !47801
    #dbg_value(i8 %spec.select.i4144, !3884, !DIExpression(), !35622)
  %i.dmq = trunc nuw i8 %spec.select.i4144 to i1, !dbg !47802
  br i1 %i.dmq, label %bb.ajr, label %bb.ajq, !dbg !47803

bb.ajq:                                           ; preds = %bb.ajp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oa), !dbg !47804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 8 dereferenceable(24) %i.oc, i64 24, i1 false), !dbg !47804
  invoke void @_RNvXsd_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ob, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.oa)
          to label %bb.ajs unwind label %bb.ajo, !dbg !47805

bb.ajr:                                           ; preds = %bb.ajp
    #dbg_value(ptr %i.oc, !40719, !DIExpression(), !43213)
    #dbg_value(ptr %i.oc, !40723, !DIExpression(), !43216)
  %i.dmr = load ptr, ptr %i.adl, align 8, !dbg !47806, !nonnull !1852, !noundef !1852
  invoke void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value11safe_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ob, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dmr, i64 noundef %i.dmo)
          to label %bb.ajt unwind label %bb.ajo, !dbg !47807

bb.ajs:                                           ; preds = %bb.ajq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oa), !dbg !47808
  br label %bb.ajt, !dbg !47809

bb.ajt:                                           ; preds = %bb.ajr, %bb.ajs
  %.sroa.0331.1 = phi i8 [ 1, %bb.ajr ], [ 0, %bb.ajs ], !dbg !47797 ; 2 uses
    #dbg_value(i32 %i.aul, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !43227)
    #dbg_value(i32 %i.aul, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !43227)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !43227)
  call void @llvm.experimental.noalias.scope.decl(metadata !43228), !dbg !47810
    #dbg_value(ptr %2, !4354, !DIExpression(), !35626)
    #dbg_declare(ptr %i.ob, !4355, !DIExpression(), !35627)
    #dbg_declare(ptr %i.t, !5239, !DIExpression(), !35629)
    #dbg_value(ptr %2, !5244, !DIExpression(), !35630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !47811, !noalias !43229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ob, i64 24, i1 false), !dbg !47811, !noalias !43230
  store i32 %i.aul, ptr %i.adn, align 8, !dbg !47811, !noalias !43231
  store i32 %i.aul, ptr %.sroa.44974.0..sroa_idx, align 4, !dbg !47811, !noalias !43231
  store i8 0, ptr %.sroa.54975.0..sroa_idx, align 8, !dbg !47811, !noalias !43231
    #dbg_value(ptr %2, !5246, !DIExpression(), !35634)
    #dbg_value(ptr %2, !5256, !DIExpression(), !35636)
    #dbg_declare(ptr %i.t, !5251, !DIExpression(), !35637)
    #dbg_value(i64 40, !5261, !DIExpression(), !35640)
  %i.dms = load i64, ptr %i.aan, align 8, !dbg !47812, !alias.scope !43232, !noalias !43233, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.dms, !5252, !DIExpression(), !35644)
    #dbg_value(i64 %i.dms, !5271, !DIExpression(), !35646)
    #dbg_value(ptr %2, !5268, !DIExpression(), !35647)
  %i.dmt = load i64, ptr %2, align 8, !dbg !47813, !range !5278, !alias.scope !43232, !noalias !43233, !noundef !1852
  %i.dmu = icmp eq i64 %i.dms, %i.dmt, !dbg !47814
  br i1 %i.dmu, label %bb.aju, label %bb.ajx, !dbg !47814

bb.aju:                                           ; preds = %bb.ajt
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ajx unwind label %bb.ajv, !dbg !47815, !noalias !43233

bb.ajv:                                           ; preds = %bb.aju
  %i.dmv = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.t, !5279, !DIExpression(), !35649)
    #dbg_value(ptr %i.t, !5283, !DIExpression(), !35651)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.body4146 unwind label %bb.ajw, !dbg !47816, !noalias !43234

bb.ajw:                                           ; preds = %bb.ajv
  %i.dmw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !47817, !noalias !43234
  unreachable, !dbg !47817

bb.ajx:                                           ; preds = %bb.aju, %bb.ajt
  %i.dmx = load ptr, ptr %i.aam, align 8, !dbg !47818, !alias.scope !43232, !noalias !43233, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dmx, !5276, !DIExpression(), !35646)
  %i.dmy = getelementptr inbounds nuw [40 x i8], ptr %i.dmx, i64 %i.dms, !dbg !47819
    #dbg_value(ptr %i.dmy, !5254, !DIExpression(), !35655)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dmy, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !dbg !47820, !noalias !43234
  %i.dmz = add i64 %i.dms, 1, !dbg !47821
  store i64 %i.dmz, ptr %i.aan, align 8, !dbg !47821, !alias.scope !43232, !noalias !43233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !47822, !noalias !43229
  %i.dna = trunc nuw i8 %.sroa.0331.1 to i1, !dbg !47795
  br i1 %i.dna, label %bb.ajz, label %bb.ajy, !dbg !47795

bb.ajy:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151, %bb.ajx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oc), !dbg !47795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !47796
  br label %.outer, !dbg !47796

bb.ajz:                                           ; preds = %bb.ajx
    #dbg_value(ptr %i.oc, !7185, !DIExpression(), !35657)
    #dbg_value(ptr %i.oc, !6429, !DIExpression(), !35659)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151 unwind label %bb.aka, !dbg !47823

bb.aka:                                           ; preds = %bb.ajz
  %i.dnb = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.oc, !6432, !DIExpression(), !35661)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %common.resume unwind label %bb.akb, !dbg !47824

bb.akb:                                           ; preds = %bb.aka
  %i.dnc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !47823
  unreachable, !dbg !47823

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151: ; preds = %bb.ajz
    #dbg_value(ptr %i.oc, !6432, !DIExpression(), !35663)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc), !dbg !47825
  br label %bb.ajy, !dbg !47795

bb.akc:                                           ; preds = %.body4146
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc) #24
          to label %common.resume unwind label %bb.gi, !dbg !47795

bb.akd:                                           ; preds = %bb.c, %bb.c
  %.sroa.0201.0 = getelementptr inbounds nuw i8, ptr %i.aig, i64 1, !dbg !40642
    #dbg_value(ptr %.sroa.0201.0, !37967, !DIExpression(), !43235)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04977.sroa.0), !dbg !47826
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64979), !dbg !47826
  call void @llvm.experimental.noalias.scope.decl(metadata !43236), !dbg !47827
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !35668)
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !35668)
    #dbg_value(ptr %2, !5339, !DIExpression(), !35669)
    #dbg_value(i64 40, !5342, !DIExpression(), !35674)
    #dbg_value(ptr @116, !5333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35675)
    #dbg_value(i64 15, !5333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35675)
    #dbg_value(ptr %2, !5356, !DIExpression(), !35676)
    #dbg_value(ptr %2, !5351, !DIExpression(), !35677)
    #dbg_value(ptr %2, !5358, !DIExpression(), !35679)
    #dbg_value(ptr %2, !5363, !DIExpression(), !35681)
  %i.dnd = load i64, ptr %i.aan, align 8, !dbg !47828, !alias.scope !43236, !noalias !43237, !noundef !1852 ; 3 uses
  %i.dne = icmp eq i64 %i.dnd, 0, !dbg !47828
  br i1 %i.dne, label %bb.ake, label %bb.akf, !dbg !47828, !prof !5366

bb.ake:                                           ; preds = %bb.akd
    #dbg_value(i8 2, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !35675)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #26, !dbg !47829, !noalias !43238
  unreachable, !dbg !47829

.body2929.thread6011:                             ; preds = %.invoke9359, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit4159, %bb.akk, %bb.akh, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit4161, %bb.aku, %bb.akt, %bb.akr, %bb.akj
  %lpad.thr_comm6009 = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
    #dbg_value(ptr %2, !62945, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !62948)
    #dbg_value(ptr %2, !62949, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !62953)
    #dbg_value(ptr %2, !62954, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !62958)
    #dbg_value(i64 %i.cik, !62871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62875)
    #dbg_value(i64 %i.cik, !62877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62881)
    #dbg_value(ptr %i.cij, !62871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62875)
    #dbg_value(ptr %i.cij, !62877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62881)
  store i64 %i.cja, ptr %i.ciy, align 8, !dbg !67033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ub), !dbg !67034
    #dbg_value(i64 1, !60044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60694)
    #dbg_value(i64 1, !60085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !60698)
    #dbg_value(i64 1, !60044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60694)
    #dbg_value(i64 1, !60085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !60698)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !67035
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.uv unwind label %.thread5762.loopexit.split-lp.loopexit, !dbg !67035

bb.uv:                                            ; preds = %bb.uu
  %i.cjh = load i64, ptr %i.bq, align 8, !dbg !67035, !range !5418, !noundef !1852
  %i.cji = trunc nuw i64 %i.cjh to i1, !dbg !67036
  %i.cjj = load i64, ptr %i.agd, align 8, !dbg !60694, !range !5419, !noundef !1852 ; 3 uses
  br i1 %i.cji, label %bb.uw, label %bb.ux, !dbg !67036, !prof !5366

bb.uw:                                            ; preds = %bb.uv
  %i.cjk = load i64, ptr %i.age, align 8, !dbg !67037
    #dbg_value(i64 %i.cjj, !60073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62959)
    #dbg_value(i64 %i.cjk, !60073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62959)
  br label %.invoke9338, !dbg !67038

bb.ux:                                            ; preds = %bb.uv
  %i.cjl = load ptr, ptr %i.age, align 8, !dbg !67039, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.cjj, !60072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62960)
    #dbg_value(ptr %i.cjl, !60072, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62960)
    #dbg_value(ptr poison, !60083, !DIExpression(), !62961)
    #dbg_value(ptr poison, !58993, !DIExpression(), !62962)
    #dbg_value(i64 %i.cjj, !61922, !DIExpression(), !62965)
  %i.cjm = icmp samesign ugt i64 %i.cjj, 127, !dbg !67040
    #dbg_value(i1 true, !61927, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !62967)
  call void @llvm.assume(i1 %i.cjm), !dbg !67041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !67042
  store i64 %i.cjj, ptr %i.ub, align 8, !dbg !67043
  store ptr %i.cjl, ptr %i.agf, align 8, !dbg !67043
  store i64 0, ptr %i.agg, align 8, !dbg !67043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ua), !dbg !67044
    #dbg_value(ptr %2, !62968, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !62971)
    #dbg_value(ptr %2, !62972, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !62977)
    #dbg_value(i64 0, !62973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62978)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !62973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62978)
    #dbg_value(i64 0, !62973, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !62978)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ua, ptr noundef nonnull align 8 dereferenceable(24) %i.adh, i64 24, i1 false), !dbg !67045
  store i64 0, ptr %i.adh, align 8, !dbg !67046
  store ptr inttoptr (i64 8 to ptr), ptr %i.aax, align 8, !dbg !67046
  store i64 0, ptr %i.aaw, align 8, !dbg !67046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tz), !dbg !67047
  invoke fastcc void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.tz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(264) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ub)
          to label %bb.uy unwind label %bb.wa, !dbg !67048

bb.uy:                                            ; preds = %bb.ux
    #dbg_value(ptr %i.adh, !7161, !DIExpression(), !54469)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %bb.va unwind label %bb.uz, !dbg !67049

bb.uz:                                            ; preds = %bb.uy
  %i.cjn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.adh, !7166, !DIExpression(), !54471)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %.thread5779 unwind label %bb.vb, !dbg !67050

bb.va:                                            ; preds = %bb.uy
    #dbg_value(ptr %i.adh, !7166, !DIExpression(), !54473)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit unwind label %bb.vc, !dbg !67051

bb.vb:                                            ; preds = %bb.uz
  %i.cjo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !67049
  unreachable, !dbg !67049

bb.vc:                                            ; preds = %bb.va
  %i.cjp = landingpad { ptr, i32 }
          cleanup
  br label %.thread5779, !dbg !67052

.thread5779:                                      ; preds = %bb.vc, %bb.uz
  %eh.lpad-body3809 = phi { ptr, i32 } [ %i.cjp, %bb.vc ], [ %i.cjn, %bb.uz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adh, ptr noundef nonnull align 8 dereferenceable(24) %i.ua, i64 24, i1 false), !dbg !67052
  br label %bb.vy, !dbg !67053

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.va
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.adh, ptr noundef nonnull align 8 dereferenceable(24) %i.ua, i64 24, i1 false), !dbg !67052
  store ptr %i.aic, ptr %i.aai, align 8, !dbg !67054
    #dbg_value(ptr %2, !62866, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !62979)
    #dbg_value(ptr %2, !62945, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !62981)
    #dbg_value(ptr %2, !62949, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !62984)
    #dbg_value(ptr %2, !62954, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !62987)
  %i.cjq = load i64, ptr %i.adx, align 8, !dbg !67055, !noundef !1852 ; 2 uses
    #dbg_value(ptr poison, !62871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62886)
    #dbg_value(ptr poison, !62877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62889)
    #dbg_value(i64 %i.cjq, !62871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62886)
    #dbg_value(i64 %i.cjq, !62877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !62889)
  %i.cjr = icmp ult i64 %i.cip, %i.cjq, !dbg !67056
  br i1 %i.cjr, label %bb.vd, label %bb.ve, !dbg !67056

bb.vd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit
  %i.cjs = load ptr, ptr %i.ady, align 8, !dbg !67057, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.cjs, !62871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62886)
    #dbg_value(ptr %i.cjs, !62877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !62889)
  %i.cjt = getelementptr inbounds nuw [32 x i8], ptr %i.cjs, i64 %i.cip, !dbg !67058
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjt, i64 24, !dbg !67059
  store i64 %i.ciz, ptr %i.cju, align 8, !dbg !67059
  %.sroa.072.0.copyload = load i8, ptr %i.tz, align 8, !dbg !58991 ; 2 uses
    #dbg_value(i8 %.sroa.072.0.copyload, !58918, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !62994)
  %.not2713 = icmp eq i8 %.sroa.072.0.copyload, -1, !dbg !67060
  br i1 %.not2713, label %bb.vh, label %bb.vg, !dbg !67061

bb.ve:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera.exit
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cip, i64 noundef %i.cjq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #27
          to label %bb.fy unwind label %bb.vf, !dbg !67056

.thread5799.loopexit:                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i
  %lpad.loopexit6383 = landingpad { ptr, i32 }
          cleanup
  br label %.thread5755

.thread5799.loopexit.split-lp:                    ; preds = %bb.vm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread5755

bb.vf:                                            ; preds = %bb.ve
  %lpad.thr_comm.split-lp5798 = landingpad { ptr, i32 }
          cleanup
  br label %bb.vy, !dbg !67053

bb.vg:                                            ; preds = %bb.vd
    #dbg_value(i8 %.sroa.072.0.copyload, !58922, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !62995)
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !67062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4465.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.674.0..sroa_idx, i64 71, i1 false), !dbg !67063
    #dbg_value(i8 %.sroa.072.0.copyload, !58291, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !62996)
    #dbg_value(i8 %.sroa.072.0.copyload, !58907, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !62997)
    #dbg_value(i8 %.sroa.072.0.copyload, !58911, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !62998)
  store i8 %.sroa.072.0.copyload, ptr %0, align 8, !dbg !67062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !67053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !67064
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ub)
          to label %bb.vx unwind label %.thread5762.loopexit.split-lp.loopexit.split-lp, !dbg !67065

bb.vh:                                            ; preds = %bb.vd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ty), !dbg !67066
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !58985
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !58985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tx), !dbg !67067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tx, ptr noundef nonnull align 8 dereferenceable(24) %i.ub, i64 24, i1 false), !dbg !67067
  call void @llvm.experimental.noalias.scope.decl(metadata !62999), !dbg !58985
  call void @llvm.experimental.noalias.scope.decl(metadata !63000), !dbg !58985
    #dbg_declare(ptr %i.tx, !7172, !DIExpression(), !54478)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !54479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !67068, !noalias !63001
    #dbg_value(ptr %i.tx, !7178, !DIExpression(), !54481)
    #dbg_value(ptr %i.tx, !7180, !DIExpression(), !54483)
    #dbg_value(ptr %i.tx, !7182, !DIExpression(), !54485)
  %i.cjv = load ptr, ptr %i.agh, align 8, !dbg !67069, !alias.scope !63000, !noalias !62999, !nonnull !1852, !noundef !1852
  %i.cjw = load i64, ptr %i.agi, align 8, !dbg !67070, !alias.scope !63000, !noalias !62999, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cjv, i64 noundef %i.cjw)
          to label %bb.vj unwind label %bb.vi, !dbg !67068, !noalias !63001

bb.vi:                                            ; preds = %bb.vh
  %i.cjx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tx) #24
          to label %.thread5755 unwind label %bb.vk, !dbg !67071, !noalias !62999

bb.vj:                                            ; preds = %bb.vh
  %i.cjy = load i64, ptr %i.ac, align 8, !dbg !67068, !range !5418, !noalias !63001, !noundef !1852
  %i.cjz = trunc nuw i64 %i.cjy to i1, !dbg !67072
  br i1 %i.cjz, label %bb.vl, label %.thread5802, !dbg !67072

.thread5802:                                      ; preds = %bb.vj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.tx, i64 16, i1 false), !dbg !67073, !alias.scope !63001
    #dbg_value(i64 %i.cjw, !58930, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63002)
    #dbg_value(i64 -1, !58930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63002)
    #dbg_value(i64 poison, !58930, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63002)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !67074, !noalias !63001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tx), !dbg !67075
  br label %bb.vn, !dbg !67076

bb.vk:                                            ; preds = %bb.vi
  %i.cka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !67077, !noalias !62999
  unreachable, !dbg !67077

bb.vl:                                            ; preds = %bb.vj
  %i.ckb = load <2 x i64>, ptr %i.agj, align 8, !dbg !67078, !noalias !63001
  %i.ckc = load i64, ptr %i.agj, align 8, !dbg !67078, !noalias !63001
  %.sroa.05585.0.copyload = load i64, ptr %i.tx, align 8, !dbg !67079, !noalias !62999 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.agh, i64 16, i1 false), !dbg !67079, !noalias !1852
    #dbg_value(i64 %.sroa.05585.0.copyload, !58930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63002)
    #dbg_value(i64 poison, !58930, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63002)
    #dbg_value(i64 poison, !58930, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63002)
    #dbg_value(i64 %.sroa.05585.0.copyload, !58930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63002)
    #dbg_value(i64 poison, !58930, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63002)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !67074, !noalias !63001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tx), !dbg !67075
  %.not2714 = icmp eq i64 %.sroa.05585.0.copyload, -1, !dbg !67080
  br i1 %.not2714, label %bb.vn, label %bb.vm, !dbg !67076

bb.vm:                                            ; preds = %bb.vl
    #dbg_value(i64 %.sroa.05585.0.copyload, !58932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63003)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, i64 16, i1 false), !dbg !67081
    #dbg_value(i64 poison, !58932, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63003)
    #dbg_value(i64 poison, !58932, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63003)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !67082
    #dbg_value(i64 %.sroa.05585.0.copyload, !58294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63004)
    #dbg_value(i64 %.sroa.05585.0.copyload, !59064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63005)
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !67083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !67083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.483.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, i64 16, i1 false), !dbg !67082
    #dbg_value(i64 poison, !59064, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63005)
    #dbg_value(i64 poison, !58294, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63004)
    #dbg_value(i64 poison, !58294, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63004)
    #dbg_value(i64 poison, !59064, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63005)
  store i64 %.sroa.05585.0.copyload, ptr %i.bp, align 8, !dbg !67083
  %.sroa.483.sroa.4.0..sroa.483.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !67083
  store <2 x i64> %i.ckb, ptr %.sroa.483.sroa.4.0..sroa.483.0..sroa_idx.sroa_idx, align 8, !dbg !67083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !67084
  invoke void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bp)
          to label %bb.vw unwind label %.thread5799.loopexit.split-lp, !dbg !67084

bb.vn:                                            ; preds = %.thread5802, %bb.vl
  %.sroa.74783.sroa.7.0 = phi i64 [ %i.ckc, %bb.vl ], [ %i.cjw, %.thread5802 ], !dbg !67085 ; 2 uses
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !58930, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63002)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74783.sroa.0, i64 16, i1 false), !dbg !67086
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !58931, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !63006)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74783.sroa.0), !dbg !67082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.678.sroa.0, i64 16, i1 false), !dbg !58985
    #dbg_value(i64 %.sroa.74783.sroa.7.0, !58295, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !63007)
  store i64 %.sroa.74783.sroa.7.0, ptr %i.agl, align 8, !dbg !59089
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !67087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tw), !dbg !67088
    #dbg_value(ptr %i.ty, !61261, !DIExpression(), !63009)
    #dbg_value(ptr %i.ty, !61265, !DIExpression(), !63012)
  %i.ckd = load ptr, ptr %i.agk, align 8, !dbg !67089, !nonnull !1852, !noundef !1852
  invoke void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value11safe_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.tw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ckd, i64 noundef %.sroa.74783.sroa.7.0)
          to label %bb.vp unwind label %bb.vo, !dbg !67088

bb.vo:                                            ; preds = %bb.vn
  %i.cke = landingpad { ptr, i32 }
          cleanup
  br label %.body3813, !dbg !67090

.body3813:                                        ; preds = %bb.vr, %bb.vo
  %eh.lpad-body3814 = phi { ptr, i32 } [ %i.cke, %bb.vo ], [ %i.cki, %bb.vr ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty) #24
          to label %.thread5755 unwind label %bb.gi, !dbg !67090

bb.vp:                                            ; preds = %bb.vn
    #dbg_value(i32 %i.anu, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !63023)
    #dbg_value(i32 %i.anu, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !63023)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !63023)
  call void @llvm.experimental.noalias.scope.decl(metadata !63024), !dbg !67091
    #dbg_value(ptr %2, !4354, !DIExpression(), !54492)
    #dbg_declare(ptr %i.tw, !4355, !DIExpression(), !54493)
    #dbg_declare(ptr %i.ab, !5239, !DIExpression(), !54495)
    #dbg_value(ptr %2, !5244, !DIExpression(), !54496)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !67092, !noalias !63025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.tw, i64 24, i1 false), !dbg !67092, !noalias !63026
  store i32 %i.anu, ptr %i.agm, align 8, !dbg !67092, !noalias !63027
  store i32 %i.anu, ptr %.sroa.44786.0..sroa_idx, align 4, !dbg !67092, !noalias !63027
  store i8 0, ptr %.sroa.54787.0..sroa_idx, align 8, !dbg !67092, !noalias !63027
    #dbg_value(ptr %2, !5246, !DIExpression(), !54500)
    #dbg_value(ptr %2, !5256, !DIExpression(), !54502)
    #dbg_declare(ptr %i.ab, !5251, !DIExpression(), !54503)
    #dbg_value(i64 40, !5261, !DIExpression(), !54506)
  %i.ckf = load i64, ptr %i.aan, align 8, !dbg !67093, !alias.scope !63028, !noalias !63029, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.ckf, !5252, !DIExpression(), !54510)
    #dbg_value(i64 %i.ckf, !5271, !DIExpression(), !54512)
    #dbg_value(ptr %2, !5268, !DIExpression(), !54513)
  %i.ckg = load i64, ptr %2, align 8, !dbg !67094, !range !5278, !alias.scope !63028, !noalias !63029, !noundef !1852
  %i.ckh = icmp eq i64 %i.ckf, %i.ckg, !dbg !67095
  br i1 %i.ckh, label %bb.vq, label %bb.vt, !dbg !67095

bb.vq:                                            ; preds = %bb.vp
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.vt unwind label %bb.vr, !dbg !67096, !noalias !63029

bb.vr:                                            ; preds = %bb.vq
  %i.cki = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ab, !5279, !DIExpression(), !54515)
    #dbg_value(ptr %i.ab, !5283, !DIExpression(), !54517)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %.body3813 unwind label %bb.vs, !dbg !67097, !noalias !63030

bb.vs:                                            ; preds = %bb.vr
  %i.ckj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !67098, !noalias !63030
  unreachable, !dbg !67098

bb.vt:                                            ; preds = %bb.vq, %bb.vp
  %i.ckk = load ptr, ptr %i.aam, align 8, !dbg !67099, !alias.scope !63028, !noalias !63029, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.ckk, !5276, !DIExpression(), !54512)
  %i.ckl = getelementptr inbounds nuw [40 x i8], ptr %i.ckk, i64 %i.ckf, !dbg !67100
    #dbg_value(ptr %i.ckl, !5254, !DIExpression(), !54521)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ckl, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !dbg !67101, !noalias !63030
  %i.ckm = add i64 %i.ckf, 1, !dbg !67102
  store i64 %i.ckm, ptr %i.aan, align 8, !dbg !67102, !alias.scope !63028, !noalias !63029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !67103, !noalias !63025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tw), !dbg !67104
    #dbg_value(ptr %i.ty, !7185, !DIExpression(), !54523)
    #dbg_value(ptr %i.ty, !6429, !DIExpression(), !54525)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.vu, !dbg !67105

bb.vu:                                            ; preds = %bb.vt
  %i.ckn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ty, !6432, !DIExpression(), !54527)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %.thread5755 unwind label %bb.vv, !dbg !67106

bb.vv:                                            ; preds = %bb.vu
  %i.cko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !67105
  unreachable, !dbg !67105

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.vt
    #dbg_value(ptr %i.ty, !6432, !DIExpression(), !54529)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %.thread5799.loopexit, !dbg !67107

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ty), !dbg !67090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !67053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !67064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ub), !dbg !67065
    #dbg_value(ptr %i.uo, !5283, !DIExpression(), !54531)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.uo), !dbg !67108
  br label %bb.uh, !dbg !66980

bb.vw:                                            ; preds = %bb.vm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i64 72, i1 false), !dbg !67109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !67110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !67111
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.678.sroa.0), !dbg !67087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ty), !dbg !67090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tz), !dbg !67053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ua), !dbg !67064
  br label %bb.vx, !dbg !67065

bb.vx:                                            ; preds = %bb.vw, %bb.vg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ub), !dbg !67065
  br label %bb.wm, !dbg !67112

bb.vy:                                            ; preds = %bb.vf, %.thread5779
  %.pn27155785 = phi { ptr, i32 } [ %eh.lpad-body3809, %.thread5779 ], [ %lpad.thr_comm.split-lp5798, %bb.vf ] ; 2 uses
    #dbg_value(ptr %i.tz, !6439, !DIExpression(), !54533)
  %i.ckp = load i8, ptr %i.tz, align 8, !dbg !67113, !range !3904, !alias.scope !63032, !noundef !1852
  %i.ckq = icmp eq i8 %i.ckp, -1, !dbg !67113
  br i1 %i.ckq, label %.thread5806, label %bb.vz, !dbg !67113

bb.vz:                                            ; preds = %bb.vy
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.tz)
          to label %.thread5806 unwind label %bb.gi, !dbg !67113

bb.wa:                                            ; preds = %bb.ux
  %i.ckr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_hEEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ua) #24
          to label %.thread5806 unwind label %bb.gi, !dbg !67064

.thread5806:                                      ; preds = %bb.wa, %bb.vy, %bb.vz
  %.pn2715.pn57785810 = phi { ptr, i32 } [ %.pn27155785, %bb.vy ], [ %.pn27155785, %bb.vz ], [ %i.ckr, %bb.wa ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ub) #24
          to label %.thread5755 unwind label %bb.gi, !dbg !67065

bb.wb:                                            ; preds = %bb.ut
    #dbg_value(ptr %i.aic, !59922, !DIExpression(), !60634)
    #dbg_value(ptr %i.aic, !58281, !DIExpression(), !63033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uh), !dbg !67114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ug), !dbg !67115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uf), !dbg !61210
  store i32 %i.anu, ptr %i.uf, align 4, !dbg !67116
  %i.cks = getelementptr inbounds nuw i8, ptr %i.uf, i64 4, !dbg !67116
  store i32 %i.anu, ptr %i.cks, align 4, !dbg !67116
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.uf, i64 8, !dbg !67116
  store i8 0, ptr %i.ckt, align 4, !dbg !67116
  invoke void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk11expand_span(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ug, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aic, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.uf)
          to label %bb.wc unwind label %.thread5762.loopexit.split-lp.loopexit.split-lp, !dbg !67117

bb.wc:                                            ; preds = %bb.wb
  %i.cku = load i64, ptr %i.ug, align 8, !dbg !67118, !range !5418, !noundef !1852
  %i.ckv = trunc nuw i64 %i.cku to i1, !dbg !67119
  br i1 %i.ckv, label %bb.wd, label %.invoke9340, !dbg !67119, !prof !5808

bb.wd:                                            ; preds = %bb.wc
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.ug, i64 8, !dbg !67120
end_hunk_4
begin_hunk_5_@_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9interpretQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_:bb.a
  %.sroa.45.0..sroa_idx.i4130 = getelementptr inbounds nuw i8, ptr %i.dlh, i64 32, !dbg !68281
  %.sroa.45.0.copyload.i4131 = load i8, ptr %.sroa.45.0..sroa_idx.i4130, align 8, !dbg !68281, !noalias !63721
  %.sroa.56.0..sroa_idx.i4132 = getelementptr inbounds nuw i8, ptr %i.dlh, i64 33, !dbg !68281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3.i4133, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.56.0..sroa_idx.i4132, i64 7, i1 false), !dbg !68281, !noalias !63720
    #dbg_value(i8 %.sroa.45.0.copyload.i4131, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !56073)
  store i8 %.sroa.45.0.copyload.i4131, ptr %.sroa.4.0..sroa_idx1.i4134, align 8, !dbg !68282, !alias.scope !63719, !noalias !63720
    #dbg_value(ptr %i.og, !5279, !DIExpression(), !56090)
    #dbg_value(ptr %i.og, !5283, !DIExpression(), !56092)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.og), !dbg !68283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.og), !dbg !68284
  br label %.outer, !dbg !68285

bb.ajb:                                           ; preds = %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack4peek.exit3283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.of), !dbg !68286
  call void @llvm.experimental.noalias.scope.decl(metadata !63722), !dbg !68287
  call void @llvm.experimental.noalias.scope.decl(metadata !63723), !dbg !68287
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !56098)
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !56098)
    #dbg_value(ptr %2, !5339, !DIExpression(), !56099)
    #dbg_value(i64 40, !5342, !DIExpression(), !56104)
    #dbg_value(ptr @116, !5333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !56105)
    #dbg_value(i64 15, !5333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !56105)
    #dbg_value(ptr %2, !5356, !DIExpression(), !56106)
    #dbg_value(ptr %2, !5351, !DIExpression(), !56107)
    #dbg_value(ptr %2, !5358, !DIExpression(), !56109)
    #dbg_value(ptr %2, !5363, !DIExpression(), !56111)
  %i.dli = load i64, ptr %i.aan, align 8, !dbg !68288, !alias.scope !63723, !noalias !63722, !noundef !1852 ; 3 uses
  %i.dlj = icmp eq i64 %i.dli, 0, !dbg !68288
  br i1 %i.dlj, label %bb.ajc, label %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack3pop.exit4141, !dbg !68288, !prof !5366

bb.ajc:                                           ; preds = %bb.ajb
    #dbg_value(i8 2, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !56105)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #26, !dbg !68289, !noalias !63724
  unreachable, !dbg !68289

_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack3pop.exit4141: ; preds = %bb.ajb
  %i.dlk = add nsw i64 %i.dli, -1, !dbg !68290    ; 3 uses
  store i64 %i.dlk, ptr %i.aan, align 8, !dbg !68290, !alias.scope !63723, !noalias !63722
  %i.dll = load i64, ptr %2, align 8, !dbg !68291, !range !5278, !alias.scope !63723, !noalias !63722, !noundef !1852
  %i.dlm = icmp samesign ult i64 %i.dlk, %i.dll, !dbg !68292
    #dbg_value(i1 true, !5370, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !56113)
  call void @llvm.assume(i1 %i.dlm), !dbg !68293
  %i.dln = load ptr, ptr %i.aam, align 8, !dbg !68294, !alias.scope !63723, !noalias !63722, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dln, !5376, !DIExpression(), !56118)
    #dbg_value(i64 %i.dlk, !5381, !DIExpression(), !56118)
  %i.dlo = icmp ult i64 %i.dli, 230584300921369397, !dbg !68295
  call void @llvm.assume(i1 %i.dlo), !dbg !68296
  %i.dlp = getelementptr inbounds nuw [40 x i8], ptr %i.dln, i64 %i.dlk, !dbg !68297 ; 3 uses
    #dbg_value(ptr %i.dlp, !5383, !DIExpression(), !56120)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.of, ptr noundef nonnull align 8 dereferenceable(32) %i.dlp, i64 32, i1 false), !dbg !68298, !noalias !63723
  %.sroa.45.0..sroa_idx.i4136 = getelementptr inbounds nuw i8, ptr %i.dlp, i64 32, !dbg !68298
  %.sroa.45.0.copyload.i4137 = load i8, ptr %.sroa.45.0..sroa_idx.i4136, align 8, !dbg !68298, !noalias !63724
  %.sroa.56.0..sroa_idx.i4138 = getelementptr inbounds nuw i8, ptr %i.dlp, i64 33, !dbg !68298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3.i4139, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.56.0..sroa_idx.i4138, i64 7, i1 false), !dbg !68298, !noalias !63723
    #dbg_value(i8 %.sroa.45.0.copyload.i4137, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !56105)
  store i8 %.sroa.45.0.copyload.i4137, ptr %.sroa.4.0..sroa_idx1.i4140, align 8, !dbg !68299, !alias.scope !63722, !noalias !63723
    #dbg_value(ptr %i.of, !5279, !DIExpression(), !56122)
    #dbg_value(ptr %i.of, !5283, !DIExpression(), !56124)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.of), !dbg !68300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.of), !dbg !68301
  br label %.outer, !dbg !68302

bb.ajd:                                           ; preds = %_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stackNtB2_5Stack4peek.exit3283
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.aig, i64 8, !dbg !68303
  %i.dlr = load i64, ptr %i.dlq, align 8, !dbg !68303, !noundef !1852
    #dbg_value(i64 %i.dlr, !58079, !DIExpression(), !61177)
  br label %bb.ait, !dbg !65207

bb.aje:                                           ; preds = %bb.cf
  %i.dls = load i64, ptr %i.adp, align 8, !dbg !68304
    #dbg_value(i64 %i.auk, !60046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63725)
    #dbg_value(i64 %i.dls, !60046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !63725)
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.auk, i64 %i.dls) #27, !dbg !68305
  unreachable, !dbg !68305

bb.ajf:                                           ; preds = %bb.cf
    #dbg_value(ptr %i.adh, !59632, !DIExpression(), !61662)
  %i.dlt = load ptr, ptr %i.adp, align 8, !dbg !68306, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.auk, !60045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63726)
    #dbg_value(ptr %i.dlt, !60045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !63726)
    #dbg_value(ptr poison, !60083, !DIExpression(), !63727)
    #dbg_value(ptr poison, !58993, !DIExpression(), !63728)
    #dbg_value(i64 %i.auk, !61922, !DIExpression(), !63731)
  %i.dlu = icmp samesign ugt i64 %i.auk, 127, !dbg !68307
    #dbg_value(i1 true, !61927, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !63733)
  call void @llvm.assume(i1 %i.dlu), !dbg !68308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !68309
  store i64 %i.auk, ptr %i.oe, align 8, !dbg !68310
  store ptr %i.dlt, ptr %i.adq, align 8, !dbg !68310
  store i64 0, ptr %i.adr, align 8, !dbg !68310
    #dbg_value(ptr %i.adh, !7381, !DIExpression(), !56126)
    #dbg_value(ptr %i.adh, !7389, !DIExpression(), !56128)
    #dbg_declare(ptr %i.oe, !7385, !DIExpression(), !56129)
    #dbg_value(i64 24, !7391, !DIExpression(), !56132)
  %i.dlv = load i64, ptr %i.aaw, align 8, !dbg !68311, !alias.scope !63734, !noalias !63735, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.dlv, !7386, !DIExpression(), !56136)
    #dbg_value(i64 %i.dlv, !7396, !DIExpression(), !56138)
    #dbg_value(ptr %i.adh, !7394, !DIExpression(), !56139)
  %i.dlw = load i64, ptr %i.adh, align 8, !dbg !68312, !range !5278, !alias.scope !63734, !noalias !63735, !noundef !1852
  %i.dlx = icmp eq i64 %i.dlv, %i.dlw, !dbg !68313
  br i1 %i.dlx, label %bb.ajg, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit, !dbg !68313

bb.ajg:                                           ; preds = %bb.ajf
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adh)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit unwind label %bb.ajh, !dbg !68314, !noalias !63735

bb.ajh:                                           ; preds = %bb.ajg
  %i.dly = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oe) #24
          to label %common.resume unwind label %bb.aji, !dbg !68315

bb.aji:                                           ; preds = %bb.ajh
  %i.dlz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !68316
  unreachable, !dbg !68316

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEE8push_mutCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.ajf, %bb.ajg
  %i.dma = load ptr, ptr %i.aax, align 8, !dbg !68317, !alias.scope !63734, !noalias !63735, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dma, !7399, !DIExpression(), !56138)
  %i.dmb = getelementptr inbounds nuw [24 x i8], ptr %i.dma, i64 %i.dlv, !dbg !68318
    #dbg_value(ptr %i.dmb, !7387, !DIExpression(), !56143)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dmb, ptr noundef nonnull align 8 dereferenceable(24) %i.oe, i64 24, i1 false), !dbg !68319
  %i.dmc = add i64 %i.dlv, 1, !dbg !68320
  store i64 %i.dmc, ptr %i.aaw, align 8, !dbg !68320, !alias.scope !63734, !noalias !63735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !68321
  br label %.outer, !dbg !68322

bb.ajj:                                           ; preds = %bb.cg
    #dbg_value(i64 -1, !59072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63736)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #26, !dbg !68323
  unreachable, !dbg !68323

bb.ajk:                                           ; preds = %bb.cg
  %i.dmd = add nsw i64 %i.aum, -1, !dbg !68324    ; 3 uses
  store i64 %i.dmd, ptr %i.aaw, align 8, !dbg !68324
  %i.dme = load i64, ptr %i.adh, align 8, !dbg !68325, !range !5278, !noundef !1852
    #dbg_value(i64 %i.dme, !61922, !DIExpression(), !63739)
  %i.dmf = icmp samesign ult i64 %i.dmd, %i.dme, !dbg !68326
    #dbg_value(i1 true, !61927, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !63741)
  call void @llvm.assume(i1 %i.dmf), !dbg !68327
  %i.dmg = load ptr, ptr %i.aax, align 8, !dbg !68328, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dmg, !63748, !DIExpression(), !63752)
    #dbg_value(i64 %i.dmd, !63749, !DIExpression(), !63752)
  %i.dmh = icmp ult i64 %i.aum, 384307168202282327, !dbg !68329
  call void @llvm.assume(i1 %i.dmh), !dbg !68330
  %i.dmi = getelementptr inbounds nuw [24 x i8], ptr %i.dmg, i64 %i.dmd, !dbg !68331 ; 2 uses
    #dbg_value(ptr %i.dmi, !63753, !DIExpression(), !63756)
  %.sroa.0378.0.copyload = load i64, ptr %i.dmi, align 8, !dbg !68332 ; 3 uses
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dmi, i64 8, !dbg !68332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4379.0..sroa_idx, i64 16, i1 false), !dbg !68332
    #dbg_value(i64 %.sroa.0378.0.copyload, !59072, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63736)
  store i64 %.sroa.0378.0.copyload, ptr %i.od, align 8, !dbg !68333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oc), !dbg !68334
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !58935
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !58935
  call void @llvm.experimental.noalias.scope.decl(metadata !63757), !dbg !58935
  call void @llvm.experimental.noalias.scope.decl(metadata !63758), !dbg !58935
    #dbg_declare(ptr %i.od, !7172, !DIExpression(), !56150)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !56151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !68335, !noalias !63759
    #dbg_value(ptr %i.od, !7178, !DIExpression(), !56153)
    #dbg_value(ptr %i.od, !7180, !DIExpression(), !56155)
    #dbg_value(ptr %i.od, !7182, !DIExpression(), !56157)
  %i.dmj = load ptr, ptr %.sroa.5189.0..sroa_idx190, align 8, !dbg !68336, !alias.scope !63758, !noalias !63757, !nonnull !1852, !noundef !1852
  %i.dmk = load i64, ptr %i.adi, align 8, !dbg !68337, !alias.scope !63758, !noalias !63757, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dmj, i64 noundef %i.dmk)
          to label %bb.ajm unwind label %bb.ajl, !dbg !68335, !noalias !63759

bb.ajl:                                           ; preds = %bb.ajk
  %i.dml = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.od) #24
          to label %common.resume unwind label %bb.ajn, !dbg !68338, !noalias !63757

bb.ajm:                                           ; preds = %bb.ajk
  %i.dmm = load i64, ptr %i.u, align 8, !dbg !68335, !range !5418, !noalias !63759, !noundef !1852
  %i.dmn = trunc nuw i64 %i.dmm to i1, !dbg !68339
  br i1 %i.dmn, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread, !dbg !68339

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread: ; preds = %bb.ajm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.od, i64 16, i1 false), !dbg !68340, !alias.scope !63759
    #dbg_value(i64 %i.dmk, !58930, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63760)
    #dbg_value(i64 -1, !58930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63760)
    #dbg_value(i64 poison, !58930, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63760)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !68341, !noalias !63759
  br label %bb.ajq, !dbg !68342

bb.ajn:                                           ; preds = %bb.ajl
  %i.dmo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !68343, !noalias !63757
  unreachable, !dbg !68343

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142: ; preds = %bb.ajm
  %i.dmp = load <2 x i64>, ptr %i.adj, align 8, !dbg !68344, !noalias !63759
  %i.dmq = load i64, ptr %i.adj, align 8, !dbg !68344, !noalias !63759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, i64 16, i1 false), !dbg !68345, !noalias !1852
    #dbg_value(i64 %.sroa.0378.0.copyload, !58930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63760)
    #dbg_value(i64 poison, !58930, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63760)
    #dbg_value(i64 poison, !58930, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63760)
    #dbg_value(i64 %.sroa.0378.0.copyload, !58930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63760)
    #dbg_value(i64 poison, !58930, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63760)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !68341, !noalias !63759
  %.not2631 = icmp eq i64 %.sroa.0378.0.copyload, -1, !dbg !68346
  br i1 %.not2631, label %bb.ajq, label %bb.ajo, !dbg !68342

bb.ajo:                                           ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142
    #dbg_value(i64 %.sroa.0378.0.copyload, !58929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63761)
    #dbg_value(i64 poison, !58929, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63761)
    #dbg_value(i64 poison, !58929, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63761)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !68347
    #dbg_value(i64 %.sroa.0378.0.copyload, !58506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63762)
    #dbg_value(i64 %.sroa.0378.0.copyload, !59064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !63763)
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !68348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !68348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4199.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5189.0..sroa_idx190, i64 16, i1 false), !dbg !68347
    #dbg_value(i64 poison, !59064, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63763)
    #dbg_value(i64 poison, !58506, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63762)
    #dbg_value(i64 poison, !58506, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63762)
    #dbg_value(i64 poison, !59064, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !63763)
  store i64 %.sroa.0378.0.copyload, ptr %i.bi, align 8, !dbg !68348
  %.sroa.4199.sroa.4.0..sroa.4199.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24, !dbg !68348
  store <2 x i64> %i.dmp, ptr %.sroa.4199.sroa.4.0..sroa.4199.0..sroa_idx.sroa_idx, align 8, !dbg !68348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !68349
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bi), !dbg !68349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 72, i1 false), !dbg !68350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !68351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !68352
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !68353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oc), !dbg !68354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !68355
  br label %bb.biw, !dbg !65207

bb.ajp:                                           ; preds = %bb.ajs, %bb.ajr
  %.sroa.0331.0 = phi i8 [ 0, %bb.ajr ], [ 1, %bb.ajs ], !dbg !68356
  %i.dmr = landingpad { ptr, i32 }
          cleanup
  br label %.body4146, !dbg !68354

.body4146:                                        ; preds = %bb.ajw, %bb.ajp
  %.sroa.0331.0.lpad-body = phi i8 [ %.sroa.0331.0, %bb.ajp ], [ %.sroa.0331.1, %bb.ajw ]
  %eh.lpad-body4147 = phi { ptr, i32 } [ %i.dmr, %bb.ajp ], [ %i.dna, %bb.ajw ] ; 2 uses
  %i.dms = trunc nuw i8 %.sroa.0331.0.lpad-body to i1, !dbg !68354
  br i1 %i.dms, label %bb.akd, label %common.resume, !dbg !68354

bb.ajq:                                           ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread
  %i.dmt = phi i64 [ %i.dmq, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142 ], [ %i.dmk, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit4142.thread ], !dbg !68357 ; 2 uses
    #dbg_value(i64 %i.dmt, !58930, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !63760)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6193.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74971.sroa.0, i64 16, i1 false), !dbg !68358
    #dbg_value(i64 %i.dmt, !58933, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !63764)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74971.sroa.0), !dbg !68347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6193.sroa.0, i64 16, i1 false), !dbg !58935
    #dbg_value(i64 %i.dmt, !58507, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !63765)
  store i64 %i.dmt, ptr %i.adm, align 8, !dbg !59062
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6193.sroa.0), !dbg !68353
    #dbg_value(ptr poison, !3874, !DIExpression(), !56162)
    #dbg_value(i8 %.val3137, !3880, !DIExpression(), !56164)
  %i.dmu = load i8, ptr %i.adk, align 1, !dbg !68359, !range !3887, !noundef !1852
    #dbg_value(i8 %i.dmu, !3884, !DIExpression(), !56164)
  %spec.select.i4144 = select i1 %.not.i4143, i8 %i.dmu, i8 %.val3137, !dbg !68360
    #dbg_value(i8 %spec.select.i4144, !3884, !DIExpression(), !56164)
  %i.dmv = trunc nuw i8 %spec.select.i4144 to i1, !dbg !68361
  br i1 %i.dmv, label %bb.ajs, label %bb.ajr, !dbg !68362

bb.ajr:                                           ; preds = %bb.ajq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oa), !dbg !68363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 8 dereferenceable(24) %i.oc, i64 24, i1 false), !dbg !68363
  invoke void @_RNvXsd_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ob, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.oa)
          to label %bb.ajt unwind label %bb.ajp, !dbg !68364

bb.ajs:                                           ; preds = %bb.ajq
    #dbg_value(ptr %i.oc, !61261, !DIExpression(), !63767)
    #dbg_value(ptr %i.oc, !61265, !DIExpression(), !63770)
  %i.dmw = load ptr, ptr %i.adl, align 8, !dbg !68365, !nonnull !1852, !noundef !1852
  invoke void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value11safe_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ob, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dmw, i64 noundef %i.dmt)
          to label %bb.aju unwind label %bb.ajp, !dbg !68366

bb.ajt:                                           ; preds = %bb.ajr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oa), !dbg !68367
  br label %bb.aju, !dbg !68368

bb.aju:                                           ; preds = %bb.ajs, %bb.ajt
  %.sroa.0331.1 = phi i8 [ 1, %bb.ajs ], [ 0, %bb.ajt ], !dbg !68356 ; 2 uses
    #dbg_value(i32 %i.aul, !4349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !63781)
    #dbg_value(i32 %i.aul, !4349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !63781)
    #dbg_value(i8 0, !4349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !63781)
  call void @llvm.experimental.noalias.scope.decl(metadata !63782), !dbg !68369
    #dbg_value(ptr %2, !4354, !DIExpression(), !56168)
    #dbg_declare(ptr %i.ob, !4355, !DIExpression(), !56169)
    #dbg_declare(ptr %i.t, !5239, !DIExpression(), !56171)
    #dbg_value(ptr %2, !5244, !DIExpression(), !56172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !68370, !noalias !63783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ob, i64 24, i1 false), !dbg !68370, !noalias !63784
  store i32 %i.aul, ptr %i.adn, align 8, !dbg !68370, !noalias !63785
  store i32 %i.aul, ptr %.sroa.44974.0..sroa_idx, align 4, !dbg !68370, !noalias !63785
  store i8 0, ptr %.sroa.54975.0..sroa_idx, align 8, !dbg !68370, !noalias !63785
    #dbg_value(ptr %2, !5246, !DIExpression(), !56176)
    #dbg_value(ptr %2, !5256, !DIExpression(), !56178)
    #dbg_declare(ptr %i.t, !5251, !DIExpression(), !56179)
    #dbg_value(i64 40, !5261, !DIExpression(), !56182)
  %i.dmx = load i64, ptr %i.aan, align 8, !dbg !68371, !alias.scope !63786, !noalias !63787, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.dmx, !5252, !DIExpression(), !56186)
    #dbg_value(i64 %i.dmx, !5271, !DIExpression(), !56188)
    #dbg_value(ptr %2, !5268, !DIExpression(), !56189)
  %i.dmy = load i64, ptr %2, align 8, !dbg !68372, !range !5278, !alias.scope !63786, !noalias !63787, !noundef !1852
  %i.dmz = icmp eq i64 %i.dmx, %i.dmy, !dbg !68373
  br i1 %i.dmz, label %bb.ajv, label %bb.ajy, !dbg !68373

bb.ajv:                                           ; preds = %bb.aju
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5yXxDE1DkoT_4tera5value5ValueINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivemEEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ajy unwind label %bb.ajw, !dbg !68374, !noalias !63787

bb.ajw:                                           ; preds = %bb.ajv
  %i.dna = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.t, !5279, !DIExpression(), !56191)
    #dbg_value(ptr %i.t, !5283, !DIExpression(), !56193)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.body4146 unwind label %bb.ajx, !dbg !68375, !noalias !63788

bb.ajx:                                           ; preds = %bb.ajw
  %i.dnb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !68376, !noalias !63788
  unreachable, !dbg !68376

bb.ajy:                                           ; preds = %bb.ajv, %bb.aju
  %i.dnc = load ptr, ptr %i.aam, align 8, !dbg !68377, !alias.scope !63786, !noalias !63787, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.dnc, !5276, !DIExpression(), !56188)
  %i.dnd = getelementptr inbounds nuw [40 x i8], ptr %i.dnc, i64 %i.dmx, !dbg !68378
    #dbg_value(ptr %i.dnd, !5254, !DIExpression(), !56197)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dnd, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !dbg !68379, !noalias !63788
  %i.dne = add i64 %i.dmx, 1, !dbg !68380
  store i64 %i.dne, ptr %i.aan, align 8, !dbg !68380, !alias.scope !63786, !noalias !63787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !68381, !noalias !63783
  %i.dnf = trunc nuw i8 %.sroa.0331.1 to i1, !dbg !68354
  br i1 %i.dnf, label %bb.aka, label %bb.ajz, !dbg !68354

bb.ajz:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151, %bb.ajy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oc), !dbg !68354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !68355
  br label %.outer, !dbg !68355

bb.aka:                                           ; preds = %bb.ajy
    #dbg_value(ptr %i.oc, !7185, !DIExpression(), !56199)
    #dbg_value(ptr %i.oc, !6429, !DIExpression(), !56201)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151 unwind label %bb.akb, !dbg !68382

bb.akb:                                           ; preds = %bb.aka
  %i.dng = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.oc, !6432, !DIExpression(), !56203)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %common.resume unwind label %bb.akc, !dbg !68383

bb.akc:                                           ; preds = %bb.akb
  %i.dnh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !68382
  unreachable, !dbg !68382

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit4151: ; preds = %bb.aka
    #dbg_value(ptr %i.oc, !6432, !DIExpression(), !56205)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc), !dbg !68384
  br label %bb.ajz, !dbg !68354

bb.akd:                                           ; preds = %.body4146
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oc) #24
          to label %common.resume unwind label %bb.gi, !dbg !68354

bb.ake:                                           ; preds = %bb.c, %bb.c
  %.sroa.0201.0 = getelementptr inbounds nuw i8, ptr %i.aig, i64 1, !dbg !61184
    #dbg_value(ptr %.sroa.0201.0, !58509, !DIExpression(), !63789)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04977.sroa.0), !dbg !68385
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64979), !dbg !68385
  call void @llvm.experimental.noalias.scope.decl(metadata !63790), !dbg !68386
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !56210)
    #dbg_declare(ptr poison, !5322, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !56210)
    #dbg_value(ptr %2, !5339, !DIExpression(), !56211)
    #dbg_value(i64 40, !5342, !DIExpression(), !56216)
    #dbg_value(ptr @116, !5333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !56217)
    #dbg_value(i64 15, !5333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !56217)
    #dbg_value(ptr %2, !5356, !DIExpression(), !56218)
    #dbg_value(ptr %2, !5351, !DIExpression(), !56219)
    #dbg_value(ptr %2, !5358, !DIExpression(), !56221)
    #dbg_value(ptr %2, !5363, !DIExpression(), !56223)
  %i.dni = load i64, ptr %i.aan, align 8, !dbg !68387, !alias.scope !63790, !noalias !63791, !noundef !1852 ; 3 uses
  %i.dnj = icmp eq i64 %i.dni, 0, !dbg !68387
  br i1 %i.dnj, label %bb.akf, label %bb.akg, !dbg !68387, !prof !5366

bb.akf:                                           ; preds = %bb.ake
    #dbg_value(i8 2, !5322, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !56217)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #26, !dbg !68388, !noalias !63792
  unreachable, !dbg !68388

.body2929.thread6011:                             ; preds = %.invoke9359, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit4159, %bb.akl, %bb.aki, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit4161, %bb.akv, %bb.aku, %bb.aks, %bb.akk
  %lpad.thr_comm6009 = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera:bb.a
  %i.ak = xor i16 %i.aj, -1, !dbg !72112
  %i.al = and i16 %.sroa.0.024, %i.ak, !dbg !72113 ; 2 uses
    #dbg_value(i16 %i.al, !71925, !DIExpression(), !71931)
    #dbg_value(i16 %i.al, !71921, !DIExpression(), !71930)
  %i.am = icmp eq i16 %i.al, 0, !dbg !72114
  br i1 %i.am, label %.loopexit, label %.preheader.split, !dbg !72114
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine12render_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72131 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !72199, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72204)
    #dbg_declare(ptr poison, !72201, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !72205)
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !72196, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72206)
    #dbg_declare(ptr poison, !72207, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72212)
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !72200, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72213)
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !72189, !DIExpression(), !72214)
    #dbg_value(ptr %2, !72190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72214)
    #dbg_value(i64 %3, !72190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72214)
    #dbg_value(ptr %4, !72191, !DIExpression(), !72214)
    #dbg_value(ptr %5, !72192, !DIExpression(), !72214)
    #dbg_declare(ptr %i.f, !72193, !DIExpression(), !72215)
    #dbg_declare(ptr %i.e, !72216, !DIExpression(), !72221)
    #dbg_declare(ptr poison, !72194, !DIExpression(), !72222)
    #dbg_declare(ptr poison, !72223, !DIExpression(), !72228)
    #dbg_declare(ptr poison, !72218, !DIExpression(), !72229)
    #dbg_declare(ptr poison, !72224, !DIExpression(), !72230)
    #dbg_declare(ptr %i.b, !72208, !DIExpression(), !72231)
    #dbg_declare(ptr poison, !72232, !DIExpression(), !72237)
    #dbg_declare(ptr poison, !72240, !DIExpression(), !72244)
    #dbg_declare(ptr poison, !72245, !DIExpression(), !72252)
    #dbg_value(i64 0, !72253, !DIExpression(), !72259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !72280
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !72281
  %i.h = load ptr, ptr %i.g, align 8, !dbg !72281, !nonnull !1852, !align !3836, !noundef !1852
  %i.i = getelementptr i8, ptr %i.h, i64 648, !dbg !72282
  %.val = load i64, ptr %i.i, align 8, !dbg !72282, !noundef !1852
    #dbg_value(ptr poison, !7870, !DIExpression(), !72150)
    #dbg_value(i64 1, !7876, !DIExpression(), !72154)
  %i.j = shl i64 %.val, 1, !dbg !72283
    #dbg_value(i64 %i.j, !7887, !DIExpression(), !72155)
    #dbg_value(i64 %i.j, !7881, !DIExpression(), !72156)
    #dbg_value(i64 %i.j, !7877, !DIExpression(), !72154)
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1), !dbg !72284 ; 2 uses
    #dbg_value(i64 %i.k, !7882, !DIExpression(), !72157)
    #dbg_value(i64 %i.k, !7890, !DIExpression(), !72159)
    #dbg_value(i64 %i.k, !7894, !DIExpression(), !72161)
  %i.l = icmp sgt i64 %i.k, -1, !dbg !72285
  br i1 %i.l, label %bb.b, label %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit, !dbg !72285

bb.b:                                             ; preds = %bb.a
  %i.m = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 false), !dbg !72286
  %i.n = sub nuw nsw i64 64, %i.m, !dbg !72287
    #dbg_value(i64 %i.n, !7883, !DIExpression(), !72162)
  %i.o = shl nuw i64 1, %i.n, !dbg !72288
    #dbg_value(i64 %i.o, !7888, !DIExpression(), !72163)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit, !dbg !72289

_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ], !dbg !72290 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i, !7888, !DIExpression(), !72163)
    #dbg_value(i64 %.sroa.0.0.i, !72238, !DIExpression(), !72260)
    #dbg_value(i64 %.sroa.0.0.i, !72233, !DIExpression(), !72261)
    #dbg_value(i64 %.sroa.0.0.i, !72241, !DIExpression(), !72262)
    #dbg_value(i64 %.sroa.0.0.i, !72246, !DIExpression(), !72263)
    #dbg_value(i64 %.sroa.0.0.i, !72255, !DIExpression(), !72259)
    #dbg_value(i64 1, !72247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72263)
    #dbg_value(i64 1, !72256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72259)
    #dbg_value(i64 1, !72247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72263)
    #dbg_value(i64 1, !72256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !72291
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !72291
  %i.p = load i64, ptr %i.c, align 8, !dbg !72291, !range !5418, !noundef !1852
  %i.q = trunc nuw i64 %i.p to i1, !dbg !72292
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !72263
  %i.s = load i64, ptr %i.r, align 8, !dbg !72263, !range !5419, !noundef !1852 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !72263 ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d, !dbg !72292, !prof !5366

bb.c:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit
  %i.u = load i64, ptr %i.t, align 8, !dbg !72293
    #dbg_value(i64 %i.s, !72249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72264)
    #dbg_value(i64 %i.u, !72249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72264)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #27, !dbg !72294
  unreachable, !dbg !72294

bb.d:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit
  %i.v = load ptr, ptr %i.t, align 8, !dbg !72295, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.s, !72248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72265)
    #dbg_value(ptr %i.v, !72248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72265)
    #dbg_value(ptr poison, !72254, !DIExpression(), !72266)
  %i.w = icmp ule i64 %.sroa.0.0.i, %i.s, !dbg !72296
    #dbg_value(i1 true, !72267, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !72270)
  tail call void @llvm.assume(i1 %i.w), !dbg !72297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !72298
  store i64 %i.s, ptr %i.f, align 8, !dbg !72299
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !72299
  store ptr %i.v, ptr %i.x, align 8, !dbg !72299
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !72299
  store i64 0, ptr %i.y, align 8, !dbg !72299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !72220
  invoke void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9render_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.q, !dbg !72300

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.e, align 8, !dbg !72301, !range !3904, !noundef !1852
  %.not = icmp eq i8 %i.z, -1, !dbg !72301
  br i1 %.not, label %bb.i, label %bb.f, !dbg !72302

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !72303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !72304
    #dbg_value(ptr %i.f, !6429, !DIExpression(), !72166)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.g, !dbg !72305

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !6432, !DIExpression(), !72168)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.h, !dbg !72306

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72305
  unreachable, !dbg !72305

common.resume:                                    ; preds = %bb.q, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ag, %bb.j ], [ %i.ao, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !72214

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.f
    #dbg_value(ptr %i.f, !6432, !DIExpression(), !72170)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !72307
  br label %bb.p, !dbg !72308

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !72304
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !72203
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !72203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !72309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !72309
  call void @llvm.experimental.noalias.scope.decl(metadata !72271), !dbg !72203
  call void @llvm.experimental.noalias.scope.decl(metadata !72272), !dbg !72203
    #dbg_declare(ptr %i.d, !7172, !DIExpression(), !72175)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !72176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72310, !noalias !72273
    #dbg_value(ptr %i.d, !7178, !DIExpression(), !72178)
    #dbg_value(ptr %i.d, !7180, !DIExpression(), !72180)
    #dbg_value(ptr %i.d, !7182, !DIExpression(), !72182)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !72311 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !72311, !alias.scope !72272, !noalias !72271, !nonnull !1852, !noundef !1852
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !72312
  %i.af = load i64, ptr %i.ae, align 8, !dbg !72312, !alias.scope !72272, !noalias !72271, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af)
          to label %bb.k unwind label %bb.j, !dbg !72310, !noalias !72273

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #24
          to label %common.resume unwind label %bb.l, !dbg !72313, !noalias !72271

bb.k:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !dbg !72310, !range !5418, !noalias !72273, !noundef !1852
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !72314
  br i1 %i.ai, label %bb.m, label %.thread, !dbg !72314

.thread:                                          ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !72315, !alias.scope !72273
    #dbg_value(i64 %i.af, !72200, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !72274)
    #dbg_value(i64 -1, !72200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72274)
    #dbg_value(i64 poison, !72200, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !72274)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72316, !noalias !72273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !72317
  br label %bb.o, !dbg !72318

bb.l:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72319, !noalias !72271
  unreachable, !dbg !72319

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !72320 ; 2 uses
  %i.al = load <2 x i64>, ptr %i.ak, align 8, !dbg !72320, !noalias !72273
  %i.am = load i64, ptr %i.ak, align 8, !dbg !72320, !noalias !72273
  %.sroa.034.0.copyload = load i64, ptr %i.d, align 8, !dbg !72321, !noalias !72271 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !72321, !noalias !1852
    #dbg_value(i64 %.sroa.034.0.copyload, !72200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72274)
    #dbg_value(i64 poison, !72200, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !72274)
    #dbg_value(i64 poison, !72200, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !72274)
    #dbg_value(i64 %.sroa.034.0.copyload, !72200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72274)
    #dbg_value(i64 poison, !72200, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !72274)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72316, !noalias !72273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !72317
  %.not33 = icmp eq i64 %.sroa.034.0.copyload, -1, !dbg !72322
  br i1 %.not33, label %bb.o, label %bb.n, !dbg !72318

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 %.sroa.034.0.copyload, !72199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72275)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !72323
    #dbg_value(i64 poison, !72199, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !72275)
    #dbg_value(i64 poison, !72199, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !72275)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !72324
    #dbg_value(i64 %.sroa.034.0.copyload, !72196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72276)
    #dbg_value(i64 %.sroa.034.0.copyload, !72207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72277)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !72325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !72324
    #dbg_value(i64 poison, !72207, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !72277)
    #dbg_value(i64 poison, !72196, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !72276)
    #dbg_value(i64 poison, !72196, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !72276)
    #dbg_value(i64 poison, !72207, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !72277)
  store i64 %.sroa.034.0.copyload, ptr %i.b, align 8, !dbg !72325
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !72325
  store <2 x i64> %i.al, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !72325
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !dbg !72326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72327
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !72328
  br label %bb.p, !dbg !72329

bb.o:                                             ; preds = %.thread, %bb.m
  %.sroa.7.sroa.7.0 = phi i64 [ %i.am, %bb.m ], [ %i.af, %.thread ], !dbg !72330
    #dbg_value(i64 %.sroa.7.sroa.7.0, !72200, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !72274)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !72331
    #dbg_value(i64 %.sroa.7.sroa.7.0, !72201, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !72279)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !72324
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !72203
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !72332
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !72332
  store i8 -1, ptr %0, align 8, !dbg !72332
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !72328
  br label %bb.p, !dbg !72333

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !72308
  ret void, !dbg !72333

bb.q:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %common.resume unwind label %bb.r, !dbg !72308

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72334
  unreachable, !dbg !72334
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine13report_target(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72337 {
bb.a:
    #dbg_value(ptr %1, !72501, !DIExpression(), !72505)
    #dbg_value(ptr %2, !72502, !DIExpression(), !72505)
    #dbg_declare(ptr poison, !72506, !DIExpression(), !72516)
    #dbg_declare(ptr poison, !72506, !DIExpression(), !72541)
    #dbg_value(ptr @23, !72542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72551)
    #dbg_value(i64 22, !72542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72551)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !72512
  %i.b = load ptr, ptr %i.a, align 8, !dbg !72512, !nonnull !1852, !align !3836, !noundef !1852 ; 4 uses
    #dbg_value(ptr %i.b, !72519, !DIExpression(), !72559)
    #dbg_value(ptr %i.b, !72526, !DIExpression(), !72514)
    #dbg_value(ptr %2, !72520, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !72560)
    #dbg_value(ptr %2, !72527, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !72514)
    #dbg_value(ptr %i.b, !72534, !DIExpression(), !72561)
    #dbg_value(ptr %i.b, !72509, !DIExpression(), !72562)
    #dbg_value(ptr %i.b, !72563, !DIExpression(), !72566)
    #dbg_value(ptr %i.b, !72567, !DIExpression(), !72570)
    #dbg_value(ptr %i.b, !72571, !DIExpression(), !72574)
    #dbg_value(ptr %2, !72535, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !72575)
    #dbg_value(ptr %2, !72509, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !72576)
    #dbg_value(ptr %2, !72563, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !72579)
    #dbg_value(ptr %2, !72567, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !72582)
    #dbg_value(ptr %2, !72571, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !72585)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !72806
  %i.d = load ptr, ptr %i.c, align 8, !dbg !72806, !nonnull !1852, !noundef !1852 ; 2 uses
    #dbg_value(ptr %i.d, !72589, !DIExpression(), !72596)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !72807
  %i.f = load i64, ptr %i.e, align 8, !dbg !72807, !noundef !1852 ; 3 uses
    #dbg_value(i64 %i.f, !72599, !DIExpression(), !72601)
    #dbg_value(i64 %i.f, !72591, !DIExpression(), !72596)
    #dbg_value(i64 %i.f, !72592, !DIExpression(), !72602)
    #dbg_value(ptr %i.d, !72597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72603)
    #dbg_value(i64 %i.f, !72597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72603)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !72808 ; 2 uses
    #dbg_value(ptr poison, !72590, !DIExpression(), !72596)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !72809
  %i.i = load i64, ptr %i.h, align 8, !dbg !72809, !noundef !1852
    #dbg_value(ptr poison, !72598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72603)
    #dbg_value(i64 %i.i, !72598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72603)
  %i.j = icmp eq i64 %i.f, %i.i, !dbg !72810
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !72810

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !72808
  %i.l = load ptr, ptr %i.k, align 8, !dbg !72808, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %i.l, !72590, !DIExpression(), !72596)
    #dbg_value(ptr %i.l, !72598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72603)
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.d, ptr nonnull %i.l, i64 %i.f), !dbg !72811
  %.not = icmp eq i32 %bcmp, 0, !dbg !72811
  br i1 %.not, label %bb.h, label %bb.c, !dbg !72512

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %1, align 8, !dbg !72812, !nonnull !1852, !align !3836, !noundef !1852 ; 4 uses
    #dbg_value(ptr %i.m, !72555, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !72610)
    #dbg_value(ptr %i.m, !72611, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !72619)
    #dbg_value(ptr %i.g, !72556, !DIExpression(), !72620)
    #dbg_value(ptr %i.g, !72616, !DIExpression(), !72621)
    #dbg_value(ptr %i.m, !72623, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !72360)
    #dbg_value(ptr %i.g, !72627, !DIExpression(), !72360)
    #dbg_value(ptr %i.g, !72631, !DIExpression(), !72363)
    #dbg_value(ptr %i.m, !72634, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !72366)
    #dbg_value(ptr %i.m, !72639, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !72369)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240, !dbg !72813
  %i.o = load i64, ptr %i.n, align 8, !dbg !72813, !alias.scope !72644, !noalias !72645, !noundef !1852
  %i.p = icmp eq i64 %i.o, 0, !dbg !72814
  br i1 %i.p, label %select.unfold, label %bb.d, !dbg !72815

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 216, !dbg !72816
    #dbg_value(ptr %i.q, !72623, !DIExpression(), !72360)
    #dbg_value(ptr %i.q, !72634, !DIExpression(), !72366)
    #dbg_value(ptr %i.q, !72639, !DIExpression(), !72369)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 248, !dbg !72817
    #dbg_value(ptr %i.r, !72632, !DIExpression(), !72363)
  %i.s = tail call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g), !dbg !72818 ; 2 uses
    #dbg_value(i64 %i.s, !72628, !DIExpression(), !72373)
    #dbg_value(i64 %i.s, !72646, !DIExpression(), !72383)
    #dbg_value(ptr %i.q, !72662, !DIExpression(), !72383)
    #dbg_value(ptr %i.g, !72663, !DIExpression(), !72383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72671), !dbg !72819
    #dbg_value(ptr poison, !5563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72395)
    #dbg_value(ptr %i.g, !72686, !DIExpression(), !72396)
    #dbg_value(ptr %i.q, !72684, !DIExpression(), !72396)
    #dbg_value(i64 %i.s, !72685, !DIExpression(), !72396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72690), !dbg !72820
    #dbg_value(ptr poison, !5621, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !72400)
    #dbg_value(ptr poison, !5631, !DIExpression(), !72402)
    #dbg_value(ptr %i.q, !5576, !DIExpression(), !72395)
    #dbg_value(ptr %i.q, !5637, !DIExpression(), !72404)
    #dbg_value(ptr %i.q, !5643, !DIExpression(), !72406)
    #dbg_value(i64 %i.s, !5577, !DIExpression(), !72395)
    #dbg_value(i64 %i.s, !5651, !DIExpression(), !72408)
    #dbg_value(i64 %i.s, !5641, !DIExpression(), !72404)
    #dbg_value(ptr undef, !5563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72395)
    #dbg_value(ptr poison, !5563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72395)
    #dbg_value(i8 -1, !5657, !DIExpression(), !72411)
  %i.t = lshr i64 %i.s, 57, !dbg !72821
  %i.u = trunc nuw nsw i64 %i.t to i8, !dbg !72822
    #dbg_value(i8 %i.u, !5578, !DIExpression(), !72412)
    #dbg_value(i8 %i.u, !5657, !DIExpression(), !72414)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 224, !dbg !72823
  %i.w = load i64, ptr %i.v, align 8, !dbg !72823, !alias.scope !72691, !noalias !72692, !noundef !1852 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.s, i64 %i.w), !5579, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !72416)
    #dbg_value(i64 0, !5579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72416)
  %i.x = load ptr, ptr %i.q, align 8, !alias.scope !72691, !noalias !72692, !nonnull !1852, !noundef !1852 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e, !dbg !72824

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ], !dbg !72825
  %.pn.i.i = phi i64 [ %i.s, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.w, !dbg !72825 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i, !5579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72416)
    #dbg_value(i64 %.sroa.9.0.i.i.i, !5579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72416)
    #dbg_value(i64 %.sroa.01.0.i.i.i, !5648, !DIExpression(), !72406)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i, !dbg !72826
    #dbg_value(ptr %i.aa, !5674, !DIExpression(), !72419)
    #dbg_value(ptr %i.aa, !5681, !DIExpression(), !72421)
    #dbg_value(<2 x i64> zeroinitializer, !5685, !DIExpression(), !72422)
    #dbg_value(ptr %i.aa, !5687, !DIExpression(), !72424)
    #dbg_value(ptr undef, !5690, !DIExpression(), !72424)
    #dbg_value(i64 16, !5691, !DIExpression(), !72424)
  %.sroa.0.0.copyload.i29.i.i = load <16 x i8>, ptr %i.aa, align 1, !dbg !72827, !noalias !72693 ; 2 uses
    #dbg_value(<2 x i64> poison, !5685, !DIExpression(), !72422)
    #dbg_value(<2 x i64> poison, !5580, !DIExpression(), !72427)
    #dbg_value(<2 x i64> poison, !5661, !DIExpression(), !72414)
    #dbg_value(<2 x i64> poison, !5668, !DIExpression(), !72428)
    #dbg_value(<2 x i64> poison, !5661, !DIExpression(), !72411)
    #dbg_declare(ptr poison, !5693, !DIExpression(), !72430)
    #dbg_declare(ptr poison, !5696, !DIExpression(), !72431)
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i, %i.z, !dbg !72828
    #dbg_value(<16 x i8> poison, !5662, !DIExpression(), !72432)
    #dbg_declare(ptr poison, !5698, !DIExpression(), !72434)
    #dbg_value(<16 x i8> poison, !5701, !DIExpression(), !72435)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !5702, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !72436)
end_hunk_6
begin_hunk_7_@_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine15rendering_error:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72915
  unreachable, !dbg !72915

bb.f:                                             ; preds = %bb.b
    #dbg_value(ptr %i.j, !6251, !DIExpression(), !72876)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.j, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !dbg !72916
    #dbg_value(ptr %i.j, !72895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72901)
    #dbg_value(i8 2, !72895, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !72901)
  store i8 2, ptr %0, align 8, !dbg !72917
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72917
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !72917
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !72917
  store ptr null, ptr %i.n, align 8, !dbg !72917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72918
  ret void, !dbg !72919

.body.thread:                                     ; preds = %bb.d, %bb.g
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body13, !dbg !72920

bb.g:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #24
          to label %.body.thread unwind label %bb.h, !dbg !72921

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72920
  unreachable, !dbg !72920
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine16render_component(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72927 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !72984, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72989)
    #dbg_declare(ptr poison, !72986, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !72990)
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !72981, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72991)
    #dbg_declare(ptr poison, !72992, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72997)
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !72985, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72998)
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !72974, !DIExpression(), !72999)
    #dbg_value(ptr %2, !72975, !DIExpression(), !72999)
    #dbg_declare(ptr %3, !72976, !DIExpression(), !73000)
    #dbg_value(ptr %4, !72977, !DIExpression(), !72999)
    #dbg_declare(ptr %i.g, !72978, !DIExpression(), !73001)
    #dbg_declare(ptr %i.f, !73002, !DIExpression(), !73007)
    #dbg_declare(ptr poison, !72979, !DIExpression(), !73008)
    #dbg_declare(ptr poison, !73009, !DIExpression(), !73014)
    #dbg_declare(ptr poison, !73004, !DIExpression(), !73015)
    #dbg_declare(ptr poison, !73010, !DIExpression(), !73016)
    #dbg_declare(ptr %i.b, !72993, !DIExpression(), !73017)
    #dbg_value(i64 1024, !73018, !DIExpression(), !73021)
    #dbg_value(i64 1024, !73022, !DIExpression(), !73026)
    #dbg_declare(ptr poison, !73023, !DIExpression(), !73027)
    #dbg_value(i64 1024, !73028, !DIExpression(), !73032)
    #dbg_declare(ptr poison, !73029, !DIExpression(), !73033)
    #dbg_value(i64 1024, !73034, !DIExpression(), !73041)
    #dbg_declare(ptr poison, !73035, !DIExpression(), !73042)
    #dbg_value(i64 0, !73043, !DIExpression(), !73049)
    #dbg_value(i64 1024, !73045, !DIExpression(), !73049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !73066
    #dbg_value(i64 1, !73036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73041)
    #dbg_value(i64 1, !73046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73049)
    #dbg_value(i64 1, !73036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73041)
    #dbg_value(i64 1, !73046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !73067
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 1024, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.b unwind label %bb.t, !dbg !73067

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.c, align 8, !dbg !73067, !range !5418, !noundef !1852
  %i.i = trunc nuw i64 %i.h to i1, !dbg !73068
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !73041
  %i.k = load i64, ptr %i.j, align 8, !dbg !73041, !range !5419, !noundef !1852 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !73041 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !73068, !prof !5366

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !dbg !73069
    #dbg_value(i64 %i.k, !73038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73050)
    #dbg_value(i64 %i.m, !73038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73050)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27
          to label %bb.s unwind label %bb.t, !dbg !73070

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !dbg !73071, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.k, !73037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73051)
    #dbg_value(ptr %i.n, !73037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73051)
    #dbg_value(ptr poison, !73044, !DIExpression(), !73052)
  %i.o = icmp samesign ugt i64 %i.k, 1023, !dbg !73072
    #dbg_value(i1 true, !73053, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !73056)
  tail call void @llvm.assume(i1 %i.o), !dbg !73073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !73074
  store i64 %i.k, ptr %i.g, align 8, !dbg !73075
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !73075
  store ptr %i.n, ptr %i.p, align 8, !dbg !73075
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !73075
  store i64 0, ptr %i.q, align 8, !dbg !73075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !73006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !73076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !73076
  invoke fastcc void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine19render_component_toINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %4, ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.e unwind label %bb.q, !dbg !73077

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !73078
  %i.r = load i8, ptr %i.f, align 8, !dbg !73079, !range !3904, !noundef !1852
  %.not = icmp eq i8 %i.r, -1, !dbg !73079
  br i1 %.not, label %bb.j, label %bb.f, !dbg !73080

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !73081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !73082
    #dbg_value(ptr %i.g, !6429, !DIExpression(), !72947)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.g, !dbg !73083

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !6432, !DIExpression(), !72949)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread45 unwind label %bb.i, !dbg !73084

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %i.g, !6432, !DIExpression(), !72951)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !73085
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, !dbg !73085

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73083
  unreachable, !dbg !73083

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !73082
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !72988
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !72988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !73086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !73086
  call void @llvm.experimental.noalias.scope.decl(metadata !73057), !dbg !72988
  call void @llvm.experimental.noalias.scope.decl(metadata !73058), !dbg !72988
    #dbg_declare(ptr %i.d, !7172, !DIExpression(), !72956)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !72957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !73087, !noalias !73059
    #dbg_value(ptr %i.d, !7178, !DIExpression(), !72959)
    #dbg_value(ptr %i.d, !7180, !DIExpression(), !72961)
    #dbg_value(ptr %i.d, !7182, !DIExpression(), !72963)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !73088 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !dbg !73088, !alias.scope !73058, !noalias !73057, !nonnull !1852, !noundef !1852
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !73089
  %i.x = load i64, ptr %i.w, align 8, !dbg !73089, !alias.scope !73058, !noalias !73057, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x)
          to label %bb.l unwind label %bb.k, !dbg !73087, !noalias !73059

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #24
          to label %.thread45 unwind label %bb.m, !dbg !73090, !noalias !73057

bb.l:                                             ; preds = %bb.j
  %i.z = load i64, ptr %i.a, align 8, !dbg !73087, !range !5418, !noalias !73059, !noundef !1852
  %i.aa = trunc nuw i64 %i.z to i1, !dbg !73091
  br i1 %i.aa, label %bb.n, label %.thread58, !dbg !73091

.thread58:                                        ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !73092, !alias.scope !73059
    #dbg_value(i64 %i.x, !72985, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73060)
    #dbg_value(i64 -1, !72985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73060)
    #dbg_value(i64 poison, !72985, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73060)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73093, !noalias !73059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !73094
  br label %bb.p, !dbg !73095

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73096, !noalias !73057
  unreachable, !dbg !73096

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !73097 ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !dbg !73097, !noalias !73059
  %i.ae = load i64, ptr %i.ac, align 8, !dbg !73097, !noalias !73059
  %.sroa.039.0.copyload = load i64, ptr %i.d, align 8, !dbg !73098, !noalias !73057 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !dbg !73098, !noalias !1852
    #dbg_value(i64 %.sroa.039.0.copyload, !72985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73060)
    #dbg_value(i64 poison, !72985, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73060)
    #dbg_value(i64 poison, !72985, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73060)
    #dbg_value(i64 %.sroa.039.0.copyload, !72985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73060)
    #dbg_value(i64 poison, !72985, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73060)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73093, !noalias !73059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !73094
  %.not35 = icmp eq i64 %.sroa.039.0.copyload, -1, !dbg !73099
  br i1 %.not35, label %bb.p, label %bb.o, !dbg !73095

bb.o:                                             ; preds = %bb.n
    #dbg_value(i64 %.sroa.039.0.copyload, !72984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73061)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !73100
    #dbg_value(i64 poison, !72984, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73061)
    #dbg_value(i64 poison, !72984, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73061)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !73101
    #dbg_value(i64 %.sroa.039.0.copyload, !72981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73062)
    #dbg_value(i64 %.sroa.039.0.copyload, !72992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73063)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !73102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !73102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !73101
    #dbg_value(i64 poison, !72992, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73063)
    #dbg_value(i64 poison, !72981, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73062)
    #dbg_value(i64 poison, !72981, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73062)
    #dbg_value(i64 poison, !72992, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73063)
  store i64 %.sroa.039.0.copyload, ptr %i.b, align 8, !dbg !73102
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !73102
  store <2 x i64> %i.ad, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !73102
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !dbg !73103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !73104
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !73105
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, !dbg !73106

bb.p:                                             ; preds = %.thread58, %bb.n
  %.sroa.7.sroa.7.0 = phi i64 [ %i.ae, %bb.n ], [ %i.x, %.thread58 ], !dbg !73107
    #dbg_value(i64 %.sroa.7.sroa.7.0, !72985, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73060)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !73108
    #dbg_value(i64 %.sroa.7.sroa.7.0, !72986, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !73065)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !73101
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !73109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !72988
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !73109
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !73109
  store i8 -1, ptr %0, align 8, !dbg !73109
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !73105
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, !dbg !73110

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.o, %bb.h, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !73110
  ret void, !dbg !73111

bb.q:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #24
          to label %.thread45 unwind label %bb.r, !dbg !73110

bb.r:                                             ; preds = %bb.t, %bb.q
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73112
  unreachable, !dbg !73112

bb.s:                                             ; preds = %bb.c
  unreachable

.thread45:                                        ; preds = %bb.k, %bb.q, %bb.t, %bb.g
  %.pn44 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.t ], [ %i.s, %bb.g ], [ %i.y, %bb.k ], [ %i.ag, %bb.q ]
  resume { ptr, i32 } %.pn44, !dbg !73112

bb.t:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %3, !3913, !DIExpression(), !72968)
    #dbg_value(ptr %3, !3920, !DIExpression(), !72970)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.thread45 unwind label %bb.r, !dbg !73113
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine19undefined_var_error(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !73123 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !73255, !DIExpression(), !73133)
    #dbg_value(ptr poison, !73265, !DIExpression(), !73134)
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  store ptr %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %5, ptr %i.k, align 8
    #dbg_value(ptr %1, !73234, !DIExpression(), !73271)
    #dbg_value(ptr %2, !73235, !DIExpression(), !73271)
    #dbg_value(ptr %3, !73236, !DIExpression(), !73271)
    #dbg_declare(ptr %i.j, !73237, !DIExpression(), !73272)
    #dbg_value(ptr %6, !73238, !DIExpression(), !73271)
    #dbg_declare(ptr %i.i, !73239, !DIExpression(), !73273)
    #dbg_declare(ptr %i.g, !73245, !DIExpression(), !73274)
    #dbg_declare(ptr %i.f, !73275, !DIExpression(), !73279)
    #dbg_declare(ptr %i.c, !73240, !DIExpression(), !73280)
    #dbg_declare(ptr %i.c, !73275, !DIExpression(), !73282)
    #dbg_declare(ptr %i.c, !73275, !DIExpression(), !73285)
    #dbg_declare(ptr %i.a, !73286, !DIExpression(), !73291)
    #dbg_value(ptr @111, !73293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73298)
    #dbg_value(i64 2, !73293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73298)
    #dbg_value(ptr @111, !73296, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73299)
    #dbg_value(i64 2, !73296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !73401
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm5stateNtB2_5State19available_variables(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2), !dbg !73402
    #dbg_value(ptr %i.i, !73300, !DIExpression(), !73303)
    #dbg_value(ptr %i.i, !73304, !DIExpression(), !73307)
    #dbg_value(ptr %i.i, !73308, !DIExpression(), !73311)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !73403
  %i.m = load ptr, ptr %i.l, align 8, !dbg !73403, !nonnull !1852, !noundef !1852 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !73404
  %i.o = load i64, ptr %i.n, align 8, !dbg !73404, !noundef !1852 ; 4 uses
    #dbg_value(i64 %i.o, !73315, !DIExpression(), !73322)
    #dbg_value(i64 %i.o, !73325, !DIExpression(), !73329)
    #dbg_value(ptr %i.m, !73323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73330)
    #dbg_value(ptr %i.m, !73316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73331)
    #dbg_value(i64 %i.o, !73323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73330)
    #dbg_value(i64 %i.o, !73316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73331)
    #dbg_value(ptr %i.m, !73317, !DIExpression(), !73332)
    #dbg_value(ptr %i.m, !73326, !DIExpression(), !73329)
  %.idx = mul nuw nsw i64 %i.o, 24, !dbg !73405
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx, !dbg !73405
    #dbg_value(ptr %i.j, !73266, !DIExpression(), !73134)
    #dbg_value(ptr undef, !73265, !DIExpression(), !73134)
    #dbg_value(ptr undef, !73255, !DIExpression(), !73133)
    #dbg_value(i64 1, !73333, !DIExpression(), !73153)
    #dbg_value(ptr %i.m, !73256, !DIExpression(), !73154)
    #dbg_value(ptr %i.m, !73337, !DIExpression(), !73153)
    #dbg_value(ptr %i.p, !73257, !DIExpression(), !73155)
    #dbg_value(ptr poison, !73339, !DIExpression(), !73158)
    #dbg_value(ptr poison, !73340, !DIExpression(), !73159)
  %.not.i = icmp eq i64 %i.o, 0, !dbg !73406
  br i1 %.not.i, label %.loopexit.thread, label %.lr.ph.i, !dbg !73407

.loopexit.thread:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !73408
    #dbg_value(ptr %i.i, !73342, !DIExpression(), !73345)
    #dbg_value(ptr %i.i, !73346, !DIExpression(), !73349)
  store i64 0, ptr %i.g, align 8, !dbg !73409
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !73409
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx, align 8, !dbg !73409
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !73409
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !73409
  br label %bb.g, !dbg !73350

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB4_14VirtualMachine19undefined_var_error0B8_.exit.backedge.i
  %i.q = phi ptr [ %i.r, %_RNCNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB4_14VirtualMachine19undefined_var_error0B8_.exit.backedge.i ], [ %i.m, %bb.a ] ; 3 uses
    #dbg_value(ptr %i.q, !73256, !DIExpression(), !73154)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !73410 ; 2 uses
    #dbg_value(ptr %i.q, !73267, !DIExpression(), !73163)
  %i.s = getelementptr i8, ptr %i.q, i64 16, !dbg !73411
  %.val9.i = load i64, ptr %i.s, align 8, !dbg !73411, !noalias !73351, !noundef !1852
    #dbg_value(ptr poison, !73352, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !73168)
    #dbg_value(ptr poison, !73356, !DIExpression(), !73168)
    #dbg_value(ptr poison, !73358, !DIExpression(), !73173)
    #dbg_value(ptr poison, !73361, !DIExpression(), !73174)
    #dbg_value(ptr %i.j, !73362, !DIExpression(), !73175)
    #dbg_value(ptr poison, !73359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73173)
    #dbg_value(ptr poison, !73364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73178)
    #dbg_value(i64 %5, !73359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73173)
    #dbg_value(i64 %5, !73364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73178)
    #dbg_value(ptr poison, !73365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73178)
    #dbg_value(i64 %.val9.i, !73365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73178)
    #dbg_value(ptr poison, !73367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73184)
    #dbg_value(i64 %.val9.i, !73367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73184)
    #dbg_value(ptr poison, !73372, !DIExpression(), !73185)
    #dbg_value(ptr poison, !73368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73184)
    #dbg_value(i64 %5, !73368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73184)
    #dbg_value(ptr poison, !73373, !DIExpression(), !73186)
    #dbg_value(i64 %.val9.i, !73369, !DIExpression(), !73187)
    #dbg_value(i64 %.val9.i, !73375, !DIExpression(), !73191)
    #dbg_value(i64 %.val9.i, !73378, !DIExpression(), !73192)
  %i.t = icmp eq i64 %.val9.i, %5, !dbg !73412
  br i1 %i.t, label %.split.i, label %_RNCNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB4_14VirtualMachine19undefined_var_error0B8_.exit.backedge.i, !dbg !73412

.split.i:                                         ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %i.q, i64 8, !dbg !73411
  %.val8.i = load ptr, ptr %i.u, align 8, !dbg !73411, !noalias !73351, !nonnull !1852, !noundef !1852
    #dbg_value(ptr %.val8.i, !73367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73184)
    #dbg_value(ptr %.val8.i, !73365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73178)
    #dbg_value(ptr %4, !73359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73173)
    #dbg_value(ptr %4, !73364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73178)
    #dbg_value(ptr %4, !73368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73184)
    #dbg_value(ptr %.val8.i, !73376, !DIExpression(), !73191)
    #dbg_value(ptr %4, !73377, !DIExpression(), !73191)
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %.val8.i, ptr nonnull %4, i64 %5), !dbg !73413, !noalias !73351
  %i.v = icmp eq i32 %bcmp.i.i, 0, !dbg !73413
  br i1 %i.v, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2h_14VirtualMachine19undefined_var_error0EB2l_.exit, label %_RNCNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB4_14VirtualMachine19undefined_var_error0B8_.exit.backedge.i, !dbg !73411

_RNCNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB4_14VirtualMachine19undefined_var_error0B8_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
    #dbg_value(ptr %i.r, !73256, !DIExpression(), !73154)
    #dbg_value(ptr %i.r, !73337, !DIExpression(), !73153)
end_hunk_7
begin_hunk_8_@_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine21undefined_field_error:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.o ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !73517

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit57
    #dbg_value(ptr %i.h, !7733, !DIExpression(), !73497)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !73610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !73589
  ret void, !dbg !73611
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine6render(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !73617 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !73684, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !73689)
    #dbg_declare(ptr poison, !73686, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !73690)
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !73681, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !73691)
    #dbg_declare(ptr poison, !73692, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !73697)
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !73685, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !73698)
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !73675, !DIExpression(), !73699)
    #dbg_value(ptr %2, !73676, !DIExpression(), !73699)
    #dbg_value(ptr %3, !73677, !DIExpression(), !73699)
    #dbg_declare(ptr %i.f, !73678, !DIExpression(), !73700)
    #dbg_declare(ptr %i.e, !73701, !DIExpression(), !73706)
    #dbg_declare(ptr poison, !73679, !DIExpression(), !73707)
    #dbg_declare(ptr poison, !73708, !DIExpression(), !73713)
    #dbg_declare(ptr poison, !73703, !DIExpression(), !73714)
    #dbg_declare(ptr poison, !73709, !DIExpression(), !73715)
    #dbg_declare(ptr %i.b, !73693, !DIExpression(), !73716)
    #dbg_declare(ptr poison, !73717, !DIExpression(), !73722)
    #dbg_declare(ptr poison, !73725, !DIExpression(), !73729)
    #dbg_declare(ptr poison, !73730, !DIExpression(), !73737)
    #dbg_value(i64 0, !73738, !DIExpression(), !73744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !73765
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !73766
  %i.h = load ptr, ptr %i.g, align 8, !dbg !73766, !nonnull !1852, !align !3836, !noundef !1852
  %i.i = getelementptr i8, ptr %i.h, i64 648, !dbg !73767
  %.val = load i64, ptr %i.i, align 8, !dbg !73767, !noundef !1852
    #dbg_value(ptr poison, !7870, !DIExpression(), !73636)
    #dbg_value(i64 1, !7876, !DIExpression(), !73640)
  %i.j = shl i64 %.val, 1, !dbg !73768
    #dbg_value(i64 %i.j, !7887, !DIExpression(), !73641)
    #dbg_value(i64 %i.j, !7881, !DIExpression(), !73642)
    #dbg_value(i64 %i.j, !7877, !DIExpression(), !73640)
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1), !dbg !73769 ; 2 uses
    #dbg_value(i64 %i.k, !7882, !DIExpression(), !73643)
    #dbg_value(i64 %i.k, !7890, !DIExpression(), !73645)
    #dbg_value(i64 %i.k, !7894, !DIExpression(), !73647)
  %i.l = icmp sgt i64 %i.k, -1, !dbg !73770
  br i1 %i.l, label %bb.b, label %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit, !dbg !73770

bb.b:                                             ; preds = %bb.a
  %i.m = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 false), !dbg !73771
  %i.n = sub nuw nsw i64 64, %i.m, !dbg !73772
    #dbg_value(i64 %i.n, !7883, !DIExpression(), !73648)
  %i.o = shl nuw i64 1, %i.n, !dbg !73773
    #dbg_value(i64 %i.o, !7888, !DIExpression(), !73649)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit, !dbg !73774

_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ], !dbg !73775 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i, !7888, !DIExpression(), !73649)
    #dbg_value(i64 %.sroa.0.0.i, !73723, !DIExpression(), !73745)
    #dbg_value(i64 %.sroa.0.0.i, !73718, !DIExpression(), !73746)
    #dbg_value(i64 %.sroa.0.0.i, !73726, !DIExpression(), !73747)
    #dbg_value(i64 %.sroa.0.0.i, !73731, !DIExpression(), !73748)
    #dbg_value(i64 %.sroa.0.0.i, !73740, !DIExpression(), !73744)
    #dbg_value(i64 1, !73732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73748)
    #dbg_value(i64 1, !73741, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73744)
    #dbg_value(i64 1, !73732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73748)
    #dbg_value(i64 1, !73741, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !73776
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !73776
  %i.p = load i64, ptr %i.c, align 8, !dbg !73776, !range !5418, !noundef !1852
  %i.q = trunc nuw i64 %i.p to i1, !dbg !73777
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !73748
  %i.s = load i64, ptr %i.r, align 8, !dbg !73748, !range !5419, !noundef !1852 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !73748 ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d, !dbg !73777, !prof !5366

bb.c:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit
  %i.u = load i64, ptr %i.t, align 8, !dbg !73778
    #dbg_value(i64 %i.s, !73734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73749)
    #dbg_value(i64 %i.u, !73734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73749)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #27, !dbg !73779
  unreachable, !dbg !73779

bb.d:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit
  %i.v = load ptr, ptr %i.t, align 8, !dbg !73780, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.s, !73733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73750)
    #dbg_value(ptr %i.v, !73733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73750)
    #dbg_value(ptr poison, !73739, !DIExpression(), !73751)
  %i.w = icmp ule i64 %.sroa.0.0.i, %i.s, !dbg !73781
    #dbg_value(i1 true, !73752, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !73755)
  tail call void @llvm.assume(i1 %i.w), !dbg !73782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !73783
  store i64 %i.s, ptr %i.f, align 8, !dbg !73784
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !73784
  store ptr %i.v, ptr %i.x, align 8, !dbg !73784
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !73784
  store i64 0, ptr %i.y, align 8, !dbg !73784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !73705
  invoke void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9render_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.q, !dbg !73785

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.e, align 8, !dbg !73786, !range !3904, !noundef !1852
  %.not = icmp eq i8 %i.z, -1, !dbg !73786
  br i1 %.not, label %bb.i, label %bb.f, !dbg !73787

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !73788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !73789
    #dbg_value(ptr %i.f, !6429, !DIExpression(), !73652)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.g, !dbg !73790

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !6432, !DIExpression(), !73654)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.h, !dbg !73791

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73790
  unreachable, !dbg !73790

common.resume:                                    ; preds = %bb.q, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ag, %bb.j ], [ %i.ao, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !73699

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.f
    #dbg_value(ptr %i.f, !6432, !DIExpression(), !73656)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !73792
  br label %bb.p, !dbg !73793

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !73789
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !73688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !73688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !73794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !73794
  call void @llvm.experimental.noalias.scope.decl(metadata !73756), !dbg !73688
  call void @llvm.experimental.noalias.scope.decl(metadata !73757), !dbg !73688
    #dbg_declare(ptr %i.d, !7172, !DIExpression(), !73661)
    #dbg_declare(ptr poison, !7176, !DIExpression(), !73662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !73795, !noalias !73758
    #dbg_value(ptr %i.d, !7178, !DIExpression(), !73664)
    #dbg_value(ptr %i.d, !7180, !DIExpression(), !73666)
    #dbg_value(ptr %i.d, !7182, !DIExpression(), !73668)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !73796 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !73796, !alias.scope !73757, !noalias !73756, !nonnull !1852, !noundef !1852
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !73797
  %i.af = load i64, ptr %i.ae, align 8, !dbg !73797, !alias.scope !73757, !noalias !73756, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af)
          to label %bb.k unwind label %bb.j, !dbg !73795, !noalias !73758

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #24
          to label %common.resume unwind label %bb.l, !dbg !73798, !noalias !73756

bb.k:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !dbg !73795, !range !5418, !noalias !73758, !noundef !1852
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !73799
  br i1 %i.ai, label %bb.m, label %.thread, !dbg !73799

.thread:                                          ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !73800, !alias.scope !73758
    #dbg_value(i64 %i.af, !73685, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73759)
    #dbg_value(i64 -1, !73685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73759)
    #dbg_value(i64 poison, !73685, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73759)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73801, !noalias !73758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !73802
  br label %bb.o, !dbg !73803

bb.l:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73804, !noalias !73756
  unreachable, !dbg !73804

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !73805 ; 2 uses
  %i.al = load <2 x i64>, ptr %i.ak, align 8, !dbg !73805, !noalias !73758
  %i.am = load i64, ptr %i.ak, align 8, !dbg !73805, !noalias !73758
  %.sroa.032.0.copyload = load i64, ptr %i.d, align 8, !dbg !73806, !noalias !73756 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !dbg !73806, !noalias !1852
    #dbg_value(i64 %.sroa.032.0.copyload, !73685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73759)
    #dbg_value(i64 poison, !73685, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73759)
    #dbg_value(i64 poison, !73685, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73759)
    #dbg_value(i64 %.sroa.032.0.copyload, !73685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73759)
    #dbg_value(i64 poison, !73685, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73759)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73801, !noalias !73758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !73802
  %.not31 = icmp eq i64 %.sroa.032.0.copyload, -1, !dbg !73807
  br i1 %.not31, label %bb.o, label %bb.n, !dbg !73803

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 %.sroa.032.0.copyload, !73684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73760)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !73808
    #dbg_value(i64 poison, !73684, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73760)
    #dbg_value(i64 poison, !73684, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73760)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !73809
    #dbg_value(i64 %.sroa.032.0.copyload, !73681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73761)
    #dbg_value(i64 %.sroa.032.0.copyload, !73692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73762)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !73810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !73810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !73809
    #dbg_value(i64 poison, !73692, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73762)
    #dbg_value(i64 poison, !73681, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73761)
    #dbg_value(i64 poison, !73681, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73761)
    #dbg_value(i64 poison, !73692, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73762)
  store i64 %.sroa.032.0.copyload, ptr %i.b, align 8, !dbg !73810
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !73810
  store <2 x i64> %i.al, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !73810
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !dbg !73811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !73812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !73813
  br label %bb.p, !dbg !73814

bb.o:                                             ; preds = %.thread, %bb.m
  %.sroa.7.sroa.7.0 = phi i64 [ %i.am, %bb.m ], [ %i.af, %.thread ], !dbg !73815
    #dbg_value(i64 %.sroa.7.sroa.7.0, !73685, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73759)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !73816
    #dbg_value(i64 %.sroa.7.sroa.7.0, !73686, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !73764)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !73809
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !73817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !73688
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !73817
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !73817
  store i8 -1, ptr %0, align 8, !dbg !73817
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !73813
  br label %bb.p, !dbg !73818

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !73793
  ret void, !dbg !73818

bb.q:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %common.resume unwind label %bb.r, !dbg !73793

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73819
  unreachable, !dbg !73819
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define internal fastcc { ptr, i64 } @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value4name(i8 %.0.val) unnamed_addr #2 !dbg !1254 {
switch.lookup:
    #dbg_value(ptr poison, !6757, !DIExpression(), !73820)
  %i.a = icmp ne i8 %.0.val, 10, !dbg !73821
  tail call void @llvm.assume(i1 %i.a), !dbg !73821
  %i.b = add nsw i8 %.0.val, -2, !dbg !73821
  %i.c = icmp samesign ugt i8 %.0.val, 1, !dbg !73821
  %narrow = select i1 %i.c, i8 %i.b, i8 8, !dbg !73821 ; 2 uses
  %i.d = zext nneg i8 %narrow to i64, !dbg !73822
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value4name, i64 %i.d, !dbg !73822
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !73822
  %switch.ext = zext i8 %switch.load to i64, !dbg !73822
  %i.e = zext nneg i8 %narrow to i64, !dbg !73822
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value4name.98, i64 %i.e, !dbg !73822
  %switch.load2 = load ptr, ptr %switch.gep1, align 8, !dbg !73822
  %i.f = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0, !dbg !73823
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %switch.ext, 1, !dbg !73823
  ret { ptr, i64 } %i.g, !dbg !73823
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE8make_mutB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !73835 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !73894, !DIExpression(), !73918)
    #dbg_value(ptr %0, !73919, !DIExpression(), !73924)
    #dbg_value(ptr %0, !73925, !DIExpression(), !73928)
    #dbg_value(ptr %0, !73925, !DIExpression(), !73930)
    #dbg_value(ptr %0, !73919, !DIExpression(), !73932)
    #dbg_value(ptr %0, !73925, !DIExpression(), !73935)
    #dbg_value(ptr %0, !73925, !DIExpression(), !73937)
    #dbg_value(ptr %0, !73925, !DIExpression(), !73939)
    #dbg_value(ptr %0, !73919, !DIExpression(), !73941)
    #dbg_value(ptr %0, !73925, !DIExpression(), !73944)
    #dbg_value(ptr %0, !73919, !DIExpression(), !73946)
    #dbg_value(ptr %0, !73925, !DIExpression(), !73949)
    #dbg_value(ptr %0, !73950, !DIExpression(), !73957)
    #dbg_value(ptr %0, !73925, !DIExpression(), !73959)
    #dbg_value(ptr %0, !73960, !DIExpression(), !73964)
    #dbg_declare(ptr %i.c, !73896, !DIExpression(), !73965)
    #dbg_declare(ptr %i.b, !73897, !DIExpression(), !73966)
    #dbg_declare(ptr %i.a, !73898, !DIExpression(), !73967)
    #dbg_value(i64 1, !73968, !DIExpression(), !73989)
    #dbg_value(i64 0, !73984, !DIExpression(), !73989)
    #dbg_value(i8 2, !73985, !DIExpression(), !73989)
    #dbg_value(i8 0, !73986, !DIExpression(), !73989)
    #dbg_value(i8 0, !73990, !DIExpression(), !73997)
    #dbg_value(i64 1, !73998, !DIExpression(), !74006)
    #dbg_value(i8 1, !74003, !DIExpression(), !74006)
  %i.d = load ptr, ptr %0, align 8, !dbg !74102, !nonnull !1852, !noundef !1852
    #dbg_value(i64 24, !73895, !DIExpression(), !74008)
    #dbg_value(i64 24, !74009, !DIExpression(), !74014)
    #dbg_value(ptr %i.d, !73983, !DIExpression(), !74015)
    #dbg_value(ptr %i.d, !74016, !DIExpression(), !74022)
    #dbg_value(ptr %i.d, !74023, !DIExpression(), !73853)
    #dbg_value(i64 1, !74026, !DIExpression(), !73853)
    #dbg_value(i64 0, !74027, !DIExpression(), !73853)
    #dbg_value(i8 2, !74028, !DIExpression(), !73853)
    #dbg_value(i8 0, !74029, !DIExpression(), !73853)
  %i.e = cmpxchg ptr %i.d, i64 1, i64 0 acquire monotonic, align 8, !dbg !74103
  %i.f = extractvalue { i64, i1 } %i.e, 1, !dbg !74103
  %i.g = load ptr, ptr %0, align 8, !dbg !74008, !nonnull !1852, !noundef !1852 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !74104

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.g, !73994, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !74033)
    #dbg_value(ptr %i.g, !74016, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !74035)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !74105
    #dbg_value(ptr %i.h, !74044, !DIExpression(), !73857)
    #dbg_value(i8 0, !74047, !DIExpression(), !73857)
  %i.i = load atomic i64, ptr %i.h monotonic, align 8, !dbg !74106
  %i.j = icmp eq i64 %i.i, 1, !dbg !74107
  br i1 %i.j, label %bb.e, label %bb.f, !dbg !74107

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !74108
  %i.l = tail call noundef nonnull ptr @_RNvMsk_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE17clone_from_ref_inB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k), !dbg !74109 ; 3 uses
    #dbg_value(ptr %0, !7823, !DIExpression(), !73859)
    #dbg_value(ptr %0, !7829, !DIExpression(), !73861)
    #dbg_value(i64 1, !7833, !DIExpression(), !73863)
    #dbg_value(i8 1, !7835, !DIExpression(), !73863)
    #dbg_value(i64 1, !7837, !DIExpression(), !73865)
    #dbg_value(i8 1, !7839, !DIExpression(), !73865)
    #dbg_value(ptr %i.g, !7834, !DIExpression(), !73866)
    #dbg_value(ptr %i.g, !7838, !DIExpression(), !73865)
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !74110, !noalias !74049
  %i.n = icmp eq i64 %i.m, 1, !dbg !74111
  br i1 %i.n, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1t_.exit, !dbg !74111

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !7800, !DIExpression(), !73872)
  fence acquire, !dbg !74112
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE9drop_slowB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1t_.exit unwind label %bb.l, !dbg !74113

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %i.g, !74002, !DIExpression(), !74050)
    #dbg_value(ptr %i.g, !74016, !DIExpression(), !74052)
    #dbg_value(ptr %i.g, !74053, !DIExpression(), !73875)
    #dbg_value(i64 1, !74056, !DIExpression(), !73875)
    #dbg_value(i8 1, !74057, !DIExpression(), !73875)
  store atomic i64 1, ptr %i.g release, align 8, !dbg !74114
  br label %bb.i, !dbg !74115

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !74116
  store ptr %i.g, ptr %i.c, align 8, !dbg !74117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !74118
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !74119 ; 2 uses
  invoke void @_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtB8_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtB8_5alloc6GlobalE3newB1e_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.g unwind label %bb.k, !dbg !74120

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.o, !74010, !DIExpression(), !74014)
    #dbg_value(ptr %i.b, !74060, !DIExpression(), !74067)
  %i.p = load i64, ptr %i.b, align 8, !dbg !74121, !range !74068, !noundef !1852 ; 2 uses
  %i.q = add nuw i64 %i.p, 15, !dbg !74122
  %i.r = sub i64 0, %i.p, !dbg !74123
  %i.s = and i64 %i.q, %i.r, !dbg !74122
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !74124
  %i.u = load ptr, ptr %i.t, align 8, !dbg !74124, !nonnull !1852, !noundef !1852
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s, !dbg !74125
    #dbg_value(ptr %i.v, !74011, !DIExpression(), !74014)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !74126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !74127
  store ptr %i.g, ptr %i.a, align 8, !dbg !74128
  %i.w = invoke noundef nonnull ptr @_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtB8_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtB8_5alloc6GlobalE8into_arcB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakINtNtBG_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1u_.exit23 unwind label %bb.h, !dbg !74129 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !74089, !DIExpression(), !73885)
  invoke void @_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.j, !dbg !74130
end_hunk_8
