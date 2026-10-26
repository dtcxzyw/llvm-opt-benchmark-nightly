Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.14?download=true
inline.NumInlined: 305
inline.NumDeleted: 150
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(i64 %i.ap, !2902, !DIExpression(), !9900)
  %i.as = add i64 %i.ap, %i.aq, !dbg !10015       ; 2 uses
    #dbg_value(i64 %i.an, !2897, !DIExpression(), !9854)
    #dbg_value(i64 %i.an, !2892, !DIExpression(), !9902)
    #dbg_value(i32 13, !2894, !DIExpression(), !9902)
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13), !dbg !10016
  %i.au = xor i64 %i.at, %i.ar, !dbg !10005       ; 3 uses
    #dbg_value(i64 %i.ap, !2897, !DIExpression(), !9856)
    #dbg_value(i64 %i.ap, !2892, !DIExpression(), !9904)
    #dbg_value(i32 16, !2894, !DIExpression(), !9904)
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16), !dbg !10017
  %i.aw = xor i64 %i.av, %i.as, !dbg !10007       ; 3 uses
    #dbg_value(i64 %i.ar, !2897, !DIExpression(), !9858)
    #dbg_value(i64 %i.ar, !2892, !DIExpression(), !9906)
    #dbg_value(i32 32, !2894, !DIExpression(), !9906)
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32), !dbg !10018
    #dbg_value(i64 %i.as, !2901, !DIExpression(), !9908)
    #dbg_value(i64 %i.au, !2902, !DIExpression(), !9908)
  %i.ay = add i64 %i.au, %i.as, !dbg !10019       ; 3 uses
    #dbg_value(i64 %i.ax, !2901, !DIExpression(), !9910)
    #dbg_value(i64 %i.aw, !2902, !DIExpression(), !9910)
  %i.az = add i64 %i.aw, %i.ax, !dbg !10020       ; 2 uses
    #dbg_value(i64 %i.au, !2897, !DIExpression(), !9860)
    #dbg_value(i64 %i.au, !2892, !DIExpression(), !9912)
    #dbg_value(i32 17, !2894, !DIExpression(), !9912)
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17), !dbg !10021
  %i.bb = xor i64 %i.ba, %i.ay, !dbg !10007       ; 3 uses
    #dbg_value(i64 %i.aw, !2897, !DIExpression(), !9862)
    #dbg_value(i64 %i.aw, !2892, !DIExpression(), !9914)
    #dbg_value(i32 21, !2894, !DIExpression(), !9914)
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21), !dbg !10022
  %i.bd = xor i64 %i.bc, %i.az, !dbg !10005       ; 3 uses
    #dbg_value(i64 %i.ay, !2897, !DIExpression(), !9864)
    #dbg_value(i64 %i.ay, !2892, !DIExpression(), !9916)
    #dbg_value(i32 32, !2894, !DIExpression(), !9916)
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32), !dbg !10023
    #dbg_value(i64 %i.az, !2901, !DIExpression(), !9918)
    #dbg_value(i64 %i.bb, !2902, !DIExpression(), !9918)
  %i.bf = add i64 %i.bb, %i.az, !dbg !10024
    #dbg_value(i64 %i.be, !2901, !DIExpression(), !9920)
    #dbg_value(i64 %i.bd, !2902, !DIExpression(), !9920)
  %i.bg = add i64 %i.bd, %i.be, !dbg !10025       ; 2 uses
    #dbg_value(i64 %i.bb, !2897, !DIExpression(), !9866)
    #dbg_value(i64 %i.bb, !2892, !DIExpression(), !9922)
    #dbg_value(i32 13, !2894, !DIExpression(), !9922)
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13), !dbg !10026
  %i.bi = xor i64 %i.bh, %i.bf, !dbg !10005       ; 3 uses
    #dbg_value(i64 %i.bd, !2897, !DIExpression(), !9868)
    #dbg_value(i64 %i.bd, !2892, !DIExpression(), !9924)
    #dbg_value(i32 16, !2894, !DIExpression(), !9924)
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16), !dbg !10027
  %i.bk = xor i64 %i.bj, %i.bg, !dbg !10007       ; 2 uses
    #dbg_value(i64 %i.bf, !2897, !DIExpression(), !9870)
    #dbg_value(i64 %i.bf, !2892, !DIExpression(), !9926)
    #dbg_value(i32 32, !2894, !DIExpression(), !9926)
    #dbg_value(i64 %i.bg, !2901, !DIExpression(), !9928)
    #dbg_value(i64 %i.bi, !2902, !DIExpression(), !9928)
  %i.bl = add i64 %i.bi, %i.bg, !dbg !10028       ; 3 uses
    #dbg_value(i64 poison, !2901, !DIExpression(), !9930)
    #dbg_value(i64 %i.bk, !2902, !DIExpression(), !9930)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9807)
    #dbg_value(i64 %i.bi, !2897, !DIExpression(), !9872)
    #dbg_value(i64 %i.bi, !2892, !DIExpression(), !9932)
    #dbg_value(i32 17, !2894, !DIExpression(), !9932)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17), !dbg !10029
    #dbg_value(!DIArgList(i64 %i.bm, i64 %i.bl), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !9807)
    #dbg_value(i64 %i.bk, !2897, !DIExpression(), !9874)
    #dbg_value(i64 %i.bk, !2892, !DIExpression(), !9934)
    #dbg_value(i32 21, !2894, !DIExpression(), !9934)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21), !dbg !10030
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !9807)
    #dbg_value(i64 %i.bl, !2897, !DIExpression(), !9876)
    #dbg_value(i64 %i.bl, !2892, !DIExpression(), !9936)
    #dbg_value(i32 32, !2894, !DIExpression(), !9936)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32), !dbg !10031
    #dbg_value(i64 %i.bo, !2879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9807)
  %i.bp = xor i64 %i.bn, %i.bm, !dbg !10032
  %i.bq = xor i64 %i.bp, %i.bo, !dbg !10032
  %i.br = xor i64 %i.bq, %i.bl, !dbg !10032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10033
  ret i64 %i.br, !dbg !10034
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE11start_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10038 {
bb.a:
    #dbg_value(ptr %0, !10041, !DIExpression(), !10047)
  %i.a = tail call fastcc { i16, i16 } @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE21refresh_terminal_sizeCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0), !dbg !10055 ; 2 uses
  %i.b = extractvalue { i16, i16 } %i.a, 0, !dbg !10055 ; 2 uses
  %i.c = extractvalue { i16, i16 } %i.a, 1, !dbg !10055 ; 2 uses
    #dbg_value(i16 %i.b, !10042, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10048)
    #dbg_value(i16 %i.c, !10042, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10048)
    #dbg_value(ptr %0, !10049, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10053)
    #dbg_value(i64 -9223372036854775808, !10050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10054)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10056 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !dbg !10056 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 5 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !10056
  %i.e = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !10056
  %i.f = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !10056
  %i.g = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !10056
  %i.h = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056 ; 3 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !10056
  %i.i = load <8 x i16>, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10056 ; 3 uses
  %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !10056
  %i.j = load <4 x i16>, ptr %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 257, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 370, !dbg !10056 ; 2 uses
  %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 374, !dbg !10056 ; 2 uses
  %i.k = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807, !dbg !10052
  tail call void @llvm.assume(i1 %i.k), !dbg !10052
  %i.l = xor i64 %.sroa.0.0.copyload, -9223372036854775808, !dbg !10052
  %i.m = icmp slt i64 %.sroa.0.0.copyload, 0, !dbg !10052
  %i.n = select i1 %i.m, i64 %i.l, i64 1, !dbg !10052 ; 16 uses
  %i.o = insertelement <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 0, i16 0>, i16 %i.b, i64 4, !dbg !10048
  %i.p = insertelement <8 x i16> %i.o, i16 %i.c, i64 5, !dbg !10048
  %i.q = insertelement <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, i16 %i.b, i64 0, !dbg !10048
  %i.r = insertelement <4 x i16> %i.q, i16 %i.c, i64 1, !dbg !10048 ; 2 uses
  %i.s = insertelement <4 x i64> <i64 poison, i64 8317987319222330741, i64 7816392313619706465, i64 7237128888997146477>, i64 %i.n, i64 0, !dbg !10048
  %i.t = insertelement <4 x i64> <i64 8387220255154660723, i64 poison, i64 poison, i64 poison>, i64 %i.n, i64 1, !dbg !10048
  %i.u = shufflevector <4 x i64> %i.t, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>, !dbg !10048
  switch i64 %i.n, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !10057

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !10052

