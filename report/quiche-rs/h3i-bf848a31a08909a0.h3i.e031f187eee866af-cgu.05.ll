Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.05?download=true
inline.NumInlined: 374
inline.NumDeleted: 177
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs2_NtNtCs3f36owOmepS_6quiche2h35frameNtB5_5FrameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq:bb.a
    #dbg_value(ptr %1, !16340, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16407)
    #dbg_value(ptr %1, !16090, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !16376)
    #dbg_value(ptr %1, !16340, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !16408)
    #dbg_value(ptr %1, !16091, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !16381)
    #dbg_value(ptr %1, !16385, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !16409)
    #dbg_value(ptr %1, !16092, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16160)
    #dbg_value(ptr %1, !16177, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16410)
    #dbg_value(ptr %1, !16093, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16194)
    #dbg_value(ptr %1, !16177, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16411)
    #dbg_value(ptr poison, !16358, !DIExpression(), !16412)
    #dbg_value(ptr poison, !16359, !DIExpression(), !16413)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16841
  %i.ab = trunc nuw i64 %i.a to i1, !dbg !16842
  br i1 %i.ab, label %bb.q, label %bb.r, !dbg !16842

bb.i:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !16094, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16414)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16417)
    #dbg_value(ptr %0, !16095, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16203)
    #dbg_value(ptr %0, !16133, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16418)
    #dbg_value(ptr %0, !16117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16419)
    #dbg_value(ptr %0, !16238, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16422)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16425)
    #dbg_value(ptr %0, !16248, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16428)
    #dbg_value(ptr %1, !16096, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16414)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16429)
    #dbg_value(ptr %1, !16097, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16203)
    #dbg_value(ptr %1, !16134, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16430)
    #dbg_value(ptr %1, !16117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16431)
    #dbg_value(ptr %1, !16238, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16434)
    #dbg_value(ptr %1, !16243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16437)
    #dbg_value(ptr %1, !16248, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16440)
    #dbg_value(ptr poison, !16329, !DIExpression(), !16441)
    #dbg_value(ptr poison, !16330, !DIExpression(), !16442)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16843
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !16843, !noundef !1246
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !16844
  %i.af = load i64, ptr %i.ae, align 8, !dbg !16844, !noundef !1246
  %i.ag = icmp eq i64 %i.ad, %i.af, !dbg !16843
  br i1 %i.ag, label %bb.ap, label %bb.c, !dbg !16414

bb.j:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !16098, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16443)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16446)
    #dbg_value(ptr %1, !16099, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16443)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16447)
    #dbg_value(ptr poison, !16329, !DIExpression(), !16448)
    #dbg_value(ptr poison, !16330, !DIExpression(), !16449)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16845
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !16845, !noundef !1246
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16846
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !16846, !noundef !1246
  %i.al = icmp eq i64 %i.ai, %i.ak, !dbg !16845
  br label %bb.c, !dbg !16840

bb.k:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !16100, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16450)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16453)
    #dbg_value(ptr %1, !16101, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16450)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16454)
    #dbg_value(ptr poison, !16329, !DIExpression(), !16455)
    #dbg_value(ptr poison, !16330, !DIExpression(), !16456)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16847
  %i.an = load i64, ptr %i.am, align 8, !dbg !16847, !noundef !1246
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16848
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !16848, !noundef !1246
  %i.aq = icmp eq i64 %i.an, %i.ap, !dbg !16847
  br label %bb.c, !dbg !16840

bb.l:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !16102, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16457)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16460)
    #dbg_value(ptr %0, !16103, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16211)
    #dbg_value(ptr %0, !16133, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16461)
    #dbg_value(ptr %0, !16117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16462)
    #dbg_value(ptr %0, !16238, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16465)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16468)
    #dbg_value(ptr %0, !16248, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16471)
    #dbg_value(ptr %1, !16104, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16457)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16472)
    #dbg_value(ptr %1, !16105, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16211)
    #dbg_value(ptr %1, !16134, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16473)
    #dbg_value(ptr %1, !16117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16474)
    #dbg_value(ptr %1, !16238, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16477)
    #dbg_value(ptr %1, !16243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16480)
    #dbg_value(ptr %1, !16248, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16483)
    #dbg_value(ptr poison, !16329, !DIExpression(), !16484)
    #dbg_value(ptr poison, !16330, !DIExpression(), !16485)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16849
  %i.as = load i64, ptr %i.ar, align 8, !dbg !16849, !noundef !1246
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !16850
  %i.au = load i64, ptr %i.at, align 8, !dbg !16850, !noundef !1246
  %i.av = icmp eq i64 %i.as, %i.au, !dbg !16849
  br i1 %i.av, label %bb.ar, label %bb.c, !dbg !16457

