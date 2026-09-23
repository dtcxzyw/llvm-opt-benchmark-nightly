Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.14?download=true
inline.NumInlined: 305
inline.NumDeleted: 150
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(i32 13, !2896, !DIExpression(), !9856)
    #dbg_value(i32 16, !2896, !DIExpression(), !9858)
    #dbg_value(i32 32, !2896, !DIExpression(), !9860)
    #dbg_value(i32 17, !2896, !DIExpression(), !9862)
    #dbg_value(i32 21, !2896, !DIExpression(), !9864)
    #dbg_value(i32 32, !2896, !DIExpression(), !9866)
    #dbg_value(i32 13, !2896, !DIExpression(), !9868)
    #dbg_value(i32 16, !2896, !DIExpression(), !9870)
    #dbg_value(i32 32, !2896, !DIExpression(), !9872)
    #dbg_value(i32 17, !2896, !DIExpression(), !9874)
    #dbg_value(i32 21, !2896, !DIExpression(), !9876)
    #dbg_value(i32 32, !2896, !DIExpression(), !9878)
    #dbg_value(i64 %i.ab, !2901, !DIExpression(), !9880)
    #dbg_value(i64 %i.x, !2902, !DIExpression(), !9880)
  %i.ad = add i64 %i.ab, %i.x, !dbg !10004        ; 3 uses
    #dbg_value(i64 %i.ac, !2901, !DIExpression(), !9882)
    #dbg_value(i64 %i.z, !2902, !DIExpression(), !9882)
  %i.ae = add i64 %i.z, %i.ac, !dbg !10005        ; 2 uses
    #dbg_value(i64 %i.x, !2897, !DIExpression(), !9844)
    #dbg_value(i64 %i.x, !2892, !DIExpression(), !9884)
    #dbg_value(i32 13, !2894, !DIExpression(), !9884)
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13), !dbg !10006
  %i.ag = xor i64 %i.ad, %i.af, !dbg !10007       ; 3 uses
    #dbg_value(i64 %i.z, !2897, !DIExpression(), !9846)
    #dbg_value(i64 %i.z, !2892, !DIExpression(), !9886)
    #dbg_value(i32 16, !2894, !DIExpression(), !9886)
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16), !dbg !10008
  %i.ai = xor i64 %i.ah, %i.ae, !dbg !10009       ; 3 uses
    #dbg_value(i64 %i.ad, !2897, !DIExpression(), !9848)
    #dbg_value(i64 %i.ad, !2892, !DIExpression(), !9888)
    #dbg_value(i32 32, !2894, !DIExpression(), !9888)
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32), !dbg !10010
    #dbg_value(i64 %i.ae, !2901, !DIExpression(), !9890)
    #dbg_value(i64 %i.ag, !2902, !DIExpression(), !9890)
  %i.ak = add i64 %i.ag, %i.ae, !dbg !10011       ; 3 uses
    #dbg_value(i64 %i.aj, !2901, !DIExpression(), !9892)
    #dbg_value(i64 %i.ai, !2902, !DIExpression(), !9892)
  %i.al = add i64 %i.ai, %i.aj, !dbg !10012       ; 2 uses
    #dbg_value(i64 %i.ag, !2897, !DIExpression(), !9850)
    #dbg_value(i64 %i.ag, !2892, !DIExpression(), !9894)
    #dbg_value(i32 17, !2894, !DIExpression(), !9894)
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17), !dbg !10013
  %i.an = xor i64 %i.ak, %i.am, !dbg !10009       ; 3 uses
    #dbg_value(i64 %i.ai, !2897, !DIExpression(), !9852)
    #dbg_value(i64 %i.ai, !2892, !DIExpression(), !9896)
    #dbg_value(i32 21, !2894, !DIExpression(), !9896)
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21), !dbg !10014
  %i.ap = xor i64 %i.ao, %i.al, !dbg !10007       ; 3 uses
    #dbg_value(i64 %i.ak, !2897, !DIExpression(), !9854)
    #dbg_value(i64 %i.ak, !2892, !DIExpression(), !9898)
    #dbg_value(i32 32, !2894, !DIExpression(), !9898)
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32), !dbg !10015
    #dbg_value(i64 %i.al, !2901, !DIExpression(), !9900)
    #dbg_value(i64 %i.an, !2902, !DIExpression(), !9900)
  %i.ar = add i64 %i.an, %i.al, !dbg !10016       ; 3 uses
    #dbg_value(i64 %i.aq, !2901, !DIExpression(), !9902)
    #dbg_value(i64 %i.ap, !2902, !DIExpression(), !9902)
  %i.as = add i64 %i.ap, %i.aq, !dbg !10017       ; 2 uses
    #dbg_value(i64 %i.an, !2897, !DIExpression(), !9856)
    #dbg_value(i64 %i.an, !2892, !DIExpression(), !9904)
    #dbg_value(i32 13, !2894, !DIExpression(), !9904)
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13), !dbg !10018
  %i.au = xor i64 %i.at, %i.ar, !dbg !10007       ; 3 uses
    #dbg_value(i64 %i.ap, !2897, !DIExpression(), !9858)
    #dbg_value(i64 %i.ap, !2892, !DIExpression(), !9906)
    #dbg_value(i32 16, !2894, !DIExpression(), !9906)
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16), !dbg !10019
  %i.aw = xor i64 %i.av, %i.as, !dbg !10009       ; 3 uses
    #dbg_value(i64 %i.ar, !2897, !DIExpression(), !9860)
    #dbg_value(i64 %i.ar, !2892, !DIExpression(), !9908)
    #dbg_value(i32 32, !2894, !DIExpression(), !9908)
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32), !dbg !10020
    #dbg_value(i64 %i.as, !2901, !DIExpression(), !9910)
    #dbg_value(i64 %i.au, !2902, !DIExpression(), !9910)
  %i.ay = add i64 %i.au, %i.as, !dbg !10021       ; 3 uses
    #dbg_value(i64 %i.ax, !2901, !DIExpression(), !9912)
    #dbg_value(i64 %i.aw, !2902, !DIExpression(), !9912)
  %i.az = add i64 %i.aw, %i.ax, !dbg !10022       ; 2 uses
    #dbg_value(i64 %i.au, !2897, !DIExpression(), !9862)
    #dbg_value(i64 %i.au, !2892, !DIExpression(), !9914)
    #dbg_value(i32 17, !2894, !DIExpression(), !9914)
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17), !dbg !10023
  %i.bb = xor i64 %i.ba, %i.ay, !dbg !10009       ; 3 uses
    #dbg_value(i64 %i.aw, !2897, !DIExpression(), !9864)
    #dbg_value(i64 %i.aw, !2892, !DIExpression(), !9916)
    #dbg_value(i32 21, !2894, !DIExpression(), !9916)
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21), !dbg !10024
  %i.bd = xor i64 %i.bc, %i.az, !dbg !10007       ; 3 uses
    #dbg_value(i64 %i.ay, !2897, !DIExpression(), !9866)
    #dbg_value(i64 %i.ay, !2892, !DIExpression(), !9918)
    #dbg_value(i32 32, !2894, !DIExpression(), !9918)
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32), !dbg !10025
    #dbg_value(i64 %i.az, !2901, !DIExpression(), !9920)
    #dbg_value(i64 %i.bb, !2902, !DIExpression(), !9920)
  %i.bf = add i64 %i.bb, %i.az, !dbg !10026
    #dbg_value(i64 %i.be, !2901, !DIExpression(), !9922)
    #dbg_value(i64 %i.bd, !2902, !DIExpression(), !9922)
  %i.bg = add i64 %i.bd, %i.be, !dbg !10027       ; 2 uses
    #dbg_value(i64 %i.bb, !2897, !DIExpression(), !9868)
    #dbg_value(i64 %i.bb, !2892, !DIExpression(), !9924)
    #dbg_value(i32 13, !2894, !DIExpression(), !9924)
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13), !dbg !10028
  %i.bi = xor i64 %i.bh, %i.bf, !dbg !10007       ; 3 uses
    #dbg_value(i64 %i.bd, !2897, !DIExpression(), !9870)
    #dbg_value(i64 %i.bd, !2892, !DIExpression(), !9926)
    #dbg_value(i32 16, !2894, !DIExpression(), !9926)
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16), !dbg !10029
  %i.bk = xor i64 %i.bj, %i.bg, !dbg !10009       ; 2 uses
    #dbg_value(i64 %i.bf, !2897, !DIExpression(), !9872)
    #dbg_value(i64 %i.bf, !2892, !DIExpression(), !9928)
    #dbg_value(i32 32, !2894, !DIExpression(), !9928)
    #dbg_value(i64 %i.bg, !2901, !DIExpression(), !9930)
    #dbg_value(i64 %i.bi, !2902, !DIExpression(), !9930)
  %i.bl = add i64 %i.bi, %i.bg, !dbg !10030       ; 3 uses
    #dbg_value(i64 poison, !2901, !DIExpression(), !9932)
    #dbg_value(i64 %i.bk, !2902, !DIExpression(), !9932)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9809)
    #dbg_value(i64 %i.bi, !2897, !DIExpression(), !9874)
    #dbg_value(i64 %i.bi, !2892, !DIExpression(), !9934)
    #dbg_value(i32 17, !2894, !DIExpression(), !9934)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17), !dbg !10031
    #dbg_value(!DIArgList(i64 %i.bm, i64 %i.bl), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !9809)
    #dbg_value(i64 %i.bk, !2897, !DIExpression(), !9876)
    #dbg_value(i64 %i.bk, !2892, !DIExpression(), !9936)
    #dbg_value(i32 21, !2894, !DIExpression(), !9936)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21), !dbg !10032
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !9809)
    #dbg_value(i64 %i.bl, !2897, !DIExpression(), !9878)
    #dbg_value(i64 %i.bl, !2892, !DIExpression(), !9938)
    #dbg_value(i32 32, !2894, !DIExpression(), !9938)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32), !dbg !10033
    #dbg_value(i64 %i.bo, !2879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9809)
  %i.bp = xor i64 %i.bn, %i.bm, !dbg !10034
  %i.bq = xor i64 %i.bp, %i.bo, !dbg !10034
  %i.br = xor i64 %i.bq, %i.bl, !dbg !10034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10035
  ret i64 %i.br, !dbg !10036
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE11start_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10040 {
bb.a:
    #dbg_value(ptr %0, !10043, !DIExpression(), !10049)
  %i.a = tail call fastcc { i16, i16 } @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE21refresh_terminal_sizeCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0), !dbg !10057 ; 2 uses
  %i.b = extractvalue { i16, i16 } %i.a, 0, !dbg !10057 ; 2 uses
  %i.c = extractvalue { i16, i16 } %i.a, 1, !dbg !10057 ; 2 uses
    #dbg_value(i16 %i.b, !10044, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10050)
    #dbg_value(i16 %i.c, !10044, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10050)
    #dbg_value(ptr %0, !10051, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10055)
    #dbg_value(i64 -9223372036854775808, !10052, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10056)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10058 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !dbg !10058 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 5 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !10058
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload = load i16, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 122, !dbg !10058
  %i.e = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 138, !dbg !10058
  %i.f = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 154, !dbg !10058
  %i.g = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 170, !dbg !10058
  %i.h = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058 ; 3 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 186, !dbg !10058
  %i.i = load <8 x i16>, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 2, !dbg !10058 ; 3 uses
  %.sroa.7.sroa.13.sroa.0.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 202, !dbg !10058 ; 3 uses
  %.sroa.7.sroa.13.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 206, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.7.0.copyload = load i16, ptr %.sroa.7.sroa.13.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 257, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 370, !dbg !10058 ; 2 uses
  %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 374, !dbg !10058 ; 2 uses
  %i.j = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807, !dbg !10054
  tail call void @llvm.assume(i1 %i.j), !dbg !10054
  %i.k = xor i64 %.sroa.0.0.copyload, -9223372036854775808, !dbg !10054
  %i.l = icmp slt i64 %.sroa.0.0.copyload, 0, !dbg !10054
  %i.m = select i1 %i.l, i64 %i.k, i64 1, !dbg !10054 ; 16 uses
  %i.n = insertelement <8 x i16> <i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 0, i16 0, i16 0>, i16 %i.b, i64 3, !dbg !10050
  %i.o = insertelement <8 x i16> %i.n, i16 %i.c, i64 4, !dbg !10050
  %i.p = insertelement <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, i16 %i.b, i64 0, !dbg !10050
  %i.q = insertelement <4 x i16> %i.p, i16 %i.c, i64 1, !dbg !10050 ; 2 uses
  %1 = insertelement <4 x i64> <i64 poison, i64 8317987319222330741, i64 7816392313619706465, i64 7237128888997146477>, i64 %i.m, i64 0, !dbg !10050
  %i.r = insertelement <4 x i64> <i64 8387220255154660723, i64 poison, i64 poison, i64 poison>, i64 %i.m, i64 1, !dbg !10050
  %2 = shufflevector <4 x i64> %i.r, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>, !dbg !10050
  switch i64 %i.m, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !10059

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !10054