bb.c:                                             ; preds = %bb.a
  %.sroa.7.sroa.13.sroa.12.0.copyload = load i16, ptr %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10056
  %.sroa.7.sroa.13.sroa.11.sroa.6.0.copyload = load i32, ptr %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10056
  %.sroa.7.sroa.13.sroa.11.sroa.0.0.copyload = load i16, ptr %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %i.v = load <4 x i16>, ptr %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %i.w = load <4 x i64>, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %i.x = load <4 x i64>, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0.copyload = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0.copyload = load i56, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0.copyload = load i8, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0.copyload = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10056
  %i.y = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 48, !dbg !10056
  %i.z = trunc nuw i64 %i.y to i16, !dbg !10056
  %i.aa = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 32, !dbg !10056
  %i.ab = trunc i64 %i.aa to i16, !dbg !10056
  %i.ac = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 16, !dbg !10056
  %i.ad = trunc i64 %i.ac to i16, !dbg !10056
  %i.ae = trunc i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload to i16, !dbg !10056
  %i.af = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !10048
  %i.ag = insertelement <8 x i16> %i.af, i16 %i.ae, i64 0, !dbg !10048
  %i.ah = insertelement <8 x i16> %i.ag, i16 %i.ad, i64 1, !dbg !10048
  %i.ai = insertelement <8 x i16> %i.ah, i16 %i.ab, i64 2, !dbg !10048
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.z, i64 3, !dbg !10048
  %1 = shufflevector <8 x i16> %i.e, <8 x i16> %i.f, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>, !dbg !10048
  %2 = shufflevector <8 x i16> %i.f, <8 x i16> %i.g, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>, !dbg !10048
  %3 = shufflevector <8 x i16> %i.g, <8 x i16> %i.h, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>, !dbg !10048
  %4 = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>, !dbg !10048
  %i.ak = shufflevector <8 x i16> %i.i, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !10048
  %i.al = shufflevector <4 x i16> %i.ak, <4 x i16> %i.j, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !10048
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, !dbg !10058

