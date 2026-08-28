Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.11?download=true
inline.NumInlined: 225
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(ptr %1, !8077, !DIExpression(), !8084)
    #dbg_value(ptr %0, !8058, !DIExpression(), !8083)
    #dbg_value(ptr %0, !8077, !DIExpression(), !8086)
    #dbg_value(ptr %1, !8052, !DIExpression(), !8088)
    #dbg_value(ptr %0, !8053, !DIExpression(), !8088)
    #dbg_value(ptr %0, !8047, !DIExpression(), !8089)
    #dbg_value(ptr %1, !8046, !DIExpression(), !8089)
  %i.b = ptrtoint ptr %1 to i64, !dbg !8090       ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !8090       ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !8090       ; 8 uses
    #dbg_value(i64 %i.d, !8030, !DIExpression(), !8091)
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !8092
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !8092

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2, !dbg !8092
  %i.f = sub i64 %i.c, %i.e, !dbg !8092
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !8092
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !8093

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.d, 32, !dbg !8092
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !8092

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !8092

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !8093 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !8094 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !8100
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !8100, !noalias !8101 ; 2 uses
  %wide.load4 = load <16 x i8>, ptr %i.k, align 1, !dbg !8100, !noalias !8101 ; 2 uses
  %i.l = add <16 x i8> %wide.load, splat (i8 -65), !dbg !8104
  %i.m = add <16 x i8> %wide.load4, splat (i8 -65), !dbg !8104
  %i.n = icmp ult <16 x i8> %i.l, splat (i8 26), !dbg !8104
  %i.o = icmp ult <16 x i8> %i.m, splat (i8 26), !dbg !8104
  %i.p = select <16 x i1> %i.n, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer, !dbg !8104
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer, !dbg !8104
  %i.r = or <16 x i8> %i.p, %wide.load, !dbg !8104
  %i.s = or <16 x i8> %i.q, %wide.load4, !dbg !8104
  %i.t = getelementptr i8, ptr %i.i, i64 %index, !dbg !8135 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !8160
  store <16 x i8> %i.r, ptr %i.t, align 1, !dbg !8160, !noalias !8165
  store <16 x i8> %i.s, ptr %i.u, align 1, !dbg !8160, !noalias !8165
  %index.next = add nuw i64 %index, 32, !dbg !8093 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !8172
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !8172, !llvm.loop !8173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !8172
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %vec.epilog.iter.check, !dbg !8172

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8174

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !8093
  %n.vec5 = and i64 %i.d, -8                      ; 4 uses
  %i.w = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !8093 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index6, !dbg !8094
  %wide.load7 = load <8 x i8>, ptr %i.y, align 1, !dbg !8100, !noalias !8101 ; 2 uses
  %i.z = add <8 x i8> %wide.load7, splat (i8 -65), !dbg !8104
  %i.aa = icmp ult <8 x i8> %i.z, splat (i8 26), !dbg !8104
  %i.ab = select <8 x i1> %i.aa, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer, !dbg !8104
  %i.ac = or <8 x i8> %i.ab, %wide.load7, !dbg !8104
  %i.ad = getelementptr i8, ptr %i.x, i64 %index6, !dbg !8135
  store <8 x i8> %i.ac, ptr %i.ad, align 1, !dbg !8160, !noalias !8165
  %index.next8 = add nuw i64 %index6, 8, !dbg !8093 ; 2 uses
  %i.ae = icmp eq i64 %index.next8, %n.vec5, !dbg !8172
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !8172, !llvm.loop !8175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.d, %n.vec5, !dbg !8172
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %vec.epilog.scalar.ph.preheader, !dbg !8172

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %i.b, %i.c, !dbg !8172
  %i.ag = xor i64 %.sroa.01.0.i.ph, -1, !dbg !8172
  %i.ah = add i64 %i.ag, %i.b, !dbg !8172
  %xtraiter = and i64 %i.af, 1, !dbg !8172
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !8172
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !8172

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
    #dbg_value(i64 poison, !8063, !DIExpression(), !8064)
    #dbg_value(i64 poison, !8028, !DIExpression(), !8081)
    #dbg_value(ptr %0, !8097, !DIExpression(), !8176)
    #dbg_value(i64 poison, !8098, !DIExpression(), !8176)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph, !dbg !8094
    #dbg_value(ptr %i.ai, !8077, !DIExpression(), !8177)
  %.val27.i.prol = load i8, ptr %i.ai, align 1, !dbg !8100, !noalias !8101, !noundef !22 ; 2 uses
    #dbg_value(ptr poison, !8132, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8179)
    #dbg_declare(ptr poison, !8130, !DIExpression(), !8180)
    #dbg_value(ptr poison, !8131, !DIExpression(), !8179)
    #dbg_value(ptr poison, !8123, !DIExpression(), !8181)
    #dbg_value(ptr poison, !8122, !DIExpression(), !8181)
    #dbg_value(ptr poison, !8115, !DIExpression(), !8182)
    #dbg_value(ptr poison, !8109, !DIExpression(), !8183)
  %i.aj = add i8 %.val27.i.prol, -65, !dbg !8104
  %i.ak = icmp ult i8 %i.aj, 26, !dbg !8104
  %i.al = select i1 %i.ak, i8 32, i8 0, !dbg !8104
  %.sroa.0.0.i.i.i.prol = or i8 %i.al, %.val27.i.prol, !dbg !8104
    #dbg_value(ptr poison, !8155, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8184)
    #dbg_declare(ptr poison, !8156, !DIExpression(), !8185)
    #dbg_value(i8 %.sroa.0.0.i.i.i.prol, !8154, !DIExpression(), !8184)
    #dbg_value(ptr poison, !8144, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8186)
    #dbg_value(ptr poison, !8145, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8186)
    #dbg_value(i8 %.sroa.0.0.i.i.i.prol, !8143, !DIExpression(), !8186)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !8135
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.am, align 1, !dbg !8160, !noalias !8165
  %i.an = add i64 %.ph, 1, !dbg !8187             ; 2 uses
  %i.ao = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !8190
    #dbg_value(i64 %i.ao, !8028, !DIExpression(), !8081)
    #dbg_value(i64 %i.ao, !8063, !DIExpression(), !8064)
  br label %vec.epilog.scalar.ph.prol.loopexit, !dbg !8172

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.ah, %i.c, !dbg !8172
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %vec.epilog.scalar.ph, !dbg !8172

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aq = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !8094 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.be, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !8093 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i, !8063, !DIExpression(), !8064)
    #dbg_value(i64 %.sroa.01.0.i, !8028, !DIExpression(), !8081)
    #dbg_value(ptr %0, !8097, !DIExpression(), !8176)
    #dbg_value(i64 %.sroa.01.0.i, !8098, !DIExpression(), !8176)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !8094
    #dbg_value(ptr %i.ar, !8077, !DIExpression(), !8177)
  %.val27.i = load i8, ptr %i.ar, align 1, !dbg !8100, !noalias !8101, !noundef !22 ; 2 uses
    #dbg_value(ptr poison, !8132, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8179)
    #dbg_declare(ptr poison, !8130, !DIExpression(), !8180)
    #dbg_value(ptr poison, !8131, !DIExpression(), !8179)
    #dbg_value(ptr poison, !8123, !DIExpression(), !8181)
    #dbg_value(ptr poison, !8122, !DIExpression(), !8181)
    #dbg_value(ptr poison, !8115, !DIExpression(), !8182)
    #dbg_value(ptr poison, !8109, !DIExpression(), !8183)
  %i.as = add i8 %.val27.i, -65, !dbg !8104
  %i.at = icmp ult i8 %i.as, 26, !dbg !8104
  %i.au = select i1 %i.at, i8 32, i8 0, !dbg !8104
  %.sroa.0.0.i.i.i = or i8 %i.au, %.val27.i, !dbg !8104
    #dbg_value(ptr poison, !8155, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8184)
    #dbg_declare(ptr poison, !8156, !DIExpression(), !8185)
    #dbg_value(i8 %.sroa.0.0.i.i.i, !8154, !DIExpression(), !8184)
    #dbg_value(ptr poison, !8144, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !8186)
    #dbg_value(ptr poison, !8145, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8186)
    #dbg_value(i8 %.sroa.0.0.i.i.i, !8143, !DIExpression(), !8186)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aq, !dbg !8135
  store i8 %.sroa.0.0.i.i.i, ptr %i.av, align 1, !dbg !8160, !noalias !8165
    #dbg_value(i64 %.sroa.01.0.i, !8063, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8064)
    #dbg_value(i64 %.sroa.01.0.i, !8028, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8081)
    #dbg_value(i64 %.sroa.01.0.i, !8098, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8176)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !8094
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1, !dbg !8094
    #dbg_value(ptr %i.ax, !8077, !DIExpression(), !8177)
  %.val27.i.1 = load i8, ptr %i.ax, align 1, !dbg !8100, !noalias !8101, !noundef !22 ; 2 uses
    #dbg_declare(ptr poison, !8130, !DIExpression(), !8180)
  %i.ay = add i8 %.val27.i.1, -65, !dbg !8104
  %i.az = icmp ult i8 %i.ay, 26, !dbg !8104
  %i.ba = select i1 %i.az, i8 32, i8 0, !dbg !8104
  %.sroa.0.0.i.i.i.1 = or i8 %i.ba, %.val27.i.1, !dbg !8104
    #dbg_declare(ptr poison, !8156, !DIExpression(), !8185)
    #dbg_value(i8 %.sroa.0.0.i.i.i.1, !8154, !DIExpression(), !8184)
    #dbg_value(i8 %.sroa.0.0.i.i.i.1, !8143, !DIExpression(), !8186)
  %i.bb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aq, !dbg !8135
  %i.bc = getelementptr i8, ptr %i.bb, i64 1, !dbg !8135
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.bc, align 1, !dbg !8160, !noalias !8165
  %i.bd = add i64 %i.aq, 2, !dbg !8187            ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 2, !dbg !8190 ; 2 uses
    #dbg_value(i64 %i.be, !8028, !DIExpression(), !8081)
    #dbg_value(i64 %i.be, !8063, !DIExpression(), !8064)
  %i.bf = icmp eq i64 %i.be, %i.d, !dbg !8172
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit, label %vec.epilog.scalar.ph, !dbg !8172, !llvm.loop !8191

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsjfnSKV9Rz3v_3h3i.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bd, %vec.epilog.scalar.ph ], !dbg !8192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8192, !noalias !8101
  ret void, !dbg !8219
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXs1_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB6_7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtBX_17CrosstermTerminalENtB6_13SelectBackend14render_optionsRReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(888) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8220 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [9 x i8], align 1                 ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !8837, !DIExpression(), !8860)
    #dbg_value(ptr poison, !8886, !DIExpression(), !8896)
    #dbg_value(ptr %0, !8769, !DIExpression(), !8897)
    #dbg_declare(ptr %1, !8770, !DIExpression(), !8898)
    #dbg_value(ptr @4, !8899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8910)
    #dbg_value(i64 1, !8899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8910)
    #dbg_value(ptr @4, !8912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8919)
    #dbg_value(i64 1, !8912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8919)
    #dbg_value(ptr @4, !8899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8921)
    #dbg_value(i64 1, !8899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8921)
    #dbg_value(ptr @4, !8912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8923)
    #dbg_value(i64 1, !8912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8923)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8926
  %i.q = load ptr, ptr %i.p, align 8, !dbg !8926, !nonnull !22, !align !5154, !noundef !22 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !8926
  %i.s = load i64, ptr %i.r, align 8, !dbg !8926, !noundef !22 ; 3 uses
    #dbg_value(ptr %i.q, !8927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8932)
    #dbg_value(ptr %i.q, !8934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8944)
    #dbg_value(i64 %i.s, !8927, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8932)
    #dbg_value(i64 %i.s, !8934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8944)
    #dbg_value(i64 %i.s, !8938, !DIExpression(), !8946)
    #dbg_value(i64 %i.s, !8947, !DIExpression(), !8953)
    #dbg_value(ptr %i.q, !8940, !DIExpression(), !8955)
    #dbg_value(ptr %i.q, !8952, !DIExpression(), !8953)
  %.idx = shl nuw nsw i64 %i.s, 4, !dbg !8956
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx, !dbg !8956
    #dbg_value(ptr %i.q, !8771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8957)
    #dbg_value(ptr %i.t, !8771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8957)
    #dbg_value(i64 0, !8771, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8957)
  %i.u = load i64, ptr %1, align 8, !range !647
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = trunc nuw i64 %i.u to i1
  %i.x = load i64, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i8, ptr %i.y, align 8, !range !2401
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ac = load i8, ptr %i.ab, align 1, !range !2401
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 813
  %i.al = tail call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 1) ; 2 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 877 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 776
    #dbg_value(ptr %i.q, !8771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8957)
    #dbg_value(i64 0, !8771, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8957)
    #dbg_value(ptr undef, !8886, !DIExpression(), !8896)
    #dbg_value(ptr undef, !8837, !DIExpression(), !8860)
    #dbg_value(i64 1, !8958, !DIExpression(), !8965)
    #dbg_value(ptr %i.q, !8854, !DIExpression(), !8967)
    #dbg_value(ptr %i.q, !8964, !DIExpression(), !8965)
    #dbg_value(ptr %i.t, !8856, !DIExpression(), !8968)
    #dbg_value(ptr poison, !8969, !DIExpression(), !8976)
    #dbg_value(ptr poison, !8975, !DIExpression(), !8978)
  %i.aw = icmp eq i64 %i.s, 0, !dbg !8979
  br i1 %i.aw, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, label %.lr.ph, !dbg !8980

bb.b:                                             ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(ptr %i.ay, !8771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8957)
    #dbg_value(i64 %i.az, !8771, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8957)
    #dbg_value(ptr undef, !8886, !DIExpression(), !8896)
    #dbg_value(ptr undef, !8837, !DIExpression(), !8860)
    #dbg_value(i64 1, !8958, !DIExpression(), !8965)
    #dbg_value(ptr %i.ay, !8854, !DIExpression(), !8967)
    #dbg_value(ptr %i.ay, !8964, !DIExpression(), !8965)
    #dbg_value(ptr %i.t, !8856, !DIExpression(), !8968)
    #dbg_value(ptr poison, !8969, !DIExpression(), !8976)
    #dbg_value(ptr poison, !8975, !DIExpression(), !8978)
  %i.ax = icmp eq ptr %i.ay, %i.t, !dbg !8979
  br i1 %i.ax, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, label %.lr.ph, !dbg !8980

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.089108 = phi ptr [ %i.ay, %bb.b ], [ %i.q, %bb.a ] ; 3 uses
  %.sroa.8.0107 = phi i64 [ %i.az, %bb.b ], [ 0, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.0.089108, !8771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8957)
    #dbg_value(i64 %.sroa.8.0107, !8771, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8957)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.089108, i64 16, !dbg !8981 ; 2 uses
    #dbg_value(ptr %i.ay, !8771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8957)
    #dbg_value(ptr %.sroa.0.089108, !8887, !DIExpression(), !8982)
    #dbg_value(i64 %.sroa.8.0107, !8893, !DIExpression(), !8983)
  %i.az = add nuw nsw i64 %.sroa.8.0107, 1, !dbg !8984 ; 2 uses
    #dbg_value(i64 %i.az, !8771, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8957)
    #dbg_value(i64 %.sroa.8.0107, !8793, !DIExpression(), !8985)
    #dbg_value(ptr %.sroa.0.089108, !8795, !DIExpression(), !8985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !8986
    #dbg_value(ptr %0, !9005, !DIExpression(), !9011)
    #dbg_value(i64 %.sroa.8.0107, !9006, !DIExpression(), !9011)
    #dbg_value(ptr %1, !9007, !DIExpression(), !9011)
    #dbg_declare(ptr %i.m, !9008, !DIExpression(), !9012)
    #dbg_value(ptr %1, !8993, !DIExpression(), !9013)
    #dbg_value(ptr poison, !8994, !DIExpression(), !9014)
  %i.ba = icmp eq i64 %i.x, %.sroa.8.0107
  %or.cond8.i = select i1 %i.w, i1 %i.ba, i1 false, !dbg !9015 ; 2 uses
  br i1 %or.cond8.i, label %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE19print_option_prefixRReECsjfnSKV9Rz3v_3h3i.exit, label %bb.c, !dbg !9015

bb.c:                                             ; preds = %.lr.ph
  %i.bb = icmp ne i64 %.sroa.8.0107, 0, !dbg !9016
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.aa, !dbg !9016
  br i1 %or.cond.i, label %bb.d, label %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE19print_option_prefixRReECsjfnSKV9Rz3v_3h3i.exit, !dbg !9016

bb.d:                                             ; preds = %bb.c
  %i.bc = icmp ne i64 %i.az, %i.s, !dbg !9017
  %or.cond5.i = select i1 %i.bc, i1 true, i1 %i.ad, !dbg !9017
  %..i = select i1 %or.cond5.i, i64 544, i64 608, !dbg !9018
  br label %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE19print_option_prefixRReECsjfnSKV9Rz3v_3h3i.exit, !dbg !9018

_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE19print_option_prefixRReECsjfnSKV9Rz3v_3h3i.exit: ; preds = %.lr.ph, %bb.c, %bb.d
  %.sink11.i = phi i64 [ 576, %bb.c ], [ 512, %.lr.ph ], [ %..i, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink11.i, !dbg !9011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false), !dbg !9011, !noalias !9019
  %i.be = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.m), !dbg !9022, !noalias !9019 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9023
    #dbg_value(ptr %i.be, !9024, !DIExpression(), !9069)
  %.not78 = icmp eq ptr %i.be, null, !dbg !9071
  br i1 %.not78, label %bb.e, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !9072

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread: ; preds = %bb.b, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE18print_option_valueRReECsjfnSKV9Rz3v_3h3i.exit, %bb.k, %bb.n, %bb.e, %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE19print_option_prefixRReECsjfnSKV9Rz3v_3h3i.exit, %bb.o, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.bs, %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE18print_option_valueRReECsjfnSKV9Rz3v_3h3i.exit ], [ %i.bt, %bb.n ], [ %i.bf, %bb.e ], [ %i.be, %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE19print_option_prefixRReECsjfnSKV9Rz3v_3h3i.exit ], [ %i.bu, %bb.o ], [ %i.bq, %bb.k ], [ %.sroa.0.0.i88, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit ], !dbg !8897
  ret ptr %.sroa.0.0, !dbg !9073

