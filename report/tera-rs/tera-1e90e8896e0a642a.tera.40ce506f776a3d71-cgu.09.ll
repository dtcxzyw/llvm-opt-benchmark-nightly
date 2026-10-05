Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.09?download=true
inline.NumInlined: 928
inline.NumDeleted: 335
begin_hunk_0_@_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera10render_str:bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av) #26
          to label %.body.i unwind label %bb.cm, !dbg !14718, !noalias !14209

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !dbg !14719, !noalias !14191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !14720, !noalias !14191
  invoke void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.as)
          to label %bb.ci unwind label %bb.cg, !dbg !14713, !noalias !14209

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !14721, !noalias !14191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 72, i1 false), !dbg !14722, !noalias !14193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !14723, !noalias !14191
    #dbg_value(ptr %i.av, !4606, !DIExpression(), !13950)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.ck unwind label %bb.cj, !dbg !14724, !noalias !14209

bb.cj:                                            ; preds = %bb.ci
  %i.ir = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.av, !4611, !DIExpression(), !13952)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.body.i unwind label %bb.cl, !dbg !14725, !noalias !14209

bb.ck:                                            ; preds = %bb.ci
    #dbg_value(ptr %i.av, !4611, !DIExpression(), !13954)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit.i unwind label %.thread56.i, !dbg !14726, !noalias !14209

bb.cl:                                            ; preds = %bb.cj
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !14724, !noalias !14209
  unreachable, !dbg !14724

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !14718, !noalias !14191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !14711, !noalias !14191
  br label %.invoke, !dbg !14696

bb.cm:                                            ; preds = %bb.cu, %bb.cs, %bb.cg, %.body.i
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !14727, !noalias !14411
  unreachable, !dbg !14727

bb.cn:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !14728, !noalias !14191
    #dbg_value(ptr %1, !6181, !DIExpression(), !13956)
    #dbg_value(ptr %i.bc, !6185, !DIExpression(), !13956)
  store ptr %1, ptr %i.ar, align 8, !dbg !14729, !alias.scope !14431, !noalias !14432
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !14729
  store ptr %i.bc, ptr %i.iu, align 8, !dbg !14729, !alias.scope !14431, !noalias !14432
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !14729
  store i8 2, ptr %i.iv, align 8, !dbg !14729, !alias.scope !14431, !noalias !14432
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !14729
  store i64 0, ptr %i.iw, align 8, !dbg !14729, !alias.scope !14431, !noalias !14432
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 464, !dbg !14730
  invoke void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9render_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ix, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.co unwind label %bb.cs, !dbg !14731

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !14732, !noalias !14191
    #dbg_value(ptr %i.aw, !4886, !DIExpression(), !13962)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.cq unwind label %bb.cp, !dbg !14733, !noalias !14411

bb.cp:                                            ; preds = %bb.co
  %i.iy = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.aw, !4891, !DIExpression(), !13964)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body.i unwind label %bb.cr, !dbg !14734, !noalias !14411

bb.cq:                                            ; preds = %bb.co
    #dbg_value(ptr %i.aw, !4891, !DIExpression(), !13966)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.cb, !dbg !14735, !noalias !14411

bb.cr:                                            ; preds = %bb.cp
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !14733, !noalias !14411
  unreachable, !dbg !14733

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !14711, !noalias !14191
  br label %.invoke, !dbg !14693

bb.cs:                                            ; preds = %bb.cn
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjNtNtBG_6string6StringEEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #26
          to label %.body.i unwind label %bb.cm, !dbg !14711, !noalias !14411

bb.ct:                                            ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i64 72, i1 false), !dbg !14736, !noalias !14193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !14737, !noalias !14191
  br label %.invoke, !dbg !14696

bb.cu:                                            ; preds = %bb.a
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba) #26
          to label %.body.thread unwind label %bb.cm, !dbg !14449, !noalias !14209

.body.thread37:                                   ; preds = %.invoke, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !14738

bb.cv:                                            ; preds = %.invoke, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !14693, !noalias !14191
  %i.jb = load i8, ptr %i.bf, align 8, !dbg !14739, !range !4416, !noundef !1634
  %.not = icmp eq i8 %i.jb, -1, !dbg !14739
  br i1 %.not, label %bb.cz, label %bb.cw, !dbg !14740

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bf, i64 72, i1 false), !dbg !14741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !14742
    #dbg_value(ptr %i.bg, !4541, !DIExpression(), !13968)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.cx, !dbg !14743

bb.cx:                                            ; preds = %bb.cw
  %i.jc = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.bg, !4546, !DIExpression(), !13970)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %common.resume unwind label %bb.cy, !dbg !14744

bb.cy:                                            ; preds = %bb.cx
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !14743
  unreachable, !dbg !14743

common.resume:                                    ; preds = %.body.thread, %bb.da, %bb.cx
  %common.resume.op = phi { ptr, i32 } [ %i.jc, %bb.cx ], [ %eh.lpad-body32, %.body.thread ], [ %i.ji, %bb.da ]
  resume { ptr, i32 } %common.resume.op, !dbg !14132

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.cw
    #dbg_value(ptr %i.bg, !4546, !DIExpression(), !13972)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg), !dbg !14745
  br label %bb.dg, !dbg !14738

bb.cz:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !14742
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !14121
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !14121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !14746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !dbg !14746
  call void @llvm.experimental.noalias.scope.decl(metadata !14433), !dbg !14121
  call void @llvm.experimental.noalias.scope.decl(metadata !14434), !dbg !14121
    #dbg_declare(ptr %i.be, !6187, !DIExpression(), !13977)
    #dbg_declare(ptr poison, !6191, !DIExpression(), !13978)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14747, !noalias !14435
    #dbg_value(ptr %i.be, !6193, !DIExpression(), !13980)
    #dbg_value(ptr %i.be, !6195, !DIExpression(), !13982)
    #dbg_value(ptr %i.be, !6197, !DIExpression(), !13984)
  %i.je = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !14748 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !dbg !14748, !alias.scope !14434, !noalias !14433, !nonnull !1634, !noundef !1634
  %i.jg = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !14749
  %i.jh = load i64, ptr %i.jg, align 8, !dbg !14749, !alias.scope !14434, !noalias !14433, !noundef !1634 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.jh)
          to label %bb.db unwind label %bb.da, !dbg !14747, !noalias !14435

bb.da:                                            ; preds = %bb.cz
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be) #26
          to label %common.resume unwind label %bb.dc, !dbg !14750, !noalias !14433