bb.m:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !16106, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16486)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16489)
    #dbg_value(ptr %0, !16107, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16219)
    #dbg_value(ptr %0, !16133, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16490)
    #dbg_value(ptr %0, !16117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16491)
    #dbg_value(ptr %0, !16238, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16494)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16497)
    #dbg_value(ptr %0, !16248, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16500)
    #dbg_value(ptr %1, !16108, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16486)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16501)
    #dbg_value(ptr %1, !16109, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16219)
    #dbg_value(ptr %1, !16134, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16502)
    #dbg_value(ptr %1, !16117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16503)
    #dbg_value(ptr %1, !16238, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16506)
    #dbg_value(ptr %1, !16243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16509)
    #dbg_value(ptr %1, !16248, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16512)
    #dbg_value(ptr poison, !16329, !DIExpression(), !16513)
    #dbg_value(ptr poison, !16330, !DIExpression(), !16514)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16851
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !16851, !noundef !1246
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !16852
  %i.az = load i64, ptr %i.ay, align 8, !dbg !16852, !noundef !1246
  %i.ba = icmp eq i64 %i.ax, %i.az, !dbg !16851
  br i1 %i.ba, label %bb.at, label %bb.c, !dbg !16486

bb.n:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !16110, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16515)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16517)
    #dbg_value(ptr %0, !16111, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16227)
    #dbg_value(ptr %0, !16133, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16518)
    #dbg_value(ptr %0, !16117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16519)
    #dbg_value(ptr %0, !16238, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16522)
    #dbg_value(ptr %0, !16243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16525)
    #dbg_value(ptr %0, !16248, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16528)
    #dbg_value(ptr %1, !16112, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16515)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !16529)
    #dbg_value(ptr %1, !16113, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16227)
    #dbg_value(ptr %1, !16134, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16530)
    #dbg_value(ptr %1, !16117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16531)
    #dbg_value(ptr %1, !16238, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16534)
    #dbg_value(ptr %1, !16243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16537)
    #dbg_value(ptr %1, !16248, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16540)
    #dbg_value(ptr poison, !16329, !DIExpression(), !16541)
    #dbg_value(ptr poison, !16330, !DIExpression(), !16542)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16853
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !16853, !noundef !1246
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !16854
  %i.be = load i64, ptr %i.bd, align 8, !dbg !16854, !noundef !1246
  %i.bf = icmp eq i64 %i.bc, %i.be, !dbg !16853
  br i1 %i.bf, label %bb.av, label %bb.c, !dbg !16515

bb.o:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16855
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !16855, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.bh, !16267, !DIExpression(), !16279)
    #dbg_value(ptr %i.bh, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16291)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16856
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !16856, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.bj, !16266, !DIExpression(), !16279)
    #dbg_value(ptr %i.bj, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16291)
  %bcmp79 = tail call i32 @bcmp(ptr nonnull %i.bj, ptr nonnull %i.bh, i64 %i.m), !dbg !16857
  %i.bk = icmp eq i32 %bcmp79, 0, !dbg !16857
  br label %bb.c, !dbg !16858

bb.p:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16859
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !16859, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.bm, !16267, !DIExpression(), !16315)
    #dbg_value(ptr %i.bm, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16318)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16860
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !16860, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.bo, !16266, !DIExpression(), !16315)
    #dbg_value(ptr %i.bo, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16318)
  %bcmp78 = tail call i32 @bcmp(ptr nonnull %i.bo, ptr nonnull %i.bm, i64 %i.r), !dbg !16861
  %i.bp = icmp eq i32 %bcmp78, 0, !dbg !16861
  br label %bb.c, !dbg !16862

bb.q:                                             ; preds = %bb.h
  %i.bq = trunc nuw i64 %i.f to i1, !dbg !16842
  br i1 %i.bq, label %.split, label %bb.c, !dbg !16842

bb.r:                                             ; preds = %bb.h
  %i.br = icmp eq i64 %i.f, 0, !dbg !16842
  br i1 %i.br, label %bb.s, label %bb.c, !dbg !16338