bb.e:                                             ; preds = %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE19print_option_prefixRReECsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(ptr %i.ae, !8909, !DIExpression(), !8910)
  store ptr @4, ptr %i.o, align 8, !dbg !9074
  store i64 1, ptr %2, align 8, !dbg !9074
  store i8 -1, ptr %i.af, align 8, !dbg !9074
  store i8 -1, ptr %i.ag, align 4, !dbg !9074
  store i8 0, ptr %.sroa.327.0..sroa_idx, align 8, !dbg !9074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !dbg !9075
  %i.bf = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.n), !dbg !9076 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9076
    #dbg_value(ptr %i.bf, !9024, !DIExpression(), !9077)
  %.not79 = icmp eq ptr %i.bf, null, !dbg !9079
  br i1 %.not79, label %bb.f, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !9080

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.089108, i64 8, !dbg !9081
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !9081, !noundef !22
  call void @llvm.experimental.noalias.scope.decl(metadata !9082), !dbg !9085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
    #dbg_declare(ptr %i.aj, !9086, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !9092)
    #dbg_declare(ptr %i.aj, !9104, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !9178)
    #dbg_declare(ptr %i.aj, !9131, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !9179)
    #dbg_declare(ptr %i.aj, !9129, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !9180)
    #dbg_declare(ptr %i.aj, !9144, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !9181)
    #dbg_value(ptr poison, !9130, !DIExpression(), !9182)
    #dbg_value(ptr %0, !9105, !DIExpression(), !9183)
    #dbg_value(ptr %0, !9140, !DIExpression(), !9184)
    #dbg_value(i64 %i.bh, !9141, !DIExpression(), !9184)
    #dbg_value(i64 %i.bh, !9185, !DIExpression(), !9189)
    #dbg_value(i64 %i.ai, !9142, !DIExpression(), !9184)
    #dbg_value(i64 %i.ai, !9185, !DIExpression(), !9191)
    #dbg_value(i64 %i.ai, !9185, !DIExpression(), !9193)
    #dbg_value(i64 1, !9188, !DIExpression(), !9189)
    #dbg_value(i64 1, !9188, !DIExpression(), !9191)
    #dbg_value(i64 1, !9188, !DIExpression(), !9193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9195, !noalias !9082
  %i.bi = call i64 @llvm.uadd.sat.i64(i64 %i.bh, i64 1), !dbg !9196
    #dbg_value(i64 %i.bi, !9143, !DIExpression(), !9197)
  store i64 %i.bi, ptr %i.l, align 8, !dbg !9196, !noalias !9082
  %i.bj = load i8, ptr %i.ak, align 1, !dbg !9198, !range !9199, !alias.scope !9082, !noundef !22
  switch i8 %i.bj, label %default.unreachable [
    i8 0, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE25print_option_index_prefixCsjfnSKV9Rz3v_3h3i.exit
    i8 1, label %.split.i
    i8 2, label %bb.g
    i8 3, label %bb.h
  ], !dbg !9200

default.unreachable:                              ; preds = %bb.f
  unreachable

.split.i:                                         ; preds = %bb.f
    #dbg_value(ptr %i.l, !9145, !DIExpression(), !9201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9202, !noalias !9082
  store ptr %i.l, ptr %i.k, align 8, !dbg !9202, !noalias !9082
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !9202, !noalias !9082
    #dbg_value(ptr @9, !9203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9206)
    #dbg_value(ptr %i.k, !9203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9206)
    #dbg_value(ptr null, !7851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9209)
    #dbg_value(i64 undef, !7851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9209)
    #dbg_value(ptr poison, !7867, !DIExpression(), !9209)
    #dbg_declare(ptr poison, !7868, !DIExpression(), !9211)
    #dbg_value(ptr poison, !7874, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9212)
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @9, ptr noundef nonnull %i.k), !dbg !9214, !noalias !9082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9215, !noalias !9082
  %.sroa.01.0.copyload.i = load i64, ptr %i.f, align 8, !dbg !9216, !noalias !9082
    #dbg_value(i64 %.sroa.01.0.copyload.i, !9144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9217)
    #dbg_value(i64 %.sroa.01.0.copyload.i, !9129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9182)
  br label %bb.k, !dbg !9218

bb.g:                                             ; preds = %bb.f
  %i.bk = call noundef i64 @_RINvNtCs8Nb2mar7w9E_7inquire5utils9int_log10jECsjfnSKV9Rz3v_3h3i(i64 noundef %i.al), !dbg !9219, !noalias !9082 ; 2 uses
    #dbg_value(i64 %i.bk, !9154, !DIExpression(), !9220)
    #dbg_value(ptr %i.l, !9156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9221)
    #dbg_value(ptr poison, !9156, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9222)
    #dbg_value(ptr poison, !9223, !DIExpression(), !9230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9222, !noalias !9082
  %i.bl = icmp ugt i64 %i.bk, 65535, !dbg !9233
  br i1 %i.bl, label %bb.i, label %.split101.i, !dbg !9233, !prof !650

bb.h:                                             ; preds = %bb.f
  %i.bm = call noundef i64 @_RINvNtCs8Nb2mar7w9E_7inquire5utils9int_log10jECsjfnSKV9Rz3v_3h3i(i64 noundef %i.al), !dbg !9234, !noalias !9082 ; 2 uses
    #dbg_value(i64 %i.bm, !9169, !DIExpression(), !9235)
    #dbg_value(ptr %i.l, !9171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9236)
    #dbg_value(ptr poison, !9171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9237)
    #dbg_value(ptr poison, !9223, !DIExpression(), !9238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9237, !noalias !9082
  %i.bn = icmp ugt i64 %i.bm, 65535, !dbg !9241
  br i1 %i.bn, label %bb.j, label %.split105.i, !dbg !9241, !prof !650

.split101.i:                                      ; preds = %bb.g
  %i.bo = trunc nuw i64 %i.bk to i16, !dbg !9242
  store ptr %i.l, ptr %i.i, align 8, !dbg !9222, !noalias !9082
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !dbg !9222, !noalias !9082
  store ptr null, ptr %i.an, align 8, !dbg !9222, !noalias !9082
  store i16 %i.bo, ptr %.sroa.426.0..sroa_idx.i, align 8, !dbg !9222, !noalias !9082
    #dbg_value(ptr @10, !9203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9243)
    #dbg_value(ptr %i.i, !9203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9243)
    #dbg_value(ptr null, !7851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9246)
    #dbg_value(i64 undef, !7851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9246)
    #dbg_value(ptr poison, !7867, !DIExpression(), !9246)
    #dbg_declare(ptr poison, !7868, !DIExpression(), !9248)
    #dbg_value(ptr poison, !7874, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9249)
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @10, ptr noundef nonnull %i.i), !dbg !9251, !noalias !9082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9252, !noalias !9082
  %.sroa.01.0.copyload3.i = load i64, ptr %i.j, align 8, !dbg !9253, !noalias !9082
    #dbg_value(i64 %.sroa.01.0.copyload3.i, !9144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9217)
    #dbg_value(i64 %.sroa.01.0.copyload3.i, !9129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9182)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, i64 16, i1 false), !dbg !9253, !noalias !9082
  br label %bb.k, !dbg !9254

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15, !dbg !9255, !noalias !9082
  unreachable, !dbg !9255

.split105.i:                                      ; preds = %bb.h
  %i.bp = trunc nuw i64 %i.bm to i16, !dbg !9256
  store ptr %i.l, ptr %i.g, align 8, !dbg !9237, !noalias !9082
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx.i, align 8, !dbg !9237, !noalias !9082
  store ptr null, ptr %i.am, align 8, !dbg !9237, !noalias !9082
  store i16 %i.bp, ptr %.sroa.438.0..sroa_idx.i, align 8, !dbg !9237, !noalias !9082
    #dbg_value(ptr @11, !9203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9257)
    #dbg_value(ptr %i.g, !9203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9257)
    #dbg_value(ptr null, !7851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9260)
    #dbg_value(i64 undef, !7851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9260)
    #dbg_value(ptr poison, !7867, !DIExpression(), !9260)
    #dbg_declare(ptr poison, !7868, !DIExpression(), !9262)
    #dbg_value(ptr poison, !7874, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9263)
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @11, ptr noundef nonnull %i.g), !dbg !9265, !noalias !9082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9266, !noalias !9082
  %.sroa.01.0.copyload4.i = load i64, ptr %i.h, align 8, !dbg !9267, !noalias !9082
    #dbg_value(i64 %.sroa.01.0.copyload4.i, !9144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9217)
    #dbg_value(i64 %.sroa.01.0.copyload4.i, !9129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9182)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx7.i, i64 16, i1 false), !dbg !9267, !noalias !9082
  br label %bb.k, !dbg !9268

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #15, !dbg !9269, !noalias !9082
  unreachable, !dbg !9269

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE25print_option_index_prefixCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9270, !noalias !9082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9271
  br label %bb.l, !dbg !9272

bb.k:                                             ; preds = %.split.i, %.split101.i, %.split105.i
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload.i, %.split.i ], [ %.sroa.01.0.copyload3.i, %.split101.i ], [ %.sroa.01.0.copyload4.i, %.split105.i ], !dbg !9197
    #dbg_value(i64 %.sroa.01.0.i, !9129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9182)
    #dbg_value(i64 %.sroa.01.0.i, !9144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9217)
    #dbg_value(ptr undef, !9130, !DIExpression(), !9182)
    #dbg_value(i64 %.sroa.01.0.i, !9131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9273)
    #dbg_value(i64 %.sroa.01.0.i, !9104, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9183)
    #dbg_value(i64 %.sroa.01.0.i, !9086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9274)
    #dbg_value(ptr undef, !9105, !DIExpression(DW_OP_deref), !9183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9275, !noalias !9082
  store i64 %.sroa.01.0.i, ptr %i.e, align 8, !dbg !9276, !noalias !9082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.443.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !dbg !9276, !noalias !9082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ao, ptr noundef nonnull align 4 dereferenceable(9) %i.ap, i64 9, i1 false), !dbg !9277
  %i.bq = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e), !dbg !9278 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9275, !noalias !9082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9270, !noalias !9082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9271
    #dbg_value(ptr %i.bq, !8817, !DIExpression(), !9279)
    #dbg_value(ptr %i.bq, !9024, !DIExpression(), !9280)
  %.not80 = icmp eq ptr %i.bq, null, !dbg !9282
  br i1 %.not80, label %bb.n, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !9283

bb.l:                                             ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE25print_option_index_prefixCsjfnSKV9Rz3v_3h3i.exit, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !9284), !dbg !9287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9288
    #dbg_value(ptr %0, !9296, !DIExpression(), !9307)
    #dbg_value(i64 poison, !9297, !DIExpression(), !9307)
    #dbg_value(ptr %.sroa.0.089108, !9298, !DIExpression(), !9307)
    #dbg_value(ptr poison, !9299, !DIExpression(), !9307)
    #dbg_declare(ptr %i.d, !9300, !DIExpression(), !9308)
    #dbg_declare(ptr %i.d, !9302, !DIExpression(), !9309)
    #dbg_declare(ptr %i.d, !9310, !DIExpression(), !9324)
    #dbg_declare(ptr %i.c, !9323, !DIExpression(), !9326)
  %i.br = load i8, ptr %i.aq, align 1, !dbg !9288, !range !9327, !alias.scope !9284, !noalias !9328, !noundef !22
  %.not.i = icmp eq i8 %i.br, -2, !dbg !9288
  br i1 %.not.i, label %.sink.split.i, label %bb.m, !dbg !9330

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) %i.aq, i64 9, i1 false), !dbg !9309, !noalias !9328
  br i1 %or.cond8.i, label %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE18print_option_valueRReECsjfnSKV9Rz3v_3h3i.exit, label %.sink.split.i, !dbg !9331

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 4 dereferenceable(9) %i.ap, i64 9, i1 false), !dbg !9307, !noalias !9328
  br label %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE18print_option_valueRReECsjfnSKV9Rz3v_3h3i.exit, !dbg !9332

_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE18print_option_valueRReECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.m, %.sink.split.i
    #dbg_value(ptr %.sroa.0.089108, !9333, !DIExpression(), !9339)
  store ptr %.sroa.0.089108, ptr %i.c, align 8, !dbg !9341, !noalias !9342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 1 dereferenceable(9) %i.d, i64 9, i1 false), !dbg !9343, !noalias !9342
  %i.bs = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledRRReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c), !dbg !9344 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9345
    #dbg_value(ptr %i.bs, !9024, !DIExpression(), !9346)
  %.not82 = icmp eq ptr %i.bs, null, !dbg !9348
  br i1 %.not82, label %bb.o, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !9349

bb.n:                                             ; preds = %bb.k
    #dbg_value(ptr %i.ae, !8909, !DIExpression(), !8921)
  %i.bt = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.o), !dbg !9350 ; 2 uses
    #dbg_value(ptr %i.bt, !9024, !DIExpression(), !9351)
  %.not81 = icmp eq ptr %i.bt, null, !dbg !9353
  br i1 %.not81, label %bb.l, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !9354

bb.o:                                             ; preds = %_RINvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB3_7BackendNtNtNtB7_8terminal9crossterm18CrosstermKeyReaderNtBU_17CrosstermTerminalE18print_option_valueRReECsjfnSKV9Rz3v_3h3i.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !9355), !dbg !9358
    #dbg_value(ptr %0, !9359, !DIExpression(), !9375)
    #dbg_declare(ptr %i.b, !9369, !DIExpression(), !9377)
    #dbg_value(ptr @16, !9378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9382)
    #dbg_value(i64 1, !9378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9382)
    #dbg_value(ptr @16, !9384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9387)
    #dbg_value(i64 1, !9384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9387)
    #dbg_value(ptr %i.ae, !9381, !DIExpression(), !9382)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9389, !noalias !9355
  store ptr @16, ptr %i.a, align 8, !dbg !9390, !noalias !9355
  store i64 1, ptr %i.ar, align 8, !dbg !9390, !noalias !9355
  store i8 -1, ptr %i.as, align 8, !dbg !9390, !noalias !9355
  store i8 -1, ptr %i.at, align 4, !dbg !9390, !noalias !9355
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !9390, !noalias !9355
  %i.bu = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !dbg !9391 ; 2 uses
    #dbg_value(ptr %i.bu, !9392, !DIExpression(), !9403)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9405, !noalias !9355
  %.not.i87 = icmp eq ptr %i.bu, null, !dbg !9406
  br i1 %.not.i87, label %bb.p, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !9407