bb.d:                                             ; preds = %bb.a
  %i.am = shufflevector <4 x i16> %i.j, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !10048
  %i.an = shufflevector <8 x i16> %i.am, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !10048
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, !dbg !10059

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 1, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 1095216660735, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.0.0.copyload, %bb.c ], [ 8, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 8, %bb.a ], !dbg !10048
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0.copyload, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0.copyload, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.11.sroa.0.0 = phi i16 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.11.sroa.0.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.11.sroa.6.0 = phi i32 [ undef, %bb.d ], [ %.sroa.7.sroa.13.sroa.11.sroa.6.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0 = phi i64 [ 1095216660735, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0.copyload, %bb.c ], [ 1095216660735, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0 = phi i8 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0.copyload, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.12.0 = phi i16 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.12.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0 = phi i56 [ undef, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10048
  %.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.0.0.copyload, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ], [ %i.n, %bb.a ], !dbg !10048
  %i.ao = phi <8 x i16> [ %i.e, %bb.d ], [ %i.aj, %bb.c ], [ <i16 25973, i16 28787, i16 28005, i16 29551, i16 29281, i16 28261, i16 26469, i16 27769>, %bb.a ], !dbg !10048
  %i.ap = phi <8 x i16> [ %i.f, %bb.d ], [ %1, %bb.c ], [ <i16 28525, i16 28260, i16 29281, i16 25711, i16 25971, i16 31092, i16 25698, i16 29797>, %bb.a ], !dbg !10048
  %i.aq = phi <8 x i16> [ %i.g, %bb.d ], [ %2, %bb.c ], [ zeroinitializer, %bb.a ], !dbg !10048
  %i.ar = phi <8 x i16> [ %i.h, %bb.d ], [ %3, %bb.c ], [ zeroinitializer, %bb.a ], !dbg !10048
  %i.as = phi <8 x i16> [ %i.i, %bb.d ], [ %4, %bb.c ], [ %i.p, %bb.a ], !dbg !10048
  %i.at = phi <8 x i16> [ %i.an, %bb.d ], [ %i.al, %bb.c ], [ <i16 0, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0, i16 0>, %bb.a ], !dbg !10048
  %i.au = phi <4 x i16> [ %i.r, %bb.d ], [ %i.v, %bb.c ], [ %i.r, %bb.a ], !dbg !10048
  %i.av = phi <4 x i64> [ <i64 0, i64 8317987319222330741, i64 7816392313619706465, i64 7237128888997146477>, %bb.d ], [ %i.x, %bb.c ], [ %i.s, %bb.a ], !dbg !10048
  %i.aw = phi <4 x i64> [ <i64 8387220255154660723, i64 0, i64 0, i64 0>, %bb.d ], [ %i.w, %bb.c ], [ %i.u, %bb.a ], !dbg !10048
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !10056
  %.sroa.7.sroa.0.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !10056
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !10056
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !10056
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10056
  store i64 %.sroa.0.0, ptr %i.d, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store <8 x i16> %i.ao, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store <8 x i16> %i.ap, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store <8 x i16> %i.aq, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store <8 x i16> %i.ar, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store <8 x i16> %i.as, ptr %.sroa.7.sroa.0.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10060
  store <8 x i16> %i.at, ptr %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10060
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i8 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i56 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !10060
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store <4 x i64> %i.av, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store <4 x i64> %i.aw, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store <4 x i16> %i.au, ptr %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i16 %.sroa.7.sroa.13.sroa.11.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10060
  store i32 %.sroa.7.sroa.13.sroa.11.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10060
  store i16 %.sroa.7.sroa.13.sroa.12.0, ptr %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10060
  ret ptr null, !dbg !10061
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE14move_cursor_toCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #0 !dbg !417 {
bb.a:
    #dbg_value(ptr %0, !2920, !DIExpression(), !10062)
    #dbg_value(i16 %1, !2921, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10062)
    #dbg_value(i16 %2, !2921, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10062)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !10078 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !dbg !10078, !noundef !1315 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 378, !dbg !10078 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !dbg !10078, !noundef !1315 ; 3 uses
    #dbg_value(i16 %i.b, !2922, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10063)
    #dbg_value(i16 %i.d, !2922, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10063)
    #dbg_value(ptr poison, !2933, !DIExpression(), !10065)
    #dbg_value(ptr poison, !2937, !DIExpression(), !10066)
  %i.e = tail call i8 @llvm.ucmp.i8.i16(i16 %i.b, i16 %1), !dbg !10079
  switch i8 %i.e, label %bb.b [
    i8 -1, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
  ], !dbg !10080

bb.b:                                             ; preds = %bb.d, %bb.a
  unreachable, !dbg !10081

bb.c:                                             ; preds = %bb.a
  %i.f = sub i16 %1, %i.b, !dbg !10082
  %i.g = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_down(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.f), !dbg !10083 ; 2 uses
    #dbg_value(ptr %i.g, !2940, !DIExpression(), !10068)
  %.not29 = icmp eq ptr %i.g, null, !dbg !10084
  br i1 %.not29, label %bb.d, label %bb.i, !dbg !10085

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.a
    #dbg_value(ptr poison, !2933, !DIExpression(), !10070)
    #dbg_value(ptr poison, !2937, !DIExpression(), !10071)
  %i.h = tail call i8 @llvm.ucmp.i8.i16(i16 %i.d, i16 %2), !dbg !10086
  switch i8 %i.h, label %bb.b [
    i8 -1, label %bb.f
    i8 0, label %bb.g
    i8 1, label %bb.h
  ], !dbg !10087

bb.e:                                             ; preds = %bb.a
  %i.i = sub i16 %i.b, %1, !dbg !10088
  %i.j = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal9cursor_up(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.i), !dbg !10089 ; 2 uses
    #dbg_value(ptr %i.j, !2940, !DIExpression(), !10073)
  %.not = icmp eq ptr %i.j, null, !dbg !10090
  br i1 %.not, label %bb.d, label %bb.i, !dbg !10091

bb.f:                                             ; preds = %bb.d
  %i.k = sub i16 %2, %i.d, !dbg !10092
  %i.l = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal12cursor_right(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.k), !dbg !10093 ; 2 uses
    #dbg_value(ptr %i.l, !2940, !DIExpression(), !10075)
  %.not31 = icmp eq ptr %i.l, null, !dbg !10094
  br i1 %.not31, label %bb.g, label %bb.i, !dbg !10095

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.d
  store i16 %1, ptr %i.a, align 8, !dbg !10096
  store i16 %2, ptr %i.c, align 2, !dbg !10096
  br label %bb.i, !dbg !10097

bb.h:                                             ; preds = %bb.d
  %i.m = sub i16 %i.d, %2, !dbg !10098
  %i.n = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_left(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.m), !dbg !10099 ; 2 uses
    #dbg_value(ptr %i.n, !2940, !DIExpression(), !10077)
  %.not30 = icmp eq ptr %i.n, null, !dbg !10100
  br i1 %.not30, label %bb.g, label %bb.i, !dbg !10101

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.c, %bb.g
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.e ], [ null, %bb.g ], [ %i.l, %bb.f ], [ %i.n, %bb.h ], !dbg !10063
  ret ptr %.sroa.0.0, !dbg !10097
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE20finish_current_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10147 {
bb.a:
  %.sroa.551 = alloca [176 x i8], align 8         ; 5 uses
    #dbg_value(ptr poison, !10337, !DIExpression(), !10356)
    #dbg_value(ptr poison, !10337, !DIExpression(), !10359)
    #dbg_value(ptr poison, !10360, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10370)
    #dbg_value(ptr poison, !10360, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10370)
    #dbg_value(ptr poison, !10385, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10388)
    #dbg_value(ptr poison, !10385, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10388)
    #dbg_value(ptr poison, !10381, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10389)
    #dbg_value(ptr poison, !10381, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10389)
  %i.a = alloca [352 x i8], align 8               ; 9 uses
  %i.b = alloca [176 x i8], align 8               ; 14 uses
  %i.c = alloca [176 x i8], align 8               ; 10 uses
    #dbg_value(ptr %0, !10271, !DIExpression(), !10390)
    #dbg_value(i1 %1, !10272, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10390)
    #dbg_declare(ptr %i.c, !10273, !DIExpression(), !10391)
    #dbg_declare(ptr %i.b, !10274, !DIExpression(), !10392)
    #dbg_value(i64 1, !10393, !DIExpression(), !10400)
    #dbg_value(i16 1, !10401, !DIExpression(), !10407)
    #dbg_value(i64 1, !10408, !DIExpression(), !10415)
    #dbg_value(i64 1, !10408, !DIExpression(), !10418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10423
    #dbg_value(ptr %0, !10419, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10424)
    #dbg_value(ptr %0, !10425, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10429)
    #dbg_value(i64 -9223372036854775808, !10426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10430)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10736 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.a, ptr noundef nonnull align 8 dereferenceable(352) %i.d, i64 352, i1 false), !dbg !10736
  store i64 -9223372036854775808, ptr %i.d, align 8, !dbg !10737
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10737 ; 2 uses
  %i.e = load i64, ptr %i.a, align 8, !dbg !10423, !range !1871, !noundef !1315 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775807, !dbg !10423
  tail call void @llvm.assume(i1 %i.f), !dbg !10423
  %i.g = icmp sgt i64 %i.e, -1, !dbg !10423
  %.sink2.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 176, !dbg !10738 ; 2 uses
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, label %bb.av, !dbg !10738

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false), !dbg !10740
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !10741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %i.h, i64 176, i1 false), !dbg !10741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10743
  invoke void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererNtB4_10FrameState6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.b)
          to label %bb.c unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10744