.split:                                           ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !16841
    #dbg_value(ptr %0, !16341, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16564)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16566)
    #dbg_value(ptr %1, !16342, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16567)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16568)
  %i.bt = load i64, ptr %i.aa, align 8, !dbg !16863, !noundef !1246
  %i.bu = load i64, ptr %i.bs, align 8, !dbg !16864, !noundef !1246
  %i.bv = icmp eq i64 %i.bt, %i.bu, !dbg !16863
  br i1 %i.bv, label %bb.s, label %bb.c, !dbg !16338

bb.s:                                             ; preds = %.split, %bb.r
    #dbg_value(ptr poison, !16358, !DIExpression(), !16569)
    #dbg_value(ptr poison, !16359, !DIExpression(), !16570)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16865
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !16865, !range !2806, !noundef !1246
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16865
  %i.bz = trunc nuw i64 %i.bx to i1, !dbg !16866
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16865
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !16865, !range !2806, !noundef !1246
  %2 = trunc nuw i64 %i.cb to i1, !dbg !16866     ; 2 uses
  br i1 %i.bz, label %bb.t, label %bb.u, !dbg !16866

bb.t:                                             ; preds = %bb.s
  br i1 %2, label %.split80, label %bb.c, !dbg !16866

bb.u:                                             ; preds = %bb.s
  br i1 %2, label %bb.c, label %bb.v, !dbg !16364

.split80:                                         ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16865
    #dbg_value(ptr %0, !16343, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16571)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16574)
    #dbg_value(ptr %1, !16344, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16575)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16576)
  %i.cd = load i64, ptr %i.by, align 8, !dbg !16867, !noundef !1246
  %i.ce = load i64, ptr %i.cc, align 8, !dbg !16868, !noundef !1246
  %i.cf = icmp eq i64 %i.cd, %i.ce, !dbg !16867
  br i1 %i.cf, label %bb.v, label %bb.c, !dbg !16364

bb.v:                                             ; preds = %.split80, %bb.u
    #dbg_value(ptr poison, !16358, !DIExpression(), !16577)
    #dbg_value(ptr poison, !16359, !DIExpression(), !16578)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16869
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !16869, !range !2806, !noundef !1246
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16869
  %i.cj = trunc nuw i64 %i.ch to i1, !dbg !16870
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !16869
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !16869, !range !2806, !noundef !1246
  %3 = trunc nuw i64 %i.cl to i1, !dbg !16870     ; 2 uses
  br i1 %i.cj, label %bb.w, label %bb.x, !dbg !16870

bb.w:                                             ; preds = %bb.v
  br i1 %3, label %.split81, label %bb.c, !dbg !16870

bb.x:                                             ; preds = %bb.v
  br i1 %3, label %bb.c, label %bb.y, !dbg !16368

.split81:                                         ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !16869
    #dbg_value(ptr %0, !16345, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !16579)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !16582)
    #dbg_value(ptr %1, !16346, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !16583)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !16584)
  %i.cn = load i64, ptr %i.ci, align 8, !dbg !16871, !noundef !1246
  %i.co = load i64, ptr %i.cm, align 8, !dbg !16872, !noundef !1246
  %i.cp = icmp eq i64 %i.cn, %i.co, !dbg !16871
  br i1 %i.cp, label %bb.y, label %bb.c, !dbg !16368

bb.y:                                             ; preds = %.split81, %bb.x
    #dbg_value(ptr poison, !16358, !DIExpression(), !16585)
    #dbg_value(ptr poison, !16359, !DIExpression(), !16586)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16873
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !16873, !range !2806, !noundef !1246
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16873
  %i.ct = trunc nuw i64 %i.cr to i1, !dbg !16874
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !16873
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !16873, !range !2806, !noundef !1246
  %4 = trunc nuw i64 %i.cv to i1, !dbg !16874     ; 2 uses
  br i1 %i.ct, label %bb.z, label %bb.aa, !dbg !16874

bb.z:                                             ; preds = %bb.y
  br i1 %4, label %.split82, label %bb.c, !dbg !16874

bb.aa:                                            ; preds = %bb.y
  br i1 %4, label %bb.c, label %bb.ab, !dbg !16372