bb.p:                                             ; preds = %bb.o
  %i.bv = load i8, ptr %i.au, align 8, !dbg !9408, !range !9327, !alias.scope !9355, !noundef !22
  %.not30.i = icmp eq i8 %i.bv, -2, !dbg !9408
  br i1 %.not30.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, label %bb.q, !dbg !9409

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9377, !noalias !9355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !dbg !9377
  %i.bw = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b), !dbg !9410
    #dbg_value(ptr %i.bw, !9392, !DIExpression(), !9411)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9413, !noalias !9355
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !9414

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.p, %bb.q
  %.sroa.0.0.i88 = phi ptr [ null, %bb.p ], [ %i.bw, %bb.q ], !dbg !9375 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i88, !9024, !DIExpression(), !9415)
  %.not83 = icmp eq ptr %.sroa.0.0.i88, null, !dbg !9417
  br i1 %.not83, label %bb.b, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !9418
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i8, i16 } @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 !dbg !9419 {
bb.a:
    #dbg_value(i32 %0, !9433, !DIExpression(), !9444)
  %i.a = zext nneg i32 %0 to i64, !dbg !9445      ; 3 uses
    #dbg_value(i64 %i.a, !9434, !DIExpression(), !9446)
  %i.b = lshr i64 %i.a, 13, !dbg !9447
  %i.c = getelementptr inbounds nuw i8, ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables10WIDTH_ROOT, i64 %i.b, !dbg !9448
  %i.d = load i8, ptr %i.c, align 1, !dbg !9448, !noundef !22 ; 2 uses
    #dbg_value(i8 %i.d, !9436, !DIExpression(), !9449)
    #dbg_value(i8 %i.d, !9450, !DIExpression(), !9458)
  %i.e = zext i8 %i.d to i64, !dbg !9460          ; 2 uses
  %i.f = icmp ult i8 %i.d, 20, !dbg !9461
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !9461

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #15, !dbg !9461
  unreachable, !dbg !9461

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.a, 7, !dbg !9462
  %i.h = and i64 %i.g, 63, !dbg !9462
  %i.i = getelementptr inbounds nuw [64 x i8], ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables12WIDTH_MIDDLE, i64 %i.e, !dbg !9461
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h, !dbg !9461
  %i.k = load i8, ptr %i.j, align 1, !dbg !9461, !noundef !22 ; 2 uses
    #dbg_value(i8 %i.k, !9438, !DIExpression(), !9463)
    #dbg_value(i8 %i.k, !9450, !DIExpression(), !9464)
  %i.l = zext i8 %i.k to i64, !dbg !9466          ; 2 uses
  %i.m = icmp ult i8 %i.k, -70, !dbg !9467
  br i1 %i.m, label %bb.e, label %bb.d, !dbg !9467

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef 186, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #15, !dbg !9467
  unreachable, !dbg !9467

bb.e:                                             ; preds = %bb.c
  %i.n = lshr i64 %i.a, 2, !dbg !9468
  %i.o = and i64 %i.n, 31, !dbg !9468
  %i.p = getelementptr inbounds nuw [32 x i8], ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables12WIDTH_LEAVES, i64 %i.l, !dbg !9467
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o, !dbg !9467
  %i.r = load i8, ptr %i.q, align 1, !dbg !9467, !noundef !22
    #dbg_value(i8 %i.r, !9440, !DIExpression(), !9469)
  %.tr = trunc i32 %0 to i8, !dbg !9470
  %i.s = shl i8 %.tr, 1, !dbg !9470
  %i.t = and i8 %i.s, 6, !dbg !9470
  %i.u = lshr i8 %i.r, %i.t, !dbg !9470
  %i.v = and i8 %i.u, 3, !dbg !9470               ; 2 uses
    #dbg_value(i8 %i.v, !9442, !DIExpression(), !9471)
  %.not = icmp eq i8 %i.v, 3, !dbg !9472
  br i1 %.not, label %bb.f, label %bb.q, !dbg !9472

bb.f:                                             ; preds = %bb.e
  switch i32 %0, label %bb.g [
    i32 10, label %bb.q
    i32 1500, label %bb.h
    i32 6104, label %bb.i
    i32 6672, label %bb.j
    i32 65025, label %bb.k
    i32 65038, label %bb.l
    i32 65039, label %bb.m
    i32 68611, label %bb.n
    i32 93543, label %bb.o
    i32 93544, label %bb.p
  ], !dbg !9473

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %0, -1570, !dbg !9474
  %or.cond = icmp ult i32 %i.w, 609, !dbg !9474
  br i1 %or.cond, label %bb.q, label %bb.r, !dbg !9474

bb.h:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9475

bb.i:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9476

bb.j:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9477

bb.k:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9478

bb.l:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9479

bb.m:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9480

bb.n:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9481

bb.o:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9482

bb.p:                                             ; preds = %bb.f
  br label %bb.q, !dbg !9483

bb.q:                                             ; preds = %bb.u, %bb.v, %bb.t, %bb.s, %bb.r, %bb.g, %bb.f, %bb.e, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.19.0 = phi i16 [ 33, %bb.p ], [ 1, %bb.f ], [ 12543, %bb.g ], [ 15367, %bb.r ], [ 14339, %bb.s ], [ %., %bb.v ], [ 15365, %bb.t ], [ 3, %bb.u ], [ 0, %bb.e ], [ 14336, %bb.h ], [ 0, %bb.i ], [ 14337, %bb.j ], [ 512, %bb.k ], [ 16384, %bb.l ], [ -32768, %bb.m ], [ 14342, %bb.n ], [ 32, %bb.o ], !dbg !9471
  %.sroa.0.0 = phi i8 [ 1, %bb.p ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.r ], [ 1, %bb.s ], [ 2, %bb.v ], [ 1, %bb.t ], [ 1, %bb.u ], [ %i.v, %bb.e ], [ 1, %bb.h ], [ 3, %bb.i ], [ 1, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], !dbg !9471
  %i.x = insertvalue { i8, i16 } poison, i8 %.sroa.0.0, 0, !dbg !9484
  %i.y = insertvalue { i8, i16 } %i.x, i16 %.sroa.19.0, 1, !dbg !9484
  ret { i8, i16 } %i.y, !dbg !9484

bb.r:                                             ; preds = %bb.g
  %i.z = add nsw i32 %0, -6016, !dbg !9485
  %or.cond1 = icmp ult i32 %i.z, 48, !dbg !9485
  br i1 %or.cond1, label %bb.q, label %bb.s, !dbg !9485

bb.s:                                             ; preds = %bb.r
  %i.aa = add nsw i32 %0, -11569, !dbg !9486
  %or.cond2 = icmp ult i32 %i.aa, 63, !dbg !9486
  br i1 %or.cond2, label %bb.q, label %bb.t, !dbg !9486

bb.t:                                             ; preds = %bb.s
  %i.ab = and i32 %0, 2097150, !dbg !9487
  %or.cond3 = icmp eq i32 %i.ab, 42236, !dbg !9487
  br i1 %or.cond3, label %bb.q, label %bb.u, !dbg !9487

bb.u:                                             ; preds = %bb.t
  %i.ac = add nsw i32 %0, -127462, !dbg !9488
  %or.cond4 = icmp ult i32 %i.ac, 26, !dbg !9488
  br i1 %or.cond4, label %bb.q, label %bb.v, !dbg !9488

bb.v:                                             ; preds = %bb.u
  %i.ad = add nsw i32 %0, -127995, !dbg !9489
  %or.cond5 = icmp ult i32 %i.ad, 5, !dbg !9489
  %. = select i1 %or.cond5, i16 2, i16 5, !dbg !9471
  br label %bb.q, !dbg !9471
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables22is_emoji_modifier_base(i32 noundef range(i32 161, 1114112) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9490 {
bb.a:
    #dbg_value(ptr poison, !9510, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9537)
    #dbg_value(i32 %0, !9492, !DIExpression(), !9539)
    #dbg_value(i32 %0, !9493, !DIExpression(), !9540)
  %i.a = lshr i32 %0, 8, !dbg !9541
    #dbg_value(i32 %i.a, !9495, !DIExpression(), !9542)
  switch i32 %i.a, label %bb.i [
    i32 38, label %bb.h
    i32 39, label %.thread
    i32 499, label %bb.b
    i32 500, label %bb.c
    i32 501, label %bb.d
    i32 502, label %bb.e
    i32 505, label %bb.f
    i32 506, label %bb.g
  ], !dbg !9543

.thread:                                          ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_1, !9497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9544)
    #dbg_value(i64 1, !9497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9544)
  %i.b = trunc i32 %0 to i8, !dbg !9545
    #dbg_value(ptr undef, !9508, !DIExpression(DW_OP_deref), !9546)
    #dbg_value(ptr undef, !9510, !DIExpression(), !9537)
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_1, !9519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9537)
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_1, !9547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9555)
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_1, !9557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9569)
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_1, !9547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9571)
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_1, !9557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9573)
    #dbg_value(i64 1, !9519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9537)
    #dbg_value(i64 1, !9547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9555)
    #dbg_value(i64 1, !9557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9569)
    #dbg_value(i64 1, !9547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9571)
    #dbg_value(i64 1, !9557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9573)
    #dbg_value(i64 1, !9520, !DIExpression(), !9576)
    #dbg_value(i64 0, !9522, !DIExpression(), !9577)
  br label %._crit_edge.i, !dbg !9578

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_2, !9497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9544)
    #dbg_value(i64 4, !9497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9544)
  br label %bb.h, !dbg !9579

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_3, !9497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9544)
    #dbg_value(i64 9, !9497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9544)
  br label %bb.h, !dbg !9580

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_4, !9497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9544)
    #dbg_value(i64 4, !9497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9544)
  br label %bb.h, !dbg !9581

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_5, !9497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9544)
    #dbg_value(i64 6, !9497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9544)
  br label %bb.h, !dbg !9582

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_6, !9497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9544)
    #dbg_value(i64 12, !9497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9544)
  br label %bb.h, !dbg !9583

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_7, !9497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9544)
    #dbg_value(i64 2, !9497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9544)
  br label %bb.h, !dbg !9584

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.9.0 = phi i64 [ 2, %bb.g ], [ 2, %bb.a ], [ 4, %bb.b ], [ 9, %bb.c ], [ 4, %bb.d ], [ 6, %bb.e ], [ 12, %bb.f ], !dbg !9542 ; 2 uses
  %.sroa.01.0 = phi ptr [ @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_7, %bb.g ], [ @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_0, %bb.a ], [ @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_2, %bb.b ], [ @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_3, %bb.c ], [ @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_4, %bb.d ], [ @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_5, %bb.e ], [ @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_6, %bb.f ], !dbg !9542 ; 2 uses
    #dbg_value(ptr %.sroa.01.0, !9497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9544)
    #dbg_value(i64 %.sroa.9.0, !9497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9544)
  %i.c = trunc i32 %0 to i8, !dbg !9545           ; 2 uses
    #dbg_value(ptr undef, !9508, !DIExpression(DW_OP_deref), !9546)
    #dbg_value(ptr undef, !9510, !DIExpression(), !9537)
    #dbg_value(ptr %.sroa.01.0, !9519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9537)
    #dbg_value(ptr %.sroa.01.0, !9547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9555)
    #dbg_value(ptr %.sroa.01.0, !9557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9569)
    #dbg_value(ptr %.sroa.01.0, !9547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9571)
    #dbg_value(ptr %.sroa.01.0, !9557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9573)
    #dbg_value(i64 %.sroa.9.0, !9519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9537)
    #dbg_value(i64 %.sroa.9.0, !9547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9555)
    #dbg_value(i64 %.sroa.9.0, !9557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9569)
    #dbg_value(i64 %.sroa.9.0, !9547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9571)
    #dbg_value(i64 %.sroa.9.0, !9557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9573)
    #dbg_value(i64 %.sroa.9.0, !9520, !DIExpression(), !9576)
    #dbg_value(i64 0, !9522, !DIExpression(), !9577)
  br label %.lr.ph.i, !dbg !9578

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread
  %i.d = phi i8 [ %i.b, %.thread ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %.sroa.01.08 = phi ptr [ @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables21EMOJI_MODIFIER_LEAF_1, %.thread ], [ %.sroa.01.0, %.lr.ph.i ]
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.thread ], [ %i.m, %.lr.ph.i ], !dbg !9576
    #dbg_value(i64 %.sroa.05.0.lcssa.i, !9553, !DIExpression(), !9571)
    #dbg_value(i64 %.sroa.05.0.lcssa.i, !9567, !DIExpression(), !9573)
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.08, i64 %.sroa.05.0.lcssa.i, !dbg !9585 ; 2 uses
  %.val27.i = load i8, ptr %i.e, align 1, !dbg !9586, !alias.scope !9587, !noalias !9590, !noundef !22
  %i.f = getelementptr i8, ptr %i.e, i64 1, !dbg !9586
  %.val28.i = load i8, ptr %i.f, align 1, !dbg !9586, !alias.scope !9587, !noalias !9590
    #dbg_value(ptr poison, !9592, !DIExpression(DW_OP_deref, DW_OP_deref), !9602)
    #dbg_value(ptr poison, !9601, !DIExpression(), !9602)
    #dbg_value(i8 %.val27.i, !9598, !DIExpression(), !9604)
    #dbg_value(i8 poison, !9600, !DIExpression(), !9604)
  %.not = icmp uge i8 %i.d, %.val27.i, !dbg !9605
  %i.g = icmp ule i8 %i.d, %.val28.i, !dbg !9605
    #dbg_value(i8 poison, !9530, !DIExpression(), !9606)
  %.not10 = select i1 %.not, i1 %i.g, i1 false, !dbg !9607
  br label %bb.i, !dbg !9608

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.sroa.01.032.i = phi i64 [ %i.n, %.lr.ph.i ], [ %.sroa.9.0, %bb.h ] ; 2 uses
  %.sroa.05.031.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.h ] ; 2 uses
    #dbg_value(i64 %.sroa.01.032.i, !9520, !DIExpression(), !9576)
    #dbg_value(i64 %.sroa.05.031.i, !9522, !DIExpression(), !9577)
  %i.h = lshr i64 %.sroa.01.032.i, 1, !dbg !9609  ; 2 uses
    #dbg_value(i64 %i.h, !9524, !DIExpression(), !9610)
  %i.i = add nuw nsw i64 %i.h, %.sroa.05.031.i, !dbg !9611 ; 3 uses
    #dbg_value(i64 %i.i, !9526, !DIExpression(), !9612)
    #dbg_value(i64 %i.i, !9553, !DIExpression(), !9555)
    #dbg_value(i64 %i.i, !9567, !DIExpression(), !9569)
  %i.j = icmp ult i64 %i.i, %.sroa.9.0, !dbg !9613
  tail call void @llvm.assume(i1 %i.j), !dbg !9614
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %i.i, !dbg !9615
  %.val24.i = load i8, ptr %i.k, align 1, !dbg !9616, !alias.scope !9587, !noalias !9590, !noundef !22
    #dbg_value(ptr poison, !9592, !DIExpression(DW_OP_deref, DW_OP_deref), !9617)
    #dbg_value(ptr poison, !9601, !DIExpression(), !9617)
    #dbg_value(i8 %.val24.i, !9598, !DIExpression(), !9619)
    #dbg_value(i8 poison, !9600, !DIExpression(), !9619)
  %i.l = icmp ugt i8 %.val24.i, %i.c, !dbg !9620
    #dbg_value(i8 poison, !9528, !DIExpression(), !9621)
    #dbg_value(i1 %i.l, !1468, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9622)
    #dbg_value(i64 %.sroa.05.031.i, !1473, !DIExpression(), !9622)
    #dbg_value(i64 %i.i, !1474, !DIExpression(), !9622)
    #dbg_value(i64 %.sroa.05.031.i, !1475, !DIExpression(), !9624)
    #dbg_value(i64 %i.i, !1492, !DIExpression(), !9625)
    #dbg_value(ptr undef, !1494, !DIExpression(), !9626)
    #dbg_value(ptr undef, !1497, !DIExpression(), !9627)
    #dbg_value(ptr poison, !1499, !DIExpression(), !9628)
    #dbg_value(ptr poison, !1501, !DIExpression(), !9629)
    #dbg_value(ptr poison, !1503, !DIExpression(), !9630)
  %i.m = select i1 %i.l, i64 %.sroa.05.031.i, i64 %i.i, !dbg !9631, !unpredictable !22 ; 2 uses
    #dbg_value(i64 %i.m, !9522, !DIExpression(), !9577)
  %i.n = sub nuw nsw i64 %.sroa.01.032.i, %i.h, !dbg !9632 ; 2 uses
    #dbg_value(i64 %i.n, !9520, !DIExpression(), !9576)
  %i.o = icmp ugt i64 %i.n, 1, !dbg !9578
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i, !dbg !9578

bb.i:                                             ; preds = %bb.a, %._crit_edge.i
  %.sroa.0.0 = phi i1 [ %.not10, %._crit_edge.i ], [ false, %bb.a ], !dbg !9542
  ret i1 %.sroa.0.0, !dbg !9608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCskKLDkoKarTP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTjxEENtNtNtB6_3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 !dbg !9633 {
bb.a:
    #dbg_value(ptr %0, !9645, !DIExpression(), !9646)
  ret void, !dbg !9647
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCskKLDkoKarTP_4core4hint20select_unpredictableINtB2_11DropOnPanicPTjxEENtNtNtB6_3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 !dbg !9648 {
bb.a:
    #dbg_value(ptr %0, !9659, !DIExpression(), !9660)
  ret void, !dbg !9661
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB5_7BackendNtNtNtB9_8terminal9crossterm18CrosstermKeyReaderNtBW_17CrosstermTerminalENtB5_13SelectBackend20render_select_promptCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(888) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9662 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 11 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
    #dbg_value(ptr %3, !9682, !DIExpression(), !9689)
    #dbg_value(ptr %0, !9680, !DIExpression(), !9689)
    #dbg_value(ptr %0, !9690, !DIExpression(), !9697)
    #dbg_value(ptr %1, !9681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9689)
    #dbg_value(ptr %1, !9696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9697)
    #dbg_value(i64 %2, !9681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9689)
    #dbg_value(i64 %2, !9696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9697)
  %.not = icmp eq ptr %3, null, !dbg !9699
  br i1 %.not, label %bb.dg, label %bb.b, !dbg !9700

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %3, !9683, !DIExpression(), !9701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9702), !dbg !9705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9706), !dbg !9705
    #dbg_value(ptr null, !9708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9740)
    #dbg_value(i64 undef, !9708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9740)
    #dbg_value(ptr %0, !9715, !DIExpression(), !9740)
    #dbg_value(ptr %0, !9742, !DIExpression(), !9746)
    #dbg_value(ptr %1, !9716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9740)
    #dbg_value(ptr %1, !9745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9746)
    #dbg_value(i64 %2, !9716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9740)
    #dbg_value(i64 %2, !9745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9746)
    #dbg_value(ptr %3, !9717, !DIExpression(), !9740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9748, !noalias !9749
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !9748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !dbg !9748, !noalias !9751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9752, !noalias !9749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9752, !noalias !9749
    #dbg_value(ptr %0, !9758, !DIExpression(), !9778)
    #dbg_declare(ptr %i.n, !9759, !DIExpression(), !9779)
    #dbg_value(ptr %1, !9760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9778)
    #dbg_value(ptr %1, !9780, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9785)
    #dbg_value(ptr %1, !9787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9791)
    #dbg_value(i64 %2, !9760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9778)
    #dbg_value(i64 %2, !9780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9785)
    #dbg_value(i64 %2, !9787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9791)
    #dbg_value(ptr @4, !9793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9797)
    #dbg_value(i64 1, !9793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9797)
    #dbg_value(ptr @4, !9790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9799)
    #dbg_value(i64 1, !9790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9799)
    #dbg_value(ptr @4, !9793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9801)
    #dbg_value(i64 1, !9793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9801)
    #dbg_value(ptr @4, !9790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9803)
    #dbg_value(i64 1, !9790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9803)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9752 ; 9 uses
  %i.r = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.n), !dbg !9806, !noalias !9807 ; 2 uses
    #dbg_value(ptr %i.r, !9810, !DIExpression(), !9829)
  %.not.i.i = icmp eq ptr %i.r, null, !dbg !9831
  br i1 %.not.i.i, label %bb.c, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread.i, !dbg !9832

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.q, !9796, !DIExpression(), !9797)
  store ptr @4, ptr %i.l, align 8, !dbg !9833, !noalias !9834
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !9833
  store i64 1, ptr %i.s, align 8, !dbg !9833, !noalias !9834
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !9833
  store i8 -1, ptr %i.t, align 8, !dbg !9833, !noalias !9834
  %.sroa.013.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 20, !dbg !9833
  store i8 -1, ptr %.sroa.013.sroa.4.0..sroa_idx.i.i, align 4, !dbg !9833, !noalias !9834
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !9833
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9833, !noalias !9834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9837, !noalias !9834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !9837, !noalias !9834
  %i.u = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.k), !dbg !9838, !noalias !9839 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9838, !noalias !9834
    #dbg_value(ptr %i.u, !9810, !DIExpression(), !9840)
  %.not52.i.i = icmp eq ptr %i.u, null, !dbg !9842
  br i1 %.not52.i.i, label %bb.d, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread.i, !dbg !9843

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %2, 0, !dbg !9844
  br i1 %i.v, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread3.i, label %bb.e, !dbg !9845

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread3.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9846, !noalias !9749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9846, !noalias !9749
    #dbg_value(ptr null, !9847, !DIExpression(), !9870)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9872, !noalias !9749
  br label %bb.f, !dbg !9873

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %i.m, align 8, !dbg !9874, !noalias !9834
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !9874
  store i64 %2, ptr %i.w, align 8, !dbg !9874, !noalias !9834
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !9874
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 814, !dbg !9875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.x, ptr noundef nonnull align 2 dereferenceable(9) %i.y, i64 9, i1 false), !dbg !9875, !noalias !9876
  %i.z = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.m), !dbg !9877, !noalias !9878 ; 2 uses
    #dbg_value(ptr %i.z, !9810, !DIExpression(), !9879)
  %.not53.i.i = icmp eq ptr %i.z, null, !dbg !9881
  br i1 %.not53.i.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread.i, !dbg !9882

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread.i: ; preds = %bb.e, %bb.c, %bb.b
  %.sroa.0.0.i.ph.i = phi ptr [ %i.z, %bb.e ], [ %i.u, %bb.c ], [ %i.r, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9846, !noalias !9749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9846, !noalias !9749
    #dbg_value(ptr %.sroa.0.0.i.ph.i, !9847, !DIExpression(), !9870)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9872, !noalias !9749
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !9873

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.i: ; preds = %bb.e
    #dbg_value(ptr %i.q, !9796, !DIExpression(), !9801)
  %i.aa = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.l), !dbg !9883, !noalias !9878 ; 2 uses
    #dbg_value(ptr %i.aa, !9810, !DIExpression(), !9884)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9846, !noalias !9749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9846, !noalias !9749
    #dbg_value(ptr %i.aa, !9847, !DIExpression(), !9870)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9872, !noalias !9749
  %.not.i = icmp eq ptr %i.aa, null, !dbg !9886
  br i1 %.not.i, label %bb.f, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !9873