bb.b:                                             ; preds = %bb.w
  %i.i = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %i.d, align 8, !dbg !10745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.456.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.551, i64 176, i1 false), !dbg !10745
  br label %bb.ar, !dbg !10746

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph230, %.lr.ph233, %.loopexit, %bb.an, %._crit_edge234, %bb.ae, %bb.n, %bb.k, %bb.j, %bb.i, %bb.g, %bb.u, %bb.r, %bb.q, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit
  %lpad.loopexit.split-lp241 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer10FrameStateECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(176) %i.b) #26
          to label %bb.ar unwind label %bb.au, !dbg !10746

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(ptr %i.c, !10432, !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value), !10435)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 166, !dbg !10747
  %i.k = load i16, ptr %i.j, align 2, !dbg !10747, !noundef !1315
    #dbg_value(i16 %i.k, !10436, !DIExpression(), !10440)
    #dbg_value(ptr %i.b, !10432, !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value), !10442)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 166, !dbg !10748
  %i.m = load i16, ptr %i.l, align 2, !dbg !10748, !noundef !1315
    #dbg_value(i16 %i.m, !10437, !DIExpression(), !10440)
    #dbg_value(ptr undef, !10443, !DIExpression(DW_OP_deref), !10176)
    #dbg_value(ptr undef, !10444, !DIExpression(DW_OP_deref), !10176)
  %..i = call noundef i16 @llvm.umax.i16(i16 %i.m, i16 %i.k), !dbg !10749 ; 2 uses
    #dbg_value(i16 %..i, !10277, !DIExpression(), !10448)
  %i.n = invoke noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_hide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10750 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.n, !10449, !DIExpression(), !10476)
  %.not = icmp eq ptr %i.n, null, !dbg !10751
  br i1 %.not, label %bb.e, label %_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE14move_cursor_toCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !10752
end_hunk_0