bb.db:                                            ; preds = %bb.cz
  %i.jj = load i64, ptr %i.a, align 8, !dbg !14747, !range !4401, !noalias !14435, !noundef !1634
  %i.jk = trunc nuw i64 %i.jj to i1, !dbg !14751
  br i1 %i.jk, label %bb.dd, label %.thread, !dbg !14751

.thread:                                          ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !dbg !14752, !alias.scope !14435
    #dbg_value(i64 %i.jh, !14118, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14436)
    #dbg_value(i64 -1, !14118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14436)
    #dbg_value(i64 poison, !14118, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14436)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14753, !noalias !14435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !14754
  br label %bb.df, !dbg !14755

bb.dc:                                            ; preds = %bb.da
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !14756, !noalias !14433
  unreachable, !dbg !14756

bb.dd:                                            ; preds = %bb.db
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14757 ; 2 uses
  %i.jn = load <2 x i64>, ptr %i.jm, align 8, !dbg !14757, !noalias !14435
  %i.jo = load i64, ptr %i.jm, align 8, !dbg !14757, !noalias !14435
  %.sroa.026.0.copyload = load i64, ptr %i.be, align 8, !dbg !14758, !noalias !14433 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.je, i64 16, i1 false), !dbg !14758, !noalias !1634
    #dbg_value(i64 %.sroa.026.0.copyload, !14118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14436)
    #dbg_value(i64 poison, !14118, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14436)
    #dbg_value(i64 poison, !14118, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14436)
    #dbg_value(i64 %.sroa.026.0.copyload, !14118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14436)
    #dbg_value(i64 poison, !14118, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14436)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14753, !noalias !14435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !14754
  %.not20 = icmp eq i64 %.sroa.026.0.copyload, -1, !dbg !14759
  br i1 %.not20, label %bb.df, label %bb.de, !dbg !14755

bb.de:                                            ; preds = %bb.dd
    #dbg_value(i64 %.sroa.026.0.copyload, !14117, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14437)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !14760
    #dbg_value(i64 poison, !14117, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14437)
    #dbg_value(i64 poison, !14117, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14437)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !14761
    #dbg_value(i64 %.sroa.026.0.copyload, !13998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14438)
    #dbg_value(i64 %.sroa.026.0.copyload, !14125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14439)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !14762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !14762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !14761
    #dbg_value(i64 poison, !14125, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14439)
    #dbg_value(i64 poison, !13998, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14438)
    #dbg_value(i64 poison, !13998, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14438)
    #dbg_value(i64 poison, !14125, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14439)
  store i64 %.sroa.026.0.copyload, ptr %i.bd, align 8, !dbg !14762
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24, !dbg !14762
  store <2 x i64> %i.jn, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !14762
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bd), !dbg !14763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !14764
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !14765
  br label %bb.dg, !dbg !14766

bb.df:                                            ; preds = %.thread, %bb.dd
  %.sroa.7.sroa.7.0 = phi i64 [ %i.jo, %bb.dd ], [ %i.jh, %.thread ], !dbg !14767
    #dbg_value(i64 %.sroa.7.sroa.7.0, !14118, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14436)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !14768
    #dbg_value(i64 %.sroa.7.sroa.7.0, !14119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14441)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !14761
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !14121
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14769
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !14769
  store i8 -1, ptr %0, align 8, !dbg !14769
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !14765
  br label %bb.dg, !dbg !14770

bb.dg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !14738
  ret void, !dbg !14770