bb.f:                                             ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.i, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread3.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9887), !dbg !9890
  call void @llvm.experimental.noalias.scope.decl(metadata !9891), !dbg !9890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9893, !noalias !9749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9893, !noalias !9749
    #dbg_value(ptr %0, !9899, !DIExpression(), !9916)
    #dbg_value(ptr %3, !9900, !DIExpression(), !9916)
    #dbg_value(ptr %3, !9917, !DIExpression(), !9923)
    #dbg_value(ptr %3, !9925, !DIExpression(), !9931)
    #dbg_value(ptr %3, !9933, !DIExpression(), !9939)
    #dbg_value(ptr %3, !9941, !DIExpression(), !9947)
    #dbg_declare(ptr poison, !9949, !DIExpression(), !9964)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9981)
    #dbg_value(i64 0, !9974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9981)
    #dbg_value(i32 32, !9983, !DIExpression(), !9992)
    #dbg_value(i32 32, !9994, !DIExpression(), !10004)
    #dbg_value(ptr %0, !10006, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !10016)
  %i.ab = call { ptr, i64 } @_RNvMNtCs8Nb2mar7w9E_7inquire5inputNtB2_5Input10pre_cursor(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3), !dbg !9893, !noalias !9887 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0, !dbg !9893 ; 6 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1, !dbg !9893 ; 2 uses
    #dbg_value(ptr %i.ac, !10018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10025)
    #dbg_value(ptr %i.ac, !10027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10030)
    #dbg_value(ptr %i.ac, !10032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10035)
    #dbg_value(i64 %i.ad, !10018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10025)
    #dbg_value(i64 %i.ad, !10027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10030)
    #dbg_value(i64 %i.ad, !10032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10035)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ], !dbg !10037
    #dbg_declare(ptr poison, !10044, !DIExpression(DW_OP_LLVM_fragment, 80, 48), !10068)
    #dbg_value(ptr poison, !1765, !DIExpression(), !10070)
    #dbg_value(ptr poison, !1808, !DIExpression(), !10078)
    #dbg_value(ptr poison, !1827, !DIExpression(), !10081)
    #dbg_value(ptr poison, !1775, !DIExpression(), !10082)
    #dbg_value(ptr poison, !1765, !DIExpression(), !10083)
    #dbg_value(ptr poison, !1808, !DIExpression(), !10086)
    #dbg_value(ptr poison, !1827, !DIExpression(), !10089)
    #dbg_value(ptr poison, !1775, !DIExpression(), !10090)
    #dbg_value(ptr poison, !1765, !DIExpression(), !10091)
    #dbg_value(ptr poison, !1808, !DIExpression(), !10094)
    #dbg_value(ptr poison, !1827, !DIExpression(), !10097)
    #dbg_value(ptr poison, !1775, !DIExpression(), !10098)
    #dbg_value(ptr %i.ac, !10059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10099)
    #dbg_value(!DIArgList(ptr %i.ac, i64 %i.ad), !10059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10099)
    #dbg_value(i64 0, !10060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10099)
    #dbg_value(i16 0, !10060, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !10099)
    #dbg_declare(ptr poison, !10061, !DIExpression(), !10100)
    #dbg_value(i64 0, !10044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10101)
    #dbg_value(i16 0, !10044, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !10101)
    #dbg_value(ptr undef, !10076, !DIExpression(), !10102)
    #dbg_value(ptr undef, !1786, !DIExpression(), !10103)
    #dbg_value(i32 2, !2252, !DIExpression(), !10104)
    #dbg_value(i32 3, !2252, !DIExpression(), !10106)
    #dbg_value(i32 4, !2252, !DIExpression(), !10108)
    #dbg_value(ptr undef, !1775, !DIExpression(), !10110)
    #dbg_value(ptr undef, !1827, !DIExpression(), !10112)
    #dbg_value(ptr undef, !1808, !DIExpression(), !10114)
    #dbg_value(i64 1, !1814, !DIExpression(), !10114)
    #dbg_value(i64 1, !2262, !DIExpression(), !10116)
    #dbg_value(i64 -1, !2269, !DIExpression(), !10118)
    #dbg_value(!DIArgList(ptr %i.ac, i64 %i.ad), !1778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10120)
    #dbg_value(ptr undef, !1765, !DIExpression(), !10121)
    #dbg_value(ptr poison, !1768, !DIExpression(), !10123)
  %.not.i21.i.i.i = icmp samesign eq i64 %i.ad, 0, !dbg !10124
  br i1 %.not.i21.i.i.i, label %_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs5Tjqocmbzhi_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECsjfnSKV9Rz3v_3h3i.exit.i.i, label %.lr.ph.i.preheader.i.i, !dbg !10125

.lr.ph.i.preheader.i.i:                           ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad, !dbg !10126
    #dbg_value(ptr %i.ae, !10059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10099)
    #dbg_value(ptr %i.ae, !1778, !DIExpression(), !10120)
  br label %.lr.ph.i.i.i, !dbg !10129