.split82:                                         ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !16873
    #dbg_value(ptr %0, !16347, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !16588)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !16591)
    #dbg_value(ptr %1, !16348, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !16592)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !16593)
  %i.cx = load i64, ptr %i.cs, align 8, !dbg !16875, !noundef !1246
  %i.cy = load i64, ptr %i.cw, align 8, !dbg !16876, !noundef !1246
  %i.cz = icmp eq i64 %i.cx, %i.cy, !dbg !16875
  br i1 %i.cz, label %bb.ab, label %bb.c, !dbg !16372

bb.ab:                                            ; preds = %.split82, %bb.aa
    #dbg_value(ptr poison, !16358, !DIExpression(), !16594)
    #dbg_value(ptr poison, !16359, !DIExpression(), !16595)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !16877
  %i.db = load i64, ptr %i.da, align 8, !dbg !16877, !range !2806, !noundef !1246
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16877
  %i.dd = trunc nuw i64 %i.db to i1, !dbg !16878
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !16877
  %i.df = load i64, ptr %i.de, align 8, !dbg !16877, !range !2806, !noundef !1246
  %5 = trunc nuw i64 %i.df to i1, !dbg !16878     ; 2 uses
  br i1 %i.dd, label %bb.ac, label %bb.ad, !dbg !16878

bb.ac:                                            ; preds = %bb.ab
  br i1 %5, label %.split83, label %bb.c, !dbg !16878

bb.ad:                                            ; preds = %bb.ab
  br i1 %5, label %bb.c, label %bb.ae, !dbg !16376

.split83:                                         ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !16877
    #dbg_value(ptr %0, !16349, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16596)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16599)
    #dbg_value(ptr %1, !16350, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16600)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !16601)
  %i.dh = load i64, ptr %i.dc, align 8, !dbg !16879, !noundef !1246
  %i.di = load i64, ptr %i.dg, align 8, !dbg !16880, !noundef !1246
  %i.dj = icmp eq i64 %i.dh, %i.di, !dbg !16879
  br i1 %i.dj, label %bb.ae, label %bb.c, !dbg !16376

bb.ae:                                            ; preds = %.split83, %bb.ad
    #dbg_value(ptr poison, !16395, !DIExpression(), !16602)
    #dbg_value(ptr poison, !16396, !DIExpression(), !16603)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !16881
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !16881, !range !2806, !noundef !1246
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !16882
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !16881
  %i.do = load i64, ptr %i.dn, align 8, !dbg !16881, !range !2806, !noundef !1246
  %6 = trunc nuw i64 %i.do to i1, !dbg !16882     ; 2 uses
  br i1 %i.dm, label %bb.af, label %bb.ag, !dbg !16882

bb.af:                                            ; preds = %bb.ae
  br i1 %6, label %bb.ah, label %bb.c, !dbg !16882

bb.ag:                                            ; preds = %bb.ae
  br i1 %6, label %bb.c, label %bb.ai, !dbg !16381

bb.ah:                                            ; preds = %bb.af
    #dbg_value(ptr %0, !16386, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !16604)
    #dbg_value(ptr %0, !16606, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !16617)
    #dbg_value(ptr %1, !16387, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !16618)
    #dbg_value(ptr %1, !16611, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !16619)
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !16621)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !16622)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !16883
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !16883, !noundef !1246
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !16884
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !16884, !noundef !1246
  %i.dt = icmp eq i64 %i.dq, %i.ds, !dbg !16883
  br i1 %i.dt, label %.split84, label %bb.c, !dbg !16620

.split84:                                         ; preds = %bb.ah
    #dbg_value(ptr %0, !16320, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !16625)
    #dbg_value(ptr %1, !16321, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !16626)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !16885
  %i.dv = load i64, ptr %i.du, align 8, !dbg !16885, !noundef !1246
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !16886
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !16886, !noundef !1246
  %i.dy = icmp eq i64 %i.dv, %i.dx, !dbg !16885
  br i1 %i.dy, label %bb.ai, label %bb.c, !dbg !16381

bb.ai:                                            ; preds = %.split84, %bb.ag
    #dbg_value(ptr poison, !16168, !DIExpression(), !16627)
    #dbg_value(ptr poison, !16169, !DIExpression(), !16628)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !16887
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !16887, !range !2876, !noundef !1246
  %.not = icmp eq i64 %i.ea, -1, !dbg !16887
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !16887
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !16887, !range !2876, !noundef !1246
  %i.ed = icmp eq i64 %i.ec, -1, !dbg !16887      ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.aj, !dbg !16888

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.ed, label %bb.c, label %bb.al, !dbg !16888

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.ed, label %bb.am, label %bb.c, !dbg !16160