.body.thread:                                     ; preds = %bb.cu, %.body.i, %.body.thread37
  %eh.lpad-body32 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread37 ], [ %.pn43.i, %.body.i ], [ %i.ja, %bb.cu ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #26
          to label %common.resume unwind label %bb.dh, !dbg !14738

bb.dh:                                            ; preds = %.body.thread
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !14771
  unreachable, !dbg !14771
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera12get_template(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14772 {
bb.a:
    #dbg_value(ptr %0, !14912, !DIExpression(), !14915)
    #dbg_value(ptr %0, !14916, !DIExpression(), !14930)
    #dbg_value(ptr poison, !14931, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14937)
    #dbg_value(ptr %1, !14913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14915)
    #dbg_value(i64 %2, !14913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14915)
    #dbg_value(ptr @34, !14938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14944)
    #dbg_value(i64 22, !14938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14944)
  %i.a = tail call { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera21resolve_template_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !14969 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0, !dbg !14969 ; 3 uses
    #dbg_value(ptr %i.b, !14926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14930)
    #dbg_value(i64 poison, !14926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14930)
  %.not = icmp eq ptr %i.b, null, !dbg !14970
  br i1 %.not, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit, label %bb.b, !dbg !14971

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 1, !dbg !14969 ; 3 uses
    #dbg_value(i64 %i.c, !14926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14930)
    #dbg_value(ptr %i.b, !14927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14948)
    #dbg_value(ptr %i.b, !14934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14937)
    #dbg_value(ptr %i.b, !14946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14949)
    #dbg_value(ptr %i.b, !14950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14954)
    #dbg_value(i64 %i.c, !14927, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14948)
    #dbg_value(i64 %i.c, !14934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14937)
    #dbg_value(i64 %i.c, !14946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14949)
    #dbg_value(i64 %i.c, !14950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14954)
    #dbg_value(ptr %0, !14945, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !14955)
    #dbg_value(ptr %0, !14951, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !14956)
    #dbg_value(ptr %0, !6207, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !14782)
    #dbg_value(ptr %i.b, !6211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14782)
    #dbg_value(ptr %i.b, !6215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14784)
    #dbg_value(i64 %i.c, !6211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14782)
    #dbg_value(i64 %i.c, !6215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14784)
    #dbg_value(ptr %0, !6218, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !14786)
    #dbg_value(ptr %0, !6220, !DIExpression(DW_OP_plus_uconst, 216, DW_OP_stack_value), !14788)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !14972
  %i.e = load i64, ptr %i.d, align 8, !dbg !14972, !alias.scope !14957, !noalias !14958, !noundef !1634
  %i.f = icmp eq i64 %i.e, 0, !dbg !14973
  br i1 %i.f, label %select.unfold, label %bb.c, !dbg !14974

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !14975
    #dbg_value(ptr %i.g, !6207, !DIExpression(), !14782)
    #dbg_value(ptr %i.g, !6218, !DIExpression(), !14786)
    #dbg_value(ptr %i.g, !6220, !DIExpression(), !14788)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !14976
    #dbg_value(ptr %i.h, !6216, !DIExpression(), !14784)
  %i.i = tail call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.c), !dbg !14977 ; 2 uses
    #dbg_value(i64 %i.i, !6212, !DIExpression(), !14792)
    #dbg_value(i64 %i.i, !6222, !DIExpression(), !14794)
    #dbg_value(ptr %i.g, !6228, !DIExpression(), !14794)
    #dbg_value(ptr %i.b, !6229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14794)
    #dbg_value(i64 %i.c, !6229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14959), !dbg !14978
    #dbg_value(ptr poison, !3925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14799)
    #dbg_value(ptr %i.b, !6237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14800)
    #dbg_value(i64 %i.c, !6237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14800)
    #dbg_value(ptr %i.g, !6235, !DIExpression(), !14800)
    #dbg_value(i64 %i.i, !6236, !DIExpression(), !14800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14960), !dbg !14979
    #dbg_value(ptr poison, !3998, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !14804)
    #dbg_value(ptr poison, !4015, !DIExpression(), !14806)
    #dbg_value(ptr %i.g, !3945, !DIExpression(), !14799)
    #dbg_value(ptr %i.g, !4021, !DIExpression(), !14808)
    #dbg_value(ptr %i.g, !4027, !DIExpression(), !14810)
    #dbg_value(i64 %i.i, !3946, !DIExpression(), !14799)
    #dbg_value(i64 %i.i, !4035, !DIExpression(), !14812)
    #dbg_value(i64 %i.i, !4025, !DIExpression(), !14808)
    #dbg_value(ptr undef, !3925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14799)
    #dbg_value(ptr poison, !3925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14799)
    #dbg_value(i8 -1, !4041, !DIExpression(), !14815)
  %i.j = lshr i64 %i.i, 57, !dbg !14980
  %i.k = trunc nuw nsw i64 %i.j to i8, !dbg !14981
    #dbg_value(i8 %i.k, !3947, !DIExpression(), !14816)
    #dbg_value(i8 %i.k, !4041, !DIExpression(), !14818)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !14982
  %i.m = load i64, ptr %i.l, align 8, !dbg !14982, !alias.scope !14961, !noalias !14962, !noundef !1634 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.i, i64 %i.m), !3948, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14820)
    #dbg_value(i64 0, !3948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14820)
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !14961, !noalias !14962, !nonnull !1634, !noundef !1634 ; 2 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d, !dbg !14983

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ai, %bb.e ], !dbg !14984
  %.pn.i.i = phi i64 [ %i.i, %bb.c ], [ %i.aj, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.m, !dbg !14984 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i, !3948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14820)
    #dbg_value(i64 %.sroa.9.0.i.i.i, !3948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14820)
    #dbg_value(i64 %.sroa.01.0.i.i.i, !4032, !DIExpression(), !14810)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i, !dbg !14985
    #dbg_value(ptr %i.q, !4062, !DIExpression(), !14823)
    #dbg_value(ptr %i.q, !4069, !DIExpression(), !14825)
    #dbg_value(<2 x i64> zeroinitializer, !4073, !DIExpression(), !14826)
    #dbg_value(ptr %i.q, !4076, !DIExpression(), !14828)
    #dbg_value(ptr undef, !4079, !DIExpression(), !14828)
    #dbg_value(i64 16, !4080, !DIExpression(), !14828)
  %.sroa.0.0.copyload.i30.i.i = load <16 x i8>, ptr %i.q, align 1, !dbg !14986, !noalias !14963 ; 2 uses
    #dbg_value(<2 x i64> poison, !4073, !DIExpression(), !14826)
    #dbg_value(<2 x i64> poison, !3949, !DIExpression(), !14831)
    #dbg_value(<2 x i64> poison, !4045, !DIExpression(), !14818)
    #dbg_value(<2 x i64> poison, !4052, !DIExpression(), !14832)
    #dbg_value(<2 x i64> poison, !4045, !DIExpression(), !14815)
    #dbg_declare(ptr poison, !4082, !DIExpression(), !14834)
    #dbg_declare(ptr poison, !4085, !DIExpression(), !14835)
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i.i, %i.p, !dbg !14987
    #dbg_value(<16 x i8> poison, !4046, !DIExpression(), !14836)
    #dbg_declare(ptr poison, !4087, !DIExpression(), !14838)
    #dbg_value(<16 x i8> poison, !4090, !DIExpression(), !14839)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !4091, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !14840)
  %i.s = bitcast <16 x i1> %i.r to i16, !dbg !14988 ; 2 uses
    #dbg_value(i16 %i.s, !3950, !DIExpression(), !14841)
    #dbg_value(ptr undef, !3998, !DIExpression(), !14804)
    #dbg_value(i16 %i.s, !4102, !DIExpression(), !14843)
  %.not.i.not36.i.i = icmp eq i16 %i.s, 0, !dbg !14989
  br i1 %.not.i.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !14990

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.thread.i.i
  %.sroa.06.0.i37.i.i = phi i16 [ %i.ah, %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyeBS_B1u_E0E0B1y_.exit.thread.i.i ], [ %i.s, %bb.d ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !3950, !DIExpression(), !14841)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4106, !DIExpression(), !14844)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4113, !DIExpression(), !14846)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4120, !DIExpression(), !14848)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4125, !DIExpression(), !14850)
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i37.i.i, i1 true), !dbg !14991
  %i.u = zext nneg i16 %i.t to i64, !dbg !14992
    #dbg_value(i64 %i.u, !4002, !DIExpression(), !14851)
    #dbg_value(i16 %.sroa.06.0.i37.i.i, !4131, !DIExpression(), !14853)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i37.i.i, i16 %.sroa.06.0.i37.i.i), !3950, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !14841)
    #dbg_value(i64 %i.u, !3951, !DIExpression(), !14854)
  %i.v = add i64 %.sroa.01.0.i.i.i, %i.u, !dbg !14993
  %i.w = and i64 %i.v, %i.m, !dbg !14993
    #dbg_value(i64 %i.w, !3952, !DIExpression(), !14855)
    #dbg_value(ptr poison, !6241, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14857)
    #dbg_value(ptr poison, !6246, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !14857)
    #dbg_value(i64 %i.w, !6245, !DIExpression(), !14857)