bb.c:                                             ; preds = %bb.a
  %i.s = load <2 x i16>, ptr %.sroa.7.sroa.13.sroa.0.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058
  %.sroa.7.sroa.13.sroa.12.0.copyload = load i16, ptr %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058
  %.sroa.7.sroa.13.sroa.11.sroa.6.0.copyload = load i32, ptr %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058
  %.sroa.7.sroa.13.sroa.11.sroa.0.0.copyload = load i16, ptr %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %i.t = load <4 x i16>, ptr %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %3 = load <4 x i64>, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %4 = load <4 x i64>, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0.copyload = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0.copyload = load i56, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0.copyload = load i8, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0.copyload = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10058
  %i.u = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 48, !dbg !10058
  %i.v = trunc nuw i64 %i.u to i16, !dbg !10058
  %i.w = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 32, !dbg !10058
  %i.x = trunc i64 %i.w to i16, !dbg !10058
  %i.y = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 16, !dbg !10058
  %i.z = trunc i64 %i.y to i16, !dbg !10058
  %i.aa = trunc i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload to i16, !dbg !10058
  %i.ab = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !10050
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.z, i64 0, !dbg !10050
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.x, i64 1, !dbg !10050
  %i.ae = insertelement <8 x i16> %i.ad, i16 %i.v, i64 2, !dbg !10050
  %i.af = insertelement <8 x i16> %i.ae, i16 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, i64 3, !dbg !10050
  %i.ag = shufflevector <8 x i16> %i.e, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !10050
  %i.ah = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !10050
  %i.ai = shufflevector <4 x i16> %i.ag, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !10050
  %i.aj = shufflevector <8 x i16> %i.ai, <8 x i16> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !10050
  %i.ak = shufflevector <8 x i16> %i.f, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !10050
  %i.al = shufflevector <8 x i16> %i.g, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !10050
  %i.am = shufflevector <4 x i16> %i.ak, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !10050
  %i.an = shufflevector <8 x i16> %i.am, <8 x i16> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !10050
  %i.ao = shufflevector <8 x i16> %i.g, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !10050
  %i.ap = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !10050
  %i.aq = shufflevector <4 x i16> %i.ao, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !10050
  %i.ar = shufflevector <8 x i16> %i.aq, <8 x i16> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !10050
  %i.as = shufflevector <8 x i16> %i.h, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !10050
  %i.at = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !10050
  %i.au = shufflevector <4 x i16> %i.as, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !10050
  %i.av = shufflevector <8 x i16> %i.au, <8 x i16> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !10050
  %i.aw = shufflevector <8 x i16> %i.i, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !10050
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, !dbg !10060