.lr.ph.i.i.i:                                     ; preds = %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.sroa.0.024.i.i.i = phi i16 [ %i.fm, %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %.sroa.6.023.i.i.i = phi i16 [ %.sroa.51.1.i.i.i.i.i, %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %.sroa.2.022.i.i.i = phi ptr [ %.sroa.2.3.ph.i.i.i, %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i ], [ %i.ae, %.lr.ph.i.preheader.i.i ] ; 4 uses
    #dbg_value(i64 poison, !10044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10101)
    #dbg_value(i16 %.sroa.6.023.i.i.i, !10044, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !10101)
    #dbg_value(ptr %.sroa.2.022.i.i.i, !10059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10099)
    #dbg_value(ptr undef, !1817, !DIExpression(), !10130)
    #dbg_value(ptr %.sroa.2.022.i.i.i, !2266, !DIExpression(), !10116)
    #dbg_value(ptr %.sroa.2.022.i.i.i, !2275, !DIExpression(), !10118)
  %i.af = getelementptr inbounds i8, ptr %.sroa.2.022.i.i.i, i64 -1, !dbg !10131 ; 3 uses
    #dbg_value(ptr %i.af, !2266, !DIExpression(), !10116)
    #dbg_value(ptr %i.af, !2275, !DIExpression(), !10118)
    #dbg_value(ptr %i.af, !10059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10099)
    #dbg_value(ptr %i.af, !1794, !DIExpression(), !10132)
  %i.ag = load i8, ptr %i.af, align 1, !dbg !10129, !noalias !10133, !noundef !22 ; 3 uses
    #dbg_value(i8 %i.ag, !1787, !DIExpression(), !10138)
    #dbg_value(i8 %i.ag, !1792, !DIExpression(), !10132)
    #dbg_value(i8 %i.ag, !2288, !DIExpression(), !10139)
  %i.ah = icmp sgt i8 %i.ag, -1, !dbg !10129
  br i1 %i.ah, label %bb.g, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i, !dbg !10129

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
    #dbg_value(ptr undef, !1775, !DIExpression(), !10098)
    #dbg_value(ptr undef, !1827, !DIExpression(), !10097)
    #dbg_value(ptr undef, !1808, !DIExpression(), !10094)
    #dbg_value(i64 1, !1814, !DIExpression(), !10094)
    #dbg_value(i64 1, !2262, !DIExpression(), !10141)
    #dbg_value(i64 -1, !2269, !DIExpression(), !10143)
    #dbg_value(ptr %i.af, !1778, !DIExpression(), !10145)
    #dbg_value(ptr undef, !1765, !DIExpression(), !10091)
    #dbg_value(ptr poison, !1768, !DIExpression(), !10146)
  %i.ai = icmp ne ptr %i.ac, %i.af, !dbg !10147
  call void @llvm.assume(i1 %i.ai), !dbg !10148
    #dbg_value(ptr undef, !1817, !DIExpression(), !10149)
    #dbg_value(ptr %i.af, !2266, !DIExpression(), !10141)
    #dbg_value(ptr %i.af, !2275, !DIExpression(), !10143)
  %i.aj = getelementptr inbounds i8, ptr %.sroa.2.022.i.i.i, i64 -2, !dbg !10150 ; 3 uses
    #dbg_value(ptr %i.aj, !2266, !DIExpression(), !10141)
    #dbg_value(ptr %i.aj, !2275, !DIExpression(), !10143)
    #dbg_value(ptr %i.aj, !10059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10099)
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !10151, !noalias !10133, !noundef !22 ; 3 uses
    #dbg_value(i8 %i.ak, !1798, !DIExpression(), !10152)
    #dbg_value(i8 %i.ak, !2255, !DIExpression(), !10104)
    #dbg_value(i8 %i.ak, !2306, !DIExpression(), !10153)
    #dbg_value(i8 %i.ak, !2288, !DIExpression(), !10155)
  %i.al = and i8 %i.ak, 31, !dbg !10157
  %i.am = zext nneg i8 %i.al to i32, !dbg !10157
    #dbg_value(i32 %i.am, !1797, !DIExpression(), !10158)
    #dbg_value(i32 %i.am, !2291, !DIExpression(), !10159)
    #dbg_value(i32 %i.am, !2291, !DIExpression(), !10155)
    #dbg_value(i32 %i.am, !2291, !DIExpression(), !10139)
  %i.an = icmp slt i8 %i.ak, -64, !dbg !10161
  br i1 %i.an, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit32.i.i.i.i.i, label %bb.h, !dbg !10162

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = zext nneg i8 %i.ag to i32, !dbg !10163
  br label %bb.j, !dbg !10164

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit32.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i.exit30.i.i.i.i.i
    #dbg_value(ptr undef, !1775, !DIExpression(), !10090)
    #dbg_value(ptr undef, !1827, !DIExpression(), !10089)
    #dbg_value(ptr undef, !1808, !DIExpression(), !10086)
    #dbg_value(i64 1, !1814, !DIExpression(), !10086)
    #dbg_value(i64 1, !2262, !DIExpression(), !10165)
    #dbg_value(i64 -1, !2269, !DIExpression(), !10167)
    #dbg_value(ptr %i.aj, !1778, !DIExpression(), !10169)
    #dbg_value(ptr undef, !1765, !DIExpression(), !10083)
    #dbg_value(ptr poison, !1768, !DIExpression(), !10170)
  %i.ap = icmp ne ptr %i.ac, %i.aj, !dbg !10171
  call void @llvm.assume(i1 %i.ap), !dbg !10172
    #dbg_value(ptr undef, !1817, !DIExpression(), !10173)
    #dbg_value(ptr %i.aj, !2266, !DIExpression(), !10165)
    #dbg_value(ptr %i.aj, !2275, !DIExpression(), !10167)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.2.022.i.i.i, i64 -3, !dbg !10174 ; 3 uses
    #dbg_value(ptr %i.aq, !2266, !DIExpression(), !10165)
    #dbg_value(ptr %i.aq, !2275, !DIExpression(), !10167)
    #dbg_value(ptr %i.aq, !10059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10099)
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB5_7BackendNtNtNtB9_8terminal9crossterm18CrosstermKeyReaderNtBW_17CrosstermTerminalENtB5_13SelectBackend20render_select_promptCsjfnSKV9Rz3v_3h3i:bb.a
  %i.fk = shl nuw nsw i32 %switch.tableidx47, 3, !dbg !10563
  %switch.shiftamt = zext nneg i32 %i.fk to i56, !dbg !10563
  %switch.downshift = lshr i56 1099511627776, %switch.shiftamt, !dbg !10563
  %switch.masked = trunc i56 %switch.downshift to i8, !dbg !10563
  br label %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, !dbg !10563

_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i: ; preds = %bb.an, %switch.lookup50, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.cl, %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %.thread137.i.i.i.i.i, %bb.bs, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bm, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %bb.be, %bb.bc, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.av, %bb.av, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.aq, %._crit_edge.i.i.i.i.i.i.i, %bb.aa, %bb.z, %bb.y, %.thread139.i.i.i.i.i, %bb.w, %bb.s
  %.sroa.51.1.i.i.i.i.i = phi i16 [ 5, %bb.s ], [ 0, %bb.cr ], [ 5, %bb.ci ], [ %i.dh, %bb.as ], [ 0, %bb.cu ], [ 30, %bb.bz ], [ 11, %bb.cq ], [ 10, %bb.bs ], [ 5, %bb.cm ], [ %i.cf, %.thread139.i.i.i.i.i ], [ 10, %bb.bs ], [ %switch.ext, %switch.lookup50 ], [ 1, %bb.cs ], [ 25, %bb.bu ], [ 18, %bb.co ], [ 19, %bb.cp ], [ 28, %bb.bx ], [ 9, %bb.br ], [ 2, %.thread137.i.i.i.i.i ], [ 16, %bb.ca ], [ 17, %bb.cd ], [ 26, %bb.bv ], [ 27, %bb.bw ], [ 5, %bb.cg ], [ 29, %bb.by ], [ 4103, %bb.bq ], [ 4, %bb.bm ], [ %.sroa.052.0.i.i.i.i.i, %bb.aa ], [ 0, %._crit_edge.i.i.i.i.i.i.i ], [ 5, %bb.bg ], [ 4102, %bb.bo ], [ 0, %bb.az ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 15364, %bb.bc ], [ 0, %bb.be ], [ %.sroa.0.1.i.i.i.i.i, %bb.aq ], [ 0, %bb.av ], [ 12543, %bb.bb ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 15362, %bb.ay ], [ %.sroa.051.0.i.i.i.i.i, %bb.z ], [ %.sroa.050.0.i.i.i.i.i, %bb.y ], [ %.sroa.0.1.i.i.i.i.i, %bb.aq ], [ %.sroa.0.1.i.i.i.i.i, %bb.at ], [ 0, %bb.w ], [ 0, %bb.ba ], [ 0, %bb.av ], [ 0, %bb.av ], [ 0, %bb.av ], [ 15364, %bb.bc ], [ 0, %bb.ct ], [ 4102, %bb.bn ], [ 4102, %bb.bn ], [ 4102, %bb.bn ], [ 4102, %bb.bn ], [ 4102, %bb.bn ], [ 4, %bb.bm ], [ 17, %bb.cb ], [ 17, %bb.ck ], [ 17, %bb.ck ], [ 17, %bb.ck ], [ 17, %bb.ck ], [ 17, %bb.ck ], [ 17, %bb.ch ], [ 17, %bb.cf ], [ 17, %bb.ce ], [ 5, %bb.cl ], [ 5, %bb.cl ], [ 5, %bb.cl ], [ 5, %bb.cl ], [ 5, %bb.cl ], [ 5, %bb.cj ], [ 0, %bb.an ], !dbg !10274
  %.sroa.046.1.i.i.i.i.i = phi i8 [ %..i.i.i.i.i, %bb.s ], [ 0, %bb.cr ], [ 0, %bb.ci ], [ 0, %bb.as ], [ 1, %bb.cu ], [ 0, %bb.bz ], [ 3, %bb.cq ], [ -1, %bb.bs ], [ 0, %bb.cm ], [ %i.ce, %.thread139.i.i.i.i.i ], [ -1, %bb.bs ], [ %switch.masked, %switch.lookup50 ], [ 1, %bb.cs ], [ 0, %bb.bu ], [ 0, %bb.co ], [ 0, %bb.cp ], [ 0, %bb.bx ], [ 1, %bb.br ], [ 0, %.thread137.i.i.i.i.i ], [ 0, %bb.ca ], [ 0, %bb.cd ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ 0, %bb.cg ], [ 0, %bb.by ], [ 0, %bb.bq ], [ 1, %bb.bm ], [ 0, %bb.aa ], [ 1, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.bg ], [ 0, %bb.bo ], [ 0, %bb.az ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ -1, %bb.bl ], [ 1, %bb.bc ], [ 0, %bb.be ], [ 0, %bb.aq ], [ 0, %bb.av ], [ 0, %bb.bb ], [ 0, %bb.aw ], [ -1, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 1, %bb.w ], [ 0, %bb.ba ], [ 0, %bb.av ], [ 0, %bb.av ], [ 0, %bb.av ], [ 1, %bb.bc ], [ %spec.select.i.i.i.i.i, %bb.ct ], [ 0, %bb.bn ], [ 0, %bb.bn ], [ 0, %bb.bn ], [ 0, %bb.bn ], [ 0, %bb.bn ], [ 1, %bb.bm ], [ 0, %bb.cb ], [ 0, %bb.ck ], [ 0, %bb.ck ], [ 0, %bb.ck ], [ 0, %bb.ck ], [ 0, %bb.ck ], [ 0, %bb.ch ], [ 0, %bb.cf ], [ 0, %bb.ce ], [ 0, %bb.cl ], [ 0, %bb.cl ], [ 0, %bb.cl ], [ 0, %bb.cl ], [ 0, %bb.cl ], [ 0, %bb.cj ], [ 2, %bb.an ], !dbg !10274
    #dbg_value(i8 %.sroa.046.1.i.i.i.i.i, !10223, !DIExpression(), !10601)
    #dbg_value(i8 %.sroa.046.1.i.i.i.i.i, !10602, !DIExpression(), !10608)
    #dbg_value(i16 %.sroa.51.1.i.i.i.i.i, !10225, !DIExpression(), !10601)
  %i.fl = sext i8 %.sroa.046.1.i.i.i.i.i to i16, !dbg !10610
    #dbg_value(i64 poison, !10235, !DIExpression(), !10236)
  %i.fm = add i16 %.sroa.0.024.i.i.i, %i.fl, !dbg !10611 ; 2 uses
    #dbg_value(ptr %.sroa.2.3.ph.i.i.i, !10059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10099)
    #dbg_value(i64 poison, !10044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10101)
    #dbg_value(i16 %.sroa.51.1.i.i.i.i.i, !10044, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !10101)
    #dbg_value(ptr undef, !10076, !DIExpression(), !10102)
    #dbg_value(ptr undef, !1786, !DIExpression(), !10103)
    #dbg_value(i32 2, !2252, !DIExpression(), !10104)
    #dbg_value(i32 3, !2252, !DIExpression(), !10106)
    #dbg_value(i32 4, !2252, !DIExpression(), !10108)
    #dbg_value(ptr undef, !1775, !DIExpression(), !10110)
    #dbg_value(ptr undef, !1827, !DIExpression(), !10112)
    #dbg_value(ptr undef, !1808, !DIExpression(), !10114)
    #dbg_value(i64 1, !1814, !DIExpression(), !10114)
    #dbg_value(i64 1, !2262, !DIExpression(), !10116)
    #dbg_value(i64 -1, !2269, !DIExpression(), !10118)
    #dbg_value(ptr %.sroa.2.3.ph.i.i.i, !1778, !DIExpression(), !10120)
    #dbg_value(ptr undef, !1765, !DIExpression(), !10121)
    #dbg_value(ptr poison, !1768, !DIExpression(), !10123)
  %.not.i.i.i.i = icmp eq ptr %i.ac, %.sroa.2.3.ph.i.i.i, !dbg !10124
  br i1 %.not.i.i.i.i, label %_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs5Tjqocmbzhi_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECsjfnSKV9Rz3v_3h3i.exit.i.i, label %.lr.ph.i.i.i, !dbg !10125

_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs5Tjqocmbzhi_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECsjfnSKV9Rz3v_3h3i.exit.i.i: ; preds = %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i, %bb.f
  %.sroa.0.0.lcssa.i.i.i = phi i16 [ 0, %bb.f ], [ %i.fm, %_RNCNvNtCs5Tjqocmbzhi_13unicode_width6tables9str_width0CsjfnSKV9Rz3v_3h3i.exit.i.i.i ], !dbg !10099
    #dbg_value(ptr poison, !10059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10099)
    #dbg_value(i64 poison, !10012, !DIExpression(), !10614)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10615
  %i.fo = load i64, ptr %i.fn, align 8, !dbg !10615, !range !10616, !alias.scope !10617, !noalias !10618, !noundef !22 ; 2 uses
  %i.fp = icmp ne i64 %i.fo, -9223372036854775807, !dbg !10615
  call void @llvm.assume(i1 %i.fp), !dbg !10615
  %i.fq = icmp sgt i64 %i.fo, -1, !dbg !10615
  br i1 %i.fq, label %bb.cw, label %bb.cv, !dbg !10619

bb.cv:                                            ; preds = %_RNvMs_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererNtB4_10FrameState20mark_cursor_position.exit.i.i, %_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs5Tjqocmbzhi_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECsjfnSKV9Rz3v_3h3i.exit.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !10620
  %i.fs = load i64, ptr %i.fr, align 8, !dbg !10620, !alias.scope !10621, !noalias !10622, !noundef !22 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0, !dbg !10620
  br i1 %i.ft, label %bb.cz, label %bb.cy, !dbg !10623

bb.cw:                                            ; preds = %_RINvYNtNtNtCskKLDkoKarTP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs5Tjqocmbzhi_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECsjfnSKV9Rz3v_3h3i.exit.i.i
    #dbg_value(i64 poison, !10012, !DIExpression(), !10614)
    #dbg_value(ptr %0, !10013, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !10624)
  call void @llvm.experimental.noalias.scope.decl(metadata !10625), !dbg !10628
    #dbg_value(ptr %0, !10629, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !10646)
    #dbg_value(i64 poison, !10635, !DIExpression(), !10646)
    #dbg_value(ptr %0, !10648, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !10655)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !10657
  %i.fv = load i64, ptr %i.fu, align 8, !dbg !10657, !alias.scope !10658, !noalias !10618, !noundef !22 ; 2 uses
  %i.fw = icmp ult i64 %i.fv, 288230376151711744, !dbg !10659
  call void @llvm.assume(i1 %i.fw), !dbg !10660
    #dbg_value(i64 %i.fv, !10636, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !10661)
    #dbg_value(i16 poison, !10662, !DIExpression(), !10669)
    #dbg_value(i64 poison, !10668, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !10669)
    #dbg_value(i16 poison, !10638, !DIExpression(), !10671)
    #dbg_value(ptr %0, !10672, !DIExpression(DW_OP_plus_uconst, 392, DW_OP_stack_value), !10680)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !10682
  %i.fy = load i16, ptr %i.fx, align 8, !dbg !10682, !alias.scope !10658, !noalias !10618, !noundef !22 ; 3 uses
  %i.fz = icmp eq i16 %i.fy, 0, !dbg !10683
  br i1 %i.fz, label %bb.cx, label %_RNvMs_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererNtB4_10FrameState20mark_cursor_position.exit.i.i, !dbg !10683

bb.cx:                                            ; preds = %bb.cw
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #15, !dbg !10683, !noalias !10684
  unreachable, !dbg !10683

_RNvMs_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererNtB4_10FrameState20mark_cursor_position.exit.i.i: ; preds = %bb.cw
    #dbg_value(ptr %0, !10013, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !10624)
    #dbg_value(ptr %0, !10629, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !10646)
    #dbg_value(ptr %0, !10648, !DIExpression(DW_OP_plus_uconst, 232, DW_OP_stack_value), !10655)
    #dbg_value(ptr %0, !10672, !DIExpression(DW_OP_plus_uconst, 392, DW_OP_stack_value), !10680)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 406, !dbg !10685
  %i.gb = load i16, ptr %i.ga, align 2, !dbg !10685, !alias.scope !10658, !noalias !10618, !noundef !22
    #dbg_value(i16 %i.gb, !10662, !DIExpression(), !10669)
    #dbg_value(i64 %i.fv, !10636, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !10661)
    #dbg_value(i16 poison, !10640, !DIExpression(), !10686)
    #dbg_value(!DIArgList(i16 poison, i16 poison), !10642, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10687)
    #dbg_value(ptr %0, !10672, !DIExpression(DW_OP_plus_uconst, 392, DW_OP_stack_value), !10688)
  %i.gc = trunc i64 %i.fv to i16, !dbg !10690
    #dbg_value(i16 %i.gc, !10636, !DIExpression(), !10661)
    #dbg_value(i16 %.sroa.0.0.lcssa.i.i.i, !10668, !DIExpression(), !10669)
  %i.gd = call i16 @llvm.uadd.sat.i16(i16 %i.gb, i16 %.sroa.0.0.lcssa.i.i.i), !dbg !10691 ; 2 uses
    #dbg_value(i16 %i.gd, !10638, !DIExpression(), !10671)
  %i.ge = udiv i16 %i.gd, %i.fy, !dbg !10683
    #dbg_value(!DIArgList(i16 %i.gc, i16 %i.ge), !10642, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !10687)
    #dbg_value(i16 %i.ge, !10640, !DIExpression(), !10686)
  %i.gf = add i16 %i.ge, %i.gc, !dbg !10692
    #dbg_value(i16 %i.gf, !10642, !DIExpression(), !10687)
  %i.gg = urem i16 %i.gd, %i.fy, !dbg !10693
    #dbg_value(i16 %i.gg, !10644, !DIExpression(), !10694)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !10695
  store i16 1, ptr %i.gh, align 8, !dbg !10695, !alias.scope !10658, !noalias !10618
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 402, !dbg !10695
  store i16 %i.gf, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2, !dbg !10695, !alias.scope !10658, !noalias !10618
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 404, !dbg !10695
  store i16 %i.gg, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !dbg !10695, !alias.scope !10658, !noalias !10618
  br label %bb.cv, !dbg !10696

bb.cy:                                            ; preds = %bb.cv
    #dbg_value(ptr %3, !10697, !DIExpression(), !10701)
    #dbg_value(ptr %3, !10703, !DIExpression(), !10707)
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10710
  %i.gj = load ptr, ptr %i.gi, align 8, !dbg !10710, !alias.scope !10621, !noalias !10622, !nonnull !22, !noundef !22
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10726
  %i.gl = load i64, ptr %i.gk, align 8, !dbg !10726, !alias.scope !10621, !noalias !10622, !noundef !22
    #dbg_value(ptr %i.gj, !10727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10730)
    #dbg_value(i64 %i.gl, !10727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10730)
  store ptr %i.gj, ptr %i.i, align 8, !dbg !10732, !noalias !10345
  %i.gm = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !10732
  store i64 %i.gl, ptr %i.gm, align 8, !dbg !10732, !noalias !10345
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !10732
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 850, !dbg !10733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gn, ptr noundef nonnull align 2 dereferenceable(9) %i.go, i64 9, i1 false), !dbg !10733, !noalias !10618
  %i.gp = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.i), !dbg !10734 ; 2 uses
    #dbg_value(ptr %i.gp, !10735, !DIExpression(), !10750)
  %.not.i58.i = icmp eq ptr %i.gp, null, !dbg !10752
  br i1 %.not.i58.i, label %bb.da, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.thread.i, !dbg !10753

bb.cz:                                            ; preds = %bb.cv
    #dbg_value(ptr %3, !9972, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10754)
    #dbg_value(ptr %3, !10755, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10763)
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10765
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !10765, !range !4926, !alias.scope !10621, !noalias !10622, !noundef !22
  %.not88.i.i = icmp eq i64 %i.gr, -1, !dbg !10765
  br i1 %.not88.i.i, label %bb.da, label %bb.db, !dbg !10766

bb.da:                                            ; preds = %bb.dc, %bb.db, %bb.cz, %bb.cy
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !10767
  %i.gt = load i64, ptr %i.gs, align 8, !dbg !10767, !alias.scope !10621, !noalias !10622, !noundef !22
  %i.gu = icmp eq i64 %i.gt, %i.fs, !dbg !10768
  br i1 %i.gu, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.thread8.i, !dbg !10768

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.thread8.i: ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10769, !noalias !9749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10769, !noalias !9749
    #dbg_value(ptr null, !9847, !DIExpression(), !10770)
  br label %bb.dd, !dbg !10772

bb.db:                                            ; preds = %bb.cz
    #dbg_value(ptr %i.gq, !9961, !DIExpression(), !10773)
    #dbg_value(ptr %i.gq, !9962, !DIExpression(), !10774)
    #dbg_value(ptr %i.gq, !10697, !DIExpression(), !10775)
    #dbg_value(ptr %i.gq, !10703, !DIExpression(), !10785)
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !10787
  %i.gw = load i64, ptr %i.gv, align 8, !dbg !10787, !alias.scope !10621, !noalias !10622, !noundef !22 ; 2 uses
    #dbg_value(ptr poison, !9980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9981)
    #dbg_value(i64 %i.gw, !9980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9981)
    #dbg_value(ptr poison, !10789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10802)
    #dbg_value(i64 %i.gw, !10789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10802)
    #dbg_value(ptr poison, !10811, !DIExpression(), !10816)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !10797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10802)
    #dbg_value(i64 0, !10797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10802)
    #dbg_value(ptr poison, !10812, !DIExpression(), !10817)
    #dbg_value(i64 %i.gw, !10798, !DIExpression(), !10818)
  %i.gx = icmp eq i64 %i.gw, 0, !dbg !10819
  br i1 %i.gx, label %bb.da, label %bb.dc, !dbg !10819

bb.dc:                                            ; preds = %bb.db
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !10820
  %i.gz = load ptr, ptr %i.gy, align 8, !dbg !10820, !alias.scope !10621, !noalias !10622, !nonnull !22, !noundef !22
    #dbg_value(ptr %i.gz, !10789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10802)
    #dbg_value(ptr %i.gz, !9980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9981)
    #dbg_value(ptr %i.gz, !9901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10825)
    #dbg_value(ptr %i.gz, !10727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10826)
    #dbg_value(i64 %i.gw, !9901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10825)
    #dbg_value(i64 %i.gw, !10727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10826)
  store ptr %i.gz, ptr %i.j, align 8, !dbg !10828, !noalias !10345
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !10828
  store i64 %i.gw, ptr %i.ha, align 8, !dbg !10828, !noalias !10345
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !10828
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !10829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hb, ptr noundef nonnull align 8 dereferenceable(9) %i.hc, i64 9, i1 false), !dbg !10829, !noalias !10618
  %i.hd = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.j), !dbg !10830 ; 2 uses
    #dbg_value(ptr %i.hd, !10735, !DIExpression(), !10831)
  %.not89.i.i = icmp eq ptr %i.hd, null, !dbg !10833
  br i1 %.not89.i.i, label %bb.da, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.thread.i, !dbg !10834

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.thread.i: ; preds = %bb.dc, %bb.cy
  %.sroa.0.0.i59.ph.i = phi ptr [ %i.gp, %bb.cy ], [ %i.hd, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10769, !noalias !9749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10769, !noalias !9749
    #dbg_value(ptr %.sroa.0.0.i59.ph.i, !9847, !DIExpression(), !10770)
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !10772

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.i: ; preds = %bb.da
    #dbg_value(ptr %i.q, !9991, !DIExpression(), !9992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10835, !noalias !10345
  store i32 32, ptr %i.h, align 4, !dbg !10836, !noalias !10345
  %i.he = getelementptr inbounds nuw i8, ptr %i.h, i64 4, !dbg !10836
  store i8 -1, ptr %i.he, align 4, !dbg !10836, !noalias !10345
  %.sroa.023.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !10836
  store i8 -1, ptr %.sroa.023.sroa.5.0..sroa_idx.i.i, align 4, !dbg !10836, !noalias !10345
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12, !dbg !10836
  store i8 0, ptr %.sroa.540.0..sroa_idx.i.i, align 4, !dbg !10836, !noalias !10345
  %i.hf = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledcECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h), !dbg !10837 ; 2 uses
    #dbg_value(ptr %i.hf, !10735, !DIExpression(), !10838)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10840, !noalias !10345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10769, !noalias !9749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10769, !noalias !9749
    #dbg_value(ptr %i.hf, !9847, !DIExpression(), !10770)
  %.not56.i = icmp eq ptr %i.hf, null, !dbg !10841
  br i1 %.not56.i, label %bb.dd, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !10772

bb.dd:                                            ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.i, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.thread8.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10842), !dbg !10845
    #dbg_value(ptr %0, !9359, !DIExpression(), !10846)
    #dbg_declare(ptr %i.g, !9369, !DIExpression(), !10848)
    #dbg_value(ptr @16, !9378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10849)
    #dbg_value(i64 1, !9378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10849)
    #dbg_value(ptr @16, !9384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10851)
    #dbg_value(i64 1, !9384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10851)
    #dbg_value(ptr %i.q, !9381, !DIExpression(), !10849)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10853, !noalias !10854
  store ptr @16, ptr %i.f, align 8, !dbg !10855, !noalias !10854
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !10855
  store i64 1, ptr %i.hg, align 8, !dbg !10855, !noalias !10854
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !10855
  store i8 -1, ptr %i.hh, align 8, !dbg !10855, !noalias !10854
  %.sroa.07.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20, !dbg !10855
  store i8 -1, ptr %.sroa.07.sroa.5.0..sroa_idx.i.i, align 4, !dbg !10855, !noalias !10854
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !10855
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !10855, !noalias !10854
  %i.hi = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f), !dbg !10856 ; 2 uses
    #dbg_value(ptr %i.hi, !9392, !DIExpression(), !10857)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10859, !noalias !10854
  %.not.i60.i = icmp eq ptr %i.hi, null, !dbg !10860
  br i1 %.not.i60.i, label %bb.de, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !10861