end_hunk_0
begin_hunk_1_@_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera16add_raw_template:.lr.ph.i.i
  %i.bm = icmp eq i64 %i.bl, -1, !dbg !16788
  br i1 %i.bm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB11_.exit38.i, label %bb.ah, !dbg !16788

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera8template8TemplateEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(664) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB11_.exit38.i unwind label %bb.ab, !dbg !16788, !noalias !16599

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEB11_.exit38.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !16789, !noalias !16506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16790, !noalias !16506
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i, !dbg !16772

bb.ai:                                            ; preds = %bb.ad, %bb.aa
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #26
          to label %.body34.i unwind label %bb.aj, !dbg !16772, !noalias !16599

bb.aj:                                            ; preds = %.thread.i, %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEEEEB2K_.exit.i, %.body34.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !16791, !noalias !16599
  unreachable, !dbg !16791

.thread.i:                                        ; preds = %bb.r, %bb.q, %.thread59.i.i, %bb.l, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.r ], [ %.pn62.i.i, %.thread59.i.i ], [ %i.ap, %.body.i.i ], [ %i.ar, %bb.q ], [ %i.an, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEEEB1U_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #26
          to label %common.resume.i unwind label %bb.aj, !dbg !16755, !noalias !16599

_RINvMNtCs5yXxDE1DkoT_4tera4teraNtB3_4Tera17add_raw_templatesINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OnceTReB1M_EEB1M_B1M_EB5_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEEEB1U_.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera8template8TemplateEEEEEB2K_.exit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !16755, !noalias !16506
  ret void, !dbg !16792
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera16render_component(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly captures(address, read_provenance) %5, i64 %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16798 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !16867, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !16872)
    #dbg_declare(ptr poison, !16869, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16873)
    #dbg_declare(ptr poison, !16864, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !16874)
    #dbg_declare(ptr poison, !16875, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !16880)
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !16868, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !16881)
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !16856, !DIExpression(), !16882)
    #dbg_value(ptr %2, !16857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16882)
    #dbg_value(i64 %3, !16857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16882)
    #dbg_value(ptr %4, !16858, !DIExpression(), !16882)
    #dbg_value(ptr %5, !16859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16882)
    #dbg_value(i64 %6, !16859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16882)
    #dbg_value(i1 %7, !16860, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16882)
    #dbg_declare(ptr %i.f, !16861, !DIExpression(), !16883)
    #dbg_declare(ptr %i.e, !16884, !DIExpression(), !16889)
    #dbg_declare(ptr poison, !16862, !DIExpression(), !16890)
    #dbg_declare(ptr poison, !16891, !DIExpression(), !16896)
    #dbg_declare(ptr poison, !16886, !DIExpression(), !16897)
    #dbg_declare(ptr poison, !16892, !DIExpression(), !16898)
    #dbg_declare(ptr %i.c, !16876, !DIExpression(), !16899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16923
  store i64 0, ptr %i.f, align 8, !dbg !16924
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16924
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8, !dbg !16924
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !16924
  store i64 0, ptr %i.h, align 8, !dbg !16924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16888
    #dbg_value(ptr %1, !16901, !DIExpression(), !16812)
    #dbg_value(ptr %2, !16905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16812)
    #dbg_value(i64 %3, !16905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16812)
    #dbg_value(ptr %4, !16906, !DIExpression(), !16812)
    #dbg_value(ptr %5, !16907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16812)
    #dbg_value(i64 %6, !16907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16812)
    #dbg_value(i1 %7, !16908, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16812)
    #dbg_value(ptr %i.f, !16909, !DIExpression(), !16812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16925, !noalias !16911
  store ptr null, ptr %i.b, align 8, !dbg !16926, !alias.scope !16912, !noalias !16911
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16926
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !16926, !alias.scope !16912, !noalias !16911
  invoke fastcc void @_RINvMNtCs5yXxDE1DkoT_4tera4teraNtB3_4Tera22inner_render_componentQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB5_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) %5, i64 %6, i1 noundef zeroext %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.c unwind label %bb.b, !dbg !16927

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !4403, !DIExpression(), !16825)
    #dbg_value(ptr %i.b, !4409, !DIExpression(), !16827)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread unwind label %bb.d, !dbg !16928, !noalias !16913

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !4403, !DIExpression(), !16829)
    #dbg_value(ptr %i.b, !4409, !DIExpression(), !16831)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.body.thread36, !dbg !16929

.body.thread36:                                   ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !16930

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !16931, !noalias !16913
  unreachable, !dbg !16931

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16932, !noalias !16911
  %i.l = load i8, ptr %i.e, align 8, !dbg !16933, !range !4416, !noundef !1634
  %.not = icmp eq i8 %i.l, -1, !dbg !16933
  br i1 %.not, label %bb.i, label %bb.f, !dbg !16934

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !16935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16936
    #dbg_value(ptr %i.f, !4541, !DIExpression(), !16833)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.g, !dbg !16937

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !4546, !DIExpression(), !16835)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.h, !dbg !16938

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !16937
  unreachable, !dbg !16937

common.resume:                                    ; preds = %.body.thread, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %eh.lpad-body32, %.body.thread ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %common.resume.op, !dbg !16882

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.f
    #dbg_value(ptr %i.f, !4546, !DIExpression(), !16837)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !16939
  br label %bb.p, !dbg !16930

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16936
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !16871
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !16871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !16940
  call void @llvm.experimental.noalias.scope.decl(metadata !16914), !dbg !16871
  call void @llvm.experimental.noalias.scope.decl(metadata !16915), !dbg !16871
    #dbg_declare(ptr %i.d, !6187, !DIExpression(), !16842)
    #dbg_declare(ptr poison, !6191, !DIExpression(), !16843)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16941, !noalias !16916
    #dbg_value(ptr %i.d, !6193, !DIExpression(), !16845)
    #dbg_value(ptr %i.d, !6195, !DIExpression(), !16847)
    #dbg_value(ptr %i.d, !6197, !DIExpression(), !16849)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !16942 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !16942, !alias.scope !16915, !noalias !16914, !nonnull !1634, !noundef !1634
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !16943
  %i.r = load i64, ptr %i.q, align 8, !dbg !16943, !alias.scope !16915, !noalias !16914, !noundef !1634 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %bb.k unwind label %bb.j, !dbg !16941, !noalias !16916

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26
          to label %common.resume unwind label %bb.l, !dbg !16944, !noalias !16914