bb.d:                                             ; preds = %bb.a
  %i.ax = load <4 x i16>, ptr %.sroa.7.sroa.13.sroa.0.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10058
  %i.ay = insertelement <4 x i16> %i.ax, i16 0, i64 3, !dbg !10050
  %i.az = insertelement <4 x i16> %i.ay, i16 %.sroa.7.sroa.13.sroa.0.sroa.7.0.copyload, i64 2, !dbg !10050
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, !dbg !10061

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 1, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 1095216660735, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.0.0.copyload, %bb.c ], [ 8, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 8, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0 = phi i16 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, %bb.d ], [ %i.aa, %bb.c ], [ 25973, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0.copyload, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.7.0 = phi i16 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.7.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0.copyload, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.11.sroa.0.0 = phi i16 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.11.sroa.0.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.11.sroa.6.0 = phi i32 [ undef, %bb.d ], [ %.sroa.7.sroa.13.sroa.11.sroa.6.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0 = phi i64 [ 1095216660735, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0.copyload, %bb.c ], [ 1095216660735, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0 = phi i8 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0.copyload, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.12.0 = phi i16 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.12.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0 = phi i56 [ undef, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !10050
  %.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.0.0.copyload, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !10050
  %i.ba = phi <8 x i16> [ %i.e, %bb.d ], [ %i.af, %bb.c ], [ <i16 28787, i16 28005, i16 29551, i16 29281, i16 28261, i16 26469, i16 27769, i16 28525>, %bb.a ], !dbg !10050
  %i.bb = phi <8 x i16> [ %i.f, %bb.d ], [ %i.aj, %bb.c ], [ <i16 28260, i16 29281, i16 25711, i16 25971, i16 31092, i16 25698, i16 29797, i16 0>, %bb.a ], !dbg !10050
  %i.bc = phi <8 x i16> [ %i.g, %bb.d ], [ %i.an, %bb.c ], [ zeroinitializer, %bb.a ], !dbg !10050
  %i.bd = phi <8 x i16> [ %i.h, %bb.d ], [ %i.ar, %bb.c ], [ zeroinitializer, %bb.a ], !dbg !10050
  %i.be = phi <8 x i16> [ %i.i, %bb.d ], [ %i.av, %bb.c ], [ %i.o, %bb.a ], !dbg !10050
  %i.bf = phi <4 x i16> [ %i.az, %bb.d ], [ %i.aw, %bb.c ], [ <i16 undef, i16 undef, i16 0, i16 0>, %bb.a ], !dbg !10050
  %i.bg = phi <4 x i16> [ %i.q, %bb.d ], [ %i.t, %bb.c ], [ %i.q, %bb.a ], !dbg !10050
  %i.bh = phi <2 x i16> [ zeroinitializer, %bb.d ], [ %i.s, %bb.c ], [ zeroinitializer, %bb.a ], !dbg !10050
  %5 = phi <4 x i64> [ <i64 0, i64 8317987319222330741, i64 7816392313619706465, i64 7237128888997146477>, %bb.d ], [ %4, %bb.c ], [ %1, %bb.a ], !dbg !10050
  %i.bi = phi <4 x i64> [ <i64 8387220255154660723, i64 0, i64 0, i64 0>, %bb.d ], [ %3, %bb.c ], [ %2, %bb.a ], !dbg !10050
  %.sroa.7.sroa.11.sroa.7.0..sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 194, !dbg !10058
  %.sroa.7.sroa.0.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 178, !dbg !10058
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 162, !dbg !10058
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 146, !dbg !10058
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 130, !dbg !10058
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 114, !dbg !10058
  store i64 %.sroa.0.0, ptr %i.d, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i16 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store <8 x i16> %i.ba, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  store <8 x i16> %i.bb, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  store <8 x i16> %i.bc, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  store <8 x i16> %i.bd, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  store <8 x i16> %i.be, ptr %.sroa.7.sroa.0.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 2, !dbg !10062
  store <4 x i16> %i.bf, ptr %.sroa.7.sroa.11.sroa.7.0..sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  store <2 x i16> %i.bh, ptr %.sroa.7.sroa.13.sroa.0.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  store i16 %.sroa.7.sroa.13.sroa.0.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i8 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i56 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !10062
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store <4 x i64> %5, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store <4 x i64> %i.bi, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.12.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store <4 x i16> %i.bg, ptr %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i16 %.sroa.7.sroa.13.sroa.11.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !10062
  store i32 %.sroa.7.sroa.13.sroa.11.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  store i16 %.sroa.7.sroa.13.sroa.12.0, ptr %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !10062
  ret ptr null, !dbg !10063
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE14move_cursor_toCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #0 !dbg !417 {
bb.a:
    #dbg_value(ptr %0, !2920, !DIExpression(), !10064)
    #dbg_value(i16 %1, !2921, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10064)
    #dbg_value(i16 %2, !2921, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10064)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !10080 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !dbg !10080, !noundef !1315 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 378, !dbg !10080 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !dbg !10080, !noundef !1315 ; 3 uses
    #dbg_value(i16 %i.b, !2922, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10065)
    #dbg_value(i16 %i.d, !2922, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10065)
    #dbg_value(ptr poison, !2933, !DIExpression(), !10067)
    #dbg_value(ptr poison, !2937, !DIExpression(), !10068)
  %i.e = tail call i8 @llvm.ucmp.i8.i16(i16 %i.b, i16 %1), !dbg !10081
  switch i8 %i.e, label %bb.b [
    i8 -1, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
  ], !dbg !10082

bb.b:                                             ; preds = %bb.d, %bb.a
  unreachable, !dbg !10083

bb.c:                                             ; preds = %bb.a
  %i.f = sub i16 %1, %i.b, !dbg !10084
  %i.g = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_down(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.f), !dbg !10085 ; 2 uses
    #dbg_value(ptr %i.g, !2940, !DIExpression(), !10070)
  %.not29 = icmp eq ptr %i.g, null, !dbg !10086
  br i1 %.not29, label %bb.d, label %bb.i, !dbg !10087

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.a
    #dbg_value(ptr poison, !2933, !DIExpression(), !10072)
    #dbg_value(ptr poison, !2937, !DIExpression(), !10073)
  %i.h = tail call i8 @llvm.ucmp.i8.i16(i16 %i.d, i16 %2), !dbg !10088
  switch i8 %i.h, label %bb.b [
    i8 -1, label %bb.f
    i8 0, label %bb.g
    i8 1, label %bb.h
  ], !dbg !10089

bb.e:                                             ; preds = %bb.a
  %i.i = sub i16 %i.b, %1, !dbg !10090
  %i.j = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal9cursor_up(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.i), !dbg !10091 ; 2 uses
    #dbg_value(ptr %i.j, !2940, !DIExpression(), !10075)
  %.not = icmp eq ptr %i.j, null, !dbg !10092
  br i1 %.not, label %bb.d, label %bb.i, !dbg !10093

bb.f:                                             ; preds = %bb.d
  %i.k = sub i16 %2, %i.d, !dbg !10094
  %i.l = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal12cursor_right(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.k), !dbg !10095 ; 2 uses
    #dbg_value(ptr %i.l, !2940, !DIExpression(), !10077)
  %.not31 = icmp eq ptr %i.l, null, !dbg !10096
  br i1 %.not31, label %bb.g, label %bb.i, !dbg !10097

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.d
  store i16 %1, ptr %i.a, align 8, !dbg !10098
  store i16 %2, ptr %i.c, align 2, !dbg !10098
  br label %bb.i, !dbg !10099

bb.h:                                             ; preds = %bb.d
  %i.m = sub i16 %i.d, %2, !dbg !10100
  %i.n = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_left(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.m), !dbg !10101 ; 2 uses
    #dbg_value(ptr %i.n, !2940, !DIExpression(), !10079)
  %.not30 = icmp eq ptr %i.n, null, !dbg !10102
  br i1 %.not30, label %bb.g, label %bb.i, !dbg !10103

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.c, %bb.g
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.e ], [ null, %bb.g ], [ %i.l, %bb.f ], [ %i.n, %bb.h ], !dbg !10065
  ret ptr %.sroa.0.0, !dbg !10099
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE20finish_current_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10149 {
bb.a:
  %.sroa.551 = alloca [176 x i8], align 8         ; 5 uses
    #dbg_value(ptr poison, !10339, !DIExpression(), !10358)
    #dbg_value(ptr poison, !10339, !DIExpression(), !10361)
    #dbg_value(ptr poison, !10362, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10372)
    #dbg_value(ptr poison, !10362, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10372)
    #dbg_value(ptr poison, !10387, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10390)
    #dbg_value(ptr poison, !10387, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10390)
    #dbg_value(ptr poison, !10383, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10391)
    #dbg_value(ptr poison, !10383, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10391)
  %i.a = alloca [352 x i8], align 8               ; 9 uses
  %i.b = alloca [176 x i8], align 8               ; 14 uses
  %i.c = alloca [176 x i8], align 8               ; 10 uses
    #dbg_value(ptr %0, !10273, !DIExpression(), !10392)
    #dbg_value(i1 %1, !10274, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10392)
    #dbg_declare(ptr %i.c, !10275, !DIExpression(), !10393)
    #dbg_declare(ptr %i.b, !10276, !DIExpression(), !10394)
    #dbg_value(i64 1, !10395, !DIExpression(), !10402)
    #dbg_value(i16 1, !10403, !DIExpression(), !10409)
    #dbg_value(i64 1, !10410, !DIExpression(), !10417)
    #dbg_value(i64 1, !10410, !DIExpression(), !10420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10425
    #dbg_value(ptr %0, !10421, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10426)
    #dbg_value(ptr %0, !10427, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10431)
    #dbg_value(i64 -9223372036854775808, !10428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10432)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10738 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.a, ptr noundef nonnull align 8 dereferenceable(352) %i.d, i64 352, i1 false), !dbg !10738
  store i64 -9223372036854775808, ptr %i.d, align 8, !dbg !10739
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10739 ; 2 uses
  %i.e = load i64, ptr %i.a, align 8, !dbg !10425, !range !1871, !noundef !1315 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775807, !dbg !10425
  tail call void @llvm.assume(i1 %i.f), !dbg !10425
  %i.g = icmp sgt i64 %i.e, -1, !dbg !10425
  %.sink2.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 176, !dbg !10740 ; 2 uses
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, label %bb.av, !dbg !10740

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false), !dbg !10742
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !10743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %i.h, i64 176, i1 false), !dbg !10743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10745
  invoke void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererNtB4_10FrameState6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.b)
          to label %bb.c unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10746

bb.b:                                             ; preds = %bb.w
  %i.i = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %i.d, align 8, !dbg !10747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.456.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.551, i64 176, i1 false), !dbg !10747
  br label %bb.ar, !dbg !10748