bb.de:                                            ; preds = %bb.dd
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !10862
  %i.hk = load i8, ptr %i.hj, align 8, !dbg !10862, !range !9327, !alias.scope !10863, !noalias !9751, !noundef !22
  %.not30.i.i = icmp eq i8 %i.hk, -2, !dbg !10862
  br i1 %.not30.i.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, label %bb.df, !dbg !10864

bb.df:                                            ; preds = %bb.de
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 776, !dbg !10862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10848, !noalias !10854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, i64 32, i1 false), !dbg !10848, !noalias !9751
  %i.hm = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g), !dbg !10865
    #dbg_value(ptr %i.hm, !9392, !DIExpression(), !10866)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10868, !noalias !10854
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !10869

bb.dg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !10870
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !10870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.hn, i64 32, i1 false), !dbg !10870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10871
    #dbg_value(ptr %0, !9758, !DIExpression(), !10873)
    #dbg_declare(ptr %i.o, !9759, !DIExpression(), !10874)
    #dbg_value(ptr %1, !9760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10873)
    #dbg_value(ptr %1, !9780, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10875)
    #dbg_value(ptr %1, !9787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10877)
    #dbg_value(i64 %2, !9760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10873)
    #dbg_value(i64 %2, !9780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10875)
    #dbg_value(i64 %2, !9787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10877)
    #dbg_value(ptr @4, !9793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10879)
    #dbg_value(i64 1, !9793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10879)
    #dbg_value(ptr @4, !9790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10881)
    #dbg_value(i64 1, !9790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10881)
    #dbg_value(ptr @4, !9793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10883)
    #dbg_value(i64 1, !9793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10883)
    #dbg_value(ptr @4, !9790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10885)
    #dbg_value(i64 1, !9790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10885)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10871 ; 6 uses
  %i.hp = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ho, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.o), !dbg !10887, !noalias !10888 ; 2 uses
    #dbg_value(ptr %i.hp, !9810, !DIExpression(), !10891)
  %.not.i13 = icmp eq ptr %i.hp, null, !dbg !10893
  br i1 %.not.i13, label %bb.dh, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !10894

bb.dh:                                            ; preds = %bb.dg
    #dbg_value(ptr %i.ho, !9796, !DIExpression(), !10879)
  store ptr @4, ptr %i.d, align 8, !dbg !10895, !noalias !10896
  %i.hq = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !10895
  store i64 1, ptr %i.hq, align 8, !dbg !10895, !noalias !10896
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !10895
  store i8 -1, ptr %i.hr, align 8, !dbg !10895, !noalias !10896
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20, !dbg !10895
  store i8 -1, ptr %.sroa.013.sroa.4.0..sroa_idx.i, align 4, !dbg !10895, !noalias !10896
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !10895
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !10895, !noalias !10896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10899, !noalias !10896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !10899, !noalias !10896
  %i.hs = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ho, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c), !dbg !10900, !noalias !10901 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10900, !noalias !10896
    #dbg_value(ptr %i.hs, !9810, !DIExpression(), !10902)
  %.not52.i = icmp eq ptr %i.hs, null, !dbg !10904
  br i1 %.not52.i, label %bb.di, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !10905

bb.di:                                            ; preds = %bb.dh
  %i.ht = icmp eq i64 %2, 0, !dbg !10906
  br i1 %i.ht, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread18, label %bb.dj, !dbg !10907

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread18: ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10908
    #dbg_value(ptr null, !10909, !DIExpression(), !10916)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10918
  br label %bb.dk, !dbg !10919

bb.dj:                                            ; preds = %bb.di
  store ptr %1, ptr %i.e, align 8, !dbg !10920, !noalias !10896
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !10920
  store i64 %2, ptr %i.hu, align 8, !dbg !10920, !noalias !10896
  %i.hv = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !10920
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 814, !dbg !10921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hv, ptr noundef nonnull align 2 dereferenceable(9) %i.hw, i64 9, i1 false), !dbg !10921, !noalias !10901
  %i.hx = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ho, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e), !dbg !10922, !noalias !10923 ; 2 uses
    #dbg_value(ptr %i.hx, !9810, !DIExpression(), !10924)
  %.not53.i = icmp eq ptr %i.hx, null, !dbg !10926
  br i1 %.not53.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !10927

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread: ; preds = %bb.dg, %bb.dh, %bb.dj
  %.sroa.0.0.i.ph = phi ptr [ %i.hx, %bb.dj ], [ %i.hs, %bb.dh ], [ %i.hp, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10908
    #dbg_value(ptr %.sroa.0.0.i.ph, !10909, !DIExpression(), !10916)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10918
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !10919

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.dj
    #dbg_value(ptr %i.ho, !9796, !DIExpression(), !10883)
  %i.hy = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ho, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d), !dbg !10928, !noalias !10923 ; 2 uses
    #dbg_value(ptr %i.hy, !9810, !DIExpression(), !10929)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10908
    #dbg_value(ptr %i.hy, !10909, !DIExpression(), !10916)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10918
  %.not12 = icmp eq ptr %i.hy, null, !dbg !10931
  br i1 %.not12, label %bb.dk, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !10919

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.dm, %bb.dl, %bb.dk, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, %bb.df, %bb.de, %bb.dd, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.i, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.thread.i, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.i, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread.i, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit
  %.sroa.02.0 = phi ptr [ %i.hy, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit ], [ %.sroa.0.0.i.ph, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread ], [ %i.aa, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.i ], [ %i.hf, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.i ], [ %.sroa.0.0.i59.ph.i, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE11print_inputCsjfnSKV9Rz3v_3h3i.exit.thread.i ], [ %.sroa.0.0.i.ph.i, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread.i ], [ %i.hi, %bb.dd ], [ %i.hm, %bb.df ], [ null, %bb.de ], [ %i.ib, %bb.dk ], [ %i.if, %bb.dm ], [ null, %bb.dl ], !dbg !9689
  ret ptr %.sroa.02.0, !dbg !10932

bb.dk:                                            ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread18, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !10933), !dbg !10936
    #dbg_value(ptr %0, !9359, !DIExpression(), !10937)
    #dbg_declare(ptr %i.b, !9369, !DIExpression(), !10939)
    #dbg_value(ptr @16, !9378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10940)
    #dbg_value(i64 1, !9378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10940)
    #dbg_value(ptr @16, !9384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10942)
    #dbg_value(i64 1, !9384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10942)
    #dbg_value(ptr %i.ho, !9381, !DIExpression(), !10940)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10944, !noalias !10933
  store ptr @16, ptr %i.a, align 8, !dbg !10945, !noalias !10933
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10945
  store i64 1, ptr %i.hz, align 8, !dbg !10945, !noalias !10933
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10945
  store i8 -1, ptr %i.ia, align 8, !dbg !10945, !noalias !10933
  %.sroa.07.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20, !dbg !10945
  store i8 -1, ptr %.sroa.07.sroa.5.0..sroa_idx.i, align 4, !dbg !10945, !noalias !10933
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !10945
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !10945, !noalias !10933
  %i.ib = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ho, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !dbg !10946 ; 2 uses
    #dbg_value(ptr %i.ib, !9392, !DIExpression(), !10947)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10949, !noalias !10933
  %.not.i14 = icmp eq ptr %i.ib, null, !dbg !10950
  br i1 %.not.i14, label %bb.dl, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !10951

bb.dl:                                            ; preds = %bb.dk
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !10952
  %i.id = load i8, ptr %i.ic, align 8, !dbg !10952, !range !9327, !alias.scope !10933, !noundef !22
  %.not30.i = icmp eq i8 %i.id, -2, !dbg !10952
  br i1 %.not30.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, label %bb.dm, !dbg !10953

bb.dm:                                            ; preds = %bb.dl
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 776, !dbg !10952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10939, !noalias !10933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ie, i64 32, i1 false), !dbg !10939
  %i.if = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.ho, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b), !dbg !10954
    #dbg_value(ptr %i.if, !9392, !DIExpression(), !10955)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10957, !noalias !10933
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE23print_prompt_with_inputCsjfnSKV9Rz3v_3h3i.exit, !dbg !10958
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB5_7BackendNtNtNtB9_8terminal9crossterm18CrosstermKeyReaderNtBW_17CrosstermTerminalENtNtB7_12input_reader11InputReader8read_keyCsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(888) %1) unnamed_addr #0 !dbg !10959 {
bb.a:
    #dbg_value(ptr %1, !11007, !DIExpression(), !11008)
  tail call void @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB4_18CrosstermKeyReaderNtNtNtB8_2ui12input_reader11InputReader8read_key(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !11009
  ret void, !dbg !11010
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend11frame_setupCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(888) %0) unnamed_addr #0 !dbg !11011 {
bb.a:
    #dbg_value(ptr %0, !11014, !DIExpression(), !11015)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11016
  %i.b = tail call noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE11start_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.a), !dbg !11017
  ret ptr %i.b, !dbg !11018
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend12frame_finishCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(888) %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !11019 {
bb.a:
    #dbg_value(ptr %0, !11023, !DIExpression(), !11025)
    #dbg_value(i1 %1, !11024, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11025)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11026
  %i.b = tail call noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE20finish_current_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.a, i1 noundef zeroext %1), !dbg !11027
  ret ptr %i.b, !dbg !11028
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend19render_help_messageCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(888) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !11029 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !11031, !DIExpression(), !11049)
    #dbg_value(ptr %1, !11032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11049)
    #dbg_value(ptr %1, !11050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11054)
    #dbg_value(i64 %2, !11032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11049)
    #dbg_value(i64 %2, !11050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11054)
    #dbg_declare(ptr %i.e, !11056, !DIExpression(), !11063)
    #dbg_declare(ptr poison, !11062, !DIExpression(), !11065)
    #dbg_declare(ptr %i.d, !11056, !DIExpression(), !11066)
    #dbg_declare(ptr poison, !11062, !DIExpression(), !11068)
    #dbg_declare(ptr %i.c, !11056, !DIExpression(), !11069)
    #dbg_declare(ptr poison, !11062, !DIExpression(), !11071)
    #dbg_value(ptr @36, !11053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11072)
    #dbg_value(i64 1, !11053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11072)
    #dbg_value(ptr @37, !11053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11074)
    #dbg_value(i64 1, !11053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11074)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11076 ; 5 uses
  store ptr @36, ptr %i.e, align 8, !dbg !11077
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !11077
  store i64 1, ptr %i.g, align 8, !dbg !11077
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !11077
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 841, !dbg !11078 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.h, ptr noundef nonnull align 1 dereferenceable(9) %i.i, i64 9, i1 false), !dbg !11078
  %i.j = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e), !dbg !11079 ; 2 uses
    #dbg_value(ptr %i.j, !11080, !DIExpression(), !11099)
  %.not = icmp eq ptr %i.j, null, !dbg !11100
  br i1 %.not, label %bb.b, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11101

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.d, align 8, !dbg !11102
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11102
  store i64 %2, ptr %i.k, align 8, !dbg !11102
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.l, ptr noundef nonnull align 1 dereferenceable(9) %i.i, i64 9, i1 false), !dbg !11103
  %i.m = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d), !dbg !11104 ; 2 uses
    #dbg_value(ptr %i.m, !11080, !DIExpression(), !11105)
  %.not50 = icmp eq ptr %i.m, null, !dbg !11107
  br i1 %.not50, label %bb.c, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11108

bb.c:                                             ; preds = %bb.b
  store ptr @37, ptr %i.c, align 8, !dbg !11109
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11109
  store i64 1, ptr %i.n, align 8, !dbg !11109
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.o, ptr noundef nonnull align 1 dereferenceable(9) %i.i, i64 9, i1 false), !dbg !11110
  %i.p = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c), !dbg !11111 ; 2 uses
    #dbg_value(ptr %i.p, !11080, !DIExpression(), !11112)
  %.not51 = icmp eq ptr %i.p, null, !dbg !11114
  br i1 %.not51, label %bb.d, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11115

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !11116), !dbg !11119
    #dbg_value(ptr %0, !9359, !DIExpression(), !11120)
    #dbg_declare(ptr %i.b, !9369, !DIExpression(), !11122)
    #dbg_value(ptr @16, !9378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11123)
    #dbg_value(i64 1, !9378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11123)
    #dbg_value(ptr @16, !9384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11125)
    #dbg_value(i64 1, !9384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11125)
    #dbg_value(ptr %i.f, !9381, !DIExpression(), !11123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11127, !noalias !11116
  store ptr @16, ptr %i.a, align 8, !dbg !11128, !noalias !11116
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11128
  store i64 1, ptr %i.q, align 8, !dbg !11128, !noalias !11116
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11128
  store i8 -1, ptr %i.r, align 8, !dbg !11128, !noalias !11116
  %.sroa.07.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20, !dbg !11128
  store i8 -1, ptr %.sroa.07.sroa.5.0..sroa_idx.i, align 4, !dbg !11128, !noalias !11116
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !11128
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !11128, !noalias !11116
  %i.s = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !dbg !11129 ; 2 uses
    #dbg_value(ptr %i.s, !9392, !DIExpression(), !11130)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11132, !noalias !11116
  %.not.i = icmp eq ptr %i.s, null, !dbg !11133
  br i1 %.not.i, label %bb.e, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11134

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !11135
  %i.u = load i8, ptr %i.t, align 8, !dbg !11135, !range !9327, !alias.scope !11116, !noundef !22
  %.not30.i = icmp eq i8 %i.u, -2, !dbg !11135
  br i1 %.not30.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, label %bb.f, !dbg !11136

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 776, !dbg !11135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11122, !noalias !11116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !dbg !11122
  %i.w = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b), !dbg !11137
    #dbg_value(ptr %i.w, !9392, !DIExpression(), !11138)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11140, !noalias !11116
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11141

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ %i.p, %bb.c ], [ %i.j, %bb.a ], [ %i.m, %bb.b ], [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ null, %bb.e ], !dbg !11049
  ret ptr %.sroa.0.0, !dbg !11142
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend22render_canceled_promptCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(888) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !11143 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !11145, !DIExpression(), !11159)
    #dbg_value(ptr %0, !11160, !DIExpression(), !11164)
    #dbg_value(ptr %1, !11146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11159)
    #dbg_value(ptr %1, !11163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11164)
    #dbg_value(i64 %2, !11146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11159)
    #dbg_value(i64 %2, !11163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11166
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !11166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !11166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11167
    #dbg_value(ptr %0, !9758, !DIExpression(), !11169)
    #dbg_declare(ptr %i.f, !9759, !DIExpression(), !11170)
    #dbg_value(ptr %1, !9760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11169)
    #dbg_value(ptr %1, !9780, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11171)
    #dbg_value(ptr %1, !9787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11173)
    #dbg_value(i64 %2, !9760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11169)
    #dbg_value(i64 %2, !9780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11171)
    #dbg_value(i64 %2, !9787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11173)
    #dbg_value(ptr @4, !9793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11175)
    #dbg_value(i64 1, !9793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11175)
    #dbg_value(ptr @4, !9790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11177)
    #dbg_value(i64 1, !9790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11177)
    #dbg_value(ptr @4, !9793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11179)
    #dbg_value(i64 1, !9793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11179)
    #dbg_value(ptr @4, !9790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11181)
    #dbg_value(i64 1, !9790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11181)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11167 ; 7 uses
  %i.j = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f), !dbg !11183, !noalias !11184 ; 2 uses
    #dbg_value(ptr %i.j, !9810, !DIExpression(), !11187)
  %.not.i = icmp eq ptr %i.j, null, !dbg !11189
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !11190

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.i, !9796, !DIExpression(), !11175)
  store ptr @4, ptr %i.d, align 8, !dbg !11191, !noalias !11192
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11191
  store i64 1, ptr %i.k, align 8, !dbg !11191, !noalias !11192
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11191
  store i8 -1, ptr %i.l, align 8, !dbg !11191, !noalias !11192
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20, !dbg !11191
  store i8 -1, ptr %.sroa.013.sroa.4.0..sroa_idx.i, align 4, !dbg !11191, !noalias !11192
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !11191
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !11191, !noalias !11192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11195, !noalias !11192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !11195, !noalias !11192
  %i.m = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c), !dbg !11196, !noalias !11197 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11196, !noalias !11192
    #dbg_value(ptr %i.m, !9810, !DIExpression(), !11198)
  %.not52.i = icmp eq ptr %i.m, null, !dbg !11200
  br i1 %.not52.i, label %bb.c, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !11201

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %2, 0, !dbg !11202
  br i1 %i.n, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread27, label %bb.d, !dbg !11203

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread27: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11204
    #dbg_value(ptr null, !11205, !DIExpression(), !11220)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11222
  br label %bb.e, !dbg !11223

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.e, align 8, !dbg !11224, !noalias !11192
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !11224
  store i64 %2, ptr %i.o, align 8, !dbg !11224, !noalias !11192
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !11224
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 814, !dbg !11225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.p, ptr noundef nonnull align 2 dereferenceable(9) %i.q, i64 9, i1 false), !dbg !11225, !noalias !11197
  %i.r = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e), !dbg !11226, !noalias !11227 ; 2 uses
    #dbg_value(ptr %i.r, !9810, !DIExpression(), !11228)
  %.not53.i = icmp eq ptr %i.r, null, !dbg !11230
  br i1 %.not53.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !11231

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread: ; preds = %bb.a, %bb.b, %bb.d
  %.sroa.0.0.i.ph = phi ptr [ %i.r, %bb.d ], [ %i.m, %bb.b ], [ %i.j, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11204
    #dbg_value(ptr %.sroa.0.0.i.ph, !11205, !DIExpression(), !11220)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11222
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11223

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.d
    #dbg_value(ptr %i.i, !9796, !DIExpression(), !11179)
  %i.s = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d), !dbg !11232, !noalias !11227 ; 2 uses
    #dbg_value(ptr %i.s, !9810, !DIExpression(), !11233)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11204
    #dbg_value(ptr %i.s, !11205, !DIExpression(), !11220)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11222
  %.not = icmp eq ptr %i.s, null, !dbg !11235
  br i1 %.not, label %bb.e, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11223