bb.k:                                             ; preds = %bb.i
  %i.t = load i64, ptr %i.a, align 8, !dbg !16941, !range !4401, !noalias !16916, !noundef !1634
  %i.u = trunc nuw i64 %i.t to i1, !dbg !16945
  br i1 %i.u, label %bb.m, label %.thread, !dbg !16945

.thread:                                          ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !16946, !alias.scope !16916
    #dbg_value(i64 %i.r, !16868, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16917)
    #dbg_value(i64 -1, !16868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16917)
    #dbg_value(i64 poison, !16868, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16917)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16947, !noalias !16916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16948
  br label %bb.o, !dbg !16949

bb.l:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !16950, !noalias !16914
  unreachable, !dbg !16950

bb.m:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16951 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.w, align 8, !dbg !16951, !noalias !16916
  %i.y = load i64, ptr %i.w, align 8, !dbg !16951, !noalias !16916
  %.sroa.026.0.copyload = load i64, ptr %i.d, align 8, !dbg !16952, !noalias !16914 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !dbg !16952, !noalias !1634
    #dbg_value(i64 %.sroa.026.0.copyload, !16868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16917)
    #dbg_value(i64 poison, !16868, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16917)
    #dbg_value(i64 poison, !16868, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16917)
    #dbg_value(i64 %.sroa.026.0.copyload, !16868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16917)
    #dbg_value(i64 poison, !16868, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16917)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16947, !noalias !16916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16948
  %.not22 = icmp eq i64 %.sroa.026.0.copyload, -1, !dbg !16953
  br i1 %.not22, label %bb.o, label %bb.n, !dbg !16949

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 %.sroa.026.0.copyload, !16867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16918)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !16954
    #dbg_value(i64 poison, !16867, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16918)
    #dbg_value(i64 poison, !16867, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16918)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !16955
    #dbg_value(i64 %.sroa.026.0.copyload, !16864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16919)
    #dbg_value(i64 %.sroa.026.0.copyload, !16875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16920)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !16955
    #dbg_value(i64 poison, !16875, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16920)
    #dbg_value(i64 poison, !16864, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16919)
    #dbg_value(i64 poison, !16864, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16919)
    #dbg_value(i64 poison, !16875, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16920)
  store i64 %.sroa.026.0.copyload, ptr %i.c, align 8, !dbg !16956
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !16956
  store <2 x i64> %i.x, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !16956
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c), !dbg !16957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16958
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !16959
  br label %bb.p, !dbg !16960

bb.o:                                             ; preds = %.thread, %bb.m
  %.sroa.7.sroa.7.0 = phi i64 [ %i.y, %bb.m ], [ %i.r, %.thread ], !dbg !16961
    #dbg_value(i64 %.sroa.7.sroa.7.0, !16868, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16917)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !16962
    #dbg_value(i64 %.sroa.7.sroa.7.0, !16869, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16922)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !16955
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !16871
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16963
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !16963
  store i8 -1, ptr %0, align 8, !dbg !16963
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !16959
  br label %bb.p, !dbg !16964

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16930
  ret void, !dbg !16964