bb.al:                                            ; preds = %bb.aj
    #dbg_value(ptr %0, !16178, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16629)
    #dbg_value(ptr %0, !16185, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16630)
    #dbg_value(ptr %0, !16154, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16631)
    #dbg_value(ptr %0, !16632, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16638)
    #dbg_value(ptr %0, !16639, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16644)
    #dbg_value(ptr %0, !16645, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16652)
    #dbg_value(ptr %1, !16179, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16653)
    #dbg_value(ptr %1, !16186, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16654)
    #dbg_value(ptr %1, !16154, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16655)
    #dbg_value(ptr %1, !16632, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16658)
    #dbg_value(ptr %1, !16639, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16661)
    #dbg_value(ptr %1, !16645, !DIExpression(DW_OP_plus_uconst, 104, DW_OP_stack_value), !16664)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !16889
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !16889, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.ef, !16665, !DIExpression(), !16677)
    #dbg_value(ptr poison, !16668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16678)
    #dbg_value(i64 %i.ef, !16668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16678)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !16890
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !16890, !noundef !1246
    #dbg_value(ptr poison, !16669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16678)
    #dbg_value(i64 %i.eh, !16669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16678)
  %i.ei = icmp eq i64 %i.ef, %i.eh, !dbg !16891
  br i1 %i.ei, label %.split85, label %bb.c, !dbg !16891

.split85:                                         ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !16892
  %i.ek = load ptr, ptr %i.ej, align 8, !dbg !16892, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.ek, !16669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16678)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !16893
  %i.em = load ptr, ptr %i.el, align 8, !dbg !16893, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.em, !16668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16678)
  %i.en = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpTyyEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjfnSKV9Rz3v_3h3i(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ek, i64 noundef %i.ef), !dbg !16894
  br i1 %i.en, label %bb.am, label %bb.c, !dbg !16160

bb.am:                                            ; preds = %.split85, %bb.ak
    #dbg_value(ptr poison, !16168, !DIExpression(), !16702)
    #dbg_value(ptr poison, !16169, !DIExpression(), !16703)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !16895
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !16895, !range !2876, !noundef !1246 ; 2 uses
  %.not76 = icmp eq i64 %i.ep, -1, !dbg !16895
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !16895
  %i.er = load i64, ptr %i.eq, align 8, !dbg !16895, !range !2876, !noundef !1246 ; 2 uses
  %i.es = icmp eq i64 %i.er, -1, !dbg !16895
  %brmerge = or i1 %.not76, %i.es, !dbg !16896
  %i.et = and i64 %i.ep, %i.er, !dbg !16896
  %.mux = icmp eq i64 %i.et, -1, !dbg !16896
  br i1 %brmerge, label %bb.c, label %bb.an, !dbg !16896

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %0, !16180, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16704)
    #dbg_value(ptr %0, !16185, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16705)
    #dbg_value(ptr %0, !16154, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16706)
    #dbg_value(ptr %0, !16632, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16709)
    #dbg_value(ptr %0, !16639, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16712)
    #dbg_value(ptr %0, !16645, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16715)
    #dbg_value(ptr %1, !16181, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16716)
    #dbg_value(ptr %1, !16186, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16717)
    #dbg_value(ptr %1, !16154, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16718)
    #dbg_value(ptr %1, !16632, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16721)
    #dbg_value(ptr %1, !16639, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16724)
    #dbg_value(ptr %1, !16645, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !16727)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !16897
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !16897, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.ev, !16670, !DIExpression(), !16729)
    #dbg_value(ptr poison, !16668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16730)
    #dbg_value(i64 %i.ev, !16668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16730)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !16898
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !16898, !noundef !1246
    #dbg_value(ptr poison, !16669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16730)
    #dbg_value(i64 %i.ex, !16669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16730)
  %i.ey = icmp eq i64 %i.ev, %i.ex, !dbg !16899
  br i1 %i.ey, label %bb.ao, label %bb.c, !dbg !16899

bb.ao:                                            ; preds = %bb.an
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !16900
  %i.fa = load ptr, ptr %i.ez, align 8, !dbg !16900, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.fa, !16669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16730)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !16901
  %i.fc = load ptr, ptr %i.fb, align 8, !dbg !16901, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.fc, !16668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16730)
  %i.fd = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpTyyEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjfnSKV9Rz3v_3h3i(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fa, i64 noundef %i.ev), !dbg !16902
  br label %bb.c, !dbg !16902