.thread.loopexit:                                 ; preds = %.lr.ph222
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp.loopexit:               ; preds = %.lr.ph219
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.loopexit, %bb.an, %bb.ae, %._crit_edge223
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, %bb.c, %bb.q, %bb.r, %bb.u, %bb.g, %bb.i, %bb.j, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split-lp.loopexit, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit182, %.thread.loopexit.split-lp.loopexit ], [ %lpad.loopexit186, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer10FrameStateECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(176) %i.b) #26
          to label %bb.ar unwind label %bb.au, !dbg !10748

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(ptr %i.c, !10434, !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value), !10437)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 166, !dbg !10749
  %i.k = load i16, ptr %i.j, align 2, !dbg !10749, !noundef !1315
    #dbg_value(i16 %i.k, !10438, !DIExpression(), !10442)
    #dbg_value(ptr %i.b, !10434, !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value), !10444)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 166, !dbg !10750
  %i.m = load i16, ptr %i.l, align 2, !dbg !10750, !noundef !1315
    #dbg_value(i16 %i.m, !10439, !DIExpression(), !10442)
    #dbg_value(ptr undef, !10445, !DIExpression(DW_OP_deref), !10178)
    #dbg_value(ptr undef, !10446, !DIExpression(DW_OP_deref), !10178)
  %..i = call noundef i16 @llvm.umax.i16(i16 %i.m, i16 %i.k), !dbg !10751 ; 2 uses
    #dbg_value(i16 %..i, !10279, !DIExpression(), !10450)
  %i.n = invoke noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_hide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10752 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.n, !10451, !DIExpression(), !10478)
  %.not = icmp eq ptr %i.n, null, !dbg !10753
  br i1 %.not, label %bb.e, label %_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE14move_cursor_toCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !10754

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !2920, !DIExpression(), !10205)
    #dbg_value(i16 0, !2921, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10205)
    #dbg_value(i16 0, !2921, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10205)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !10755 ; 6 uses
  %i.p = load i16, ptr %i.o, align 8, !dbg !10755, !alias.scope !10479, !noundef !1315 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 378, !dbg !10755 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2, !dbg !10755, !alias.scope !10479, !noundef !1315 ; 3 uses
    #dbg_value(i16 %i.p, !2922, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !10208)
    #dbg_value(i16 %i.r, !2922, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !10208)
    #dbg_value(ptr poison, !2933, !DIExpression(), !10210)
    #dbg_value(ptr poison, !2937, !DIExpression(), !10211)
  %i.s = call i8 @llvm.ucmp.i8.i16(i16 %i.p, i16 0), !dbg !10756
  switch i8 %i.s, label %bb.f [
    i8 -1, label %bb.g
    i8 0, label %bb.h
    i8 1, label %bb.i
  ], !dbg !10757

end_hunk_0