.body.thread:                                     ; preds = %bb.b, %.body.thread36
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.j, %.body.thread36 ], [ %i.i, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #26
          to label %common.resume unwind label %bb.q, !dbg !16930

bb.q:                                             ; preds = %.body.thread
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !16965
  unreachable, !dbg !16965
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17contains_template(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !16966 {
bb.a:
    #dbg_value(ptr %0, !16969, !DIExpression(), !16972)
    #dbg_value(ptr %1, !16970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16972)
    #dbg_value(i64 %2, !16970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16972)
  %i.a = tail call { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera21resolve_template_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !16977
  %i.b = extractvalue { ptr, i64 } %i.a, 0, !dbg !16977
    #dbg_value(ptr poison, !16973, !DIExpression(), !16976)
  %i.c = icmp ne ptr %i.b, null, !dbg !16978
  ret i1 %i.c, !dbg !16979
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera18contains_component(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16980 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 13 uses
    #dbg_value(ptr %0, !17023, !DIExpression(), !17026)
    #dbg_value(ptr %1, !17024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17026)
    #dbg_value(i64 %2, !17024, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17048
  call void @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera24get_component_definition(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !17049
    #dbg_value(ptr %i.a, !17028, !DIExpression(), !17034)
  %i.b = load i64, ptr %i.a, align 8, !dbg !17050, !range !4535, !noundef !1634
    #dbg_value(ptr %i.a, !17036, !DIExpression(), !16984)
  %i.c = icmp ne i64 %i.b, -1, !dbg !17051        ; 2 uses
  br i1 %i.c, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5yXxDE1DkoT_4tera10components13ComponentInfoEEB11_.exit, !dbg !17051

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !17043, !DIExpression(), !16987)
    #dbg_value(ptr %i.a, !4537, !DIExpression(), !16989)
    #dbg_value(ptr %i.a, !4541, !DIExpression(), !16991)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i.i.i unwind label %bb.c, !dbg !17052

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !4546, !DIExpression(), !16993)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %.body.i.i unwind label %bb.d, !dbg !17053

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !17052
  unreachable, !dbg !17052

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i.i.i: ; preds = %bb.b
    #dbg_value(ptr %i.a, !4546, !DIExpression(), !16995)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.e, !dbg !17054

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !17055

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17055
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %.body5.i.i unwind label %bb.n, !dbg !17055

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17055 ; 3 uses
    #dbg_value(ptr %i.h, !4643, !DIExpression(), !16997)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.f, !dbg !17056

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !4648, !DIExpression(), !16999)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body5.i.i unwind label %bb.h, !dbg !17057

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i
    #dbg_value(ptr %i.h, !4648, !DIExpression(), !17001)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgEEB1c_.exit.i.i unwind label %bb.i, !dbg !17058

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !17056
  unreachable, !dbg !17056

.body5.i.i:                                       ; preds = %bb.i, %bb.f, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.l, %bb.i ], [ %i.i, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !17055
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #26
          to label %.body7.i.i unwind label %bb.n, !dbg !17055

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgEEB1c_.exit.i.i: ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !17055 ; 4 uses
    #dbg_value(ptr %i.m, !4531, !DIExpression(), !17003)
  %i.n = load i64, ptr %i.m, align 8, !dbg !17059, !range !4535, !alias.scope !17047, !noundef !1634
  %i.o = icmp eq i64 %i.n, -1, !dbg !17059
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera10components13ComponentInfoEBF_.exit.i, label %bb.j, !dbg !17059

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera10components12ComponentArgEEB1c_.exit.i.i
    #dbg_value(ptr %i.m, !4537, !DIExpression(), !17011)
    #dbg_value(ptr %i.m, !4541, !DIExpression(), !17013)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i.i unwind label %bb.k, !dbg !17060

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.m, !4546, !DIExpression(), !17015)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body7.i.i unwind label %bb.l, !dbg !17061

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !17060
  unreachable, !dbg !17060

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i.i: ; preds = %bb.j
    #dbg_value(ptr %i.m, !4546, !DIExpression(), !17017)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera10components13ComponentInfoEBF_.exit.i unwind label %bb.m, !dbg !17062

.body7.i.i:                                       ; preds = %bb.m, %bb.k, %.body5.i.i
  %.pn3.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body5.i.i ], [ %i.s, %bb.m ], [ %i.p, %bb.k ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !17055
    #dbg_value(ptr %i.r, !5143, !DIExpression(), !17019)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i unwind label %bb.n, !dbg !17063

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i.i
  %i.s = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera25set_templates_auto_escape:bb.a
    #dbg_value(ptr %i.j, !25867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25874)
    #dbg_value(ptr %i.j, !25860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25875)
    #dbg_value(i64 %i.k, !25867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25874)
    #dbg_value(i64 %i.k, !25860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25875)
    #dbg_value(ptr %i.j, !25861, !DIExpression(), !25876)
    #dbg_value(ptr %i.j, !25870, !DIExpression(), !25873)
  %.idx = mul nuw nsw i64 %i.k, 24, !dbg !25906
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx, !dbg !25906
    #dbg_value(ptr %i.g, !25827, !DIExpression(), !25758)
    #dbg_value(ptr undef, !25826, !DIExpression(), !25758)
    #dbg_value(ptr undef, !25816, !DIExpression(), !25757)
    #dbg_value(i64 1, !25877, !DIExpression(), !25775)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
    #dbg_value(ptr %i.j, !25817, !DIExpression(), !25776)
    #dbg_value(ptr %i.j, !25878, !DIExpression(), !25775)
    #dbg_value(ptr %i.l, !25818, !DIExpression(), !25777)
    #dbg_value(ptr poison, !25880, !DIExpression(), !25780)
    #dbg_value(ptr poison, !25881, !DIExpression(), !25781)
  %.not.not.not.i.not.not.not16.not = icmp eq i64 %i.k, 0, !dbg !25907
  br i1 %.not.not.not.i.not.not.not16.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2h_4Tera25set_templates_auto_escape0EB2j_.exit, label %.lr.ph19, !dbg !25908

bb.c:                                             ; preds = %.lr.ph19
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !25909 ; 2 uses
    #dbg_value(ptr %i.o, !25817, !DIExpression(), !25776)
    #dbg_value(ptr %i.o, !25878, !DIExpression(), !25775)
    #dbg_value(ptr %i.l, !25818, !DIExpression(), !25777)
    #dbg_value(ptr poison, !25880, !DIExpression(), !25780)
    #dbg_value(ptr poison, !25881, !DIExpression(), !25781)
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.o, %i.l, !dbg !25907
  br i1 %.not.not.not.i.not.not.not.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2h_4Tera25set_templates_auto_escape0EB2j_.exit, label %.lr.ph19, !dbg !25908

.lr.ph19:                                         ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
    #dbg_value(ptr %i.p, !25817, !DIExpression(), !25776)
    #dbg_value(ptr %i.p, !25828, !DIExpression(), !25782)
  %i.q = getelementptr i8, ptr %i.p, i64 8, !dbg !25910
  %.val8.i = load ptr, ptr %i.q, align 8, !dbg !25910, !noalias !25883, !nonnull !1634, !noundef !1634
  %i.r = getelementptr i8, ptr %i.p, i64 16, !dbg !25910
  %.val9.i = load i64, ptr %i.r, align 8, !dbg !25910, !noalias !25883, !noundef !1634
    #dbg_value(ptr poison, !25884, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25787)
    #dbg_value(ptr poison, !25888, !DIExpression(), !25787)
    #dbg_value(ptr poison, !25890, !DIExpression(), !25790)
    #dbg_value(ptr poison, !25892, !DIExpression(), !25793)
  %i.s = load ptr, ptr %i.m, align 8, !dbg !25911, !noalias !25883, !nonnull !1634, !noundef !1634
  %i.t = load i64, ptr %i.n, align 8, !dbg !25912, !noalias !25883, !noundef !1634
    #dbg_value(ptr %i.s, !25894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25806)
    #dbg_value(ptr %i.s, !25897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25809)
    #dbg_value(i64 %i.t, !25894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25806)
    #dbg_value(i64 %i.t, !25897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25809)
    #dbg_value(ptr %.val8.i, !25898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25809)
    #dbg_value(ptr %.val8.i, !25895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25806)
    #dbg_value(i64 %.val9.i, !25898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25809)
    #dbg_value(i64 %.val9.i, !25895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25806)
  %i.u = call noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !dbg !25913, !noalias !25883
  br i1 %i.u, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2h_4Tera25set_templates_auto_escape0EB2j_.exit, label %bb.c, !dbg !25910

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2h_4Tera25set_templates_auto_escape0EB2j_.exit: ; preds = %.lr.ph19, %bb.c, %bb.b
  %.not.not.not.i.not.not.not.lcssa = phi i8 [ 0, %bb.b ], [ 1, %.lr.ph19 ], [ 0, %bb.c ], !dbg !25907
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 657, !dbg !25914
  store i8 %.not.not.not.i.not.not.not.lcssa, ptr %i.v, align 1, !dbg !25914
    #dbg_value(ptr %i.a, !25838, !DIExpression(), !25842)
  %i.w = call { ptr, ptr } @_RNvXsK_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7IterMutNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !25903 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0, !dbg !25903 ; 2 uses
  %.not = icmp eq ptr %i.x, null, !dbg !25833
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !25833

._crit_edge:                                      ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB2h_4Tera25set_templates_auto_escape0EB2j_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25915
  ret void, !dbg !25916
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera31render_component_with_implicits(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias nofree noundef readonly captures(address, read_provenance) %6, i64 %7, i1 noundef zeroext %8) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25922 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !25970, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !25975)
    #dbg_declare(ptr poison, !25972, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !25976)
    #dbg_declare(ptr poison, !25967, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !25977)
    #dbg_declare(ptr poison, !25978, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !25983)
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !25971, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !25984)
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !25958, !DIExpression(), !25985)
    #dbg_value(ptr %2, !25959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25985)
    #dbg_value(i64 %3, !25959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25985)
    #dbg_value(ptr %4, !25960, !DIExpression(), !25985)
    #dbg_value(ptr %5, !25961, !DIExpression(), !25985)
    #dbg_value(ptr %6, !25962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25985)
    #dbg_value(i64 %7, !25962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25985)
    #dbg_value(i1 %8, !25963, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !25985)
    #dbg_declare(ptr %i.e, !25964, !DIExpression(), !25986)
    #dbg_declare(ptr %i.d, !25987, !DIExpression(), !25992)
    #dbg_declare(ptr poison, !25965, !DIExpression(), !25993)
    #dbg_declare(ptr poison, !25994, !DIExpression(), !25999)
    #dbg_declare(ptr poison, !25989, !DIExpression(), !26000)
    #dbg_declare(ptr poison, !25995, !DIExpression(), !26001)
    #dbg_declare(ptr %i.b, !25979, !DIExpression(), !26002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !26013
  store i64 0, ptr %i.e, align 8, !dbg !26014
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !26014
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !dbg !26014
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !26014
  store i64 0, ptr %i.g, align 8, !dbg !26014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !25991
  invoke fastcc void @_RINvMNtCs5yXxDE1DkoT_4tera4teraNtB3_4Tera22inner_render_componentQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias nofree noundef readonly captures(address, read_provenance) %6, i64 %7, i1 noundef zeroext %8, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.b unwind label %bb.n, !dbg !26015

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.d, align 8, !dbg !26016, !range !4416, !noundef !1634
  %.not = icmp eq i8 %i.h, -1, !dbg !26016
  br i1 %.not, label %bb.f, label %bb.c, !dbg !26017

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !26018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26019
    #dbg_value(ptr %i.e, !4541, !DIExpression(), !25935)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !26020

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !4546, !DIExpression(), !25937)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.e, !dbg !26021

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !26020
  unreachable, !dbg !26020