bb.ap:                                            ; preds = %bb.i
    #dbg_value(ptr poison, !16127, !DIExpression(), !16743)
    #dbg_value(ptr poison, !16128, !DIExpression(), !16744)
    #dbg_value(ptr poison, !16266, !DIExpression(), !16748)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16903
  %i.ff = load i64, ptr %i.fe, align 8, !dbg !16903, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.ff, !16284, !DIExpression(), !16749)
    #dbg_value(i64 %i.ff, !16268, !DIExpression(), !16748)
    #dbg_value(i64 %i.ff, !16271, !DIExpression(), !16750)
    #dbg_value(ptr poison, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16751)
    #dbg_value(i64 %i.ff, !16280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16751)
    #dbg_value(ptr poison, !16267, !DIExpression(), !16748)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16904
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !16904, !noundef !1246
    #dbg_value(ptr poison, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16751)
    #dbg_value(i64 %i.fh, !16281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16751)
  %i.fi = icmp eq i64 %i.ff, %i.fh, !dbg !16905
  br i1 %i.fi, label %bb.aq, label %bb.c, !dbg !16905

bb.aq:                                            ; preds = %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16906
  %i.fk = load ptr, ptr %i.fj, align 8, !dbg !16906, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.fk, !16267, !DIExpression(), !16748)
    #dbg_value(ptr %i.fk, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16751)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16907
  %i.fm = load ptr, ptr %i.fl, align 8, !dbg !16907, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.fm, !16266, !DIExpression(), !16748)
    #dbg_value(ptr %i.fm, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16751)
  %bcmp74 = tail call i32 @bcmp(ptr nonnull %i.fm, ptr nonnull %i.fk, i64 %i.ff), !dbg !16908
  %i.fn = icmp eq i32 %bcmp74, 0, !dbg !16908
  br label %bb.c, !dbg !16909

bb.ar:                                            ; preds = %bb.l
    #dbg_value(ptr poison, !16127, !DIExpression(), !16764)
    #dbg_value(ptr poison, !16128, !DIExpression(), !16765)
    #dbg_value(ptr poison, !16266, !DIExpression(), !16769)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16910
  %i.fp = load i64, ptr %i.fo, align 8, !dbg !16910, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.fp, !16285, !DIExpression(), !16770)
    #dbg_value(i64 %i.fp, !16268, !DIExpression(), !16769)
    #dbg_value(i64 %i.fp, !16272, !DIExpression(), !16771)
    #dbg_value(ptr poison, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16772)
    #dbg_value(i64 %i.fp, !16280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16772)
    #dbg_value(ptr poison, !16267, !DIExpression(), !16769)
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16911
  %i.fr = load i64, ptr %i.fq, align 8, !dbg !16911, !noundef !1246
    #dbg_value(ptr poison, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16772)
    #dbg_value(i64 %i.fr, !16281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16772)
  %i.fs = icmp eq i64 %i.fp, %i.fr, !dbg !16912
  br i1 %i.fs, label %bb.as, label %bb.c, !dbg !16912

bb.as:                                            ; preds = %bb.ar
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16913
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !16913, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.fu, !16267, !DIExpression(), !16769)
    #dbg_value(ptr %i.fu, !16281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16772)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16914
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !16914, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.fw, !16266, !DIExpression(), !16769)
    #dbg_value(ptr %i.fw, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16772)
  %bcmp73 = tail call i32 @bcmp(ptr nonnull %i.fw, ptr nonnull %i.fu, i64 %i.fp), !dbg !16915
  %i.fx = icmp eq i32 %bcmp73, 0, !dbg !16915
  br label %bb.c, !dbg !16916

bb.at:                                            ; preds = %bb.m
    #dbg_value(ptr poison, !16127, !DIExpression(), !16785)
    #dbg_value(ptr poison, !16128, !DIExpression(), !16786)
    #dbg_value(ptr poison, !16266, !DIExpression(), !16790)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16917
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !16917, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.fz, !16286, !DIExpression(), !16791)
    #dbg_value(i64 %i.fz, !16268, !DIExpression(), !16790)
    #dbg_value(i64 %i.fz, !16273, !DIExpression(), !16792)
    #dbg_value(ptr poison, !16280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16793)
end_hunk_0