bb.e:                                             ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread27, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11236
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 480, !dbg !11236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !dbg !11236
  %i.u = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g), !dbg !11237 ; 2 uses
    #dbg_value(ptr %i.u, !11205, !DIExpression(), !11238)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11240
  %.not21 = icmp eq ptr %i.u, null, !dbg !11241
  br i1 %.not21, label %bb.f, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11242

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !11243), !dbg !11246
    #dbg_value(ptr %0, !9359, !DIExpression(), !11247)
    #dbg_declare(ptr %i.b, !9369, !DIExpression(), !11249)
    #dbg_value(ptr @16, !9378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11250)
    #dbg_value(i64 1, !9378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11250)
    #dbg_value(ptr @16, !9384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(i64 1, !9384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(ptr %i.i, !9381, !DIExpression(), !11250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11254, !noalias !11243
  store ptr @16, ptr %i.a, align 8, !dbg !11255, !noalias !11243
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11255
  store i64 1, ptr %i.v, align 8, !dbg !11255, !noalias !11243
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11255
  store i8 -1, ptr %i.w, align 8, !dbg !11255, !noalias !11243
  %.sroa.07.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20, !dbg !11255
  store i8 -1, ptr %.sroa.07.sroa.5.0..sroa_idx.i, align 4, !dbg !11255, !noalias !11243
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !11255
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !11255, !noalias !11243
  %i.x = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !dbg !11256 ; 2 uses
    #dbg_value(ptr %i.x, !9392, !DIExpression(), !11257)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11259, !noalias !11243
  %.not.i23 = icmp eq ptr %i.x, null, !dbg !11260
  br i1 %.not.i23, label %bb.g, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11261

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !11262
  %i.z = load i8, ptr %i.y, align 8, !dbg !11262, !range !9327, !alias.scope !11243, !noundef !22
  %.not30.i = icmp eq i8 %i.z, -2, !dbg !11262
  br i1 %.not30.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, label %bb.h, !dbg !11263

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 776, !dbg !11262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11249, !noalias !11243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !dbg !11249
  %i.ab = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b), !dbg !11264
    #dbg_value(ptr %i.ab, !9392, !DIExpression(), !11265)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11267, !noalias !11243
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11268

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, %bb.e, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit
  %.sroa.0.0 = phi ptr [ %i.u, %bb.e ], [ %i.s, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit ], [ %.sroa.0.0.i.ph, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread ], [ %i.x, %bb.f ], [ %i.ab, %bb.h ], [ null, %bb.g ], !dbg !11159
  ret ptr %.sroa.0.0, !dbg !11269
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend25render_prompt_with_answerCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(888) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11270 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 11 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !11285, !DIExpression(DW_OP_LLVM_fragment, 0, 448), !11345)
    #dbg_declare(ptr poison, !11285, !DIExpression(DW_OP_LLVM_fragment, 480, 160), !11345)
    #dbg_value(ptr poison, !11346, !DIExpression(), !11377)
  %i.m = alloca [32 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !11274, !DIExpression(), !11379)
    #dbg_value(ptr %1, !11275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11379)
    #dbg_value(i64 %2, !11275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11379)
    #dbg_value(ptr %3, !11276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11379)
    #dbg_value(i64 %4, !11276, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11379)
    #dbg_declare(ptr %i.l, !11335, !DIExpression(), !11380)
    #dbg_declare(ptr %i.l, !11381, !DIExpression(), !11385)
    #dbg_declare(ptr poison, !11384, !DIExpression(), !11387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !11388
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448, !dbg !11388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !11388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !11389
    #dbg_value(ptr %0, !9758, !DIExpression(), !11391)
    #dbg_declare(ptr %i.m, !9759, !DIExpression(), !11392)
    #dbg_value(ptr %1, !9760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11391)
    #dbg_value(ptr %1, !9780, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11393)
    #dbg_value(ptr %1, !9787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11395)
    #dbg_value(i64 %2, !9760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11391)
    #dbg_value(i64 %2, !9780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11393)
    #dbg_value(i64 %2, !9787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11395)
    #dbg_value(ptr @4, !9793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11397)
    #dbg_value(i64 1, !9793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11397)
    #dbg_value(ptr @4, !9790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11399)
    #dbg_value(i64 1, !9790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11399)
    #dbg_value(ptr @4, !9793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11401)
    #dbg_value(i64 1, !9793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11401)
    #dbg_value(ptr @4, !9790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11403)
    #dbg_value(i64 1, !9790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11403)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11389 ; 11 uses
  %i.p = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.m), !dbg !11405, !noalias !11406 ; 2 uses
    #dbg_value(ptr %i.p, !9810, !DIExpression(), !11409)
  %.not.i = icmp eq ptr %i.p, null, !dbg !11411
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !11412

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.o, !9796, !DIExpression(), !11397)
  store ptr @4, ptr %i.j, align 8, !dbg !11413, !noalias !11414
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !11413
  store i64 1, ptr %i.q, align 8, !dbg !11413, !noalias !11414
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !11413
  store i8 -1, ptr %i.r, align 8, !dbg !11413, !noalias !11414
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20, !dbg !11413
  store i8 -1, ptr %.sroa.013.sroa.4.0..sroa_idx.i, align 4, !dbg !11413, !noalias !11414
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !11413
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !11413, !noalias !11414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11417, !noalias !11414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !11417, !noalias !11414
  %i.s = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.i), !dbg !11418, !noalias !11419 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11418, !noalias !11414
    #dbg_value(ptr %i.s, !9810, !DIExpression(), !11420)
  %.not52.i = icmp eq ptr %i.s, null, !dbg !11422
  br i1 %.not52.i, label %bb.c, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !11423

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %2, 0, !dbg !11424
  br i1 %i.t, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread99, label %bb.d, !dbg !11425

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread99: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11426
    #dbg_value(ptr null, !11427, !DIExpression(), !11450)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11452
  br label %bb.e, !dbg !11453

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.k, align 8, !dbg !11454, !noalias !11414
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !11454
  store i64 %2, ptr %i.u, align 8, !dbg !11454, !noalias !11414
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !11454
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 814, !dbg !11455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.v, ptr noundef nonnull align 2 dereferenceable(9) %i.w, i64 9, i1 false), !dbg !11455, !noalias !11419
  %i.x = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.k), !dbg !11456, !noalias !11457 ; 2 uses
    #dbg_value(ptr %i.x, !9810, !DIExpression(), !11458)
  %.not53.i = icmp eq ptr %i.x, null, !dbg !11460
  br i1 %.not53.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !11461

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread: ; preds = %bb.a, %bb.b, %bb.d
  %.sroa.0.0.i.ph = phi ptr [ %i.x, %bb.d ], [ %i.s, %bb.b ], [ %i.p, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11426
    #dbg_value(ptr %.sroa.0.0.i.ph, !11427, !DIExpression(), !11450)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11452
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !11453

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.d
    #dbg_value(ptr %i.o, !9796, !DIExpression(), !11401)
  %i.y = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.j), !dbg !11462, !noalias !11457 ; 2 uses
    #dbg_value(ptr %i.y, !9810, !DIExpression(), !11463)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11426
    #dbg_value(ptr %i.y, !11427, !DIExpression(), !11450)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11452
  %.not = icmp eq ptr %i.y, null, !dbg !11465
  br i1 %.not, label %bb.e, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !11453

bb.e:                                             ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread99, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 812, !dbg !11466
  %i.aa = load i8, ptr %i.z, align 4, !dbg !11466, !range !2401, !noundef !22
  %i.ab = trunc nuw i8 %i.aa to i1, !dbg !11466
  br i1 %i.ab, label %bb.f, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !11466

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread: ; preds = %bb.g, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, %bb.e
    #dbg_value(i32 10, !11285, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !11467)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.07.sroa.5.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.5.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 859
  br label %bb.h, !dbg !11468

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !11469), !dbg !11472
    #dbg_value(ptr %0, !9359, !DIExpression(), !11473)
    #dbg_declare(ptr %i.h, !9369, !DIExpression(), !11475)
    #dbg_value(ptr @16, !9378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11476)
    #dbg_value(i64 1, !9378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11476)
    #dbg_value(ptr @16, !9384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11478)
    #dbg_value(i64 1, !9384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11478)
    #dbg_value(ptr %i.o, !9381, !DIExpression(), !11476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11480, !noalias !11469
  store ptr @16, ptr %i.g, align 8, !dbg !11481, !noalias !11469
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !11481
  store i64 1, ptr %i.aj, align 8, !dbg !11481, !noalias !11469
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !11481
  store i8 -1, ptr %i.ak, align 8, !dbg !11481, !noalias !11469
  %.sroa.07.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20, !dbg !11481
  store i8 -1, ptr %.sroa.07.sroa.5.0..sroa_idx.i, align 4, !dbg !11481, !noalias !11469
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !11481
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !11481, !noalias !11469
  %i.al = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g), !dbg !11482 ; 2 uses
    #dbg_value(ptr %i.al, !9392, !DIExpression(), !11483)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11485, !noalias !11469
  %.not.i78 = icmp eq ptr %i.al, null, !dbg !11486
  br i1 %.not.i78, label %bb.g, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !11487

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !11488
  %i.an = load i8, ptr %i.am, align 8, !dbg !11488, !range !9327, !alias.scope !11469, !noundef !22
  %.not30.i = icmp eq i8 %i.an, -2, !dbg !11488
  br i1 %.not30.i, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, !dbg !11489

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 776, !dbg !11488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11475, !noalias !11469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !dbg !11475
  %i.ap = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.h), !dbg !11490 ; 2 uses
    #dbg_value(ptr %i.ap, !9392, !DIExpression(), !11491)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11493, !noalias !11469
    #dbg_value(ptr %i.ap, !11427, !DIExpression(), !11494)
  %.not72 = icmp eq ptr %i.ap, null, !dbg !11496
  br i1 %.not72, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !11497

bb.h:                                             ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread
  %.lcssa122132 = phi i64 [ %.lcssa122130, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread ], [ 0, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread ] ; 3 uses
  %i.aq = phi i64 [ %i.by, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread ], [ 0, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread ] ; 2 uses
  %.pre.i13.i.i.i.i.i124 = phi i64 [ %.pre.i13.i.i.i.i.i123, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread ], [ 0, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread ] ; 4 uses
  %i.ar = phi i1 [ %i.bm, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread ], [ false, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread ]
    #dbg_value(ptr undef, !11346, !DIExpression(), !11377)
    #dbg_value(ptr undef, !11498, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11505)
    #dbg_value(ptr undef, !11507, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11515)
    #dbg_value(ptr undef, !11517, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11524)
    #dbg_value(ptr undef, !11526, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11539)
  br i1 %i.ar, label %bb.p, label %bb.i, !dbg !11541

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !11533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11542)
    #dbg_value(i64 poison, !11533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11542)
    #dbg_value(ptr undef, !11543, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11578)
    #dbg_value(i64 0, !11580, !DIExpression(), !11585)
    #dbg_value(i64 0, !11616, !DIExpression(), !11624)
    #dbg_value(ptr %3, !11626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11645)
    #dbg_value(ptr %3, !11647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11654)
    #dbg_value(ptr %3, !11621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11656)
    #dbg_value(i64 poison, !11626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11645)
    #dbg_value(i64 poison, !11647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11654)
    #dbg_value(i64 poison, !11621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11656)
    #dbg_value(i64 %.lcssa122132, !11644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11645)
    #dbg_value(i64 %.lcssa122132, !11652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11654)
    #dbg_value(i64 %.lcssa122132, !11584, !DIExpression(), !11658)
    #dbg_value(i64 %.lcssa122132, !11622, !DIExpression(), !11656)
    #dbg_value(i64 %4, !11644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11645)
    #dbg_value(i64 %4, !11652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11654)
    #dbg_value(i64 %4, !11583, !DIExpression(), !11658)
  %i.as = icmp ult i64 %4, %.lcssa122132, !dbg !11660
  br i1 %i.as, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i, !dbg !11660

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.i, %bb.l
  %i.at = phi i64 [ %i.bh, %bb.l ], [ %.lcssa122132, %bb.i ] ; 6 uses
    #dbg_value(i64 %i.at, !11644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11645)
  %i.au = sub nuw i64 %4, %i.at, !dbg !11661      ; 4 uses
    #dbg_value(i64 %i.au, !11653, !DIExpression(), !11654)
    #dbg_value(i64 %i.au, !11623, !DIExpression(), !11656)
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %i.at, !dbg !11662 ; 2 uses
    #dbg_value(ptr %i.av, !11564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11663)
    #dbg_value(i64 %i.au, !11564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11663)
    #dbg_value(i8 10, !11570, !DIExpression(), !11664)
    #dbg_value(i8 10, !11665, !DIExpression(), !11677)
    #dbg_value(i8 10, !11679, !DIExpression(), !11685)
    #dbg_value(ptr %i.av, !11672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11677)
    #dbg_value(ptr %i.av, !11682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11685)
    #dbg_value(i64 %i.au, !11672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11677)
    #dbg_value(i64 %i.au, !11682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11685)
  %i.aw = icmp samesign ult i64 %i.au, 16, !dbg !11687
  br i1 %i.aw, label %.preheader.i.i.i.i.i.i.i, label %bb.j, !dbg !11687

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
    #dbg_value(i64 0, !11683, !DIExpression(), !11688)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %4, %i.at, !dbg !11689
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !dbg !11689

bb.j:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ax = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef range(i64 0, -9223372036854775808) %i.au), !dbg !11690, !noalias !11691 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0, !dbg !11690
  %i.az = extractvalue { i64, i64 } %i.ax, 1, !dbg !11690
    #dbg_value(i64 %i.ay, !11673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11706)
    #dbg_value(i64 %i.az, !11673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11706)
  %i.ba = trunc nuw i64 %i.ay to i1, !dbg !11707
  br i1 %i.ba, label %.loopexit.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i, !dbg !11707

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.k
  %.sroa.04.015.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.k ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i.i.i.i, !11683, !DIExpression(), !11688)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.04.015.i.i.i.i.i.i.i, !dbg !11708
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !11708, !alias.scope !11709, !noalias !11691, !noundef !22
  %i.bd = icmp eq i8 %i.bc, 10, !dbg !11708
  br i1 %i.bd, label %.loopexit.i.i.i.i.i.i, label %bb.k, !dbg !11708

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.be = add nuw nsw i64 %.sroa.04.015.i.i.i.i.i.i.i, 1, !dbg !11712 ; 2 uses
    #dbg_value(i64 %i.be, !11683, !DIExpression(), !11688)
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.au, !dbg !11689
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !dbg !11689

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.j ], [ %.sroa.04.015.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], !dbg !11713 ; 4 uses
    #dbg_value(i64 1, !11673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11706)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i.i, !11673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11706)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i.i, !11675, !DIExpression(), !11714)
  %i.bf = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.au, !dbg !11715
    #dbg_value(i1 true, !11716, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11719)
  call void @llvm.assume(i1 %i.bf), !dbg !11721
    #dbg_value(i64 1, !11673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11706)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i.i, !11673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11706)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i.i, !11572, !DIExpression(), !11722)
  %i.bg = add i64 %i.at, 1, !dbg !11723
  %i.bh = add i64 %i.bg, %.sroa.5.0.i.i.i.i.i.i.i, !dbg !11724 ; 6 uses
    #dbg_value(!DIArgList(i64 %i.bh, i64 1), !11574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !11725)
    #dbg_value(!DIArgList(i64 %i.bh, i64 1), !11644, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11726)
    #dbg_value(!DIArgList(i64 %i.bh, i64 1), !11652, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11728)
    #dbg_value(!DIArgList(i64 %i.bh, i64 1), !11584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !11731)
    #dbg_value(!DIArgList(i64 %i.bh, i64 1), !11622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !11734)
    #dbg_value(ptr %3, !11626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11726)
    #dbg_value(ptr %3, !11647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11728)
    #dbg_value(ptr %3, !11621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11734)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11644, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11726)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11652, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11728)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value), !11731)
    #dbg_value(i64 %4, !11626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11726)
    #dbg_value(i64 %4, !11647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11728)
    #dbg_value(i64 %4, !11621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11734)
    #dbg_value(i64 1, !11653, !DIExpression(), !11728)
    #dbg_value(i64 1, !11623, !DIExpression(), !11734)
  %.not51.i.i.i.i.i.i = icmp ugt i64 %i.bh, %4
  %i.bi = add i64 %i.at, %.sroa.5.0.i.i.i.i.i.i.i, !dbg !11736
  %or.cond.i.i.i.i.i.i.not = icmp ult i64 %i.bi, %4, !dbg !11736
  br i1 %or.cond.i.i.i.i.i.i.not, label %bb.m, label %bb.l, !dbg !11736