common.resume:                                    ; preds = %bb.n, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.o, %bb.g ], [ %i.w, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !25985

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.c
    #dbg_value(ptr %i.e, !4546, !DIExpression(), !25939)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !26022
  br label %bb.m, !dbg !26023

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26019
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !25974
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !25974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !26024
  call void @llvm.experimental.noalias.scope.decl(metadata !26004), !dbg !25974
  call void @llvm.experimental.noalias.scope.decl(metadata !26005), !dbg !25974
    #dbg_declare(ptr %i.c, !6187, !DIExpression(), !25944)
    #dbg_declare(ptr poison, !6191, !DIExpression(), !25945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26025, !noalias !26006
    #dbg_value(ptr %i.c, !6193, !DIExpression(), !25947)
    #dbg_value(ptr %i.c, !6195, !DIExpression(), !25949)
    #dbg_value(ptr %i.c, !6197, !DIExpression(), !25951)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !26026 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !26026, !alias.scope !26005, !noalias !26004, !nonnull !1634, !noundef !1634
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !26027
  %i.n = load i64, ptr %i.m, align 8, !dbg !26027, !alias.scope !26005, !noalias !26004, !noundef !1634 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.h unwind label %bb.g, !dbg !26025, !noalias !26006

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %common.resume unwind label %bb.i, !dbg !26028, !noalias !26004

bb.h:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.a, align 8, !dbg !26025, !range !4401, !noalias !26006, !noundef !1634
  %i.q = trunc nuw i64 %i.p to i1, !dbg !26029
  br i1 %i.q, label %bb.j, label %.thread, !dbg !26029

.thread:                                          ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !dbg !26030, !alias.scope !26006
    #dbg_value(i64 %i.n, !25971, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26007)
    #dbg_value(i64 -1, !25971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26007)
    #dbg_value(i64 poison, !25971, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26031, !noalias !26006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !26032
  br label %bb.l, !dbg !26033

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !26034, !noalias !26004
  unreachable, !dbg !26034

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !26035 ; 2 uses
  %i.t = load <2 x i64>, ptr %i.s, align 8, !dbg !26035, !noalias !26006
  %i.u = load i64, ptr %i.s, align 8, !dbg !26035, !noalias !26006
  %.sroa.024.0.copyload = load i64, ptr %i.c, align 8, !dbg !26036, !noalias !26004 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !dbg !26036, !noalias !1634
    #dbg_value(i64 %.sroa.024.0.copyload, !25971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26007)
    #dbg_value(i64 poison, !25971, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26007)
    #dbg_value(i64 poison, !25971, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26007)
    #dbg_value(i64 %.sroa.024.0.copyload, !25971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26007)
    #dbg_value(i64 poison, !25971, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26031, !noalias !26006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !26032
  %.not23 = icmp eq i64 %.sroa.024.0.copyload, -1, !dbg !26037
  br i1 %.not23, label %bb.l, label %bb.k, !dbg !26033

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 %.sroa.024.0.copyload, !25970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26008)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !26038
    #dbg_value(i64 poison, !25970, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26008)
    #dbg_value(i64 poison, !25970, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26008)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !26039
    #dbg_value(i64 %.sroa.024.0.copyload, !25967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26009)
    #dbg_value(i64 %.sroa.024.0.copyload, !25978, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26010)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !26039
    #dbg_value(i64 poison, !25978, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26010)
    #dbg_value(i64 poison, !25967, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26009)
    #dbg_value(i64 poison, !25967, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26009)
    #dbg_value(i64 poison, !25978, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26010)
  store i64 %.sroa.024.0.copyload, ptr %i.b, align 8, !dbg !26040
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !26040
  store <2 x i64> %i.t, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !26040
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !dbg !26041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26042
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !26043
  br label %bb.m, !dbg !26044

bb.l:                                             ; preds = %.thread, %bb.j
  %.sroa.7.sroa.7.0 = phi i64 [ %i.u, %bb.j ], [ %i.n, %.thread ], !dbg !26045
    #dbg_value(i64 %.sroa.7.sroa.7.0, !25971, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26007)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !26046
    #dbg_value(i64 %.sroa.7.sroa.7.0, !25972, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26012)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !26039
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !25974
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !26047
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !26047
  store i8 -1, ptr %0, align 8, !dbg !26047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !26043
  br label %bb.m, !dbg !26048

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !26023
  ret void, !dbg !26048

bb.n:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #26
          to label %common.resume unwind label %bb.o, !dbg !26023

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !26049
  unreachable, !dbg !26049
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([488 x i8]) align 8 captures(none) dereferenceable(488) %0) unnamed_addr #0 !dbg !26050 {
bb.a:
  tail call void @_RNvXs_NtCs5yXxDE1DkoT_4tera4teraNtB4_4TeraNtNtCsf3Ta7LF998c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([488 x i8]) align 8 captures(none) dereferenceable(488) %0), !dbg !26052
  ret void, !dbg !26053
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera6render(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 !dbg !26058 {
bb.a:
    #dbg_declare(ptr poison, !26090, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !26095)
    #dbg_declare(ptr poison, !26090, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !26095)
    #dbg_declare(ptr poison, !26096, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !26101)
    #dbg_declare(ptr poison, !26096, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !26101)
  %i.a = alloca [32 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !26091, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !26102)
    #dbg_declare(ptr poison, !26091, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !26102)
    #dbg_declare(ptr poison, !26086, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !26103)
    #dbg_declare(ptr poison, !26086, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !26103)
  %i.b = alloca [72 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !26082, !DIExpression(), !26104)
    #dbg_value(ptr %2, !26083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26104)
    #dbg_value(i64 %3, !26083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26104)
    #dbg_value(ptr %4, !26084, !DIExpression(), !26104)
    #dbg_declare(ptr %i.b, !26097, !DIExpression(), !26105)
    #dbg_declare(ptr %i.a, !26088, !DIExpression(), !26106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26100
    #dbg_value(ptr %1, !6300, !DIExpression(), !26065)
    #dbg_value(ptr %2, !6304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26065)
    #dbg_value(i64 %3, !6304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26065)
  %i.c = tail call noundef align 8 ptr @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera12get_template(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !26115, !noalias !26107 ; 2 uses
    #dbg_value(ptr %i.c, !6306, !DIExpression(), !26069)
    #dbg_value(ptr poison, !6315, !DIExpression(), !26070)
    #dbg_value(ptr poison, !6318, !DIExpression(), !26072)
  %.not.i = icmp eq ptr %i.c, null, !dbg !26116
  br i1 %.not.i, label %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit, label %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit.thread, !dbg !26117

_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit: ; preds = %bb.a
  call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error18template_not_foundReEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !26118
  %.pr = load i8, ptr %i.b, align 8, !dbg !26119  ; 2 uses
  %.not = icmp eq i8 %.pr, -1, !dbg !26119
  br i1 %.not, label %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit._crit_edge, label %bb.b, !dbg !26120

_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit._crit_edge: ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !26121
  br label %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit.thread, !dbg !26120

bb.b:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit
    #dbg_value(i8 %.pr, !26096, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26108)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !26122
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !26123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx, i64 7, i1 false), !dbg !26122
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26122
  %.sroa.515.0.copyload = load ptr, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !26122
    #dbg_value(ptr %.sroa.515.0.copyload, !26096, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26108)
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !26122
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.616.0..sroa_idx, i64 56, i1 false), !dbg !26122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26124
    #dbg_value(i8 %.pr, !26086, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26109)
    #dbg_value(i8 %.pr, !26091, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26110)
    #dbg_value(ptr %.sroa.515.0.copyload, !26086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26109)
    #dbg_value(ptr %.sroa.515.0.copyload, !26091, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26110)
    #dbg_value(i8 %.pr, !26090, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !26111)
    #dbg_value(ptr %.sroa.515.0.copyload, !26090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26111)
  store i8 %.pr, ptr %0, align 8, !dbg !26123
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26123
  store ptr %.sroa.515.0.copyload, ptr %.sroa.519.0..sroa_idx, align 8, !dbg !26123
  br label %bb.c, !dbg !26125

_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit.thread: ; preds = %bb.a, %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit._crit_edge
  %i.d = phi ptr [ %.pre, %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !26121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26124
    #dbg_value(ptr %i.d, !26085, !DIExpression(), !26112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26126
    #dbg_value(ptr %1, !6181, !DIExpression(), !26074)
    #dbg_value(ptr %i.d, !6185, !DIExpression(), !26074)
  store ptr %1, ptr %i.a, align 8, !dbg !26127, !alias.scope !26113, !noalias !26114
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !26127
  store ptr %i.d, ptr %i.e, align 8, !dbg !26127, !alias.scope !26113, !noalias !26114
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !26127
  store i8 2, ptr %i.f, align 8, !dbg !26127, !alias.scope !26113, !noalias !26114
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !26127
  store i64 0, ptr %i.g, align 8, !dbg !26127, !alias.scope !26113, !noalias !26114
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 464, !dbg !26128
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine6render(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !dbg !26129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26130
  br label %bb.c, !dbg !26125

bb.c:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera17must_get_template.exit.thread, %bb.b
  ret void, !dbg !26125
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera7one_off(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26132 {
bb.a:
  %i.a = alloca [488 x i8], align 8               ; 6 uses
    #dbg_value(ptr %1, !26136, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26141)
    #dbg_value(i64 %2, !26136, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26141)
    #dbg_value(ptr %3, !26137, !DIExpression(), !26141)
    #dbg_value(i1 %4, !26138, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !26141)
    #dbg_declare(ptr %i.a, !26139, !DIExpression(), !26142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26143
  call void @_RNvXs_NtCs5yXxDE1DkoT_4tera4teraNtB4_4TeraNtNtCsf3Ta7LF998c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([488 x i8]) align 8 captures(none) dereferenceable(488) %i.a), !dbg !26144
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera4teraNtB2_4Tera10render_str(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, i1 noundef zeroext %4)
          to label %bb.c unwind label %bb.b, !dbg !26145

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4tera4TeraEBF_(ptr noalias nofree noundef align 8 dereferenceable(488) %i.a) #26
          to label %bb.e unwind label %bb.d, !dbg !26146

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera4tera4TeraEBF_(ptr noalias nofree noundef align 8 dereferenceable(488) %i.a), !dbg !26146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26146
  ret void, !dbg !26147

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !dbg !26148
  unreachable, !dbg !26148

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !26148
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([664 x i8]) align 8 captures(none) dereferenceable(664) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(144) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26245 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !26754, !DIExpression(), !26760)
    #dbg_value(ptr poison, !26788, !DIExpression(), !26790)
    #dbg_value(ptr poison, !26792, !DIExpression(), !26798)
end_hunk_2