bb.l:                                             ; preds = %bb.m, %.loopexit.i.i.i.i.i.i
    #dbg_value(ptr %3, !11626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11645)
    #dbg_value(ptr %3, !11647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11654)
    #dbg_value(ptr %3, !11621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11656)
    #dbg_value(i64 %i.bh, !11644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11645)
    #dbg_value(i64 %i.bh, !11652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11654)
    #dbg_value(i64 %i.bh, !11584, !DIExpression(), !11658)
    #dbg_value(i64 %i.bh, !11622, !DIExpression(), !11656)
    #dbg_value(i64 %4, !11644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11645)
    #dbg_value(i64 %4, !11652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11654)
    #dbg_value(i64 %4, !11583, !DIExpression(), !11658)
    #dbg_value(i64 %4, !11626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11645)
    #dbg_value(i64 %4, !11647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11654)
    #dbg_value(i64 %4, !11621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11656)
    #dbg_value(!DIArgList(i64 %4, i64 %i.bh), !11653, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !11654)
    #dbg_value(!DIArgList(i64 %4, i64 %i.bh), !11623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !11656)
  br i1 %.not51.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i, !dbg !11660

bb.m:                                             ; preds = %.loopexit.i.i.i.i.i.i
    #dbg_value(!DIArgList(i64 %i.at, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11725)
    #dbg_value(!DIArgList(i64 %i.at, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11644, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11726)
    #dbg_value(!DIArgList(i64 %i.at, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11652, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11728)
    #dbg_value(!DIArgList(i64 %i.at, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11584, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11731)
    #dbg_value(!DIArgList(i64 %i.at, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11622, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !11734)
    #dbg_value(!DIArgList(ptr %3, i64 %i.at, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11737)
    #dbg_value(!DIArgList(ptr %3, i64 %i.at, i64 %.sroa.5.0.i.i.i.i.i.i.i), !11738, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11744)
    #dbg_value(i64 1, !11576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11737)
    #dbg_value(i64 1, !11738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11744)
    #dbg_value(ptr poison, !11748, !DIExpression(), !11751)
    #dbg_value(i64 1, !11583, !DIExpression(), !11585)
    #dbg_value(i64 1, !11623, !DIExpression(), !11624)
    #dbg_value(ptr undef, !11621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11624)
    #dbg_value(i64 4, !11621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11624)
  %i.bj = getelementptr i8, ptr %3, i64 %i.at, !dbg !11752
  %i.bk = getelementptr i8, ptr %i.bj, i64 %.sroa.5.0.i.i.i.i.i.i.i, !dbg !11752
    #dbg_value(ptr %i.bk, !11576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11737)
    #dbg_value(ptr %i.bk, !11738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11744)
    #dbg_value(ptr undef, !11741, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11744)
    #dbg_value(i64 1, !11741, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11744)
    #dbg_value(ptr poison, !11749, !DIExpression(), !11753)
    #dbg_value(i64 1, !11742, !DIExpression(), !11754)
    #dbg_value(i64 1, !11755, !DIExpression(), !11767)
    #dbg_value(i64 1, !11763, !DIExpression(), !11769)
    #dbg_value(ptr %i.bk, !11761, !DIExpression(), !11767)
    #dbg_value(ptr undef, !11762, !DIExpression(), !11767)
  %lhsc = load i8, ptr %i.bk, align 1, !dbg !11770
  %i.bl = icmp eq i8 %lhsc, 10, !dbg !11770
  br i1 %i.bl, label %select.unfold.i.i.i, label %bb.l, !dbg !11771

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i: ; preds = %bb.l, %.preheader.i.i.i.i.i.i.i, %bb.j, %bb.k, %bb.i
  %.lcssa122131 = phi i64 [ %4, %bb.k ], [ %.lcssa122132, %bb.i ], [ %4, %bb.j ], [ %4, %.preheader.i.i.i.i.i.i.i ], [ %i.bh, %bb.l ]
    #dbg_value(ptr undef, !11772, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11778)
  %.not.i14.i.i.i.i.i.not = icmp eq i64 %4, %.pre.i13.i.i.i.i.i124
  br i1 %.not.i14.i.i.i.i.i.not, label %bb.p, label %select.unfold.i.i.i, !dbg !11780

select.unfold.i.i.i:                              ; preds = %bb.m, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i
  %.lcssa122130 = phi i64 [ %.lcssa122131, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i ], [ %i.bh, %bb.m ]
  %.pre.i13.i.i.i.i.i123 = phi i64 [ %.pre.i13.i.i.i.i.i124, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i ], [ %i.bh, %bb.m ]
  %i.bm = phi i1 [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i ], [ false, %bb.m ]
  %.pn = phi i64 [ %4, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i ], [ %i.bh, %bb.m ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn, %.pre.i13.i.i.i.i.i124, !dbg !11542 ; 4 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.pre.i13.i.i.i.i.i124, !dbg !11542 ; 4 uses
  %i.bn = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i, 0, !dbg !11781
  %i.bo = insertvalue { ptr, i64 } %i.bn, i64 %.sroa.4.1.i.i.i.i.i, 1, !dbg !11781 ; 2 uses
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11794)
    #dbg_value(ptr undef, !11791, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !11794)
    #dbg_value(ptr undef, !11796, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !11807)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11794)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11809)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11809)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11801, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11807)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11801, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11807)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11819)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11819)
    #dbg_value(ptr poison, !11816, !DIExpression(), !11819)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11821)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11821)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11836)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11836)
    #dbg_value(ptr poison, !11829, !DIExpression(), !11836)
    #dbg_value(i32 10, !11838, !DIExpression(), !11844)
    #dbg_value(i32 10, !11847, !DIExpression(), !11854)
    #dbg_value(i32 13, !11838, !DIExpression(), !11856)
    #dbg_value(i32 13, !11847, !DIExpression(), !11858)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11861)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11862)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11844)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11854)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11856)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11858)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11861)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11862)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11844)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11854)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11856)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11863, !noalias !11864
  store i32 10, ptr %i.f, align 4, !dbg !11863, !noalias !11864
    #dbg_value(ptr %i.f, !11869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11878)
    #dbg_value(ptr %i.f, !11880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11884)
    #dbg_value(i64 1, !11869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11878)
    #dbg_value(i64 1, !11880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11884)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11878)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11884)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11878)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i.i, !11883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11884)
  %i.bp = call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1), !dbg !11886, !noalias !11887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11888, !noalias !11864
  br i1 %i.bp, label %bb.n, label %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, !dbg !11889

bb.n:                                             ; preds = %select.unfold.i.i.i
  %i.bq = add i64 %.sroa.4.1.i.i.i.i.i, -1, !dbg !11890 ; 2 uses
  %i.br = insertvalue { ptr, i64 } %i.bo, i64 %i.bq, 1, !dbg !11891
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11861)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11862)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11844)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11854)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11856)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11858)
    #dbg_value(i64 %i.bq, !11830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11861)
    #dbg_value(i64 %i.bq, !11832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11862)
    #dbg_value(i64 %i.bq, !11843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11844)
    #dbg_value(i64 %i.bq, !11853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11854)
    #dbg_value(i64 %i.bq, !11843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11856)
    #dbg_value(i64 %i.bq, !11853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11892, !noalias !11864
  store i32 13, ptr %i.e, align 4, !dbg !11892, !noalias !11864
    #dbg_value(ptr %i.e, !11869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11893)
    #dbg_value(ptr %i.e, !11880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11895)
    #dbg_value(i64 1, !11869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11893)
    #dbg_value(i64 1, !11880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11895)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11893)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i.i, !11883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11895)
    #dbg_value(i64 %i.bq, !11875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11893)
    #dbg_value(i64 %i.bq, !11883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11895)
  %i.bs = call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1), !dbg !11897, !noalias !11887 ; 2 uses
  %i.bt = add i64 %.sroa.4.1.i.i.i.i.i, -2, !dbg !11898
  %.sroa.0.0.i29.i.i.i.i.i = select i1 %i.bs, ptr %.sroa.0.1.i.i.i.i.i, ptr null, !dbg !11898
  %i.bu = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i29.i.i.i.i.i, 0, !dbg !11899
  %i.bv = insertvalue { ptr, i64 } %i.bu, i64 %i.bt, 1, !dbg !11899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11900, !noalias !11864
  %..i.i.i.i.i = select i1 %i.bs, { ptr, i64 } %i.bv, { ptr, i64 } %i.br, !dbg !11901
  br label %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, !dbg !11901

_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.n, %select.unfold.i.i.i
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i, %bb.n ], [ %i.bo, %select.unfold.i.i.i ], !dbg !11902 ; 2 uses
    #dbg_value(ptr poison, !11853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11854)
    #dbg_value(ptr poison, !11843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11844)
    #dbg_value(ptr poison, !11832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11862)
    #dbg_value(ptr poison, !11830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11861)
    #dbg_value(i64 poison, !11853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11854)
    #dbg_value(i64 poison, !11843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11844)
    #dbg_value(i64 poison, !11832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11862)
    #dbg_value(i64 poison, !11830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11861)
  %i.bw = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0, !dbg !11903 ; 2 uses
    #dbg_value(ptr %i.bw, !11904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11928)
    #dbg_value(i64 poison, !11904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11928)
  %.not.i80 = icmp eq ptr %i.bw, null, !dbg !11930
  br i1 %.not.i80, label %bb.p, label %bb.o, !dbg !11931

bb.o:                                             ; preds = %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %i.bx = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1, !dbg !11903
    #dbg_value(i64 %i.bx, !11904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11928)
    #dbg_value(ptr %i.bw, !11369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11932)
    #dbg_value(i64 %i.bx, !11369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11932)
    #dbg_value(i64 %i.aq, !11375, !DIExpression(), !11933)
  %i.by = add i64 %i.aq, 1, !dbg !11934
    #dbg_value(i64 %i.aq, !11328, !DIExpression(), !11935)
    #dbg_value(ptr %i.bw, !11330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11935)
    #dbg_value(ptr %i.bw, !11936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11939)
    #dbg_value(i64 %i.bx, !11330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11935)
    #dbg_value(i64 %i.bx, !11936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11939)
  %.not75 = icmp eq i64 %i.aq, 0, !dbg !11941
  br i1 %.not75, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread, label %bb.s, !dbg !11941

bb.p:                                             ; preds = %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsjfnSKV9Rz3v_3h3i.exit.i.i.i.i.i, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !11942), !dbg !11945
    #dbg_value(ptr %0, !9359, !DIExpression(), !11946)
    #dbg_declare(ptr %i.d, !9369, !DIExpression(), !11948)
    #dbg_value(ptr @16, !9378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11949)
    #dbg_value(i64 1, !9378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11949)
    #dbg_value(ptr @16, !9384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11951)
    #dbg_value(i64 1, !9384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11951)
    #dbg_value(ptr %i.o, !9381, !DIExpression(), !11949)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11953, !noalias !11942
  store ptr @16, ptr %i.c, align 8, !dbg !11954, !noalias !11942
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11954
  store i64 1, ptr %i.bz, align 8, !dbg !11954, !noalias !11942
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11954
  store i8 -1, ptr %i.ca, align 8, !dbg !11954, !noalias !11942
  %.sroa.07.sroa.5.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.c, i64 20, !dbg !11954
  store i8 -1, ptr %.sroa.07.sroa.5.0..sroa_idx.i74, align 4, !dbg !11954, !noalias !11942
  %.sroa.5.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !11954
  store i8 0, ptr %.sroa.5.0..sroa_idx.i82, align 8, !dbg !11954, !noalias !11942
  %i.cb = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c), !dbg !11955 ; 2 uses
    #dbg_value(ptr %i.cb, !9392, !DIExpression(), !11956)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11958, !noalias !11942
  %.not.i83 = icmp eq ptr %i.cb, null, !dbg !11959
  br i1 %.not.i83, label %bb.q, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !11960

bb.q:                                             ; preds = %bb.p
  %i.cc = load i8, ptr %i.ae, align 8, !dbg !11961, !range !9327, !alias.scope !11942, !noundef !22
  %.not30.i85 = icmp eq i8 %i.cc, -2, !dbg !11961
  br i1 %.not30.i85, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, label %bb.r, !dbg !11962

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11948, !noalias !11942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !dbg !11948
  %i.cd = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d), !dbg !11963
    #dbg_value(ptr %i.cd, !9392, !DIExpression(), !11964)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11966, !noalias !11942
  br label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !11967

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104: ; preds = %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread, %bb.s, %bb.r, %bb.q, %bb.p, %bb.f, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit
  %.sroa.0.0 = phi ptr [ %i.ap, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit ], [ %i.y, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit ], [ null, %bb.q ], [ %i.al, %bb.f ], [ %.sroa.0.0.i.ph, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE24print_prompt_with_prefixCsjfnSKV9Rz3v_3h3i.exit.thread ], [ %i.cb, %bb.p ], [ %i.cd, %bb.r ], [ %i.ch, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91 ], [ %i.ce, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread ], [ %i.cf, %bb.s ], !dbg !11379
  ret ptr %.sroa.0.0, !dbg !11968

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread: ; preds = %bb.t, %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91, %bb.o
  store ptr %i.bw, ptr %i.l, align 8, !dbg !11969
  store i64 %i.bx, ptr %i.ag, align 8, !dbg !11969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 1 dereferenceable(9) %i.ai, i64 9, i1 false), !dbg !11970
  %i.ce = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.l), !dbg !11971 ; 2 uses
    #dbg_value(ptr %i.ce, !11427, !DIExpression(), !11972)
  %.not77 = icmp eq ptr %i.ce, null, !dbg !11974
  br i1 %.not77, label %bb.h, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !11975

bb.s:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !11976), !dbg !11979
    #dbg_value(ptr %0, !9359, !DIExpression(), !11980)
    #dbg_declare(ptr %i.b, !9369, !DIExpression(), !11982)
    #dbg_value(ptr @16, !9378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11983)
    #dbg_value(i64 1, !9378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11983)
    #dbg_value(ptr @16, !9384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11985)
    #dbg_value(i64 1, !9384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11985)
    #dbg_value(ptr %i.o, !9381, !DIExpression(), !11983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11987, !noalias !11976
  store ptr @16, ptr %i.a, align 8, !dbg !11988, !noalias !11976
  store i64 1, ptr %i.ac, align 8, !dbg !11988, !noalias !11976
  store i8 -1, ptr %i.ad, align 8, !dbg !11988, !noalias !11976
  store i8 -1, ptr %.sroa.07.sroa.5.0..sroa_idx.i80, align 4, !dbg !11988, !noalias !11976
  store i8 0, ptr %.sroa.5.0..sroa_idx.i87, align 8, !dbg !11988, !noalias !11976
  %i.cf = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !dbg !11989 ; 2 uses
    #dbg_value(ptr %i.cf, !9392, !DIExpression(), !11990)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11992, !noalias !11976
  %.not.i88 = icmp eq ptr %i.cf, null, !dbg !11993
  br i1 %.not.i88, label %bb.t, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !11994

bb.t:                                             ; preds = %bb.s
  %i.cg = load i8, ptr %i.ae, align 8, !dbg !11995, !range !9327, !alias.scope !11976, !noundef !22
  %.not30.i90 = icmp eq i8 %i.cg, -2, !dbg !11995
  br i1 %.not30.i90, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91, !dbg !11996

_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11982, !noalias !11976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !dbg !11982
  %i.ch = call noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b), !dbg !11997 ; 2 uses
    #dbg_value(ptr %i.ch, !9392, !DIExpression(), !11998)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12000, !noalias !11976
    #dbg_value(ptr %i.ch, !11427, !DIExpression(), !12001)
  %.not76 = icmp eq ptr %i.ch, null, !dbg !12003
  br i1 %.not76, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit91.thread, label %_RNvMNtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB2_7BackendNtNtNtB6_8terminal9crossterm18CrosstermKeyReaderNtBT_17CrosstermTerminalE8new_lineCsjfnSKV9Rz3v_3h3i.exit.thread104, !dbg !12004
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCs75DsgRCn4Cn_20unicode_segmentation8graphemeNtB5_18GraphemeIncompleteNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !12005 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !12011, !DIExpression(), !12015)
    #dbg_value(ptr %1, !12012, !DIExpression(), !12015)
  %i.b = load i64, ptr %0, align 8, !dbg !12016, !range !12017, !noundef !22
  switch i64 %i.b, label %default.unreachable3 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ], !dbg !12016

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12018
    #dbg_value(ptr %i.c, !12013, !DIExpression(), !12019)
  store ptr %i.c, ptr %i.a, align 8, !dbg !12018
    #dbg_value(ptr %i.a, !12013, !DIExpression(DW_OP_deref), !12019)
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38), !dbg !12020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12021
  br label %bb.f, !dbg !12021

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 9), !dbg !12016
  br label %bb.f, !dbg !12016

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 9), !dbg !12016
  br label %bb.f, !dbg !12016

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 13), !dbg !12016
  br label %bb.f, !dbg !12016

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i1 %.sroa.0.0.in, !dbg !12022
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledRRReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledReECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldjINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEuNCNvXs_NtNtNtB2C_7prompts6select6promptINtB3z_12SelectPromptB3o_EINtNtB3D_6prompt6PromptINtNtNtB2C_2ui7backend7BackendNtNtNtB2C_8terminal9crossterm18CrosstermKeyReaderNtB5o_17CrosstermTerminalEE6render0NCINvNvB1v_8for_each4callB2x_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7k_3VecB2x_E14extend_trustedINtB2e_3MapBP_B3s_EE0E0E0ECsjfnSKV9Rz3v_3h3i(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsjfnSKV9Rz3v_3h3i12recordreplay4qlog10map_header(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef readonly captures(address, read_provenance), i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs8Nb2mar7w9E_7inquire5inputNtB2_5Input10pre_cursor(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledcECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB6_13FrameRendererNtNtNtBa_8terminal9crossterm17CrosstermTerminalE12write_styledNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs8Nb2mar7w9E_7inquire5utils9int_log10jECsjfnSKV9Rz3v_3h3i(i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 16) i8 @_RNvMs4_NtCs75DsgRCn4Cn_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef align 8 dereferenceable(88), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables25is_transparent_zero_width(i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB4_18CrosstermKeyReaderNtNtNtB8_2ui12input_reader11InputReader8read_key(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE11start_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE20finish_current_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
end_hunk_1
