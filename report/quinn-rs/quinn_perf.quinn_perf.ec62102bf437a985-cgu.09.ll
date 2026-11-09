Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.09?download=true
inline.NumInlined: 239
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairE0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2765)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !3259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2762)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !3262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2765)
  %i.ck = icmp ult i64 %i.cg, %.pre.i.i.i.i.i.i, !dbg !3421
  br i1 %i.ck, label %bb.ag, label %.invoke.i.i.i.i, !dbg !3421

bb.ae:                                            ; preds = %bb.ac
  %i.cl = load ptr, ptr %i.y, align 8, !dbg !3422, !noalias !3109, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cl, !3259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2773)
    #dbg_value(ptr %i.cl, !3262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2775)
  %i.cm = lshr exact i64 %.sroa.07.1342.i.i.i.i.i.i.i, 3, !dbg !3423
  %i.cn = trunc i64 %i.cm to i8, !dbg !3424
  %i.co = add i8 %i.cn, 1, !dbg !3424
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci, !dbg !3425
  %i.cq = or i8 %i.co, -128, !dbg !3426
  store i8 %i.cq, ptr %i.cp, align 1, !dbg !3426, !noalias !3109
    #dbg_value(i64 %i.ci, !3016, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2757)
    #dbg_value(i64 %i.ci, !3255, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2759)
    #dbg_value(i64 %i.ci, !3258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2762)
    #dbg_value(i64 %i.ci, !3261, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2765)
  %.sroa.018.013.i.i.i.i.i.i.i = add nuw i64 %i.ci, 1, !dbg !3427 ; 3 uses
  %i.cr = load i64, ptr %i.x, align 8, !dbg !3428, !noalias !3109, !noundef !718 ; 2 uses
  %i.cs = icmp ult i64 %.sroa.018.013.i.i.i.i.i.i.i, %i.cr, !dbg !3429
  br i1 %i.cs, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !3429

bb.af:                                            ; preds = %.lr.ph16.i.i.i.i.i.i.i
  %i.ct = add i64 %.sroa.07.214.i.i.i.i.i.i.i, -8, !dbg !3430
    #dbg_value(i64 %i.ct, !3011, !DIExpression(), !2681)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.015.i.i.i.i.i.i.i, 1, !dbg !3427 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3261, !DIExpression(), !2765)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3258, !DIExpression(), !2762)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3255, !DIExpression(), !2759)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3016, !DIExpression(), !2757)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !3254, !DIExpression(), !2793)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !3251, !DIExpression(), !2794)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !3248, !DIExpression(), !2795)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !3264, !DIExpression(), !2797)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3255, !DIExpression(), !2793)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3258, !DIExpression(), !2798)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3261, !DIExpression(), !2799)
  %i.cu = load i64, ptr %i.x, align 8, !dbg !3428, !noalias !3109, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !3259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2798)
    #dbg_value(ptr poison, !3262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2799)
    #dbg_value(i64 %i.cu, !3259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2798)
    #dbg_value(i64 %i.cu, !3262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2799)
  %i.cv = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.cu, !dbg !3429
  br i1 %i.cv, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !3429

.lr.ph16.i.i.i.i.i.i.i:                           ; preds = %bb.ae, %bb.af
  %.sroa.018.015.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.ae ] ; 2 uses
  %.sroa.07.214.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.af ], [ %.sroa.07.1342.i.i.i.i.i.i.i, %bb.ae ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !3011, !DIExpression(), !2681)
  %i.cw = load ptr, ptr %i.y, align 8, !dbg !3431, !noalias !3109, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cw, !3259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2798)
    #dbg_value(ptr %i.cw, !3262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2799)
  %i.cx = and i64 %.sroa.07.214.i.i.i.i.i.i.i, 56, !dbg !3432
  %i.cy = lshr i64 %i.at, %i.cx, !dbg !3432
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.018.015.i.i.i.i.i.i.i, !dbg !3433
  %i.da = trunc i64 %i.cy to i8, !dbg !3434
  store i8 %i.da, ptr %i.cz, align 1, !dbg !3434, !noalias !3109
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !3016, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2757)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !3255, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2759)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !3258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2762)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !3261, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2765)
  %i.db = icmp eq i64 %.sroa.07.214.i.i.i.i.i.i.i, 0, !dbg !3435
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !3011, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !2681)
  br i1 %i.db, label %.loopexit.i.i.i, label %bb.af, !dbg !3435

bb.ag:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.y, align 8, !dbg !3436, !noalias !3109, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dc, !3259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2762)
    #dbg_value(ptr %i.dc, !3262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2765)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cg, !dbg !3437
  %i.de = trunc nuw nsw i64 %i.at to i8, !dbg !3438
  store i8 %i.de, ptr %i.dd, align 1, !dbg !3438, !noalias !3109
  br label %.loopexit.i.i.i, !dbg !3439

.invoke.i.i.i.i:                                  ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.df = phi i64 [ %i.cg, %bb.ad ], [ %i.ci, %bb.ac ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.ae ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.af ]
  %i.dg = phi i64 [ %.pre.i.i.i.i.i.i, %bb.ad ], [ %i.ch, %bb.ac ], [ %i.cr, %bb.ae ], [ %i.cu, %bb.af ]
  %i.dh = phi ptr [ @4, %bb.ad ], [ @2, %bb.ac ], [ @3, %bb.ae ], [ @3, %bb.af ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.df, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3440, !noalias !3109

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsk5jvY4Bb3tQ_5yasna6models3oid16ObjectIdentifierECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.i, %bb.n, %.invoke.i.i.i.i, %bb.z, %.noexc13.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.v, %bb.u, %bb.t, %bb.d
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q, %bb.o
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.an, %bb.q ], [ %lpad.loopexit.split-lp65, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.ah, !dbg !3441, !noalias !3109

bb.ah:                                            ; preds = %.body.i.i.i.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !3442, !noalias !3109
  unreachable, !dbg !3442

bb.ai:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !3443, !noalias !3108
    #dbg_value(ptr %.val, !3278, !DIExpression(), !2813)
  store ptr %.val, ptr %i.h, align 8, !dbg !3444, !noalias !3108
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !3444
  store i8 -1, ptr %i.dj, align 8, !dbg !3444, !noalias !3108
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i1 noundef zeroext true)
          to label %bb.aj unwind label %bb.b, !dbg !3445, !noalias !3108

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3446, !noalias !3108
  br label %bb.d, !dbg !3447

.loopexit.i.i.i:                                  ; preds = %.lr.ph16.i.i.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3448, !noalias !3109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !3449, !noalias !3108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3441, !noalias !3109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3450, !noalias !3108
    #dbg_value(ptr %.val, !3278, !DIExpression(), !2816)
  store ptr %.val, ptr %i.f, align 8, !dbg !3451, !noalias !3108
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3451
  store i8 -1, ptr %i.dk, align 8, !dbg !3451, !noalias !3108
    #dbg_value(ptr %i.g, !3284, !DIExpression(), !2819)
    #dbg_value(ptr %i.g, !3286, !DIExpression(), !2822)
    #dbg_value(ptr %i.g, !3288, !DIExpression(), !2825)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3452
  %i.dm = load ptr, ptr %i.dl, align 8, !dbg !3452, !noalias !3108, !nonnull !718, !noundef !718
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !3453
  %i.do = load i64, ptr %i.dn, align 8, !dbg !3453, !noalias !3108, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.do)
          to label %bb.al unwind label %bb.ak, !dbg !3454, !noalias !3108

bb.ak:                                            ; preds = %.loopexit.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %.body.i.i.i unwind label %bb.ar, !dbg !3455, !noalias !3108

bb.al:                                            ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3456, !noalias !3108
    #dbg_value(ptr %i.g, !1894, !DIExpression(), !2833)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.an unwind label %bb.am, !dbg !3457, !noalias !3108

bb.am:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !2835)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i.i unwind label %bb.ao, !dbg !3458, !noalias !3108

bb.an:                                            ; preds = %bb.al
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !2837)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !3459, !noalias !3108

bb.ao:                                            ; preds = %bb.am
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !3457, !noalias !3108
  unreachable, !dbg !3457

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3455, !noalias !3108
    #dbg_value(ptr %i.j, !1753, !DIExpression(), !2839)
    #dbg_value(ptr %i.j, !1760, !DIExpression(), !2841)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.ap, !dbg !3460, !noalias !3108

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !2843)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.aq, !dbg !3461, !noalias !3108

bb.aq:                                            ; preds = %bb.ap
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !3460, !noalias !3108
  unreachable, !dbg !3460

common.resume.i.i.i:                              ; preds = %bb.ap, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ds, %bb.ap ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !3462

bb.ar:                                            ; preds = %bb.ak, %.body.i.i.i
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !3463, !noalias !3108
  unreachable, !dbg !3463

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !2845)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !3464, !noalias !3108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !3328, !noalias !3108
    #dbg_value(ptr %.val, !3290, !DIExpression(), !2848)
  %i.dv = load i64, ptr %i.l, align 8, !dbg !3465, !noalias !3092, !noundef !718 ; 6 uses
  %i.dw = icmp sgt i64 %i.dv, -1, !dbg !3466
  call void @llvm.assume(i1 %i.dw), !dbg !3467
  %i.dx = sub nsw i64 %i.dv, %i.el, !dbg !3468    ; 4 uses
    #dbg_value(i64 %i.dx, !3070, !DIExpression(), !2849)
    #dbg_value(i64 56, !3072, !DIExpression(), !2850)
  %i.dy = icmp ult i64 %i.dx, 128, !dbg !3469     ; 2 uses
  br i1 %i.dy, label %.thread.i, label %.preheader.i, !dbg !3469

bb.as:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !3470, !noalias !3092
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !3471

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.as, %bb.a
  %i.dz = load ptr, ptr %i.m, align 8, !dbg !3472, !alias.scope !3107, !noalias !3092, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dz, !1729, !DIExpression(), !2562)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.n, !dbg !3473
    #dbg_value(ptr %i.ea, !1702, !DIExpression(), !2854)
    #dbg_value(ptr %i.ea, !1788, !DIExpression(), !2856)
    #dbg_value(i8 -1, !1791, !DIExpression(), !2856)
  store i8 -1, ptr %i.ea, align 1, !dbg !3474, !noalias !3092
  %i.eb = add i64 %i.n, 1, !dbg !3475             ; 4 uses
  store i64 %i.eb, ptr %i.l, align 8, !dbg !3475, !alias.scope !3107, !noalias !3092
    #dbg_value(i32 2, !3067, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2550)
    #dbg_value(ptr %.val, !3094, !DIExpression(), !2540)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !2552)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !2554)
    #dbg_value(i8 -1, !1699, !DIExpression(), !2552)
    #dbg_value(i64 1, !1710, !DIExpression(), !2557)
    #dbg_value(i64 %i.eb, !1700, !DIExpression(), !2560)
    #dbg_value(i64 %i.eb, !1724, !DIExpression(), !2562)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !2563)
  %i.ec = load i64, ptr %.val, align 8, !dbg !3326, !range !1731, !alias.scope !3107, !noalias !3092, !noundef !718
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !3327
  br i1 %i.ed, label %bb.at, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !3327

bb.at:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !3470, !noalias !3092
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !3471

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.at, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ee = load ptr, ptr %i.m, align 8, !dbg !3472, !alias.scope !3107, !noalias !3092, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ee, !1729, !DIExpression(), !2562)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb, !dbg !3473
    #dbg_value(ptr %i.ef, !1702, !DIExpression(), !2854)
    #dbg_value(ptr %i.ef, !1788, !DIExpression(), !2856)
    #dbg_value(i8 -1, !1791, !DIExpression(), !2856)
  store i8 -1, ptr %i.ef, align 1, !dbg !3474, !noalias !3092
  %i.eg = add i64 %i.n, 2, !dbg !3475             ; 4 uses
  store i64 %i.eg, ptr %i.l, align 8, !dbg !3475, !alias.scope !3107, !noalias !3092
    #dbg_value(i32 3, !3067, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2550)
    #dbg_value(ptr %.val, !3094, !DIExpression(), !2540)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !2552)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !2554)
    #dbg_value(i8 -1, !1699, !DIExpression(), !2552)
    #dbg_value(i64 1, !1710, !DIExpression(), !2557)
    #dbg_value(i64 %i.eg, !1700, !DIExpression(), !2560)
    #dbg_value(i64 %i.eg, !1724, !DIExpression(), !2562)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !2563)
  %i.eh = load i64, ptr %.val, align 8, !dbg !3326, !range !1731, !alias.scope !3107, !noalias !3092, !noundef !718
  %i.ei = icmp eq i64 %i.eg, %i.eh, !dbg !3327
  br i1 %i.ei, label %bb.au, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !3327

bb.au:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !3470, !noalias !3092
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !3471

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.au, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.ej = load ptr, ptr %i.m, align 8, !dbg !3472, !alias.scope !3107, !noalias !3092, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ej, !1729, !DIExpression(), !2562)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eg, !dbg !3473
    #dbg_value(ptr %i.ek, !1702, !DIExpression(), !2854)
    #dbg_value(ptr %i.ek, !1788, !DIExpression(), !2856)
    #dbg_value(i8 -1, !1791, !DIExpression(), !2856)
  store i8 -1, ptr %i.ek, align 1, !dbg !3474, !noalias !3092
  %i.el = add i64 %i.n, 3, !dbg !3475             ; 10 uses
  store i64 %i.el, ptr %i.l, align 8, !dbg !3475, !alias.scope !3107, !noalias !3092
    #dbg_value(i32 3, !3067, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2550)
    #dbg_value(ptr %.val, !3290, !DIExpression(), !2858)
    #dbg_value(i64 %i.el, !3068, !DIExpression(), !2859)
    #dbg_value(i64 %i.el, !3105, !DIExpression(), !2549)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !3476, !alias.scope !3092, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !3056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2860)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3476
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !3476, !alias.scope !3092
    #dbg_value(i64 %.sroa.4.0.copyload.i, !3056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2860)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3476
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !3476, !alias.scope !3092 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !3056, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2860)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3476
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !3476, !alias.scope !3092 ; 3 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !3056, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2860)
    #dbg_value(ptr poison, !3055, !DIExpression(), !2861)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !3044, !DIExpression(DW_OP_deref), !2862)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !3045, !DIExpression(), !2862)
    #dbg_value(ptr poison, !3042, !DIExpression(), !2863)
    #dbg_value(ptr poison, !3281, !DIExpression(), !2865)
    #dbg_value(ptr poison, !3281, !DIExpression(), !2866)
    #dbg_value(ptr poison, !3281, !DIExpression(), !2867)
    #dbg_declare(ptr %i.j, !3046, !DIExpression(), !2868)
    #dbg_declare(ptr %i.g, !3047, !DIExpression(), !2869)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !3477, !noalias !3108
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !3478, !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !3479, !noalias !3108
    #dbg_value(ptr %.val, !3278, !DIExpression(), !2871)
  store ptr %.val, ptr %i.i, align 8, !dbg !3480, !noalias !3108
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !3480
  store i8 -1, ptr %i.em, align 8, !dbg !3480, !noalias !3108
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b, !dbg !3481, !noalias !3108

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.eq, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !3482 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !3072, !DIExpression(), !2850)
  %i.en = and i64 %.sroa.07.0.i, 56, !dbg !3483
  %i.eo = lshr i64 %i.dx, %i.en, !dbg !3483
  %i.ep = icmp eq i64 %i.eo, 0, !dbg !3483
  %i.eq = add i64 %.sroa.07.0.i, -8, !dbg !3484
    #dbg_value(i64 %i.eq, !3072, !DIExpression(), !2850)
  br i1 %i.ep, label %.preheader.i, label %bb.av, !dbg !3483

bb.av:                                            ; preds = %.preheader.i
  %i.er = lshr exact i64 %.sroa.07.0.i, 3, !dbg !3485 ; 2 uses
  %i.es = add nuw nsw i64 %i.er, 2, !dbg !3486    ; 2 uses
    #dbg_value(i64 %i.es, !3071, !DIExpression(), !2872)
    #dbg_value(i64 %.sroa.07.0.i, !3072, !DIExpression(), !2850)
  %i.et = icmp eq i64 %.sroa.07.0.i, 0, !dbg !3487
  br i1 %i.et, label %.thread.i, label %bb.aw, !dbg !3487

bb.aw:                                            ; preds = %bb.av
  %.not.i = icmp eq i64 %i.es, 3, !dbg !3488
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.ax, !dbg !3488

.thread.i:                                        ; preds = %bb.av, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.eg, %bb.av ], [ %i.eb, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !3489 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.av ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.av ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !3074, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2873)
    #dbg_value(!DIArgList(i64 %i.el, i64 %.sroa.02.06.i), !3073, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !3490, !noalias !3092
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.el), !dbg !3491, !noalias !3092
    #dbg_value(ptr %i.k, !1800, !DIExpression(), !2876)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k), !dbg !3492, !noalias !3092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !3493, !noalias !3092
  %.pre.pre = load i64, ptr %i.l, align 8, !dbg !3494, !noalias !3092
  br label %.loopexit7.i, !dbg !3495

bb.ax:                                            ; preds = %bb.aw
  %i.eu = add nsw i64 %i.er, -1, !dbg !3496       ; 3 uses
    #dbg_value(i64 %i.eu, !3075, !DIExpression(), !2883)
  %i.ev = add nuw i64 %i.eu, %i.el, !dbg !3497    ; 2 uses
    #dbg_value(i64 %i.ev, !3073, !DIExpression(), !2874)
    #dbg_value(i64 0, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2884)
    #dbg_value(i64 %i.eu, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2884)
    #dbg_value(ptr undef, !3087, !DIExpression(), !2531)
    #dbg_value(ptr undef, !3083, !DIExpression(), !2530)
    #dbg_value(ptr undef, !3079, !DIExpression(), !2529)
    #dbg_value(ptr undef, !3080, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2885)
  %.not23.i = icmp eq i64 %i.eu, 0, !dbg !3498
  br i1 %.not23.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !3499

.lr.ph.i.preheader:                               ; preds = %bb.ax
  %i.ew = icmp samesign ult i64 %i.dv, %i.el
  br i1 %i.ew, label %bb.ay, label %.lr.ph.i, !dbg !3500, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ex = phi i64 [ %i.ff, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.dv, %.lr.ph.i.preheader ], !dbg !3501 ; 5 uses
  %.sroa.016.017.i = phi i64 [ %i.ey, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.017.i, !3084, !DIExpression(), !2888)
    #dbg_value(i64 %.sroa.016.017.i, !3097, !DIExpression(), !2543)
    #dbg_value(i64 %.sroa.016.017.i, !3101, !DIExpression(), !2546)
  %i.ey = add nuw i64 %.sroa.016.017.i, 1, !dbg !3502 ; 2 uses
    #dbg_value(i64 %i.ey, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2884)
    #dbg_value(ptr %.val, !3104, !DIExpression(), !2549)
  call void @llvm.experimental.noalias.scope.decl(metadata !3301), !dbg !3503
    #dbg_value(ptr %.val, !1839, !DIExpression(), !2891)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !2892)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !2894)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !2896)
    #dbg_value(i64 %i.el, !1840, !DIExpression(), !2891)
    #dbg_value(i64 %i.el, !1855, !DIExpression(), !2898)
    #dbg_value(i8 0, !1841, !DIExpression(), !2891)
    #dbg_value(i64 1, !1859, !DIExpression(), !2901)
    #dbg_value(i64 1, !1857, !DIExpression(), !2903)
    #dbg_value(i64 1, !1859, !DIExpression(), !2907)
    #dbg_value(i64 %i.ex, !1842, !DIExpression(), !2908)
  %i.ez = icmp sgt i64 %i.ex, -1, !dbg !3504
  call void @llvm.assume(i1 %i.ez), !dbg !3505
    #dbg_value(ptr %.val, !1862, !DIExpression(), !2909)
  %2 = load i64, ptr %.val, align 8, !dbg !3506, !range !1731, !alias.scope !3301, !noalias !3092, !noundef !718
  %3 = icmp eq i64 %i.ex, %2, !dbg !3507
  br i1 %3, label %bb.az, label %bb.ba, !dbg !3507

bb.ay:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.el, i64 noundef %i.dv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !3508, !noalias !3302
  unreachable, !dbg !3508

bb.az:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !3509, !noalias !3092
  br label %bb.ba, !dbg !3510

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i
  %i.fa = load ptr, ptr %i.m, align 8, !dbg !3511, !alias.scope !3301, !noalias !3092, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fa, !1856, !DIExpression(), !2898)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.el, !dbg !3512 ; 3 uses
    #dbg_value(ptr %i.fb, !1843, !DIExpression(), !2913)
    #dbg_value(ptr %i.fb, !1856, !DIExpression(), !2903)
    #dbg_value(ptr %i.fb, !1868, !DIExpression(), !2915)
  %i.fc = icmp samesign ult i64 %i.el, %i.ex, !dbg !3513
  br i1 %i.fc, label %bb.bb, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !3513

bb.bb:                                            ; preds = %bb.ba
    #dbg_value(ptr %i.fb, !1871, !DIExpression(), !2917)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1, !dbg !3514
    #dbg_value(ptr %i.fd, !1874, !DIExpression(), !2917)
  %i.fe = sub nuw nsw i64 %i.ex, %i.el, !dbg !3515
    #dbg_value(i64 %i.fe, !1875, !DIExpression(), !2917)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull align 1 %i.fb, i64 %i.fe, i1 false), !dbg !3516, !noalias !3092
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !3517

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.bb, %bb.ba
    #dbg_value(i8 0, !1869, !DIExpression(), !2915)
  store i8 0, ptr %i.fb, align 1, !dbg !3518, !noalias !3092
  %i.ff = add nuw i64 %i.ex, 1, !dbg !3519        ; 3 uses
    #dbg_value(i64 %i.ff, !1853, !DIExpression(), !2896)
  store i64 %i.ff, ptr %i.l, align 8, !dbg !3520, !alias.scope !3301, !noalias !3092
    #dbg_value(i64 %i.ey, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2884)
    #dbg_value(ptr undef, !3087, !DIExpression(), !2531)
    #dbg_value(ptr undef, !3083, !DIExpression(), !2530)
    #dbg_value(ptr undef, !3079, !DIExpression(), !2529)
    #dbg_value(ptr undef, !3080, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2885)
  %exitcond.not.i = icmp eq i64 %i.ey, %i.eu, !dbg !3498
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !3499

.loopexit7.thread.i:                              ; preds = %bb.ax, %bb.aw
  %.sroa.014.0.ph.i = phi i64 [ %i.ev, %bb.ax ], [ %i.el, %bb.aw ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !3073, !DIExpression(), !2874)
  %i.fg = add i64 %.sroa.014.0.ph.i, -3, !dbg !3521
    #dbg_value(i64 %i.fg, !3077, !DIExpression(), !2918)
    #dbg_value(i64 %i.fg, !3299, !DIExpression(), !2920)
    #dbg_value(i64 %i.fg, !3303, !DIExpression(), !2923)
    #dbg_value(i64 %i.fg, !3306, !DIExpression(), !2926)
  br label %bb.bc, !dbg !3522

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.ff, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !3494 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.es, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.ev, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !3523
    #dbg_value(i64 %.sroa.014.0.i, !3073, !DIExpression(), !2874)
  %i.fh = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !3521 ; 4 uses
    #dbg_value(i64 %i.fh, !3077, !DIExpression(), !2918)
    #dbg_value(i64 %i.fh, !3299, !DIExpression(), !2920)
    #dbg_value(i64 %i.fh, !3303, !DIExpression(), !2923)
    #dbg_value(i64 %i.fh, !3306, !DIExpression(), !2926)
  br i1 %i.dy, label %bb.bd, label %bb.bc, !dbg !3522

bb.bc:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.fi = phi i64 [ %i.dv, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !3494 ; 2 uses
  %i.fj = phi i64 [ %i.fg, %.loopexit7.thread.i ], [ %i.fh, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1369.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !3298, !DIExpression(), !2927)
    #dbg_value(ptr %.val, !3295, !DIExpression(), !2928)
    #dbg_value(ptr %.val, !3292, !DIExpression(), !2929)
    #dbg_value(ptr %.val, !3309, !DIExpression(), !2932)
    #dbg_value(i64 %i.fj, !3299, !DIExpression(), !2927)
    #dbg_value(i64 %i.fj, !3303, !DIExpression(), !2934)
    #dbg_value(i64 %i.fj, !3306, !DIExpression(), !2936)
    #dbg_value(ptr poison, !3304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2934)
    #dbg_value(ptr poison, !3307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2936)
    #dbg_value(i64 %i.fi, !3304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2934)
    #dbg_value(i64 %i.fi, !3307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2936)
  %i.fk = icmp ult i64 %i.fj, %i.fi, !dbg !3524
  br i1 %i.fk, label %bb.be, label %bb.bf, !dbg !3524

bb.bd:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !3298, !DIExpression(), !2920)
    #dbg_value(ptr %.val, !3295, !DIExpression(), !2938)
    #dbg_value(ptr %.val, !3292, !DIExpression(), !2940)
    #dbg_value(ptr %.val, !3309, !DIExpression(), !2942)
    #dbg_value(ptr poison, !3304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2923)
    #dbg_value(ptr poison, !3307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2926)
    #dbg_value(i64 %.pre, !3304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2923)
    #dbg_value(i64 %.pre, !3307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2926)
  %i.fl = icmp ult i64 %i.fh, %.pre, !dbg !3525
  br i1 %i.fl, label %bb.bh, label %bb.bi, !dbg !3525

bb.be:                                            ; preds = %bb.bc
  %i.fm = load ptr, ptr %i.m, align 8, !dbg !3526, !noalias !3092, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fm, !3304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2934)
    #dbg_value(ptr %i.fm, !3307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2936)
  %i.fn = lshr exact i64 %.sroa.07.1369.i, 3, !dbg !3527
  %i.fo = trunc i64 %i.fn to i8, !dbg !3528
  %i.fp = add i8 %i.fo, 1, !dbg !3528
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fj, !dbg !3529
  %i.fr = or i8 %i.fp, -128, !dbg !3530
  store i8 %i.fr, ptr %i.fq, align 1, !dbg !3530, !noalias !3092
    #dbg_value(i64 %i.fj, !3077, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2918)
    #dbg_value(i64 %i.fj, !3299, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2920)
    #dbg_value(i64 %i.fj, !3303, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2923)
    #dbg_value(i64 %i.fj, !3306, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2926)
  %.sroa.018.018.i = add nuw i64 %i.fj, 1, !dbg !3531 ; 3 uses
  %i.fs = load i64, ptr %i.l, align 8, !dbg !3532, !noalias !3092, !noundef !718 ; 2 uses
  %i.ft = icmp ult i64 %.sroa.018.018.i, %i.fs, !dbg !3533
  br i1 %i.ft, label %.lr.ph21.i, label %._crit_edge.i, !dbg !3533

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fj, i64 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !3524, !noalias !3092
  unreachable, !dbg !3524

bb.bg:                                            ; preds = %.lr.ph21.i
  %i.fu = add i64 %.sroa.07.219.i, -8, !dbg !3534
    #dbg_value(i64 %i.fu, !3072, !DIExpression(), !2850)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.020.i, 1, !dbg !3531 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !3306, !DIExpression(), !2926)
    #dbg_value(i64 %.sroa.018.0.i, !3303, !DIExpression(), !2923)
    #dbg_value(i64 %.sroa.018.0.i, !3299, !DIExpression(), !2920)
    #dbg_value(i64 %.sroa.018.0.i, !3077, !DIExpression(), !2918)
    #dbg_value(ptr %.val, !3298, !DIExpression(), !2954)
    #dbg_value(ptr %.val, !3295, !DIExpression(), !2955)
    #dbg_value(ptr %.val, !3292, !DIExpression(), !2956)
    #dbg_value(ptr %.val, !3309, !DIExpression(), !2958)
    #dbg_value(i64 %.sroa.018.0.i, !3299, !DIExpression(), !2954)
    #dbg_value(i64 %.sroa.018.0.i, !3303, !DIExpression(), !2959)
    #dbg_value(i64 %.sroa.018.0.i, !3306, !DIExpression(), !2960)
  %i.fv = load i64, ptr %i.l, align 8, !dbg !3532, !noalias !3092, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !3304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2959)
    #dbg_value(ptr poison, !3307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2960)
    #dbg_value(i64 %i.fv, !3304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2959)
    #dbg_value(i64 %i.fv, !3307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2960)
  %i.fw = icmp ult i64 %.sroa.018.0.i, %i.fv, !dbg !3533
  br i1 %i.fw, label %.lr.ph21.i, label %._crit_edge.i, !dbg !3533

.lr.ph21.i:                                       ; preds = %bb.be, %bb.bg
  %.sroa.018.020.i = phi i64 [ %.sroa.018.0.i, %bb.bg ], [ %.sroa.018.018.i, %bb.be ] ; 2 uses
  %.sroa.07.219.i = phi i64 [ %i.fu, %bb.bg ], [ %.sroa.07.1369.i, %bb.be ] ; 3 uses
    #dbg_value(i64 %.sroa.07.219.i, !3072, !DIExpression(), !2850)
  %i.fx = load ptr, ptr %i.m, align 8, !dbg !3535, !noalias !3092, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fx, !3304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2959)
    #dbg_value(ptr %i.fx, !3307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2960)
  %i.fy = and i64 %.sroa.07.219.i, 56, !dbg !3536
  %i.fz = lshr i64 %i.dx, %i.fy, !dbg !3536
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.018.020.i, !dbg !3537
  %i.gb = trunc i64 %i.fz to i8, !dbg !3538
  store i8 %i.gb, ptr %i.ga, align 1, !dbg !3538, !noalias !3092
    #dbg_value(i64 %.sroa.018.020.i, !3077, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2918)
    #dbg_value(i64 %.sroa.018.020.i, !3299, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2920)
    #dbg_value(i64 %.sroa.018.020.i, !3303, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2923)
    #dbg_value(i64 %.sroa.018.020.i, !3306, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2926)
  %i.gc = icmp eq i64 %.sroa.07.219.i, 0, !dbg !3539
    #dbg_value(i64 %.sroa.07.219.i, !3072, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !2850)
  br i1 %i.gc, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.bg, !dbg !3539

._crit_edge.i:                                    ; preds = %bb.bg, %bb.be
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.018.i, %bb.be ], [ %.sroa.018.0.i, %bb.bg ], !dbg !3531
  %.lcssa.i = phi i64 [ %i.fs, %bb.be ], [ %i.fv, %bb.bg ], !dbg !3532
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !3533, !noalias !3092
  unreachable, !dbg !3533

bb.bh:                                            ; preds = %bb.bd
  %i.gd = load ptr, ptr %i.m, align 8, !dbg !3540, !noalias !3092, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.gd, !3304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2923)
    #dbg_value(ptr %i.gd, !3307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2926)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fh, !dbg !3541
  %i.gf = trunc nuw nsw i64 %i.dx to i8, !dbg !3542
  store i8 %i.gf, ptr %i.ge, align 1, !dbg !3542, !noalias !3092
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !3543

bb.bi:                                            ; preds = %bb.bd
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fh, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !3525, !noalias !3092
  unreachable, !dbg !3525

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairE0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph21.i, %bb.bh
  ret void, !dbg !3544
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs0_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3547 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !4034, !DIExpression(), !3600)
    #dbg_value(ptr poison, !4038, !DIExpression(), !3601)
    #dbg_value(ptr poison, !4042, !DIExpression(), !3602)
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !4132, !DIExpression(), !3610)
    #dbg_value(ptr poison, !4136, !DIExpression(), !3611)
    #dbg_value(ptr poison, !4140, !DIExpression(), !3612)
  %i.j = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !4031, !DIExpression(), !4143)
    #dbg_declare(ptr %1, !4032, !DIExpression(), !4144)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !4344
  %.val = load ptr, ptr %0, align 8, !dbg !4345, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4145), !dbg !4345
    #dbg_value(ptr poison, !4117, !DIExpression(), !3615)
    #dbg_declare(ptr %1, !4118, !DIExpression(), !3616)
end_hunk_0
begin_hunk_1_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs0_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4272, !DIExpression(), !3830)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4269, !DIExpression(), !3832)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4285, !DIExpression(), !3834)
    #dbg_value(ptr poison, !4280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3815)
    #dbg_value(ptr poison, !4283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3818)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !4280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3815)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !4283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3818)
  %i.bx = icmp ult i64 %i.bt, %.pre.i.i.i.i.i.i, !dbg !4422
  br i1 %i.bx, label %bb.s, label %.invoke.i.i.i.i, !dbg !4422

bb.q:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.x, align 8, !dbg !4423, !noalias !4162, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.by, !4280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3826)
    #dbg_value(ptr %i.by, !4283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3828)
  %i.bz = lshr exact i64 %.sroa.07.1341.i.i.i.i.i.i.i, 3, !dbg !4424
  %i.ca = trunc i64 %i.bz to i8, !dbg !4425
  %i.cb = add i8 %i.ca, 1, !dbg !4425
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv, !dbg !4426
  %i.cd = or i8 %i.cb, -128, !dbg !4427
  store i8 %i.cd, ptr %i.cc, align 1, !dbg !4427, !noalias !4162
    #dbg_value(i64 %i.bv, !4069, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3810)
    #dbg_value(i64 %i.bv, !4276, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3812)
    #dbg_value(i64 %i.bv, !4279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3815)
    #dbg_value(i64 %i.bv, !4282, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3818)
  %.sroa.018.013.i.i.i.i.i.i.i = add nuw i64 %i.bv, 1, !dbg !4428 ; 3 uses
  %i.ce = load i64, ptr %i.w, align 8, !dbg !4429, !noalias !4162, !noundef !718 ; 2 uses
  %i.cf = icmp ult i64 %.sroa.018.013.i.i.i.i.i.i.i, %i.ce, !dbg !4430
  br i1 %i.cf, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !4430

bb.r:                                             ; preds = %.lr.ph16.i.i.i.i.i.i.i
  %i.cg = add i64 %.sroa.07.214.i.i.i.i.i.i.i, -8, !dbg !4431
    #dbg_value(i64 %i.cg, !4064, !DIExpression(), !3732)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.015.i.i.i.i.i.i.i, 1, !dbg !4428 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4282, !DIExpression(), !3818)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4279, !DIExpression(), !3815)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4276, !DIExpression(), !3812)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4069, !DIExpression(), !3810)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4275, !DIExpression(), !3846)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4272, !DIExpression(), !3847)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4269, !DIExpression(), !3848)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4285, !DIExpression(), !3850)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4276, !DIExpression(), !3846)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4279, !DIExpression(), !3851)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4282, !DIExpression(), !3852)
  %i.ch = load i64, ptr %i.w, align 8, !dbg !4429, !noalias !4162, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !4280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3851)
    #dbg_value(ptr poison, !4283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3852)
    #dbg_value(i64 %i.ch, !4280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3851)
    #dbg_value(i64 %i.ch, !4283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3852)
  %i.ci = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.ch, !dbg !4430
  br i1 %i.ci, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !4430

.lr.ph16.i.i.i.i.i.i.i:                           ; preds = %bb.q, %bb.r
  %.sroa.018.015.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.07.214.i.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.r ], [ %.sroa.07.1341.i.i.i.i.i.i.i, %bb.q ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !4064, !DIExpression(), !3732)
  %i.cj = load ptr, ptr %i.x, align 8, !dbg !4432, !noalias !4162, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cj, !4280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3851)
    #dbg_value(ptr %i.cj, !4283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3852)
  %i.ck = and i64 %.sroa.07.214.i.i.i.i.i.i.i, 56, !dbg !4433
  %i.cl = lshr i64 %i.ag, %i.ck, !dbg !4433
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.018.015.i.i.i.i.i.i.i, !dbg !4434
  %i.cn = trunc i64 %i.cl to i8, !dbg !4435
  store i8 %i.cn, ptr %i.cm, align 1, !dbg !4435, !noalias !4162
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !4069, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3810)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !4276, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3812)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !4279, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3815)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !4282, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3818)
  %i.co = icmp eq i64 %.sroa.07.214.i.i.i.i.i.i.i, 0, !dbg !4436
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !4064, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !3732)
  br i1 %i.co, label %.loopexit.i.i.i, label %bb.r, !dbg !4436

bb.s:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.x, align 8, !dbg !4437, !noalias !4162, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cp, !4280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3815)
    #dbg_value(ptr %i.cp, !4283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3818)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bt, !dbg !4438
  %i.cr = trunc nuw nsw i64 %i.ag to i8, !dbg !4439
  store i8 %i.cr, ptr %i.cq, align 1, !dbg !4439, !noalias !4162
  br label %.loopexit.i.i.i, !dbg !4440

.invoke.i.i.i.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cs = phi i64 [ %i.bt, %bb.p ], [ %i.bv, %bb.o ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.r ]
  %i.ct = phi i64 [ %.pre.i.i.i.i.i.i, %bb.p ], [ %i.bu, %bb.o ], [ %i.ce, %bb.q ], [ %i.ch, %bb.r ]
  %i.cu = phi ptr [ @4, %bb.p ], [ @2, %bb.o ], [ @3, %bb.q ], [ @3, %bb.r ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4441, !noalias !4162

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.e, %.invoke.i.i.i.i, %bb.l, %.noexc12.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %bb.d
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #11
          to label %.body.i.i.i unwind label %bb.t, !dbg !4442, !noalias !4162

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4443, !noalias !4162
  unreachable, !dbg !4443

bb.u:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4444, !noalias !4161
    #dbg_value(ptr %.val, !4299, !DIExpression(), !3866)
  store ptr %.val, ptr %i.g, align 8, !dbg !4445, !noalias !4161
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4445
  store i8 -1, ptr %i.cw, align 8, !dbg !4445, !noalias !4161
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.b, !dbg !4446, !noalias !4161

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4447, !noalias !4161
  br label %bb.d, !dbg !4448

.loopexit.i.i.i:                                  ; preds = %.lr.ph16.i.i.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4449, !noalias !4162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !4450, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4442, !noalias !4162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4451, !noalias !4161
    #dbg_value(ptr %.val, !4299, !DIExpression(), !3869)
  store ptr %.val, ptr %i.e, align 8, !dbg !4452, !noalias !4161
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !4452
  store i8 -1, ptr %i.cx, align 8, !dbg !4452, !noalias !4161
    #dbg_value(ptr %i.f, !4305, !DIExpression(), !3872)
    #dbg_value(ptr %i.f, !4307, !DIExpression(), !3875)
    #dbg_value(ptr %i.f, !4309, !DIExpression(), !3878)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !4453
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !4453, !noalias !4161, !nonnull !718, !noundef !718
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !4454
  %i.db = load i64, ptr %i.da, align 8, !dbg !4454, !noalias !4161, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.db)
          to label %bb.x unwind label %bb.w, !dbg !4455, !noalias !4161

bb.w:                                             ; preds = %.loopexit.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #11
          to label %.body.i.i.i unwind label %bb.ad, !dbg !4456, !noalias !4161

bb.x:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4457, !noalias !4161
    #dbg_value(ptr %i.f, !1894, !DIExpression(), !3886)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.y, !dbg !4458, !noalias !4161

bb.y:                                             ; preds = %bb.x
  %i.dd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !1899, !DIExpression(), !3888)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.aa, !dbg !4459, !noalias !4161

bb.z:                                             ; preds = %bb.x
    #dbg_value(ptr %i.f, !1899, !DIExpression(), !3890)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !4460, !noalias !4161

bb.aa:                                            ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4458, !noalias !4161
  unreachable, !dbg !4458

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4456, !noalias !4161
    #dbg_value(ptr %i.i, !1753, !DIExpression(), !3892)
    #dbg_value(ptr %i.i, !1760, !DIExpression(), !3894)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.ab, !dbg !4461, !noalias !4161

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !1767, !DIExpression(), !3896)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i.i.i unwind label %bb.ac, !dbg !4462, !noalias !4161

bb.ac:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4461, !noalias !4161
  unreachable, !dbg !4461

common.resume.i.i.i:                              ; preds = %bb.ab, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.df, %bb.ab ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !4463

bb.ad:                                            ; preds = %bb.w, %.body.i.i.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4464, !noalias !4161
  unreachable, !dbg !4464

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.i, !1767, !DIExpression(), !3898)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !4465, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !4349, !noalias !4161
    #dbg_value(ptr %.val, !4311, !DIExpression(), !3901)
  %i.di = load i64, ptr %i.k, align 8, !dbg !4466, !noalias !4145, !noundef !718 ; 6 uses
  %i.dj = icmp sgt i64 %i.di, -1, !dbg !4467
  call void @llvm.assume(i1 %i.dj), !dbg !4468
  %i.dk = sub nsw i64 %i.di, %i.dy, !dbg !4469    ; 4 uses
    #dbg_value(i64 %i.dk, !4123, !DIExpression(), !3902)
    #dbg_value(i64 56, !4125, !DIExpression(), !3903)
  %i.dl = icmp ult i64 %i.dk, 128, !dbg !4470     ; 2 uses
  br i1 %i.dl, label %.thread.i, label %.preheader.i, !dbg !4470

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !4471, !noalias !4145
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !4472

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ae, %bb.a
  %i.dm = load ptr, ptr %i.l, align 8, !dbg !4473, !alias.scope !4160, !noalias !4145, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dm, !1729, !DIExpression(), !3643)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.m, !dbg !4474
    #dbg_value(ptr %i.dn, !1702, !DIExpression(), !3907)
    #dbg_value(ptr %i.dn, !1788, !DIExpression(), !3909)
    #dbg_value(i8 -1, !1791, !DIExpression(), !3909)
  store i8 -1, ptr %i.dn, align 1, !dbg !4475, !noalias !4145
  %i.do = add i64 %i.m, 1, !dbg !4476             ; 4 uses
  store i64 %i.do, ptr %i.k, align 8, !dbg !4476, !alias.scope !4160, !noalias !4145
    #dbg_value(i32 2, !4120, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3631)
    #dbg_value(ptr %.val, !4147, !DIExpression(), !3621)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !3633)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !3635)
    #dbg_value(i8 -1, !1699, !DIExpression(), !3633)
    #dbg_value(i64 1, !1710, !DIExpression(), !3638)
    #dbg_value(i64 %i.do, !1700, !DIExpression(), !3641)
    #dbg_value(i64 %i.do, !1724, !DIExpression(), !3643)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !3644)
  %i.dp = load i64, ptr %.val, align 8, !dbg !4347, !range !1731, !alias.scope !4160, !noalias !4145, !noundef !718
  %i.dq = icmp eq i64 %i.do, %i.dp, !dbg !4348
  br i1 %i.dq, label %bb.af, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !4348

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !4471, !noalias !4145
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !4472

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.af, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.dr = load ptr, ptr %i.l, align 8, !dbg !4473, !alias.scope !4160, !noalias !4145, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dr, !1729, !DIExpression(), !3643)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do, !dbg !4474
    #dbg_value(ptr %i.ds, !1702, !DIExpression(), !3907)
    #dbg_value(ptr %i.ds, !1788, !DIExpression(), !3909)
    #dbg_value(i8 -1, !1791, !DIExpression(), !3909)
  store i8 -1, ptr %i.ds, align 1, !dbg !4475, !noalias !4145
  %i.dt = add i64 %i.m, 2, !dbg !4476             ; 4 uses
  store i64 %i.dt, ptr %i.k, align 8, !dbg !4476, !alias.scope !4160, !noalias !4145
    #dbg_value(i32 3, !4120, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3631)
    #dbg_value(ptr %.val, !4147, !DIExpression(), !3621)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !3633)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !3635)
    #dbg_value(i8 -1, !1699, !DIExpression(), !3633)
    #dbg_value(i64 1, !1710, !DIExpression(), !3638)
    #dbg_value(i64 %i.dt, !1700, !DIExpression(), !3641)
    #dbg_value(i64 %i.dt, !1724, !DIExpression(), !3643)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !3644)
  %i.du = load i64, ptr %.val, align 8, !dbg !4347, !range !1731, !alias.scope !4160, !noalias !4145, !noundef !718
  %i.dv = icmp eq i64 %i.dt, %i.du, !dbg !4348
  br i1 %i.dv, label %bb.ag, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !4348

bb.ag:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !4471, !noalias !4145
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !4472

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.ag, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.dw = load ptr, ptr %i.l, align 8, !dbg !4473, !alias.scope !4160, !noalias !4145, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dw, !1729, !DIExpression(), !3643)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dt, !dbg !4474
    #dbg_value(ptr %i.dx, !1702, !DIExpression(), !3907)
    #dbg_value(ptr %i.dx, !1788, !DIExpression(), !3909)
    #dbg_value(i8 -1, !1791, !DIExpression(), !3909)
  store i8 -1, ptr %i.dx, align 1, !dbg !4475, !noalias !4145
  %i.dy = add i64 %i.m, 3, !dbg !4476             ; 10 uses
  store i64 %i.dy, ptr %i.k, align 8, !dbg !4476, !alias.scope !4160, !noalias !4145
    #dbg_value(i32 3, !4120, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3631)
    #dbg_value(ptr %.val, !4311, !DIExpression(), !3911)
    #dbg_value(i64 %i.dy, !4121, !DIExpression(), !3912)
    #dbg_value(i64 %i.dy, !4158, !DIExpression(), !3630)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !4477, !alias.scope !4145, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !4109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3913)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4477
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !4477, !alias.scope !4145
    #dbg_value(i64 %.sroa.4.0.copyload.i, !4109, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3913)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4477
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !4477, !alias.scope !4145 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !4109, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3913)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4477
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !4477, !alias.scope !4145 ; 3 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4109, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3913)
    #dbg_value(ptr poison, !4108, !DIExpression(), !3914)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !4097, !DIExpression(DW_OP_deref), !3915)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4098, !DIExpression(), !3915)
    #dbg_value(ptr poison, !4095, !DIExpression(), !3916)
    #dbg_value(ptr poison, !4302, !DIExpression(), !3918)
    #dbg_value(ptr poison, !4302, !DIExpression(), !3919)
    #dbg_value(ptr poison, !4302, !DIExpression(), !3920)
    #dbg_declare(ptr %i.i, !4099, !DIExpression(), !3921)
    #dbg_declare(ptr %i.f, !4100, !DIExpression(), !3922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !4478, !noalias !4161
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !4479, !noalias !4161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !4480, !noalias !4161
    #dbg_value(ptr %.val, !4299, !DIExpression(), !3924)
  store ptr %.val, ptr %i.h, align 8, !dbg !4481, !noalias !4161
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !4481
  store i8 -1, ptr %i.dz, align 8, !dbg !4481, !noalias !4161
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.b, !dbg !4482, !noalias !4161

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.ed, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !4483 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !4125, !DIExpression(), !3903)
  %i.ea = and i64 %.sroa.07.0.i, 56, !dbg !4484
  %i.eb = lshr i64 %i.dk, %i.ea, !dbg !4484
  %i.ec = icmp eq i64 %i.eb, 0, !dbg !4484
  %i.ed = add i64 %.sroa.07.0.i, -8, !dbg !4485
    #dbg_value(i64 %i.ed, !4125, !DIExpression(), !3903)
  br i1 %i.ec, label %.preheader.i, label %bb.ah, !dbg !4484

bb.ah:                                            ; preds = %.preheader.i
  %i.ee = lshr exact i64 %.sroa.07.0.i, 3, !dbg !4486 ; 2 uses
  %i.ef = add nuw nsw i64 %i.ee, 2, !dbg !4487    ; 2 uses
    #dbg_value(i64 %i.ef, !4124, !DIExpression(), !3925)
    #dbg_value(i64 %.sroa.07.0.i, !4125, !DIExpression(), !3903)
  %i.eg = icmp eq i64 %.sroa.07.0.i, 0, !dbg !4488
  br i1 %i.eg, label %.thread.i, label %bb.ai, !dbg !4488

bb.ai:                                            ; preds = %bb.ah
  %.not.i = icmp eq i64 %i.ef, 3, !dbg !4489
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.aj, !dbg !4489

.thread.i:                                        ; preds = %bb.ah, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.dt, %bb.ah ], [ %i.do, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !4490 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.ah ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.ah ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !4127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !3926)
    #dbg_value(!DIArgList(i64 %i.dy, i64 %.sroa.02.06.i), !4126, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !3927)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4491, !noalias !4145
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.dy), !dbg !4492, !noalias !4145
    #dbg_value(ptr %i.j, !1800, !DIExpression(), !3929)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j), !dbg !4493, !noalias !4145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !4494, !noalias !4145
  %.pre.pre = load i64, ptr %i.k, align 8, !dbg !4495, !noalias !4145
  br label %.loopexit7.i, !dbg !4496

bb.aj:                                            ; preds = %bb.ai
  %i.eh = add nsw i64 %i.ee, -1, !dbg !4497       ; 3 uses
    #dbg_value(i64 %i.eh, !4128, !DIExpression(), !3936)
  %i.ei = add nuw i64 %i.eh, %i.dy, !dbg !4498    ; 2 uses
    #dbg_value(i64 %i.ei, !4126, !DIExpression(), !3927)
    #dbg_value(i64 0, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3937)
    #dbg_value(i64 %i.eh, !4129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3937)
    #dbg_value(ptr undef, !4140, !DIExpression(), !3612)
    #dbg_value(ptr undef, !4136, !DIExpression(), !3611)
    #dbg_value(ptr undef, !4132, !DIExpression(), !3610)
    #dbg_value(ptr undef, !4133, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3938)
  %.not23.i = icmp eq i64 %i.eh, 0, !dbg !4499
  br i1 %.not23.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !4500

.lr.ph.i.preheader:                               ; preds = %bb.aj
  %i.ej = icmp samesign ult i64 %i.di, %i.dy
  br i1 %i.ej, label %bb.ak, label %.lr.ph.i, !dbg !4501, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ek = phi i64 [ %i.es, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.di, %.lr.ph.i.preheader ], !dbg !4502 ; 5 uses
  %.sroa.016.017.i = phi i64 [ %i.el, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.017.i, !4137, !DIExpression(), !3941)
    #dbg_value(i64 %.sroa.016.017.i, !4150, !DIExpression(), !3624)
    #dbg_value(i64 %.sroa.016.017.i, !4154, !DIExpression(), !3627)
  %i.el = add nuw i64 %.sroa.016.017.i, 1, !dbg !4503 ; 2 uses
    #dbg_value(i64 %i.el, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3937)
    #dbg_value(ptr %.val, !4157, !DIExpression(), !3630)
  call void @llvm.experimental.noalias.scope.decl(metadata !4322), !dbg !4504
    #dbg_value(ptr %.val, !1839, !DIExpression(), !3944)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !3945)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !3947)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !3949)
    #dbg_value(i64 %i.dy, !1840, !DIExpression(), !3944)
    #dbg_value(i64 %i.dy, !1855, !DIExpression(), !3951)
    #dbg_value(i8 0, !1841, !DIExpression(), !3944)
    #dbg_value(i64 1, !1859, !DIExpression(), !3954)
    #dbg_value(i64 1, !1857, !DIExpression(), !3956)
    #dbg_value(i64 1, !1859, !DIExpression(), !3960)
    #dbg_value(i64 %i.ek, !1842, !DIExpression(), !3961)
  %i.em = icmp sgt i64 %i.ek, -1, !dbg !4505
  call void @llvm.assume(i1 %i.em), !dbg !4506
    #dbg_value(ptr %.val, !1862, !DIExpression(), !3962)
  %2 = load i64, ptr %.val, align 8, !dbg !4507, !range !1731, !alias.scope !4322, !noalias !4145, !noundef !718
  %3 = icmp eq i64 %i.ek, %2, !dbg !4508
  br i1 %3, label %bb.al, label %bb.am, !dbg !4508

bb.ak:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.dy, i64 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !4509, !noalias !4323
  unreachable, !dbg !4509

bb.al:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !4510, !noalias !4145
  br label %bb.am, !dbg !4511

bb.am:                                            ; preds = %bb.al, %.lr.ph.i
  %i.en = load ptr, ptr %i.l, align 8, !dbg !4512, !alias.scope !4322, !noalias !4145, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.en, !1856, !DIExpression(), !3951)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.dy, !dbg !4513 ; 3 uses
    #dbg_value(ptr %i.eo, !1843, !DIExpression(), !3966)
    #dbg_value(ptr %i.eo, !1856, !DIExpression(), !3956)
    #dbg_value(ptr %i.eo, !1868, !DIExpression(), !3968)
  %i.ep = icmp samesign ult i64 %i.dy, %i.ek, !dbg !4514
  br i1 %i.ep, label %bb.an, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !4514

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %i.eo, !1871, !DIExpression(), !3970)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1, !dbg !4515
    #dbg_value(ptr %i.eq, !1874, !DIExpression(), !3970)
  %i.er = sub nuw nsw i64 %i.ek, %i.dy, !dbg !4516
    #dbg_value(i64 %i.er, !1875, !DIExpression(), !3970)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr nonnull align 1 %i.eo, i64 %i.er, i1 false), !dbg !4517, !noalias !4145
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !4518

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.an, %bb.am
    #dbg_value(i8 0, !1869, !DIExpression(), !3968)
  store i8 0, ptr %i.eo, align 1, !dbg !4519, !noalias !4145
  %i.es = add nuw i64 %i.ek, 1, !dbg !4520        ; 3 uses
    #dbg_value(i64 %i.es, !1853, !DIExpression(), !3949)
  store i64 %i.es, ptr %i.k, align 8, !dbg !4521, !alias.scope !4322, !noalias !4145
    #dbg_value(i64 %i.el, !4129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3937)
    #dbg_value(ptr undef, !4140, !DIExpression(), !3612)
    #dbg_value(ptr undef, !4136, !DIExpression(), !3611)
    #dbg_value(ptr undef, !4132, !DIExpression(), !3610)
    #dbg_value(ptr undef, !4133, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3938)
  %exitcond.not.i = icmp eq i64 %i.el, %i.eh, !dbg !4499
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !4500

.loopexit7.thread.i:                              ; preds = %bb.aj, %bb.ai
  %.sroa.014.0.ph.i = phi i64 [ %i.ei, %bb.aj ], [ %i.dy, %bb.ai ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !4126, !DIExpression(), !3927)
  %i.et = add i64 %.sroa.014.0.ph.i, -3, !dbg !4522
    #dbg_value(i64 %i.et, !4130, !DIExpression(), !3971)
    #dbg_value(i64 %i.et, !4320, !DIExpression(), !3973)
    #dbg_value(i64 %i.et, !4324, !DIExpression(), !3976)
    #dbg_value(i64 %i.et, !4327, !DIExpression(), !3979)
  br label %bb.ao, !dbg !4523

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.es, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !4495 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.ef, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.ei, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !4524
    #dbg_value(i64 %.sroa.014.0.i, !4126, !DIExpression(), !3927)
  %i.eu = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !4522 ; 4 uses
    #dbg_value(i64 %i.eu, !4130, !DIExpression(), !3971)
    #dbg_value(i64 %i.eu, !4320, !DIExpression(), !3973)
    #dbg_value(i64 %i.eu, !4324, !DIExpression(), !3976)
    #dbg_value(i64 %i.eu, !4327, !DIExpression(), !3979)
  br i1 %i.dl, label %bb.ap, label %bb.ao, !dbg !4523

bb.ao:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.ev = phi i64 [ %i.di, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !4495 ; 2 uses
  %i.ew = phi i64 [ %i.et, %.loopexit7.thread.i ], [ %i.eu, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1369.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !4319, !DIExpression(), !3980)
    #dbg_value(ptr %.val, !4316, !DIExpression(), !3981)
    #dbg_value(ptr %.val, !4313, !DIExpression(), !3982)
    #dbg_value(ptr %.val, !4330, !DIExpression(), !3985)
    #dbg_value(i64 %i.ew, !4320, !DIExpression(), !3980)
    #dbg_value(i64 %i.ew, !4324, !DIExpression(), !3987)
    #dbg_value(i64 %i.ew, !4327, !DIExpression(), !3989)
    #dbg_value(ptr poison, !4325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3987)
    #dbg_value(ptr poison, !4328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3989)
    #dbg_value(i64 %i.ev, !4325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3987)
    #dbg_value(i64 %i.ev, !4328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3989)
  %i.ex = icmp ult i64 %i.ew, %i.ev, !dbg !4525
  br i1 %i.ex, label %bb.aq, label %bb.ar, !dbg !4525

bb.ap:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !4319, !DIExpression(), !3973)
    #dbg_value(ptr %.val, !4316, !DIExpression(), !3991)
    #dbg_value(ptr %.val, !4313, !DIExpression(), !3993)
    #dbg_value(ptr %.val, !4330, !DIExpression(), !3995)
    #dbg_value(ptr poison, !4325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3976)
    #dbg_value(ptr poison, !4328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3979)
    #dbg_value(i64 %.pre, !4325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3976)
    #dbg_value(i64 %.pre, !4328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3979)
  %i.ey = icmp ult i64 %i.eu, %.pre, !dbg !4526
  br i1 %i.ey, label %bb.at, label %bb.au, !dbg !4526

bb.aq:                                            ; preds = %bb.ao
  %i.ez = load ptr, ptr %i.l, align 8, !dbg !4527, !noalias !4145, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ez, !4325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3987)
    #dbg_value(ptr %i.ez, !4328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3989)
  %i.fa = lshr exact i64 %.sroa.07.1369.i, 3, !dbg !4528
  %i.fb = trunc i64 %i.fa to i8, !dbg !4529
  %i.fc = add i8 %i.fb, 1, !dbg !4529
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew, !dbg !4530
  %i.fe = or i8 %i.fc, -128, !dbg !4531
  store i8 %i.fe, ptr %i.fd, align 1, !dbg !4531, !noalias !4145
    #dbg_value(i64 %i.ew, !4130, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3971)
    #dbg_value(i64 %i.ew, !4320, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3973)
    #dbg_value(i64 %i.ew, !4324, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3976)
    #dbg_value(i64 %i.ew, !4327, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3979)
  %.sroa.018.018.i = add nuw i64 %i.ew, 1, !dbg !4532 ; 3 uses
  %i.ff = load i64, ptr %i.k, align 8, !dbg !4533, !noalias !4145, !noundef !718 ; 2 uses
  %i.fg = icmp ult i64 %.sroa.018.018.i, %i.ff, !dbg !4534
  br i1 %i.fg, label %.lr.ph21.i, label %._crit_edge.i, !dbg !4534

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ew, i64 noundef %i.ev, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !4525, !noalias !4145
  unreachable, !dbg !4525

bb.as:                                            ; preds = %.lr.ph21.i
  %i.fh = add i64 %.sroa.07.219.i, -8, !dbg !4535
    #dbg_value(i64 %i.fh, !4125, !DIExpression(), !3903)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.020.i, 1, !dbg !4532 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !4327, !DIExpression(), !3979)
    #dbg_value(i64 %.sroa.018.0.i, !4324, !DIExpression(), !3976)
    #dbg_value(i64 %.sroa.018.0.i, !4320, !DIExpression(), !3973)
    #dbg_value(i64 %.sroa.018.0.i, !4130, !DIExpression(), !3971)
    #dbg_value(ptr %.val, !4319, !DIExpression(), !4007)
    #dbg_value(ptr %.val, !4316, !DIExpression(), !4008)
    #dbg_value(ptr %.val, !4313, !DIExpression(), !4009)
    #dbg_value(ptr %.val, !4330, !DIExpression(), !4011)
    #dbg_value(i64 %.sroa.018.0.i, !4320, !DIExpression(), !4007)
    #dbg_value(i64 %.sroa.018.0.i, !4324, !DIExpression(), !4012)
    #dbg_value(i64 %.sroa.018.0.i, !4327, !DIExpression(), !4013)
  %i.fi = load i64, ptr %i.k, align 8, !dbg !4533, !noalias !4145, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !4325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(ptr poison, !4328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4013)
    #dbg_value(i64 %i.fi, !4325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 %i.fi, !4328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4013)
  %i.fj = icmp ult i64 %.sroa.018.0.i, %i.fi, !dbg !4534
  br i1 %i.fj, label %.lr.ph21.i, label %._crit_edge.i, !dbg !4534

.lr.ph21.i:                                       ; preds = %bb.aq, %bb.as
  %.sroa.018.020.i = phi i64 [ %.sroa.018.0.i, %bb.as ], [ %.sroa.018.018.i, %bb.aq ] ; 2 uses
  %.sroa.07.219.i = phi i64 [ %i.fh, %bb.as ], [ %.sroa.07.1369.i, %bb.aq ] ; 3 uses
    #dbg_value(i64 %.sroa.07.219.i, !4125, !DIExpression(), !3903)
  %i.fk = load ptr, ptr %i.l, align 8, !dbg !4536, !noalias !4145, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fk, !4325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(ptr %i.fk, !4328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4013)
  %i.fl = and i64 %.sroa.07.219.i, 56, !dbg !4537
  %i.fm = lshr i64 %i.dk, %i.fl, !dbg !4537
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.018.020.i, !dbg !4538
  %i.fo = trunc i64 %i.fm to i8, !dbg !4539
  store i8 %i.fo, ptr %i.fn, align 1, !dbg !4539, !noalias !4145
    #dbg_value(i64 %.sroa.018.020.i, !4130, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3971)
    #dbg_value(i64 %.sroa.018.020.i, !4320, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3973)
    #dbg_value(i64 %.sroa.018.020.i, !4324, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3976)
    #dbg_value(i64 %.sroa.018.020.i, !4327, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3979)
  %i.fp = icmp eq i64 %.sroa.07.219.i, 0, !dbg !4540
    #dbg_value(i64 %.sroa.07.219.i, !4125, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !3903)
  br i1 %i.fp, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs0_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.as, !dbg !4540

._crit_edge.i:                                    ; preds = %bb.as, %bb.aq
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.018.i, %bb.aq ], [ %.sroa.018.0.i, %bb.as ], !dbg !4532
  %.lcssa.i = phi i64 [ %i.ff, %bb.aq ], [ %i.fi, %bb.as ], !dbg !4533
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !4534, !noalias !4145
  unreachable, !dbg !4534

bb.at:                                            ; preds = %bb.ap
  %i.fq = load ptr, ptr %i.l, align 8, !dbg !4541, !noalias !4145, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fq, !4325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3976)
    #dbg_value(ptr %i.fq, !4328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3979)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.eu, !dbg !4542
  %i.fs = trunc nuw nsw i64 %i.dk to i8, !dbg !4543
  store i8 %i.fs, ptr %i.fr, align 1, !dbg !4543, !noalias !4145
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs0_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !4544

bb.au:                                            ; preds = %bb.ap
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !4526, !noalias !4145
  unreachable, !dbg !4526

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs0_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph21.i, %bb.at
  ret void, !dbg !4545
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs1_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4548 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !4829, !DIExpression(), !4571)
    #dbg_value(ptr poison, !4833, !DIExpression(), !4572)
    #dbg_value(ptr poison, !4837, !DIExpression(), !4573)
  %i.i = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !4826, !DIExpression(), !4863)
    #dbg_declare(ptr %1, !4827, !DIExpression(), !4864)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !4968
  %.val = load ptr, ptr %0, align 8, !dbg !4969, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4865), !dbg !4969
    #dbg_value(ptr poison, !4848, !DIExpression(), !4576)
    #dbg_declare(ptr %1, !4849, !DIExpression(), !4577)
    #dbg_declare(ptr poison, !4853, !DIExpression(), !4578)
    #dbg_value(i64 3, !4850, !DIExpression(), !4579)
    #dbg_value(i8 -1, !4866, !DIExpression(), !4582)
    #dbg_value(i64 1, !4869, !DIExpression(), !4585)
end_hunk_1
begin_hunk_2_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs1_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4974, !noalias !4881
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.p = load i8, ptr %.sroa.5.0.copyload.i, align 1, !dbg !4975, !range !1732, !noalias !4881, !noundef !718
  %i.q = trunc nuw i8 %i.p to i1, !dbg !4975
  br i1 %i.q, label %bb.l, label %bb.d, !dbg !4975

bb.d:                                             ; preds = %bb.m, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4976, !noalias !4881
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i), "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i = load ptr, ptr %.sroa.7.0.copyload.i, align 8, !dbg !4977, !noalias !4881, !nonnull !718, !noundef !718
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 8, !dbg !4977
  %.val7.i.i.i = load i64, ptr %i.r, align 8, !dbg !4977, !noalias !4881, !noundef !718
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4620)
    #dbg_value(ptr poison, !4898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4620)
    #dbg_declare(ptr %i.c, !4901, !DIExpression(), !4621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4978, !noalias !4906
  store i64 0, ptr %i.c, align 8, !dbg !4979, !noalias !4906
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4979
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !dbg !4979, !noalias !4906
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4979
  store i64 0, ptr %i.t, align 8, !dbg !4979, !noalias !4906
    #dbg_value(ptr %i.c, !4902, !DIExpression(), !4627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4980, !noalias !4906
  store ptr %i.c, ptr %i.b, align 8, !dbg !4980, !noalias !4906
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4980
  store i8 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !4980, !noalias !4906
    #dbg_value(ptr poison, !4907, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4630)
    #dbg_value(ptr poison, !4907, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 64), !4630)
    #dbg_value(ptr poison, !4911, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4630)
    #dbg_declare(ptr %i.b, !4910, !DIExpression(), !4631)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4981, !noalias !4913
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 264, !dbg !4981
  invoke void @_RINvMsb_CscbFFjjIlwRm_5rcgenNtB6_11KeyIdMethod6deriveRShECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val7.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.j, !dbg !4982, !noalias !4914

.noexc.i.i.i.i:                                   ; preds = %bb.d
    #dbg_value(ptr %i.a, !4915, !DIExpression(), !4637)
    #dbg_value(ptr %i.a, !4917, !DIExpression(), !4640)
    #dbg_value(ptr %i.a, !4919, !DIExpression(), !4643)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4983
  %i.w = load ptr, ptr %i.v, align 8, !dbg !4983, !noalias !4913, !nonnull !718, !noundef !718
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4984
  %i.y = load i64, ptr %i.x, align 8, !dbg !4984, !noalias !4913, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.f unwind label %bb.e, !dbg !4985, !noalias !4914

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %.body.i.i.i.i unwind label %bb.i, !dbg !4986, !noalias !4921

bb.f:                                             ; preds = %.noexc.i.i.i.i
    #dbg_value(ptr %i.a, !1894, !DIExpression(), !4651)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i unwind label %bb.g, !dbg !4987, !noalias !4921

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !4653)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i.i unwind label %bb.h, !dbg !4988, !noalias !4921

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4987, !noalias !4921
  unreachable, !dbg !4987

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i: ; preds = %bb.f
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !4655)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.j, !dbg !4989, !noalias !4914

bb.i:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4990, !noalias !4921
  unreachable, !dbg !4990

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !4991

.body.i.i.i.i:                                    ; preds = %bb.j, %bb.g, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.aa, %bb.g ], [ %i.z, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #11
          to label %.body.i.i.i unwind label %bb.k, !dbg !4991, !noalias !4914

bb.k:                                             ; preds = %.body.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4992, !noalias !4914
  unreachable, !dbg !4992

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4993, !noalias !4881
    #dbg_value(ptr %.val, !4922, !DIExpression(), !4660)
  store ptr %.val, ptr %i.f, align 8, !dbg !4994, !noalias !4881
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !4994
  store i8 -1, ptr %i.af, align 8, !dbg !4994, !noalias !4881
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.b, !dbg !4995, !noalias !4881

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4996, !noalias !4881
  br label %bb.d, !dbg !4997

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4986, !noalias !4913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4998, !noalias !4906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !4999, !noalias !4927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4991, !noalias !4906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5000, !noalias !4881
    #dbg_value(ptr %.val, !4922, !DIExpression(), !4663)
  store ptr %.val, ptr %i.d, align 8, !dbg !5001, !noalias !4881
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !5001
  store i8 -1, ptr %i.ag, align 8, !dbg !5001, !noalias !4881
    #dbg_value(ptr %i.e, !4929, !DIExpression(), !4666)
    #dbg_value(ptr %i.e, !4931, !DIExpression(), !4669)
    #dbg_value(ptr %i.e, !4933, !DIExpression(), !4672)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !5002
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !5002, !noalias !4881, !nonnull !718, !noundef !718
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !5003
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !5003, !noalias !4881, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %bb.p unwind label %bb.o, !dbg !5004, !noalias !4881

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.v, !dbg !5005, !noalias !4881

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5006, !noalias !4881
    #dbg_value(ptr %i.e, !1894, !DIExpression(), !4680)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.r unwind label %bb.q, !dbg !5007, !noalias !4881

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !1899, !DIExpression(), !4682)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i.i unwind label %bb.s, !dbg !5008, !noalias !4881

bb.r:                                             ; preds = %bb.p
    #dbg_value(ptr %i.e, !1899, !DIExpression(), !4684)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !5009, !noalias !4881

bb.s:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5007, !noalias !4881
  unreachable, !dbg !5007

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5005, !noalias !4881
    #dbg_value(ptr %i.h, !1753, !DIExpression(), !4686)
    #dbg_value(ptr %i.h, !1760, !DIExpression(), !4688)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.t, !dbg !5010, !noalias !4881

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !1767, !DIExpression(), !4690)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i.i.i unwind label %bb.u, !dbg !5011, !noalias !4881

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5010, !noalias !4881
  unreachable, !dbg !5010

common.resume.i.i.i:                              ; preds = %bb.t, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.t ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !5012

bb.v:                                             ; preds = %bb.o, %.body.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5013, !noalias !4881
  unreachable, !dbg !5013

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.h, !1767, !DIExpression(), !4692)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !5014, !noalias !4881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !4973, !noalias !4881
    #dbg_value(ptr %.val, !4935, !DIExpression(), !4695)
  %i.ar = load i64, ptr %i.j, align 8, !dbg !5015, !noalias !4865, !noundef !718 ; 6 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !5016
  call void @llvm.assume(i1 %i.as), !dbg !5017
  %i.at = sub nsw i64 %i.ar, %i.bh, !dbg !5018    ; 4 uses
    #dbg_value(i64 %i.at, !4854, !DIExpression(), !4696)
    #dbg_value(i64 56, !4856, !DIExpression(), !4697)
  %i.au = icmp ult i64 %i.at, 128, !dbg !5019     ; 2 uses
  br i1 %i.au, label %.thread.i, label %.preheader.i, !dbg !5019

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5020, !noalias !4865
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5021

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.w, %bb.a
  %i.av = load ptr, ptr %i.k, align 8, !dbg !5022, !alias.scope !4880, !noalias !4865, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.av, !1729, !DIExpression(), !4604)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.l, !dbg !5023
    #dbg_value(ptr %i.aw, !1702, !DIExpression(), !4701)
    #dbg_value(ptr %i.aw, !1788, !DIExpression(), !4703)
    #dbg_value(i8 -1, !1791, !DIExpression(), !4703)
  store i8 -1, ptr %i.aw, align 1, !dbg !5024, !noalias !4865
  %i.ax = add i64 %i.l, 1, !dbg !5025             ; 4 uses
  store i64 %i.ax, ptr %i.j, align 8, !dbg !5025, !alias.scope !4880, !noalias !4865
    #dbg_value(i32 2, !4851, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4592)
    #dbg_value(ptr %.val, !4867, !DIExpression(), !4582)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !4594)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !4596)
    #dbg_value(i8 -1, !1699, !DIExpression(), !4594)
    #dbg_value(i64 1, !1710, !DIExpression(), !4599)
    #dbg_value(i64 %i.ax, !1700, !DIExpression(), !4602)
    #dbg_value(i64 %i.ax, !1724, !DIExpression(), !4604)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !4605)
  %i.ay = load i64, ptr %.val, align 8, !dbg !4971, !range !1731, !alias.scope !4880, !noalias !4865, !noundef !718
  %i.az = icmp eq i64 %i.ax, %i.ay, !dbg !4972
  br i1 %i.az, label %bb.x, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !4972

bb.x:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5020, !noalias !4865
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !5021

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.x, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ba = load ptr, ptr %i.k, align 8, !dbg !5022, !alias.scope !4880, !noalias !4865, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ba, !1729, !DIExpression(), !4604)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax, !dbg !5023
    #dbg_value(ptr %i.bb, !1702, !DIExpression(), !4701)
    #dbg_value(ptr %i.bb, !1788, !DIExpression(), !4703)
    #dbg_value(i8 -1, !1791, !DIExpression(), !4703)
  store i8 -1, ptr %i.bb, align 1, !dbg !5024, !noalias !4865
  %i.bc = add i64 %i.l, 2, !dbg !5025             ; 4 uses
  store i64 %i.bc, ptr %i.j, align 8, !dbg !5025, !alias.scope !4880, !noalias !4865
    #dbg_value(i32 3, !4851, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4592)
    #dbg_value(ptr %.val, !4867, !DIExpression(), !4582)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !4594)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !4596)
    #dbg_value(i8 -1, !1699, !DIExpression(), !4594)
    #dbg_value(i64 1, !1710, !DIExpression(), !4599)
    #dbg_value(i64 %i.bc, !1700, !DIExpression(), !4602)
    #dbg_value(i64 %i.bc, !1724, !DIExpression(), !4604)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !4605)
  %i.bd = load i64, ptr %.val, align 8, !dbg !4971, !range !1731, !alias.scope !4880, !noalias !4865, !noundef !718
  %i.be = icmp eq i64 %i.bc, %i.bd, !dbg !4972
  br i1 %i.be, label %bb.y, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !4972

bb.y:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5020, !noalias !4865
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !5021

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.y, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.bf = load ptr, ptr %i.k, align 8, !dbg !5022, !alias.scope !4880, !noalias !4865, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bf, !1729, !DIExpression(), !4604)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc, !dbg !5023
    #dbg_value(ptr %i.bg, !1702, !DIExpression(), !4701)
    #dbg_value(ptr %i.bg, !1788, !DIExpression(), !4703)
    #dbg_value(i8 -1, !1791, !DIExpression(), !4703)
  store i8 -1, ptr %i.bg, align 1, !dbg !5024, !noalias !4865
  %i.bh = add i64 %i.l, 3, !dbg !5025             ; 10 uses
  store i64 %i.bh, ptr %i.j, align 8, !dbg !5025, !alias.scope !4880, !noalias !4865
    #dbg_value(i32 3, !4851, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4592)
    #dbg_value(ptr %.val, !4935, !DIExpression(), !4705)
    #dbg_value(i64 %i.bh, !4852, !DIExpression(), !4706)
    #dbg_value(i64 %i.bh, !4878, !DIExpression(), !4591)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !5026, !alias.scope !4865, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !4896, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4707)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5026
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5026, !alias.scope !4865
    #dbg_value(i64 %.sroa.4.0.copyload.i, !4896, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4707)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5026
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !5026, !alias.scope !4865 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !4896, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4707)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5026
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !5026, !alias.scope !4865 ; 2 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4896, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4707)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !5026
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !5026, !alias.scope !4865 ; 3 uses
    #dbg_value(ptr %.sroa.7.0.copyload.i, !4896, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4707)
    #dbg_value(ptr poison, !4895, !DIExpression(), !4708)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !4886, !DIExpression(DW_OP_deref), !4709)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4709)
    #dbg_value(ptr %.sroa.7.0.copyload.i, !4887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4709)
    #dbg_value(ptr poison, !4884, !DIExpression(), !4710)
    #dbg_value(ptr poison, !4925, !DIExpression(), !4712)
    #dbg_value(ptr poison, !4925, !DIExpression(), !4713)
    #dbg_value(ptr poison, !4925, !DIExpression(), !4714)
    #dbg_declare(ptr %i.h, !4888, !DIExpression(), !4715)
    #dbg_declare(ptr %i.e, !4889, !DIExpression(), !4716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5027, !noalias !4881
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !5028, !noalias !4881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !5029, !noalias !4881
    #dbg_value(ptr %.val, !4922, !DIExpression(), !4718)
  store ptr %.val, ptr %i.g, align 8, !dbg !5030, !noalias !4881
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !5030
  store i8 -1, ptr %i.bi, align 8, !dbg !5030, !noalias !4881
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.c unwind label %bb.b, !dbg !5031, !noalias !4881

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.bm, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5032 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !4856, !DIExpression(), !4697)
  %i.bj = and i64 %.sroa.07.0.i, 56, !dbg !5033
  %i.bk = lshr i64 %i.at, %i.bj, !dbg !5033
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !5033
  %i.bm = add i64 %.sroa.07.0.i, -8, !dbg !5034
    #dbg_value(i64 %i.bm, !4856, !DIExpression(), !4697)
  br i1 %i.bl, label %.preheader.i, label %bb.z, !dbg !5033

bb.z:                                             ; preds = %.preheader.i
  %i.bn = lshr exact i64 %.sroa.07.0.i, 3, !dbg !5035 ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 2, !dbg !5036    ; 2 uses
    #dbg_value(i64 %i.bo, !4855, !DIExpression(), !4719)
    #dbg_value(i64 %.sroa.07.0.i, !4856, !DIExpression(), !4697)
  %i.bp = icmp eq i64 %.sroa.07.0.i, 0, !dbg !5037
  br i1 %i.bp, label %.thread.i, label %bb.aa, !dbg !5037

bb.aa:                                            ; preds = %bb.z
  %.not.i = icmp eq i64 %i.bo, 3, !dbg !5038
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.ab, !dbg !5038

.thread.i:                                        ; preds = %bb.z, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.bc, %bb.z ], [ %i.ax, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5039 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.z ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.z ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !4858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !4720)
    #dbg_value(!DIArgList(i64 %i.bh, i64 %.sroa.02.06.i), !4857, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !4721)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5040, !noalias !4865
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.bh), !dbg !5041, !noalias !4865
    #dbg_value(ptr %i.i, !1800, !DIExpression(), !4723)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i), !dbg !5042, !noalias !4865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5043, !noalias !4865
  %.pre.pre = load i64, ptr %i.j, align 8, !dbg !5044, !noalias !4865
  br label %.loopexit7.i, !dbg !5045

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add nsw i64 %i.bn, -1, !dbg !5046       ; 3 uses
    #dbg_value(i64 %i.bq, !4859, !DIExpression(), !4730)
  %i.br = add nuw i64 %i.bq, %i.bh, !dbg !5047    ; 2 uses
    #dbg_value(i64 %i.br, !4857, !DIExpression(), !4721)
    #dbg_value(i64 0, !4860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4731)
    #dbg_value(i64 %i.bq, !4860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4731)
    #dbg_value(ptr undef, !4837, !DIExpression(), !4573)
    #dbg_value(ptr undef, !4833, !DIExpression(), !4572)
    #dbg_value(ptr undef, !4829, !DIExpression(), !4571)
    #dbg_value(ptr undef, !4830, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4732)
  %.not18.i = icmp eq i64 %i.bq, 0, !dbg !5048
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !5049

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %i.bs = icmp samesign ult i64 %i.ar, %i.bh
  br i1 %i.bs, label %bb.ac, label %.lr.ph.i, !dbg !5050, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.bt = phi i64 [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.ar, %.lr.ph.i.preheader ], !dbg !5051 ; 5 uses
  %.sroa.016.012.i = phi i64 [ %i.bu, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.012.i, !4834, !DIExpression(), !4735)
    #dbg_value(i64 %.sroa.016.012.i, !4870, !DIExpression(), !4585)
    #dbg_value(i64 %.sroa.016.012.i, !4874, !DIExpression(), !4588)
  %i.bu = add nuw i64 %.sroa.016.012.i, 1, !dbg !5052 ; 2 uses
    #dbg_value(i64 %i.bu, !4860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4731)
    #dbg_value(ptr %.val, !4877, !DIExpression(), !4591)
  call void @llvm.experimental.noalias.scope.decl(metadata !4946), !dbg !5053
    #dbg_value(ptr %.val, !1839, !DIExpression(), !4738)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !4739)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !4741)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !4743)
    #dbg_value(i64 %i.bh, !1840, !DIExpression(), !4738)
    #dbg_value(i64 %i.bh, !1855, !DIExpression(), !4745)
    #dbg_value(i8 0, !1841, !DIExpression(), !4738)
    #dbg_value(i64 1, !1859, !DIExpression(), !4748)
    #dbg_value(i64 1, !1857, !DIExpression(), !4750)
    #dbg_value(i64 1, !1859, !DIExpression(), !4754)
    #dbg_value(i64 %i.bt, !1842, !DIExpression(), !4755)
  %i.bv = icmp sgt i64 %i.bt, -1, !dbg !5054
  call void @llvm.assume(i1 %i.bv), !dbg !5055
    #dbg_value(ptr %.val, !1862, !DIExpression(), !4756)
  %2 = load i64, ptr %.val, align 8, !dbg !5056, !range !1731, !alias.scope !4946, !noalias !4865, !noundef !718
  %3 = icmp eq i64 %i.bt, %2, !dbg !5057
  br i1 %3, label %bb.ad, label %bb.ae, !dbg !5057

bb.ac:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.bh, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !5058, !noalias !4947
  unreachable, !dbg !5058

bb.ad:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5059, !noalias !4865
  br label %bb.ae, !dbg !5060

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i
  %i.bw = load ptr, ptr %i.k, align 8, !dbg !5061, !alias.scope !4946, !noalias !4865, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bw, !1856, !DIExpression(), !4745)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bh, !dbg !5062 ; 3 uses
    #dbg_value(ptr %i.bx, !1843, !DIExpression(), !4760)
    #dbg_value(ptr %i.bx, !1856, !DIExpression(), !4750)
    #dbg_value(ptr %i.bx, !1868, !DIExpression(), !4762)
  %i.by = icmp samesign ult i64 %i.bh, %i.bt, !dbg !5063
  br i1 %i.by, label %bb.af, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5063

bb.af:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.bx, !1871, !DIExpression(), !4764)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1, !dbg !5064
    #dbg_value(ptr %i.bz, !1874, !DIExpression(), !4764)
  %i.ca = sub nuw nsw i64 %i.bt, %i.bh, !dbg !5065
    #dbg_value(i64 %i.ca, !1875, !DIExpression(), !4764)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.bx, i64 %i.ca, i1 false), !dbg !5066, !noalias !4865
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5067

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.af, %bb.ae
    #dbg_value(i8 0, !1869, !DIExpression(), !4762)
  store i8 0, ptr %i.bx, align 1, !dbg !5068, !noalias !4865
  %i.cb = add nuw i64 %i.bt, 1, !dbg !5069        ; 3 uses
    #dbg_value(i64 %i.cb, !1853, !DIExpression(), !4743)
  store i64 %i.cb, ptr %i.j, align 8, !dbg !5070, !alias.scope !4946, !noalias !4865
    #dbg_value(i64 %i.bu, !4860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4731)
    #dbg_value(ptr undef, !4837, !DIExpression(), !4573)
    #dbg_value(ptr undef, !4833, !DIExpression(), !4572)
    #dbg_value(ptr undef, !4829, !DIExpression(), !4571)
    #dbg_value(ptr undef, !4830, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4732)
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bq, !dbg !5048
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !5049

.loopexit7.thread.i:                              ; preds = %bb.ab, %bb.aa
  %.sroa.014.0.ph.i = phi i64 [ %i.br, %bb.ab ], [ %i.bh, %bb.aa ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !4857, !DIExpression(), !4721)
  %i.cc = add i64 %.sroa.014.0.ph.i, -3, !dbg !5071
    #dbg_value(i64 %i.cc, !4861, !DIExpression(), !4765)
    #dbg_value(i64 %i.cc, !4944, !DIExpression(), !4767)
    #dbg_value(i64 %i.cc, !4948, !DIExpression(), !4770)
    #dbg_value(i64 %i.cc, !4951, !DIExpression(), !4773)
  br label %bb.ag, !dbg !5072

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5044 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.bo, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.br, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5073
    #dbg_value(i64 %.sroa.014.0.i, !4857, !DIExpression(), !4721)
  %i.cd = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !5071 ; 4 uses
    #dbg_value(i64 %i.cd, !4861, !DIExpression(), !4765)
    #dbg_value(i64 %i.cd, !4944, !DIExpression(), !4767)
    #dbg_value(i64 %i.cd, !4948, !DIExpression(), !4770)
    #dbg_value(i64 %i.cd, !4951, !DIExpression(), !4773)
  br i1 %i.au, label %bb.ah, label %bb.ag, !dbg !5072

bb.ag:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.ce = phi i64 [ %i.ar, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !5044 ; 2 uses
  %i.cf = phi i64 [ %i.cc, %.loopexit7.thread.i ], [ %i.cd, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1341.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !4943, !DIExpression(), !4774)
    #dbg_value(ptr %.val, !4940, !DIExpression(), !4775)
    #dbg_value(ptr %.val, !4937, !DIExpression(), !4776)
    #dbg_value(ptr %.val, !4954, !DIExpression(), !4779)
    #dbg_value(i64 %i.cf, !4944, !DIExpression(), !4774)
    #dbg_value(i64 %i.cf, !4948, !DIExpression(), !4781)
    #dbg_value(i64 %i.cf, !4951, !DIExpression(), !4783)
    #dbg_value(ptr poison, !4949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4781)
    #dbg_value(ptr poison, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4783)
    #dbg_value(i64 %i.ce, !4949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4781)
    #dbg_value(i64 %i.ce, !4952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4783)
  %i.cg = icmp ult i64 %i.cf, %i.ce, !dbg !5074
  br i1 %i.cg, label %bb.ai, label %bb.aj, !dbg !5074

bb.ah:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !4943, !DIExpression(), !4767)
    #dbg_value(ptr %.val, !4940, !DIExpression(), !4785)
    #dbg_value(ptr %.val, !4937, !DIExpression(), !4787)
    #dbg_value(ptr %.val, !4954, !DIExpression(), !4789)
    #dbg_value(ptr poison, !4949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4770)
    #dbg_value(ptr poison, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4773)
    #dbg_value(i64 %.pre, !4949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4770)
    #dbg_value(i64 %.pre, !4952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4773)
  %i.ch = icmp ult i64 %i.cd, %.pre, !dbg !5075
  br i1 %i.ch, label %bb.al, label %bb.am, !dbg !5075

bb.ai:                                            ; preds = %bb.ag
  %i.ci = load ptr, ptr %i.k, align 8, !dbg !5076, !noalias !4865, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ci, !4949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4781)
    #dbg_value(ptr %i.ci, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4783)
  %i.cj = lshr exact i64 %.sroa.07.1341.i, 3, !dbg !5077
  %i.ck = trunc i64 %i.cj to i8, !dbg !5078
  %i.cl = add i8 %i.ck, 1, !dbg !5078
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf, !dbg !5079
  %i.cn = or i8 %i.cl, -128, !dbg !5080
  store i8 %i.cn, ptr %i.cm, align 1, !dbg !5080, !noalias !4865
    #dbg_value(i64 %i.cf, !4861, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4765)
    #dbg_value(i64 %i.cf, !4944, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4767)
    #dbg_value(i64 %i.cf, !4948, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4770)
    #dbg_value(i64 %i.cf, !4951, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4773)
  %.sroa.018.013.i = add nuw i64 %i.cf, 1, !dbg !5081 ; 3 uses
  %i.co = load i64, ptr %i.j, align 8, !dbg !5082, !noalias !4865, !noundef !718 ; 2 uses
  %i.cp = icmp ult i64 %.sroa.018.013.i, %i.co, !dbg !5083
  br i1 %i.cp, label %.lr.ph16.i, label %._crit_edge.i, !dbg !5083

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !5074, !noalias !4865
  unreachable, !dbg !5074

bb.ak:                                            ; preds = %.lr.ph16.i
  %i.cq = add i64 %.sroa.07.214.i, -8, !dbg !5084
    #dbg_value(i64 %i.cq, !4856, !DIExpression(), !4697)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.015.i, 1, !dbg !5081 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !4951, !DIExpression(), !4773)
    #dbg_value(i64 %.sroa.018.0.i, !4948, !DIExpression(), !4770)
    #dbg_value(i64 %.sroa.018.0.i, !4944, !DIExpression(), !4767)
    #dbg_value(i64 %.sroa.018.0.i, !4861, !DIExpression(), !4765)
    #dbg_value(ptr %.val, !4943, !DIExpression(), !4801)
    #dbg_value(ptr %.val, !4940, !DIExpression(), !4802)
    #dbg_value(ptr %.val, !4937, !DIExpression(), !4803)
    #dbg_value(ptr %.val, !4954, !DIExpression(), !4805)
    #dbg_value(i64 %.sroa.018.0.i, !4944, !DIExpression(), !4801)
    #dbg_value(i64 %.sroa.018.0.i, !4948, !DIExpression(), !4806)
    #dbg_value(i64 %.sroa.018.0.i, !4951, !DIExpression(), !4807)
  %i.cr = load i64, ptr %i.j, align 8, !dbg !5082, !noalias !4865, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !4949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4806)
    #dbg_value(ptr poison, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4807)
    #dbg_value(i64 %i.cr, !4949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4806)
    #dbg_value(i64 %i.cr, !4952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4807)
  %i.cs = icmp ult i64 %.sroa.018.0.i, %i.cr, !dbg !5083
  br i1 %i.cs, label %.lr.ph16.i, label %._crit_edge.i, !dbg !5083

.lr.ph16.i:                                       ; preds = %bb.ai, %bb.ak
  %.sroa.018.015.i = phi i64 [ %.sroa.018.0.i, %bb.ak ], [ %.sroa.018.013.i, %bb.ai ] ; 2 uses
  %.sroa.07.214.i = phi i64 [ %i.cq, %bb.ak ], [ %.sroa.07.1341.i, %bb.ai ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i, !4856, !DIExpression(), !4697)
  %i.ct = load ptr, ptr %i.k, align 8, !dbg !5085, !noalias !4865, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ct, !4949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4806)
    #dbg_value(ptr %i.ct, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4807)
  %i.cu = and i64 %.sroa.07.214.i, 56, !dbg !5086
  %i.cv = lshr i64 %i.at, %i.cu, !dbg !5086
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.018.015.i, !dbg !5087
  %i.cx = trunc i64 %i.cv to i8, !dbg !5088
  store i8 %i.cx, ptr %i.cw, align 1, !dbg !5088, !noalias !4865
    #dbg_value(i64 %.sroa.018.015.i, !4861, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4765)
    #dbg_value(i64 %.sroa.018.015.i, !4944, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4767)
    #dbg_value(i64 %.sroa.018.015.i, !4948, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4770)
    #dbg_value(i64 %.sroa.018.015.i, !4951, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4773)
  %i.cy = icmp eq i64 %.sroa.07.214.i, 0, !dbg !5089
    #dbg_value(i64 %.sroa.07.214.i, !4856, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !4697)
  br i1 %i.cy, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs1_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.ak, !dbg !5089

._crit_edge.i:                                    ; preds = %bb.ak, %bb.ai
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.013.i, %bb.ai ], [ %.sroa.018.0.i, %bb.ak ], !dbg !5081
  %.lcssa.i = phi i64 [ %i.co, %bb.ai ], [ %i.cr, %bb.ak ], !dbg !5082
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !5083, !noalias !4865
  unreachable, !dbg !5083

bb.al:                                            ; preds = %bb.ah
  %i.cz = load ptr, ptr %i.k, align 8, !dbg !5090, !noalias !4865, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cz, !4949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4770)
    #dbg_value(ptr %i.cz, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4773)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cd, !dbg !5091
  %i.db = trunc nuw nsw i64 %i.at to i8, !dbg !5092
  store i8 %i.db, ptr %i.da, align 1, !dbg !5092, !noalias !4865
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs1_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !5093

bb.am:                                            ; preds = %bb.ah
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !5075, !noalias !4865
  unreachable, !dbg !5075

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs1_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph16.i, %bb.al
  ret void, !dbg !5094
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs2_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5097 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !5546, !DIExpression(), !5150)
    #dbg_value(ptr poison, !5550, !DIExpression(), !5151)
    #dbg_value(ptr poison, !5554, !DIExpression(), !5152)
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !5644, !DIExpression(), !5160)
    #dbg_value(ptr poison, !5648, !DIExpression(), !5161)
    #dbg_value(ptr poison, !5652, !DIExpression(), !5162)
  %i.k = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !5543, !DIExpression(), !5655)
    #dbg_declare(ptr %1, !5544, !DIExpression(), !5656)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !5787
  %.val = load ptr, ptr %0, align 8, !dbg !5788, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5657), !dbg !5788
    #dbg_value(ptr poison, !5629, !DIExpression(), !5165)
end_hunk_2
begin_hunk_3_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs2_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5715, !DIExpression(), !5341)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5712, !DIExpression(), !5343)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5728, !DIExpression(), !5345)
    #dbg_value(ptr poison, !5723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5326)
    #dbg_value(ptr poison, !5726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5329)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !5723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5326)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !5726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5329)
  %i.bv = icmp ult i64 %i.br, %.pre.i.i.i.i.i.i, !dbg !5868
  br i1 %i.bv, label %bb.s, label %.invoke.i.i.i.i, !dbg !5868

bb.q:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.x, align 8, !dbg !5869, !noalias !5674, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bw, !5723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5337)
    #dbg_value(ptr %i.bw, !5726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5339)
  %i.bx = lshr exact i64 %.sroa.07.1543.i.i.i.i.i.i.i, 3, !dbg !5870
  %i.by = trunc i64 %i.bx to i8, !dbg !5871
  %i.bz = add i8 %i.by, 1, !dbg !5871
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bt, !dbg !5872
  %i.cb = or i8 %i.bz, -128, !dbg !5873
  store i8 %i.cb, ptr %i.ca, align 1, !dbg !5873, !noalias !5674
    #dbg_value(i64 %i.bt, !5581, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5321)
    #dbg_value(i64 %i.bt, !5719, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5323)
    #dbg_value(i64 %i.bt, !5722, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5326)
    #dbg_value(i64 %i.bt, !5725, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5329)
  %.sroa.018.015.i.i.i.i.i.i.i = add nuw i64 %i.bt, 1, !dbg !5874 ; 3 uses
  %i.cc = load i64, ptr %i.w, align 8, !dbg !5875, !noalias !5674, !noundef !718 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.018.015.i.i.i.i.i.i.i, %i.cc, !dbg !5876
  br i1 %i.cd, label %.lr.ph18.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !5876

bb.r:                                             ; preds = %.lr.ph18.i.i.i.i.i.i.i
  %i.ce = add i64 %.sroa.07.216.i.i.i.i.i.i.i, -8, !dbg !5877
    #dbg_value(i64 %i.ce, !5576, !DIExpression(), !5258)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.017.i.i.i.i.i.i.i, 1, !dbg !5874 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5725, !DIExpression(), !5329)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5722, !DIExpression(), !5326)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5719, !DIExpression(), !5323)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5581, !DIExpression(), !5321)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5718, !DIExpression(), !5357)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5715, !DIExpression(), !5358)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5712, !DIExpression(), !5359)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5728, !DIExpression(), !5361)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5719, !DIExpression(), !5357)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5722, !DIExpression(), !5362)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5725, !DIExpression(), !5363)
  %i.cf = load i64, ptr %i.w, align 8, !dbg !5875, !noalias !5674, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !5723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5362)
    #dbg_value(ptr poison, !5726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5363)
    #dbg_value(i64 %i.cf, !5723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5362)
    #dbg_value(i64 %i.cf, !5726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5363)
  %i.cg = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.cf, !dbg !5876
  br i1 %i.cg, label %.lr.ph18.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !5876

.lr.ph18.i.i.i.i.i.i.i:                           ; preds = %bb.q, %bb.r
  %.sroa.018.017.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.018.015.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.07.216.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.r ], [ %.sroa.07.1543.i.i.i.i.i.i.i, %bb.q ] ; 3 uses
    #dbg_value(i64 %.sroa.07.216.i.i.i.i.i.i.i, !5576, !DIExpression(), !5258)
  %i.ch = load ptr, ptr %i.x, align 8, !dbg !5878, !noalias !5674, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ch, !5723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5362)
    #dbg_value(ptr %i.ch, !5726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5363)
  %i.ci = and i64 %.sroa.07.216.i.i.i.i.i.i.i, 56, !dbg !5879
  %i.cj = lshr i64 %i.ae, %i.ci, !dbg !5879
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.018.017.i.i.i.i.i.i.i, !dbg !5880
  %i.cl = trunc i64 %i.cj to i8, !dbg !5881
  store i8 %i.cl, ptr %i.ck, align 1, !dbg !5881, !noalias !5674
    #dbg_value(i64 %.sroa.018.017.i.i.i.i.i.i.i, !5581, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5321)
    #dbg_value(i64 %.sroa.018.017.i.i.i.i.i.i.i, !5719, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5323)
    #dbg_value(i64 %.sroa.018.017.i.i.i.i.i.i.i, !5722, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5326)
    #dbg_value(i64 %.sroa.018.017.i.i.i.i.i.i.i, !5725, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5329)
  %i.cm = icmp eq i64 %.sroa.07.216.i.i.i.i.i.i.i, 0, !dbg !5882
    #dbg_value(i64 %.sroa.07.216.i.i.i.i.i.i.i, !5576, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5258)
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r, !dbg !5882

bb.s:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.x, align 8, !dbg !5883, !noalias !5674, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cn, !5723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5326)
    #dbg_value(ptr %i.cn, !5726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5329)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.br, !dbg !5884
  %i.cp = trunc nuw nsw i64 %i.ae to i8, !dbg !5885
  store i8 %i.cp, ptr %i.co, align 1, !dbg !5885, !noalias !5674
  br label %.loopexit.i.i.i, !dbg !5886

.invoke.i.i.i.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cq = phi i64 [ %i.br, %bb.p ], [ %i.bt, %bb.o ], [ %.sroa.018.015.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.r ]
  %i.cr = phi i64 [ %.pre.i.i.i.i.i.i, %bb.p ], [ %i.bs, %bb.o ], [ %i.cc, %bb.q ], [ %i.cf, %bb.r ]
  %i.cs = phi ptr [ @4, %bb.p ], [ @2, %bb.o ], [ @3, %bb.q ], [ @3, %bb.r ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cq, i64 noundef %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5887, !noalias !5674

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %.invoke.i.i.i.i, %bb.l, %.noexc13.i.i.i.i, %.thread.i.i.i.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.t, !dbg !5888, !noalias !5674

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5889, !noalias !5674
  unreachable, !dbg !5889

bb.u:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5890, !noalias !5673
    #dbg_value(ptr %.val, !5742, !DIExpression(), !5377)
  store ptr %.val, ptr %i.h, align 8, !dbg !5891, !noalias !5673
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !5891
  store i8 -1, ptr %i.cu, align 8, !dbg !5891, !noalias !5673
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.b, !dbg !5892, !noalias !5673

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5893, !noalias !5673
  br label %bb.d, !dbg !5894

.loopexit.i.i.i:                                  ; preds = %.lr.ph18.i.i.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5895, !noalias !5674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !5896, !noalias !5673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5888, !noalias !5674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5897, !noalias !5673
    #dbg_value(ptr %.val, !5742, !DIExpression(), !5380)
  store ptr %.val, ptr %i.f, align 8, !dbg !5898, !noalias !5673
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !5898
  store i8 -1, ptr %i.cv, align 8, !dbg !5898, !noalias !5673
    #dbg_value(ptr %i.g, !5748, !DIExpression(), !5383)
    #dbg_value(ptr %i.g, !5750, !DIExpression(), !5386)
    #dbg_value(ptr %i.g, !5752, !DIExpression(), !5389)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !5899
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !5899, !noalias !5673, !nonnull !718, !noundef !718
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !5900
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !5900, !noalias !5673, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cz)
          to label %bb.x unwind label %bb.w, !dbg !5901, !noalias !5673

bb.w:                                             ; preds = %.loopexit.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %.body.i.i.i unwind label %bb.ad, !dbg !5902, !noalias !5673

bb.x:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !5903, !noalias !5673
    #dbg_value(ptr %i.g, !1894, !DIExpression(), !5397)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %bb.y, !dbg !5904, !noalias !5673

bb.y:                                             ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !5399)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i.i unwind label %bb.aa, !dbg !5905, !noalias !5673

bb.z:                                             ; preds = %bb.x
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !5401)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !5906, !noalias !5673

bb.aa:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5904, !noalias !5673
  unreachable, !dbg !5904

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5902, !noalias !5673
    #dbg_value(ptr %i.j, !1753, !DIExpression(), !5403)
    #dbg_value(ptr %i.j, !1760, !DIExpression(), !5405)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.ab, !dbg !5907, !noalias !5673

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !5407)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.ac, !dbg !5908, !noalias !5673

bb.ac:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5907, !noalias !5673
  unreachable, !dbg !5907

common.resume.i.i.i:                              ; preds = %bb.ab, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.dd, %bb.ab ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !5909

bb.ad:                                            ; preds = %bb.w, %.body.i.i.i
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5910, !noalias !5673
  unreachable, !dbg !5910

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !5409)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !5911, !noalias !5673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5792, !noalias !5673
    #dbg_value(ptr %.val, !5754, !DIExpression(), !5412)
  %i.dg = load i64, ptr %i.l, align 8, !dbg !5912, !noalias !5657, !noundef !718 ; 6 uses
  %i.dh = icmp sgt i64 %i.dg, -1, !dbg !5913
  call void @llvm.assume(i1 %i.dh), !dbg !5914
  %i.di = sub nsw i64 %i.dg, %i.dw, !dbg !5915    ; 4 uses
    #dbg_value(i64 %i.di, !5635, !DIExpression(), !5413)
    #dbg_value(i64 56, !5637, !DIExpression(), !5414)
  %i.dj = icmp ult i64 %i.di, 128, !dbg !5916     ; 2 uses
  br i1 %i.dj, label %.thread.i, label %.preheader.i, !dbg !5916

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5917, !noalias !5657
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5918

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ae, %bb.a
  %i.dk = load ptr, ptr %i.m, align 8, !dbg !5919, !alias.scope !5672, !noalias !5657, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dk, !1729, !DIExpression(), !5193)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.n, !dbg !5920
    #dbg_value(ptr %i.dl, !1702, !DIExpression(), !5418)
    #dbg_value(ptr %i.dl, !1788, !DIExpression(), !5420)
    #dbg_value(i8 -1, !1791, !DIExpression(), !5420)
  store i8 -1, ptr %i.dl, align 1, !dbg !5921, !noalias !5657
  %i.dm = add i64 %i.n, 1, !dbg !5922             ; 4 uses
  store i64 %i.dm, ptr %i.l, align 8, !dbg !5922, !alias.scope !5672, !noalias !5657
    #dbg_value(i32 2, !5632, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5181)
    #dbg_value(ptr %.val, !5659, !DIExpression(), !5171)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !5183)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !5185)
    #dbg_value(i8 -1, !1699, !DIExpression(), !5183)
    #dbg_value(i64 1, !1710, !DIExpression(), !5188)
    #dbg_value(i64 %i.dm, !1700, !DIExpression(), !5191)
    #dbg_value(i64 %i.dm, !1724, !DIExpression(), !5193)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !5194)
  %i.dn = load i64, ptr %.val, align 8, !dbg !5790, !range !1731, !alias.scope !5672, !noalias !5657, !noundef !718
  %i.do = icmp eq i64 %i.dm, %i.dn, !dbg !5791
  br i1 %i.do, label %bb.af, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !5791

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5917, !noalias !5657
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !5918

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.af, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.dp = load ptr, ptr %i.m, align 8, !dbg !5919, !alias.scope !5672, !noalias !5657, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dp, !1729, !DIExpression(), !5193)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm, !dbg !5920
    #dbg_value(ptr %i.dq, !1702, !DIExpression(), !5418)
    #dbg_value(ptr %i.dq, !1788, !DIExpression(), !5420)
    #dbg_value(i8 -1, !1791, !DIExpression(), !5420)
  store i8 -1, ptr %i.dq, align 1, !dbg !5921, !noalias !5657
  %i.dr = add i64 %i.n, 2, !dbg !5922             ; 4 uses
  store i64 %i.dr, ptr %i.l, align 8, !dbg !5922, !alias.scope !5672, !noalias !5657
    #dbg_value(i32 3, !5632, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5181)
    #dbg_value(ptr %.val, !5659, !DIExpression(), !5171)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !5183)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !5185)
    #dbg_value(i8 -1, !1699, !DIExpression(), !5183)
    #dbg_value(i64 1, !1710, !DIExpression(), !5188)
    #dbg_value(i64 %i.dr, !1700, !DIExpression(), !5191)
    #dbg_value(i64 %i.dr, !1724, !DIExpression(), !5193)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !5194)
  %i.ds = load i64, ptr %.val, align 8, !dbg !5790, !range !1731, !alias.scope !5672, !noalias !5657, !noundef !718
  %i.dt = icmp eq i64 %i.dr, %i.ds, !dbg !5791
  br i1 %i.dt, label %bb.ag, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !5791

bb.ag:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5917, !noalias !5657
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !5918

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.ag, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.du = load ptr, ptr %i.m, align 8, !dbg !5919, !alias.scope !5672, !noalias !5657, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.du, !1729, !DIExpression(), !5193)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dr, !dbg !5920
    #dbg_value(ptr %i.dv, !1702, !DIExpression(), !5418)
    #dbg_value(ptr %i.dv, !1788, !DIExpression(), !5420)
    #dbg_value(i8 -1, !1791, !DIExpression(), !5420)
  store i8 -1, ptr %i.dv, align 1, !dbg !5921, !noalias !5657
  %i.dw = add i64 %i.n, 3, !dbg !5922             ; 10 uses
  store i64 %i.dw, ptr %i.l, align 8, !dbg !5922, !alias.scope !5672, !noalias !5657
    #dbg_value(i32 3, !5632, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5181)
    #dbg_value(ptr %.val, !5754, !DIExpression(), !5422)
    #dbg_value(i64 %i.dw, !5633, !DIExpression(), !5423)
    #dbg_value(i64 %i.dw, !5670, !DIExpression(), !5180)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !5923, !alias.scope !5657, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5424)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5923
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5923, !alias.scope !5657
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5424)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5923
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !5923, !alias.scope !5657 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !5621, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5424)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5923
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !5923, !alias.scope !5657 ; 3 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5621, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5424)
    #dbg_value(ptr poison, !5620, !DIExpression(), !5425)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !5609, !DIExpression(DW_OP_deref), !5426)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5610, !DIExpression(), !5426)
    #dbg_value(ptr poison, !5607, !DIExpression(), !5427)
    #dbg_value(ptr poison, !5745, !DIExpression(), !5429)
    #dbg_value(ptr poison, !5745, !DIExpression(), !5430)
    #dbg_value(ptr poison, !5745, !DIExpression(), !5431)
    #dbg_declare(ptr %i.j, !5611, !DIExpression(), !5432)
    #dbg_declare(ptr %i.g, !5612, !DIExpression(), !5433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !5924, !noalias !5673
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !5925, !noalias !5673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5926, !noalias !5673
    #dbg_value(ptr %.val, !5742, !DIExpression(), !5435)
  store ptr %.val, ptr %i.i, align 8, !dbg !5927, !noalias !5673
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !5927
  store i8 -1, ptr %i.dx, align 8, !dbg !5927, !noalias !5673
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b, !dbg !5928, !noalias !5673

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.eb, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5929 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !5637, !DIExpression(), !5414)
  %i.dy = and i64 %.sroa.07.0.i, 56, !dbg !5930
  %i.dz = lshr i64 %i.di, %i.dy, !dbg !5930
  %i.ea = icmp eq i64 %i.dz, 0, !dbg !5930
  %i.eb = add i64 %.sroa.07.0.i, -8, !dbg !5931
    #dbg_value(i64 %i.eb, !5637, !DIExpression(), !5414)
  br i1 %i.ea, label %.preheader.i, label %bb.ah, !dbg !5930

bb.ah:                                            ; preds = %.preheader.i
  %i.ec = lshr exact i64 %.sroa.07.0.i, 3, !dbg !5932 ; 2 uses
  %i.ed = add nuw nsw i64 %i.ec, 2, !dbg !5933    ; 2 uses
    #dbg_value(i64 %i.ed, !5636, !DIExpression(), !5436)
    #dbg_value(i64 %.sroa.07.0.i, !5637, !DIExpression(), !5414)
  %i.ee = icmp eq i64 %.sroa.07.0.i, 0, !dbg !5934
  br i1 %i.ee, label %.thread.i, label %bb.ai, !dbg !5934

bb.ai:                                            ; preds = %bb.ah
  %.not.i = icmp eq i64 %i.ed, 3, !dbg !5935
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.aj, !dbg !5935

.thread.i:                                        ; preds = %bb.ah, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.dr, %bb.ah ], [ %i.dm, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5936 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.ah ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.ah ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !5639, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5437)
    #dbg_value(!DIArgList(i64 %i.dw, i64 %.sroa.02.06.i), !5638, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !5937, !noalias !5657
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.dw), !dbg !5938, !noalias !5657
    #dbg_value(ptr %i.k, !1800, !DIExpression(), !5440)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k), !dbg !5939, !noalias !5657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !5940, !noalias !5657
  %.pre.pre = load i64, ptr %i.l, align 8, !dbg !5941, !noalias !5657
  br label %.loopexit7.i, !dbg !5942

bb.aj:                                            ; preds = %bb.ai
  %i.ef = add nsw i64 %i.ec, -1, !dbg !5943       ; 3 uses
    #dbg_value(i64 %i.ef, !5640, !DIExpression(), !5447)
  %i.eg = add nuw i64 %i.ef, %i.dw, !dbg !5944    ; 2 uses
    #dbg_value(i64 %i.eg, !5638, !DIExpression(), !5438)
    #dbg_value(i64 0, !5641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5448)
    #dbg_value(i64 %i.ef, !5641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5448)
    #dbg_value(ptr undef, !5652, !DIExpression(), !5162)
    #dbg_value(ptr undef, !5648, !DIExpression(), !5161)
    #dbg_value(ptr undef, !5644, !DIExpression(), !5160)
    #dbg_value(ptr undef, !5645, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5449)
  %.not20.i = icmp eq i64 %i.ef, 0, !dbg !5945
  br i1 %.not20.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !5946

.lr.ph.i.preheader:                               ; preds = %bb.aj
  %i.eh = icmp samesign ult i64 %i.dg, %i.dw
  br i1 %i.eh, label %bb.ak, label %.lr.ph.i, !dbg !5947, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ei = phi i64 [ %i.eq, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.dg, %.lr.ph.i.preheader ], !dbg !5948 ; 5 uses
  %.sroa.016.014.i = phi i64 [ %i.ej, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.014.i, !5649, !DIExpression(), !5452)
    #dbg_value(i64 %.sroa.016.014.i, !5662, !DIExpression(), !5174)
    #dbg_value(i64 %.sroa.016.014.i, !5666, !DIExpression(), !5177)
  %i.ej = add nuw i64 %.sroa.016.014.i, 1, !dbg !5949 ; 2 uses
    #dbg_value(i64 %i.ej, !5641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5448)
    #dbg_value(ptr %.val, !5669, !DIExpression(), !5180)
  call void @llvm.experimental.noalias.scope.decl(metadata !5765), !dbg !5950
    #dbg_value(ptr %.val, !1839, !DIExpression(), !5455)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !5456)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !5458)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !5460)
    #dbg_value(i64 %i.dw, !1840, !DIExpression(), !5455)
    #dbg_value(i64 %i.dw, !1855, !DIExpression(), !5462)
    #dbg_value(i8 0, !1841, !DIExpression(), !5455)
    #dbg_value(i64 1, !1859, !DIExpression(), !5465)
    #dbg_value(i64 1, !1857, !DIExpression(), !5467)
    #dbg_value(i64 1, !1859, !DIExpression(), !5471)
    #dbg_value(i64 %i.ei, !1842, !DIExpression(), !5472)
  %i.ek = icmp sgt i64 %i.ei, -1, !dbg !5951
  call void @llvm.assume(i1 %i.ek), !dbg !5952
    #dbg_value(ptr %.val, !1862, !DIExpression(), !5473)
  %2 = load i64, ptr %.val, align 8, !dbg !5953, !range !1731, !alias.scope !5765, !noalias !5657, !noundef !718
  %3 = icmp eq i64 %i.ei, %2, !dbg !5954
  br i1 %3, label %bb.al, label %bb.am, !dbg !5954

bb.ak:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.dw, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !5955, !noalias !5766
  unreachable, !dbg !5955

bb.al:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5956, !noalias !5657
  br label %bb.am, !dbg !5957

bb.am:                                            ; preds = %bb.al, %.lr.ph.i
  %i.el = load ptr, ptr %i.m, align 8, !dbg !5958, !alias.scope !5765, !noalias !5657, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.el, !1856, !DIExpression(), !5462)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.dw, !dbg !5959 ; 3 uses
    #dbg_value(ptr %i.em, !1843, !DIExpression(), !5477)
    #dbg_value(ptr %i.em, !1856, !DIExpression(), !5467)
    #dbg_value(ptr %i.em, !1868, !DIExpression(), !5479)
  %i.en = icmp samesign ult i64 %i.dw, %i.ei, !dbg !5960
  br i1 %i.en, label %bb.an, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5960

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %i.em, !1871, !DIExpression(), !5481)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1, !dbg !5961
    #dbg_value(ptr %i.eo, !1874, !DIExpression(), !5481)
  %i.ep = sub nuw nsw i64 %i.ei, %i.dw, !dbg !5962
    #dbg_value(i64 %i.ep, !1875, !DIExpression(), !5481)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 1 %i.em, i64 %i.ep, i1 false), !dbg !5963, !noalias !5657
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5964

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.an, %bb.am
    #dbg_value(i8 0, !1869, !DIExpression(), !5479)
  store i8 0, ptr %i.em, align 1, !dbg !5965, !noalias !5657
  %i.eq = add nuw i64 %i.ei, 1, !dbg !5966        ; 3 uses
    #dbg_value(i64 %i.eq, !1853, !DIExpression(), !5460)
  store i64 %i.eq, ptr %i.l, align 8, !dbg !5967, !alias.scope !5765, !noalias !5657
    #dbg_value(i64 %i.ej, !5641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5448)
    #dbg_value(ptr undef, !5652, !DIExpression(), !5162)
    #dbg_value(ptr undef, !5648, !DIExpression(), !5161)
    #dbg_value(ptr undef, !5644, !DIExpression(), !5160)
    #dbg_value(ptr undef, !5645, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5449)
  %exitcond.not.i = icmp eq i64 %i.ej, %i.ef, !dbg !5945
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !5946

.loopexit7.thread.i:                              ; preds = %bb.aj, %bb.ai
  %.sroa.014.0.ph.i = phi i64 [ %i.eg, %bb.aj ], [ %i.dw, %bb.ai ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !5638, !DIExpression(), !5438)
  %i.er = add i64 %.sroa.014.0.ph.i, -3, !dbg !5968
    #dbg_value(i64 %i.er, !5642, !DIExpression(), !5482)
    #dbg_value(i64 %i.er, !5763, !DIExpression(), !5484)
    #dbg_value(i64 %i.er, !5767, !DIExpression(), !5487)
    #dbg_value(i64 %i.er, !5770, !DIExpression(), !5490)
  br label %bb.ao, !dbg !5969

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.eq, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5941 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.ed, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.eg, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5970
    #dbg_value(i64 %.sroa.014.0.i, !5638, !DIExpression(), !5438)
  %i.es = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !5968 ; 4 uses
    #dbg_value(i64 %i.es, !5642, !DIExpression(), !5482)
    #dbg_value(i64 %i.es, !5763, !DIExpression(), !5484)
    #dbg_value(i64 %i.es, !5767, !DIExpression(), !5487)
    #dbg_value(i64 %i.es, !5770, !DIExpression(), !5490)
  br i1 %i.dj, label %bb.ap, label %bb.ao, !dbg !5969

bb.ao:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.et = phi i64 [ %i.dg, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !5941 ; 2 uses
  %i.eu = phi i64 [ %i.er, %.loopexit7.thread.i ], [ %i.es, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1363.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !5762, !DIExpression(), !5491)
    #dbg_value(ptr %.val, !5759, !DIExpression(), !5492)
    #dbg_value(ptr %.val, !5756, !DIExpression(), !5493)
    #dbg_value(ptr %.val, !5773, !DIExpression(), !5496)
    #dbg_value(i64 %i.eu, !5763, !DIExpression(), !5491)
    #dbg_value(i64 %i.eu, !5767, !DIExpression(), !5498)
    #dbg_value(i64 %i.eu, !5770, !DIExpression(), !5500)
    #dbg_value(ptr poison, !5768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5498)
    #dbg_value(ptr poison, !5771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5500)
    #dbg_value(i64 %i.et, !5768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5498)
    #dbg_value(i64 %i.et, !5771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5500)
  %i.ev = icmp ult i64 %i.eu, %i.et, !dbg !5971
  br i1 %i.ev, label %bb.aq, label %bb.ar, !dbg !5971

bb.ap:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !5762, !DIExpression(), !5484)
    #dbg_value(ptr %.val, !5759, !DIExpression(), !5502)
    #dbg_value(ptr %.val, !5756, !DIExpression(), !5504)
    #dbg_value(ptr %.val, !5773, !DIExpression(), !5506)
    #dbg_value(ptr poison, !5768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5487)
    #dbg_value(ptr poison, !5771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5490)
    #dbg_value(i64 %.pre, !5768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5487)
    #dbg_value(i64 %.pre, !5771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5490)
  %i.ew = icmp ult i64 %i.es, %.pre, !dbg !5972
  br i1 %i.ew, label %bb.at, label %bb.au, !dbg !5972

bb.aq:                                            ; preds = %bb.ao
  %i.ex = load ptr, ptr %i.m, align 8, !dbg !5973, !noalias !5657, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ex, !5768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5498)
    #dbg_value(ptr %i.ex, !5771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5500)
  %i.ey = lshr exact i64 %.sroa.07.1363.i, 3, !dbg !5974
  %i.ez = trunc i64 %i.ey to i8, !dbg !5975
  %i.fa = add i8 %i.ez, 1, !dbg !5975
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu, !dbg !5976
  %i.fc = or i8 %i.fa, -128, !dbg !5977
  store i8 %i.fc, ptr %i.fb, align 1, !dbg !5977, !noalias !5657
    #dbg_value(i64 %i.eu, !5642, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5482)
    #dbg_value(i64 %i.eu, !5763, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5484)
    #dbg_value(i64 %i.eu, !5767, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5487)
    #dbg_value(i64 %i.eu, !5770, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5490)
  %.sroa.018.015.i = add nuw i64 %i.eu, 1, !dbg !5978 ; 3 uses
  %i.fd = load i64, ptr %i.l, align 8, !dbg !5979, !noalias !5657, !noundef !718 ; 2 uses
  %i.fe = icmp ult i64 %.sroa.018.015.i, %i.fd, !dbg !5980
  br i1 %i.fe, label %.lr.ph18.i, label %._crit_edge.i, !dbg !5980

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !5971, !noalias !5657
  unreachable, !dbg !5971

bb.as:                                            ; preds = %.lr.ph18.i
  %i.ff = add i64 %.sroa.07.216.i, -8, !dbg !5981
    #dbg_value(i64 %i.ff, !5637, !DIExpression(), !5414)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.017.i, 1, !dbg !5978 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !5770, !DIExpression(), !5490)
    #dbg_value(i64 %.sroa.018.0.i, !5767, !DIExpression(), !5487)
    #dbg_value(i64 %.sroa.018.0.i, !5763, !DIExpression(), !5484)
    #dbg_value(i64 %.sroa.018.0.i, !5642, !DIExpression(), !5482)
    #dbg_value(ptr %.val, !5762, !DIExpression(), !5518)
    #dbg_value(ptr %.val, !5759, !DIExpression(), !5519)
    #dbg_value(ptr %.val, !5756, !DIExpression(), !5520)
    #dbg_value(ptr %.val, !5773, !DIExpression(), !5522)
    #dbg_value(i64 %.sroa.018.0.i, !5763, !DIExpression(), !5518)
    #dbg_value(i64 %.sroa.018.0.i, !5767, !DIExpression(), !5523)
    #dbg_value(i64 %.sroa.018.0.i, !5770, !DIExpression(), !5524)
  %i.fg = load i64, ptr %i.l, align 8, !dbg !5979, !noalias !5657, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !5768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5523)
    #dbg_value(ptr poison, !5771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5524)
    #dbg_value(i64 %i.fg, !5768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5523)
    #dbg_value(i64 %i.fg, !5771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5524)
  %i.fh = icmp ult i64 %.sroa.018.0.i, %i.fg, !dbg !5980
  br i1 %i.fh, label %.lr.ph18.i, label %._crit_edge.i, !dbg !5980

.lr.ph18.i:                                       ; preds = %bb.aq, %bb.as
  %.sroa.018.017.i = phi i64 [ %.sroa.018.0.i, %bb.as ], [ %.sroa.018.015.i, %bb.aq ] ; 2 uses
  %.sroa.07.216.i = phi i64 [ %i.ff, %bb.as ], [ %.sroa.07.1363.i, %bb.aq ] ; 3 uses
    #dbg_value(i64 %.sroa.07.216.i, !5637, !DIExpression(), !5414)
  %i.fi = load ptr, ptr %i.m, align 8, !dbg !5982, !noalias !5657, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fi, !5768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5523)
    #dbg_value(ptr %i.fi, !5771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5524)
  %i.fj = and i64 %.sroa.07.216.i, 56, !dbg !5983
  %i.fk = lshr i64 %i.di, %i.fj, !dbg !5983
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.sroa.018.017.i, !dbg !5984
  %i.fm = trunc i64 %i.fk to i8, !dbg !5985
  store i8 %i.fm, ptr %i.fl, align 1, !dbg !5985, !noalias !5657
    #dbg_value(i64 %.sroa.018.017.i, !5642, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5482)
    #dbg_value(i64 %.sroa.018.017.i, !5763, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5484)
    #dbg_value(i64 %.sroa.018.017.i, !5767, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5487)
    #dbg_value(i64 %.sroa.018.017.i, !5770, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5490)
  %i.fn = icmp eq i64 %.sroa.07.216.i, 0, !dbg !5986
    #dbg_value(i64 %.sroa.07.216.i, !5637, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5414)
  br i1 %i.fn, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs2_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.as, !dbg !5986

._crit_edge.i:                                    ; preds = %bb.as, %bb.aq
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.015.i, %bb.aq ], [ %.sroa.018.0.i, %bb.as ], !dbg !5978
  %.lcssa.i = phi i64 [ %i.fd, %bb.aq ], [ %i.fg, %bb.as ], !dbg !5979
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !5980, !noalias !5657
  unreachable, !dbg !5980

bb.at:                                            ; preds = %bb.ap
  %i.fo = load ptr, ptr %i.m, align 8, !dbg !5987, !noalias !5657, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fo, !5768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5487)
    #dbg_value(ptr %i.fo, !5771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5490)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.es, !dbg !5988
  %i.fq = trunc nuw nsw i64 %i.di to i8, !dbg !5989
  store i8 %i.fq, ptr %i.fp, align 1, !dbg !5989, !noalias !5657
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs2_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !5990

bb.au:                                            ; preds = %bb.ap
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.es, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !5972, !noalias !5657
  unreachable, !dbg !5972

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs2_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph18.i, %bb.at
  ret void, !dbg !5991
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs3_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5994 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !6275, !DIExpression(), !6017)
    #dbg_value(ptr poison, !6279, !DIExpression(), !6018)
    #dbg_value(ptr poison, !6283, !DIExpression(), !6019)
  %i.i = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !6272, !DIExpression(), !6309)
    #dbg_declare(ptr %1, !6273, !DIExpression(), !6310)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !6414
  %.val = load ptr, ptr %0, align 8, !dbg !6415, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6311), !dbg !6415
    #dbg_value(ptr poison, !6294, !DIExpression(), !6022)
    #dbg_declare(ptr %1, !6295, !DIExpression(), !6023)
    #dbg_declare(ptr poison, !6299, !DIExpression(), !6024)
    #dbg_value(i64 3, !6296, !DIExpression(), !6025)
    #dbg_value(i8 -1, !6312, !DIExpression(), !6028)
    #dbg_value(i64 1, !6315, !DIExpression(), !6031)
end_hunk_3
begin_hunk_4_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs3_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6420, !noalias !6327
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.p = load i8, ptr %.sroa.5.0.copyload.i, align 1, !dbg !6421, !range !1732, !noalias !6327, !noundef !718
  %i.q = trunc nuw i8 %i.p to i1, !dbg !6421
  br i1 %i.q, label %bb.l, label %bb.d, !dbg !6421

bb.d:                                             ; preds = %bb.m, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6422, !noalias !6327
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i), "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i = load ptr, ptr %.sroa.7.0.copyload.i, align 8, !dbg !6423, !noalias !6327, !nonnull !718, !noundef !718
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 8, !dbg !6423
  %.val7.i.i.i = load i64, ptr %i.r, align 8, !dbg !6423, !noalias !6327, !noundef !718
    #dbg_value(ptr %.sroa.6.0.copyload.i, !6344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6066)
    #dbg_value(ptr poison, !6344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6066)
    #dbg_declare(ptr %i.c, !6347, !DIExpression(), !6067)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6424, !noalias !6352
  store i64 0, ptr %i.c, align 8, !dbg !6425, !noalias !6352
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6425
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !dbg !6425, !noalias !6352
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6425
  store i64 0, ptr %i.t, align 8, !dbg !6425, !noalias !6352
    #dbg_value(ptr %i.c, !6348, !DIExpression(), !6073)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6426, !noalias !6352
  store ptr %i.c, ptr %i.b, align 8, !dbg !6426, !noalias !6352
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6426
  store i8 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !6426, !noalias !6352
    #dbg_value(ptr poison, !6353, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6076)
    #dbg_value(ptr poison, !6353, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 64), !6076)
    #dbg_value(ptr poison, !6357, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6076)
    #dbg_declare(ptr %i.b, !6356, !DIExpression(), !6077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6427, !noalias !6359
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 264, !dbg !6427
  invoke void @_RINvMsb_CscbFFjjIlwRm_5rcgenNtB6_11KeyIdMethod6deriveRShECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val7.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.j, !dbg !6428, !noalias !6360

.noexc.i.i.i.i:                                   ; preds = %bb.d
    #dbg_value(ptr %i.a, !6361, !DIExpression(), !6083)
    #dbg_value(ptr %i.a, !6363, !DIExpression(), !6086)
    #dbg_value(ptr %i.a, !6365, !DIExpression(), !6089)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6429
  %i.w = load ptr, ptr %i.v, align 8, !dbg !6429, !noalias !6359, !nonnull !718, !noundef !718
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6430
  %i.y = load i64, ptr %i.x, align 8, !dbg !6430, !noalias !6359, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.f unwind label %bb.e, !dbg !6431, !noalias !6360

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %.body.i.i.i.i unwind label %bb.i, !dbg !6432, !noalias !6367

bb.f:                                             ; preds = %.noexc.i.i.i.i
    #dbg_value(ptr %i.a, !1894, !DIExpression(), !6097)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i unwind label %bb.g, !dbg !6433, !noalias !6367

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !6099)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i.i unwind label %bb.h, !dbg !6434, !noalias !6367

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6433, !noalias !6367
  unreachable, !dbg !6433

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i: ; preds = %bb.f
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !6101)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.j, !dbg !6435, !noalias !6360

bb.i:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6436, !noalias !6367
  unreachable, !dbg !6436

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !6437

.body.i.i.i.i:                                    ; preds = %bb.j, %bb.g, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.aa, %bb.g ], [ %i.z, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #11
          to label %.body.i.i.i unwind label %bb.k, !dbg !6437, !noalias !6360

bb.k:                                             ; preds = %.body.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6438, !noalias !6360
  unreachable, !dbg !6438

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6439, !noalias !6327
    #dbg_value(ptr %.val, !6368, !DIExpression(), !6106)
  store ptr %.val, ptr %i.f, align 8, !dbg !6440, !noalias !6327
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !6440
  store i8 -1, ptr %i.af, align 8, !dbg !6440, !noalias !6327
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.b, !dbg !6441, !noalias !6327

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6442, !noalias !6327
  br label %bb.d, !dbg !6443

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6432, !noalias !6359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6444, !noalias !6352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !6445, !noalias !6373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6437, !noalias !6352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6446, !noalias !6327
    #dbg_value(ptr %.val, !6368, !DIExpression(), !6109)
  store ptr %.val, ptr %i.d, align 8, !dbg !6447, !noalias !6327
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !6447
  store i8 -1, ptr %i.ag, align 8, !dbg !6447, !noalias !6327
    #dbg_value(ptr %i.e, !6375, !DIExpression(), !6112)
    #dbg_value(ptr %i.e, !6377, !DIExpression(), !6115)
    #dbg_value(ptr %i.e, !6379, !DIExpression(), !6118)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6448
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !6448, !noalias !6327, !nonnull !718, !noundef !718
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !6449
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !6449, !noalias !6327, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %bb.p unwind label %bb.o, !dbg !6450, !noalias !6327

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.v, !dbg !6451, !noalias !6327

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6452, !noalias !6327
    #dbg_value(ptr %i.e, !1894, !DIExpression(), !6126)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.r unwind label %bb.q, !dbg !6453, !noalias !6327

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !1899, !DIExpression(), !6128)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i.i unwind label %bb.s, !dbg !6454, !noalias !6327

bb.r:                                             ; preds = %bb.p
    #dbg_value(ptr %i.e, !1899, !DIExpression(), !6130)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !6455, !noalias !6327

bb.s:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6453, !noalias !6327
  unreachable, !dbg !6453

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6451, !noalias !6327
    #dbg_value(ptr %i.h, !1753, !DIExpression(), !6132)
    #dbg_value(ptr %i.h, !1760, !DIExpression(), !6134)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.t, !dbg !6456, !noalias !6327

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !1767, !DIExpression(), !6136)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i.i.i unwind label %bb.u, !dbg !6457, !noalias !6327

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6456, !noalias !6327
  unreachable, !dbg !6456

common.resume.i.i.i:                              ; preds = %bb.t, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.t ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !6458

bb.v:                                             ; preds = %bb.o, %.body.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6459, !noalias !6327
  unreachable, !dbg !6459

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.h, !1767, !DIExpression(), !6138)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !6460, !noalias !6327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6419, !noalias !6327
    #dbg_value(ptr %.val, !6381, !DIExpression(), !6141)
  %i.ar = load i64, ptr %i.j, align 8, !dbg !6461, !noalias !6311, !noundef !718 ; 6 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !6462
  call void @llvm.assume(i1 %i.as), !dbg !6463
  %i.at = sub nsw i64 %i.ar, %i.bh, !dbg !6464    ; 4 uses
    #dbg_value(i64 %i.at, !6300, !DIExpression(), !6142)
    #dbg_value(i64 56, !6302, !DIExpression(), !6143)
  %i.au = icmp ult i64 %i.at, 128, !dbg !6465     ; 2 uses
  br i1 %i.au, label %.thread.i, label %.preheader.i, !dbg !6465

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !6466, !noalias !6311
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !6467

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.w, %bb.a
  %i.av = load ptr, ptr %i.k, align 8, !dbg !6468, !alias.scope !6326, !noalias !6311, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.av, !1729, !DIExpression(), !6050)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.l, !dbg !6469
    #dbg_value(ptr %i.aw, !1702, !DIExpression(), !6147)
    #dbg_value(ptr %i.aw, !1788, !DIExpression(), !6149)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6149)
  store i8 -1, ptr %i.aw, align 1, !dbg !6470, !noalias !6311
  %i.ax = add i64 %i.l, 1, !dbg !6471             ; 4 uses
  store i64 %i.ax, ptr %i.j, align 8, !dbg !6471, !alias.scope !6326, !noalias !6311
    #dbg_value(i32 2, !6297, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6038)
    #dbg_value(ptr %.val, !6313, !DIExpression(), !6028)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !6040)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !6042)
    #dbg_value(i8 -1, !1699, !DIExpression(), !6040)
    #dbg_value(i64 1, !1710, !DIExpression(), !6045)
    #dbg_value(i64 %i.ax, !1700, !DIExpression(), !6048)
    #dbg_value(i64 %i.ax, !1724, !DIExpression(), !6050)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !6051)
  %i.ay = load i64, ptr %.val, align 8, !dbg !6417, !range !1731, !alias.scope !6326, !noalias !6311, !noundef !718
  %i.az = icmp eq i64 %i.ax, %i.ay, !dbg !6418
  br i1 %i.az, label %bb.x, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !6418

bb.x:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !6466, !noalias !6311
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !6467

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.x, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ba = load ptr, ptr %i.k, align 8, !dbg !6468, !alias.scope !6326, !noalias !6311, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ba, !1729, !DIExpression(), !6050)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax, !dbg !6469
    #dbg_value(ptr %i.bb, !1702, !DIExpression(), !6147)
    #dbg_value(ptr %i.bb, !1788, !DIExpression(), !6149)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6149)
  store i8 -1, ptr %i.bb, align 1, !dbg !6470, !noalias !6311
  %i.bc = add i64 %i.l, 2, !dbg !6471             ; 4 uses
  store i64 %i.bc, ptr %i.j, align 8, !dbg !6471, !alias.scope !6326, !noalias !6311
    #dbg_value(i32 3, !6297, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6038)
    #dbg_value(ptr %.val, !6313, !DIExpression(), !6028)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !6040)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !6042)
    #dbg_value(i8 -1, !1699, !DIExpression(), !6040)
    #dbg_value(i64 1, !1710, !DIExpression(), !6045)
    #dbg_value(i64 %i.bc, !1700, !DIExpression(), !6048)
    #dbg_value(i64 %i.bc, !1724, !DIExpression(), !6050)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !6051)
  %i.bd = load i64, ptr %.val, align 8, !dbg !6417, !range !1731, !alias.scope !6326, !noalias !6311, !noundef !718
  %i.be = icmp eq i64 %i.bc, %i.bd, !dbg !6418
  br i1 %i.be, label %bb.y, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !6418

bb.y:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !6466, !noalias !6311
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !6467

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.y, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.bf = load ptr, ptr %i.k, align 8, !dbg !6468, !alias.scope !6326, !noalias !6311, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bf, !1729, !DIExpression(), !6050)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc, !dbg !6469
    #dbg_value(ptr %i.bg, !1702, !DIExpression(), !6147)
    #dbg_value(ptr %i.bg, !1788, !DIExpression(), !6149)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6149)
  store i8 -1, ptr %i.bg, align 1, !dbg !6470, !noalias !6311
  %i.bh = add i64 %i.l, 3, !dbg !6471             ; 10 uses
  store i64 %i.bh, ptr %i.j, align 8, !dbg !6471, !alias.scope !6326, !noalias !6311
    #dbg_value(i32 3, !6297, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6038)
    #dbg_value(ptr %.val, !6381, !DIExpression(), !6151)
    #dbg_value(i64 %i.bh, !6298, !DIExpression(), !6152)
    #dbg_value(i64 %i.bh, !6324, !DIExpression(), !6037)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !6472, !alias.scope !6311, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !6342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6153)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6472
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !6472, !alias.scope !6311
    #dbg_value(i64 %.sroa.4.0.copyload.i, !6342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6153)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6472
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !6472, !alias.scope !6311 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !6342, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6153)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !6472
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !6472, !alias.scope !6311 ; 2 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !6342, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6153)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !6472
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !6472, !alias.scope !6311 ; 3 uses
    #dbg_value(ptr %.sroa.7.0.copyload.i, !6342, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6153)
    #dbg_value(ptr poison, !6341, !DIExpression(), !6154)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !6332, !DIExpression(DW_OP_deref), !6155)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !6333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6155)
    #dbg_value(ptr %.sroa.7.0.copyload.i, !6333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6155)
    #dbg_value(ptr poison, !6330, !DIExpression(), !6156)
    #dbg_value(ptr poison, !6371, !DIExpression(), !6158)
    #dbg_value(ptr poison, !6371, !DIExpression(), !6159)
    #dbg_value(ptr poison, !6371, !DIExpression(), !6160)
    #dbg_declare(ptr %i.h, !6334, !DIExpression(), !6161)
    #dbg_declare(ptr %i.e, !6335, !DIExpression(), !6162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !6473, !noalias !6327
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !6474, !noalias !6327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6475, !noalias !6327
    #dbg_value(ptr %.val, !6368, !DIExpression(), !6164)
  store ptr %.val, ptr %i.g, align 8, !dbg !6476, !noalias !6327
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !6476
  store i8 -1, ptr %i.bi, align 8, !dbg !6476, !noalias !6327
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.c unwind label %bb.b, !dbg !6477, !noalias !6327

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.bm, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !6478 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !6302, !DIExpression(), !6143)
  %i.bj = and i64 %.sroa.07.0.i, 56, !dbg !6479
  %i.bk = lshr i64 %i.at, %i.bj, !dbg !6479
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !6479
  %i.bm = add i64 %.sroa.07.0.i, -8, !dbg !6480
    #dbg_value(i64 %i.bm, !6302, !DIExpression(), !6143)
  br i1 %i.bl, label %.preheader.i, label %bb.z, !dbg !6479

bb.z:                                             ; preds = %.preheader.i
  %i.bn = lshr exact i64 %.sroa.07.0.i, 3, !dbg !6481 ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 2, !dbg !6482    ; 2 uses
    #dbg_value(i64 %i.bo, !6301, !DIExpression(), !6165)
    #dbg_value(i64 %.sroa.07.0.i, !6302, !DIExpression(), !6143)
  %i.bp = icmp eq i64 %.sroa.07.0.i, 0, !dbg !6483
  br i1 %i.bp, label %.thread.i, label %bb.aa, !dbg !6483

bb.aa:                                            ; preds = %bb.z
  %.not.i = icmp eq i64 %i.bo, 3, !dbg !6484
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.ab, !dbg !6484

.thread.i:                                        ; preds = %bb.z, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.bc, %bb.z ], [ %i.ax, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !6485 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.z ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.z ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !6304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6166)
    #dbg_value(!DIArgList(i64 %i.bh, i64 %.sroa.02.06.i), !6303, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !6486, !noalias !6311
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.bh), !dbg !6487, !noalias !6311
    #dbg_value(ptr %i.i, !1800, !DIExpression(), !6169)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i), !dbg !6488, !noalias !6311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6489, !noalias !6311
  %.pre.pre = load i64, ptr %i.j, align 8, !dbg !6490, !noalias !6311
  br label %.loopexit7.i, !dbg !6491

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add nsw i64 %i.bn, -1, !dbg !6492       ; 3 uses
    #dbg_value(i64 %i.bq, !6305, !DIExpression(), !6176)
  %i.br = add nuw i64 %i.bq, %i.bh, !dbg !6493    ; 2 uses
    #dbg_value(i64 %i.br, !6303, !DIExpression(), !6167)
    #dbg_value(i64 0, !6306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6177)
    #dbg_value(i64 %i.bq, !6306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6177)
    #dbg_value(ptr undef, !6283, !DIExpression(), !6019)
    #dbg_value(ptr undef, !6279, !DIExpression(), !6018)
    #dbg_value(ptr undef, !6275, !DIExpression(), !6017)
    #dbg_value(ptr undef, !6276, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6178)
  %.not18.i = icmp eq i64 %i.bq, 0, !dbg !6494
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !6495

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %i.bs = icmp samesign ult i64 %i.ar, %i.bh
  br i1 %i.bs, label %bb.ac, label %.lr.ph.i, !dbg !6496, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.bt = phi i64 [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.ar, %.lr.ph.i.preheader ], !dbg !6497 ; 5 uses
  %.sroa.016.012.i = phi i64 [ %i.bu, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.012.i, !6280, !DIExpression(), !6181)
    #dbg_value(i64 %.sroa.016.012.i, !6316, !DIExpression(), !6031)
    #dbg_value(i64 %.sroa.016.012.i, !6320, !DIExpression(), !6034)
  %i.bu = add nuw i64 %.sroa.016.012.i, 1, !dbg !6498 ; 2 uses
    #dbg_value(i64 %i.bu, !6306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6177)
    #dbg_value(ptr %.val, !6323, !DIExpression(), !6037)
  call void @llvm.experimental.noalias.scope.decl(metadata !6392), !dbg !6499
    #dbg_value(ptr %.val, !1839, !DIExpression(), !6184)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !6185)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !6187)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !6189)
    #dbg_value(i64 %i.bh, !1840, !DIExpression(), !6184)
    #dbg_value(i64 %i.bh, !1855, !DIExpression(), !6191)
    #dbg_value(i8 0, !1841, !DIExpression(), !6184)
    #dbg_value(i64 1, !1859, !DIExpression(), !6194)
    #dbg_value(i64 1, !1857, !DIExpression(), !6196)
    #dbg_value(i64 1, !1859, !DIExpression(), !6200)
    #dbg_value(i64 %i.bt, !1842, !DIExpression(), !6201)
  %i.bv = icmp sgt i64 %i.bt, -1, !dbg !6500
  call void @llvm.assume(i1 %i.bv), !dbg !6501
    #dbg_value(ptr %.val, !1862, !DIExpression(), !6202)
  %2 = load i64, ptr %.val, align 8, !dbg !6502, !range !1731, !alias.scope !6392, !noalias !6311, !noundef !718
  %3 = icmp eq i64 %i.bt, %2, !dbg !6503
  br i1 %3, label %bb.ad, label %bb.ae, !dbg !6503

bb.ac:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.bh, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !6504, !noalias !6393
  unreachable, !dbg !6504

bb.ad:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !6505, !noalias !6311
  br label %bb.ae, !dbg !6506

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i
  %i.bw = load ptr, ptr %i.k, align 8, !dbg !6507, !alias.scope !6392, !noalias !6311, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bw, !1856, !DIExpression(), !6191)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bh, !dbg !6508 ; 3 uses
    #dbg_value(ptr %i.bx, !1843, !DIExpression(), !6206)
    #dbg_value(ptr %i.bx, !1856, !DIExpression(), !6196)
    #dbg_value(ptr %i.bx, !1868, !DIExpression(), !6208)
  %i.by = icmp samesign ult i64 %i.bh, %i.bt, !dbg !6509
  br i1 %i.by, label %bb.af, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !6509

bb.af:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.bx, !1871, !DIExpression(), !6210)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1, !dbg !6510
    #dbg_value(ptr %i.bz, !1874, !DIExpression(), !6210)
  %i.ca = sub nuw nsw i64 %i.bt, %i.bh, !dbg !6511
    #dbg_value(i64 %i.ca, !1875, !DIExpression(), !6210)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.bx, i64 %i.ca, i1 false), !dbg !6512, !noalias !6311
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !6513

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.af, %bb.ae
    #dbg_value(i8 0, !1869, !DIExpression(), !6208)
  store i8 0, ptr %i.bx, align 1, !dbg !6514, !noalias !6311
  %i.cb = add nuw i64 %i.bt, 1, !dbg !6515        ; 3 uses
    #dbg_value(i64 %i.cb, !1853, !DIExpression(), !6189)
  store i64 %i.cb, ptr %i.j, align 8, !dbg !6516, !alias.scope !6392, !noalias !6311
    #dbg_value(i64 %i.bu, !6306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6177)
    #dbg_value(ptr undef, !6283, !DIExpression(), !6019)
    #dbg_value(ptr undef, !6279, !DIExpression(), !6018)
    #dbg_value(ptr undef, !6275, !DIExpression(), !6017)
    #dbg_value(ptr undef, !6276, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6178)
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bq, !dbg !6494
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !6495

.loopexit7.thread.i:                              ; preds = %bb.ab, %bb.aa
  %.sroa.014.0.ph.i = phi i64 [ %i.br, %bb.ab ], [ %i.bh, %bb.aa ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !6303, !DIExpression(), !6167)
  %i.cc = add i64 %.sroa.014.0.ph.i, -3, !dbg !6517
    #dbg_value(i64 %i.cc, !6307, !DIExpression(), !6211)
    #dbg_value(i64 %i.cc, !6390, !DIExpression(), !6213)
    #dbg_value(i64 %i.cc, !6394, !DIExpression(), !6216)
    #dbg_value(i64 %i.cc, !6397, !DIExpression(), !6219)
  br label %bb.ag, !dbg !6518

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !6490 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.bo, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.br, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !6519
    #dbg_value(i64 %.sroa.014.0.i, !6303, !DIExpression(), !6167)
  %i.cd = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !6517 ; 4 uses
    #dbg_value(i64 %i.cd, !6307, !DIExpression(), !6211)
    #dbg_value(i64 %i.cd, !6390, !DIExpression(), !6213)
    #dbg_value(i64 %i.cd, !6394, !DIExpression(), !6216)
    #dbg_value(i64 %i.cd, !6397, !DIExpression(), !6219)
  br i1 %i.au, label %bb.ah, label %bb.ag, !dbg !6518

bb.ag:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.ce = phi i64 [ %i.ar, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !6490 ; 2 uses
  %i.cf = phi i64 [ %i.cc, %.loopexit7.thread.i ], [ %i.cd, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1341.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !6389, !DIExpression(), !6220)
    #dbg_value(ptr %.val, !6386, !DIExpression(), !6221)
    #dbg_value(ptr %.val, !6383, !DIExpression(), !6222)
    #dbg_value(ptr %.val, !6400, !DIExpression(), !6225)
    #dbg_value(i64 %i.cf, !6390, !DIExpression(), !6220)
    #dbg_value(i64 %i.cf, !6394, !DIExpression(), !6227)
    #dbg_value(i64 %i.cf, !6397, !DIExpression(), !6229)
    #dbg_value(ptr poison, !6395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6227)
    #dbg_value(ptr poison, !6398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6229)
    #dbg_value(i64 %i.ce, !6395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6227)
    #dbg_value(i64 %i.ce, !6398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6229)
  %i.cg = icmp ult i64 %i.cf, %i.ce, !dbg !6520
  br i1 %i.cg, label %bb.ai, label %bb.aj, !dbg !6520

bb.ah:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !6389, !DIExpression(), !6213)
    #dbg_value(ptr %.val, !6386, !DIExpression(), !6231)
    #dbg_value(ptr %.val, !6383, !DIExpression(), !6233)
    #dbg_value(ptr %.val, !6400, !DIExpression(), !6235)
    #dbg_value(ptr poison, !6395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6216)
    #dbg_value(ptr poison, !6398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6219)
    #dbg_value(i64 %.pre, !6395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6216)
    #dbg_value(i64 %.pre, !6398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6219)
  %i.ch = icmp ult i64 %i.cd, %.pre, !dbg !6521
  br i1 %i.ch, label %bb.al, label %bb.am, !dbg !6521

bb.ai:                                            ; preds = %bb.ag
  %i.ci = load ptr, ptr %i.k, align 8, !dbg !6522, !noalias !6311, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ci, !6395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6227)
    #dbg_value(ptr %i.ci, !6398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6229)
  %i.cj = lshr exact i64 %.sroa.07.1341.i, 3, !dbg !6523
  %i.ck = trunc i64 %i.cj to i8, !dbg !6524
  %i.cl = add i8 %i.ck, 1, !dbg !6524
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf, !dbg !6525
  %i.cn = or i8 %i.cl, -128, !dbg !6526
  store i8 %i.cn, ptr %i.cm, align 1, !dbg !6526, !noalias !6311
    #dbg_value(i64 %i.cf, !6307, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6211)
    #dbg_value(i64 %i.cf, !6390, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6213)
    #dbg_value(i64 %i.cf, !6394, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6216)
    #dbg_value(i64 %i.cf, !6397, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6219)
  %.sroa.018.013.i = add nuw i64 %i.cf, 1, !dbg !6527 ; 3 uses
  %i.co = load i64, ptr %i.j, align 8, !dbg !6528, !noalias !6311, !noundef !718 ; 2 uses
  %i.cp = icmp ult i64 %.sroa.018.013.i, %i.co, !dbg !6529
  br i1 %i.cp, label %.lr.ph16.i, label %._crit_edge.i, !dbg !6529

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !6520, !noalias !6311
  unreachable, !dbg !6520

bb.ak:                                            ; preds = %.lr.ph16.i
  %i.cq = add i64 %.sroa.07.214.i, -8, !dbg !6530
    #dbg_value(i64 %i.cq, !6302, !DIExpression(), !6143)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.015.i, 1, !dbg !6527 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !6397, !DIExpression(), !6219)
    #dbg_value(i64 %.sroa.018.0.i, !6394, !DIExpression(), !6216)
    #dbg_value(i64 %.sroa.018.0.i, !6390, !DIExpression(), !6213)
    #dbg_value(i64 %.sroa.018.0.i, !6307, !DIExpression(), !6211)
    #dbg_value(ptr %.val, !6389, !DIExpression(), !6247)
    #dbg_value(ptr %.val, !6386, !DIExpression(), !6248)
    #dbg_value(ptr %.val, !6383, !DIExpression(), !6249)
    #dbg_value(ptr %.val, !6400, !DIExpression(), !6251)
    #dbg_value(i64 %.sroa.018.0.i, !6390, !DIExpression(), !6247)
    #dbg_value(i64 %.sroa.018.0.i, !6394, !DIExpression(), !6252)
    #dbg_value(i64 %.sroa.018.0.i, !6397, !DIExpression(), !6253)
  %i.cr = load i64, ptr %i.j, align 8, !dbg !6528, !noalias !6311, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !6395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6252)
    #dbg_value(ptr poison, !6398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6253)
    #dbg_value(i64 %i.cr, !6395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6252)
    #dbg_value(i64 %i.cr, !6398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6253)
  %i.cs = icmp ult i64 %.sroa.018.0.i, %i.cr, !dbg !6529
  br i1 %i.cs, label %.lr.ph16.i, label %._crit_edge.i, !dbg !6529

.lr.ph16.i:                                       ; preds = %bb.ai, %bb.ak
  %.sroa.018.015.i = phi i64 [ %.sroa.018.0.i, %bb.ak ], [ %.sroa.018.013.i, %bb.ai ] ; 2 uses
  %.sroa.07.214.i = phi i64 [ %i.cq, %bb.ak ], [ %.sroa.07.1341.i, %bb.ai ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i, !6302, !DIExpression(), !6143)
  %i.ct = load ptr, ptr %i.k, align 8, !dbg !6531, !noalias !6311, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ct, !6395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6252)
    #dbg_value(ptr %i.ct, !6398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6253)
  %i.cu = and i64 %.sroa.07.214.i, 56, !dbg !6532
  %i.cv = lshr i64 %i.at, %i.cu, !dbg !6532
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.018.015.i, !dbg !6533
  %i.cx = trunc i64 %i.cv to i8, !dbg !6534
  store i8 %i.cx, ptr %i.cw, align 1, !dbg !6534, !noalias !6311
    #dbg_value(i64 %.sroa.018.015.i, !6307, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6211)
    #dbg_value(i64 %.sroa.018.015.i, !6390, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6213)
    #dbg_value(i64 %.sroa.018.015.i, !6394, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6216)
    #dbg_value(i64 %.sroa.018.015.i, !6397, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6219)
  %i.cy = icmp eq i64 %.sroa.07.214.i, 0, !dbg !6535
    #dbg_value(i64 %.sroa.07.214.i, !6302, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !6143)
  br i1 %i.cy, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs3_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.ak, !dbg !6535

._crit_edge.i:                                    ; preds = %bb.ak, %bb.ai
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.013.i, %bb.ai ], [ %.sroa.018.0.i, %bb.ak ], !dbg !6527
  %.lcssa.i = phi i64 [ %i.co, %bb.ai ], [ %i.cr, %bb.ak ], !dbg !6528
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !6529, !noalias !6311
  unreachable, !dbg !6529

bb.al:                                            ; preds = %bb.ah
  %i.cz = load ptr, ptr %i.k, align 8, !dbg !6536, !noalias !6311, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cz, !6395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6216)
    #dbg_value(ptr %i.cz, !6398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6219)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cd, !dbg !6537
  %i.db = trunc nuw nsw i64 %i.at to i8, !dbg !6538
  store i8 %i.db, ptr %i.da, align 1, !dbg !6538, !noalias !6311
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs3_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !6539

bb.am:                                            ; preds = %bb.ah
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !6521, !noalias !6311
  unreachable, !dbg !6521

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs3_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph16.i, %bb.al
  ret void, !dbg !6540
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs4_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6543 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !6986, !DIExpression(), !6596)
    #dbg_value(ptr poison, !6990, !DIExpression(), !6597)
    #dbg_value(ptr poison, !6994, !DIExpression(), !6598)
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !7081, !DIExpression(), !6606)
    #dbg_value(ptr poison, !7085, !DIExpression(), !6607)
    #dbg_value(ptr poison, !7089, !DIExpression(), !6608)
  %i.j = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !6983, !DIExpression(), !7092)
    #dbg_declare(ptr %1, !6984, !DIExpression(), !7093)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !7222
  %.val = load ptr, ptr %0, align 8, !dbg !7223, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7094), !dbg !7223
    #dbg_value(ptr poison, !7066, !DIExpression(), !6611)
    #dbg_declare(ptr %1, !7067, !DIExpression(), !6612)
end_hunk_4
begin_hunk_5_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs4_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7150, !DIExpression(), !6784)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7147, !DIExpression(), !6786)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7163, !DIExpression(), !6788)
    #dbg_value(ptr poison, !7158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6769)
    #dbg_value(ptr poison, !7161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6772)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !7158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6769)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !7161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6772)
  %i.br = icmp ult i64 %i.bn, %.pre.i.i.i.i.i.i, !dbg !7295
  br i1 %i.br, label %bb.r, label %.invoke.i.i.i.i, !dbg !7295

bb.p:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %i.v, align 8, !dbg !7296, !noalias !7111, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bs, !7158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6780)
    #dbg_value(ptr %i.bs, !7161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6782)
  %i.bt = lshr exact i64 %.sroa.07.1341.i.i.i.i.i.i.i, 3, !dbg !7297
  %i.bu = trunc i64 %i.bt to i8, !dbg !7298
  %i.bv = add i8 %i.bu, 1, !dbg !7298
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp, !dbg !7299
  %i.bx = or i8 %i.bv, -128, !dbg !7300
  store i8 %i.bx, ptr %i.bw, align 1, !dbg !7300, !noalias !7111
    #dbg_value(i64 %i.bp, !7019, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6764)
    #dbg_value(i64 %i.bp, !7154, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6766)
    #dbg_value(i64 %i.bp, !7157, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6769)
    #dbg_value(i64 %i.bp, !7160, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6772)
  %.sroa.018.013.i.i.i.i.i.i.i = add nuw i64 %i.bp, 1, !dbg !7301 ; 3 uses
  %i.by = load i64, ptr %i.u, align 8, !dbg !7302, !noalias !7111, !noundef !718 ; 2 uses
  %i.bz = icmp ult i64 %.sroa.018.013.i.i.i.i.i.i.i, %i.by, !dbg !7303
  br i1 %i.bz, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !7303

bb.q:                                             ; preds = %.lr.ph16.i.i.i.i.i.i.i
  %i.ca = add i64 %.sroa.07.214.i.i.i.i.i.i.i, -8, !dbg !7304
    #dbg_value(i64 %i.ca, !7014, !DIExpression(), !6717)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.015.i.i.i.i.i.i.i, 1, !dbg !7301 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7160, !DIExpression(), !6772)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7157, !DIExpression(), !6769)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7154, !DIExpression(), !6766)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7019, !DIExpression(), !6764)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7153, !DIExpression(), !6800)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7150, !DIExpression(), !6801)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7147, !DIExpression(), !6802)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7163, !DIExpression(), !6804)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7154, !DIExpression(), !6800)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7157, !DIExpression(), !6805)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7160, !DIExpression(), !6806)
  %i.cb = load i64, ptr %i.u, align 8, !dbg !7302, !noalias !7111, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !7158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6805)
    #dbg_value(ptr poison, !7161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6806)
    #dbg_value(i64 %i.cb, !7158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6805)
    #dbg_value(i64 %i.cb, !7161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6806)
  %i.cc = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.cb, !dbg !7303
  br i1 %i.cc, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !7303

.lr.ph16.i.i.i.i.i.i.i:                           ; preds = %bb.p, %bb.q
  %.sroa.018.015.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.p ] ; 2 uses
  %.sroa.07.214.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.q ], [ %.sroa.07.1341.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !7014, !DIExpression(), !6717)
  %i.cd = load ptr, ptr %i.v, align 8, !dbg !7305, !noalias !7111, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cd, !7158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6805)
    #dbg_value(ptr %i.cd, !7161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6806)
  %i.ce = and i64 %.sroa.07.214.i.i.i.i.i.i.i, 56, !dbg !7306
  %i.cf = lshr i64 %i.ap, %i.ce, !dbg !7306
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.018.015.i.i.i.i.i.i.i, !dbg !7307
  %i.ch = trunc i64 %i.cf to i8, !dbg !7308
  store i8 %i.ch, ptr %i.cg, align 1, !dbg !7308, !noalias !7111
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !7019, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6764)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !7154, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6766)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !7157, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6769)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !7160, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6772)
  %i.ci = icmp eq i64 %.sroa.07.214.i.i.i.i.i.i.i, 0, !dbg !7309
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !7014, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !6717)
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.q, !dbg !7309

bb.r:                                             ; preds = %bb.o
  %i.cj = load ptr, ptr %i.v, align 8, !dbg !7310, !noalias !7111, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cj, !7158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6769)
    #dbg_value(ptr %i.cj, !7161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6772)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bn, !dbg !7311
  %i.cl = trunc nuw nsw i64 %i.ap to i8, !dbg !7312
  store i8 %i.cl, ptr %i.ck, align 1, !dbg !7312, !noalias !7111
  br label %.loopexit.i.i.i, !dbg !7313

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.cm = phi i64 [ %i.bn, %bb.o ], [ %i.bp, %bb.n ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.q ]
  %i.cn = phi i64 [ %.pre.i.i.i.i.i.i, %bb.o ], [ %i.bo, %bb.n ], [ %i.by, %bb.p ], [ %i.cb, %bb.q ]
  %i.co = phi ptr [ @4, %bb.o ], [ @2, %bb.n ], [ @3, %bb.p ], [ @3, %bb.q ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7314, !noalias !7111

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %.invoke.i.i.i.i, %bb.k, %.noexc10.i.i.i.i, %.thread.i.i.i.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #11
          to label %.body.i.i.i unwind label %bb.s, !dbg !7315, !noalias !7111

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7316, !noalias !7111
  unreachable, !dbg !7316

bb.t:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !7317, !noalias !7110
    #dbg_value(ptr %.val, !7177, !DIExpression(), !6820)
  store ptr %.val, ptr %i.g, align 8, !dbg !7318, !noalias !7110
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !7318
  store i8 -1, ptr %i.cq, align 8, !dbg !7318, !noalias !7110
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.b, !dbg !7319, !noalias !7110

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !7320, !noalias !7110
  br label %bb.d, !dbg !7321

.loopexit.i.i.i:                                  ; preds = %.lr.ph16.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7322, !noalias !7111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !7323, !noalias !7110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7315, !noalias !7111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !7324, !noalias !7110
    #dbg_value(ptr %.val, !7177, !DIExpression(), !6823)
  store ptr %.val, ptr %i.e, align 8, !dbg !7325, !noalias !7110
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !7325
  store i8 -1, ptr %i.cr, align 8, !dbg !7325, !noalias !7110
    #dbg_value(ptr %i.f, !7183, !DIExpression(), !6826)
    #dbg_value(ptr %i.f, !7185, !DIExpression(), !6829)
    #dbg_value(ptr %i.f, !7187, !DIExpression(), !6832)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !7326
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !7326, !noalias !7110, !nonnull !718, !noundef !718
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !7327
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !7327, !noalias !7110, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.w unwind label %bb.v, !dbg !7328, !noalias !7110

bb.v:                                             ; preds = %.loopexit.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #11
          to label %.body.i.i.i unwind label %bb.ac, !dbg !7329, !noalias !7110

bb.w:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7330, !noalias !7110
    #dbg_value(ptr %i.f, !1894, !DIExpression(), !6840)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.y unwind label %bb.x, !dbg !7331, !noalias !7110

bb.x:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !1899, !DIExpression(), !6842)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.z, !dbg !7332, !noalias !7110

bb.y:                                             ; preds = %bb.w
    #dbg_value(ptr %i.f, !1899, !DIExpression(), !6844)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !7333, !noalias !7110

bb.z:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7331, !noalias !7110
  unreachable, !dbg !7331

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7329, !noalias !7110
    #dbg_value(ptr %i.i, !1753, !DIExpression(), !6846)
    #dbg_value(ptr %i.i, !1760, !DIExpression(), !6848)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.aa, !dbg !7334, !noalias !7110

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !1767, !DIExpression(), !6850)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i.i.i unwind label %bb.ab, !dbg !7335, !noalias !7110

bb.ab:                                            ; preds = %bb.aa
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7334, !noalias !7110
  unreachable, !dbg !7334

common.resume.i.i.i:                              ; preds = %bb.aa, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !7336

bb.ac:                                            ; preds = %bb.v, %.body.i.i.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7337, !noalias !7110
  unreachable, !dbg !7337

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.i, !1767, !DIExpression(), !6852)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !7338, !noalias !7110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !7227, !noalias !7110
    #dbg_value(ptr %.val, !7189, !DIExpression(), !6855)
  %i.dc = load i64, ptr %i.k, align 8, !dbg !7339, !noalias !7094, !noundef !718 ; 6 uses
  %i.dd = icmp sgt i64 %i.dc, -1, !dbg !7340
  call void @llvm.assume(i1 %i.dd), !dbg !7341
  %i.de = sub nsw i64 %i.dc, %i.ds, !dbg !7342    ; 4 uses
    #dbg_value(i64 %i.de, !7072, !DIExpression(), !6856)
    #dbg_value(i64 56, !7074, !DIExpression(), !6857)
  %i.df = icmp ult i64 %i.de, 128, !dbg !7343     ; 2 uses
  br i1 %i.df, label %.thread.i, label %.preheader.i, !dbg !7343

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7344, !noalias !7094
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7345

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ad, %bb.a
  %i.dg = load ptr, ptr %i.l, align 8, !dbg !7346, !alias.scope !7109, !noalias !7094, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dg, !1729, !DIExpression(), !6639)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.m, !dbg !7347
    #dbg_value(ptr %i.dh, !1702, !DIExpression(), !6861)
    #dbg_value(ptr %i.dh, !1788, !DIExpression(), !6863)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6863)
  store i8 -1, ptr %i.dh, align 1, !dbg !7348, !noalias !7094
  %i.di = add i64 %i.m, 1, !dbg !7349             ; 4 uses
  store i64 %i.di, ptr %i.k, align 8, !dbg !7349, !alias.scope !7109, !noalias !7094
    #dbg_value(i32 2, !7069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6627)
    #dbg_value(ptr %.val, !7096, !DIExpression(), !6617)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !6629)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !6631)
    #dbg_value(i8 -1, !1699, !DIExpression(), !6629)
    #dbg_value(i64 1, !1710, !DIExpression(), !6634)
    #dbg_value(i64 %i.di, !1700, !DIExpression(), !6637)
    #dbg_value(i64 %i.di, !1724, !DIExpression(), !6639)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !6640)
  %i.dj = load i64, ptr %.val, align 8, !dbg !7225, !range !1731, !alias.scope !7109, !noalias !7094, !noundef !718
  %i.dk = icmp eq i64 %i.di, %i.dj, !dbg !7226
  br i1 %i.dk, label %bb.ae, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !7226

bb.ae:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7344, !noalias !7094
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !7345

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.ae, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.dl = load ptr, ptr %i.l, align 8, !dbg !7346, !alias.scope !7109, !noalias !7094, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dl, !1729, !DIExpression(), !6639)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di, !dbg !7347
    #dbg_value(ptr %i.dm, !1702, !DIExpression(), !6861)
    #dbg_value(ptr %i.dm, !1788, !DIExpression(), !6863)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6863)
  store i8 -1, ptr %i.dm, align 1, !dbg !7348, !noalias !7094
  %i.dn = add i64 %i.m, 2, !dbg !7349             ; 4 uses
  store i64 %i.dn, ptr %i.k, align 8, !dbg !7349, !alias.scope !7109, !noalias !7094
    #dbg_value(i32 3, !7069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6627)
    #dbg_value(ptr %.val, !7096, !DIExpression(), !6617)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !6629)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !6631)
    #dbg_value(i8 -1, !1699, !DIExpression(), !6629)
    #dbg_value(i64 1, !1710, !DIExpression(), !6634)
    #dbg_value(i64 %i.dn, !1700, !DIExpression(), !6637)
    #dbg_value(i64 %i.dn, !1724, !DIExpression(), !6639)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !6640)
  %i.do = load i64, ptr %.val, align 8, !dbg !7225, !range !1731, !alias.scope !7109, !noalias !7094, !noundef !718
  %i.dp = icmp eq i64 %i.dn, %i.do, !dbg !7226
  br i1 %i.dp, label %bb.af, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !7226

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7344, !noalias !7094
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !7345

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.af, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.dq = load ptr, ptr %i.l, align 8, !dbg !7346, !alias.scope !7109, !noalias !7094, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dq, !1729, !DIExpression(), !6639)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dn, !dbg !7347
    #dbg_value(ptr %i.dr, !1702, !DIExpression(), !6861)
    #dbg_value(ptr %i.dr, !1788, !DIExpression(), !6863)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6863)
  store i8 -1, ptr %i.dr, align 1, !dbg !7348, !noalias !7094
  %i.ds = add i64 %i.m, 3, !dbg !7349             ; 10 uses
  store i64 %i.ds, ptr %i.k, align 8, !dbg !7349, !alias.scope !7109, !noalias !7094
    #dbg_value(i32 3, !7069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6627)
    #dbg_value(ptr %.val, !7189, !DIExpression(), !6865)
    #dbg_value(i64 %i.ds, !7070, !DIExpression(), !6866)
    #dbg_value(i64 %i.ds, !7107, !DIExpression(), !6626)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !7350, !alias.scope !7094, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !7058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6867)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7350
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !7350, !alias.scope !7094
    #dbg_value(i64 %.sroa.4.0.copyload.i, !7058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6867)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7350
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !7350, !alias.scope !7094 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !7058, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6867)
    #dbg_value(ptr poison, !7057, !DIExpression(), !6868)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !7046, !DIExpression(DW_OP_deref), !6869)
    #dbg_value(ptr poison, !7044, !DIExpression(), !6870)
    #dbg_value(ptr poison, !7180, !DIExpression(), !6872)
    #dbg_value(ptr poison, !7180, !DIExpression(), !6873)
    #dbg_value(ptr poison, !7180, !DIExpression(), !6874)
    #dbg_declare(ptr %i.i, !7048, !DIExpression(), !6875)
    #dbg_declare(ptr %i.f, !7049, !DIExpression(), !6876)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !7351, !noalias !7110
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !7352, !noalias !7110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !7353, !noalias !7110
    #dbg_value(ptr %.val, !7177, !DIExpression(), !6878)
  store ptr %.val, ptr %i.h, align 8, !dbg !7354, !noalias !7110
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !7354
  store i8 -1, ptr %i.dt, align 8, !dbg !7354, !noalias !7110
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.b, !dbg !7355, !noalias !7110

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.dx, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7356 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !7074, !DIExpression(), !6857)
  %i.du = and i64 %.sroa.07.0.i, 56, !dbg !7357
  %i.dv = lshr i64 %i.de, %i.du, !dbg !7357
  %i.dw = icmp eq i64 %i.dv, 0, !dbg !7357
  %i.dx = add i64 %.sroa.07.0.i, -8, !dbg !7358
    #dbg_value(i64 %i.dx, !7074, !DIExpression(), !6857)
  br i1 %i.dw, label %.preheader.i, label %bb.ag, !dbg !7357

bb.ag:                                            ; preds = %.preheader.i
  %i.dy = lshr exact i64 %.sroa.07.0.i, 3, !dbg !7359 ; 2 uses
  %i.dz = add nuw nsw i64 %i.dy, 2, !dbg !7360    ; 2 uses
    #dbg_value(i64 %i.dz, !7073, !DIExpression(), !6879)
    #dbg_value(i64 %.sroa.07.0.i, !7074, !DIExpression(), !6857)
  %i.ea = icmp eq i64 %.sroa.07.0.i, 0, !dbg !7361
  br i1 %i.ea, label %.thread.i, label %bb.ah, !dbg !7361

bb.ah:                                            ; preds = %bb.ag
  %.not.i = icmp eq i64 %i.dz, 3, !dbg !7362
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.ai, !dbg !7362

.thread.i:                                        ; preds = %bb.ag, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.dn, %bb.ag ], [ %i.di, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7363 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.ag ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.ag ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !7076, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6880)
    #dbg_value(!DIArgList(i64 %i.ds, i64 %.sroa.02.06.i), !7075, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6881)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !7364, !noalias !7094
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.ds), !dbg !7365, !noalias !7094
    #dbg_value(ptr %i.j, !1800, !DIExpression(), !6883)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j), !dbg !7366, !noalias !7094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !7367, !noalias !7094
  %.pre.pre = load i64, ptr %i.k, align 8, !dbg !7368, !noalias !7094
  br label %.loopexit7.i, !dbg !7369

bb.ai:                                            ; preds = %bb.ah
  %i.eb = add nsw i64 %i.dy, -1, !dbg !7370       ; 3 uses
    #dbg_value(i64 %i.eb, !7077, !DIExpression(), !6890)
  %i.ec = add nuw i64 %i.eb, %i.ds, !dbg !7371    ; 2 uses
    #dbg_value(i64 %i.ec, !7075, !DIExpression(), !6881)
    #dbg_value(i64 0, !7078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6891)
    #dbg_value(i64 %i.eb, !7078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6891)
    #dbg_value(ptr undef, !7089, !DIExpression(), !6608)
    #dbg_value(ptr undef, !7085, !DIExpression(), !6607)
    #dbg_value(ptr undef, !7081, !DIExpression(), !6606)
    #dbg_value(ptr undef, !7082, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6892)
  %.not20.i = icmp eq i64 %i.eb, 0, !dbg !7372
  br i1 %.not20.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !7373

.lr.ph.i.preheader:                               ; preds = %bb.ai
  %i.ed = icmp samesign ult i64 %i.dc, %i.ds
  br i1 %i.ed, label %bb.aj, label %.lr.ph.i, !dbg !7374, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ee = phi i64 [ %i.em, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.dc, %.lr.ph.i.preheader ], !dbg !7375 ; 5 uses
  %.sroa.016.014.i = phi i64 [ %i.ef, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.014.i, !7086, !DIExpression(), !6895)
    #dbg_value(i64 %.sroa.016.014.i, !7099, !DIExpression(), !6620)
    #dbg_value(i64 %.sroa.016.014.i, !7103, !DIExpression(), !6623)
  %i.ef = add nuw i64 %.sroa.016.014.i, 1, !dbg !7376 ; 2 uses
    #dbg_value(i64 %i.ef, !7078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6891)
    #dbg_value(ptr %.val, !7106, !DIExpression(), !6626)
  call void @llvm.experimental.noalias.scope.decl(metadata !7200), !dbg !7377
    #dbg_value(ptr %.val, !1839, !DIExpression(), !6898)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !6899)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !6901)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !6903)
    #dbg_value(i64 %i.ds, !1840, !DIExpression(), !6898)
    #dbg_value(i64 %i.ds, !1855, !DIExpression(), !6905)
    #dbg_value(i8 0, !1841, !DIExpression(), !6898)
    #dbg_value(i64 1, !1859, !DIExpression(), !6908)
    #dbg_value(i64 1, !1857, !DIExpression(), !6910)
    #dbg_value(i64 1, !1859, !DIExpression(), !6914)
    #dbg_value(i64 %i.ee, !1842, !DIExpression(), !6915)
  %i.eg = icmp sgt i64 %i.ee, -1, !dbg !7378
  call void @llvm.assume(i1 %i.eg), !dbg !7379
    #dbg_value(ptr %.val, !1862, !DIExpression(), !6916)
  %2 = load i64, ptr %.val, align 8, !dbg !7380, !range !1731, !alias.scope !7200, !noalias !7094, !noundef !718
  %3 = icmp eq i64 %i.ee, %2, !dbg !7381
  br i1 %3, label %bb.ak, label %bb.al, !dbg !7381

bb.aj:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.ds, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !7382, !noalias !7201
  unreachable, !dbg !7382

bb.ak:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7383, !noalias !7094
  br label %bb.al, !dbg !7384

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i
  %i.eh = load ptr, ptr %i.l, align 8, !dbg !7385, !alias.scope !7200, !noalias !7094, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.eh, !1856, !DIExpression(), !6905)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ds, !dbg !7386 ; 3 uses
    #dbg_value(ptr %i.ei, !1843, !DIExpression(), !6920)
    #dbg_value(ptr %i.ei, !1856, !DIExpression(), !6910)
    #dbg_value(ptr %i.ei, !1868, !DIExpression(), !6922)
  %i.ej = icmp samesign ult i64 %i.ds, %i.ee, !dbg !7387
  br i1 %i.ej, label %bb.am, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7387

bb.am:                                            ; preds = %bb.al
    #dbg_value(ptr %i.ei, !1871, !DIExpression(), !6924)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 1, !dbg !7388
    #dbg_value(ptr %i.ek, !1874, !DIExpression(), !6924)
  %i.el = sub nuw nsw i64 %i.ee, %i.ds, !dbg !7389
    #dbg_value(i64 %i.el, !1875, !DIExpression(), !6924)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull align 1 %i.ei, i64 %i.el, i1 false), !dbg !7390, !noalias !7094
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7391

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.am, %bb.al
    #dbg_value(i8 0, !1869, !DIExpression(), !6922)
  store i8 0, ptr %i.ei, align 1, !dbg !7392, !noalias !7094
  %i.em = add nuw i64 %i.ee, 1, !dbg !7393        ; 3 uses
    #dbg_value(i64 %i.em, !1853, !DIExpression(), !6903)
  store i64 %i.em, ptr %i.k, align 8, !dbg !7394, !alias.scope !7200, !noalias !7094
    #dbg_value(i64 %i.ef, !7078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6891)
    #dbg_value(ptr undef, !7089, !DIExpression(), !6608)
    #dbg_value(ptr undef, !7085, !DIExpression(), !6607)
    #dbg_value(ptr undef, !7081, !DIExpression(), !6606)
    #dbg_value(ptr undef, !7082, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6892)
  %exitcond.not.i = icmp eq i64 %i.ef, %i.eb, !dbg !7372
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !7373

.loopexit7.thread.i:                              ; preds = %bb.ai, %bb.ah
  %.sroa.014.0.ph.i = phi i64 [ %i.ec, %bb.ai ], [ %i.ds, %bb.ah ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !7075, !DIExpression(), !6881)
  %i.en = add i64 %.sroa.014.0.ph.i, -3, !dbg !7395
    #dbg_value(i64 %i.en, !7079, !DIExpression(), !6925)
    #dbg_value(i64 %i.en, !7198, !DIExpression(), !6927)
    #dbg_value(i64 %i.en, !7202, !DIExpression(), !6930)
    #dbg_value(i64 %i.en, !7205, !DIExpression(), !6933)
  br label %bb.an, !dbg !7396

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.em, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7368 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.dz, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.ec, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7397
    #dbg_value(i64 %.sroa.014.0.i, !7075, !DIExpression(), !6881)
  %i.eo = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !7395 ; 4 uses
    #dbg_value(i64 %i.eo, !7079, !DIExpression(), !6925)
    #dbg_value(i64 %i.eo, !7198, !DIExpression(), !6927)
    #dbg_value(i64 %i.eo, !7202, !DIExpression(), !6930)
    #dbg_value(i64 %i.eo, !7205, !DIExpression(), !6933)
  br i1 %i.df, label %bb.ao, label %bb.an, !dbg !7396

bb.an:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.ep = phi i64 [ %i.dc, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !7368 ; 2 uses
  %i.eq = phi i64 [ %i.en, %.loopexit7.thread.i ], [ %i.eo, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1363.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !7197, !DIExpression(), !6934)
    #dbg_value(ptr %.val, !7194, !DIExpression(), !6935)
    #dbg_value(ptr %.val, !7191, !DIExpression(), !6936)
    #dbg_value(ptr %.val, !7208, !DIExpression(), !6939)
    #dbg_value(i64 %i.eq, !7198, !DIExpression(), !6934)
    #dbg_value(i64 %i.eq, !7202, !DIExpression(), !6941)
    #dbg_value(i64 %i.eq, !7205, !DIExpression(), !6943)
    #dbg_value(ptr poison, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6941)
    #dbg_value(ptr poison, !7206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6943)
    #dbg_value(i64 %i.ep, !7203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6941)
    #dbg_value(i64 %i.ep, !7206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6943)
  %i.er = icmp ult i64 %i.eq, %i.ep, !dbg !7398
  br i1 %i.er, label %bb.ap, label %bb.aq, !dbg !7398

bb.ao:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !7197, !DIExpression(), !6927)
    #dbg_value(ptr %.val, !7194, !DIExpression(), !6945)
    #dbg_value(ptr %.val, !7191, !DIExpression(), !6947)
    #dbg_value(ptr %.val, !7208, !DIExpression(), !6949)
    #dbg_value(ptr poison, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6930)
    #dbg_value(ptr poison, !7206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6933)
    #dbg_value(i64 %.pre, !7203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6930)
    #dbg_value(i64 %.pre, !7206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6933)
  %i.es = icmp ult i64 %i.eo, %.pre, !dbg !7399
  br i1 %i.es, label %bb.as, label %bb.at, !dbg !7399

bb.ap:                                            ; preds = %bb.an
  %i.et = load ptr, ptr %i.l, align 8, !dbg !7400, !noalias !7094, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.et, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6941)
    #dbg_value(ptr %i.et, !7206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6943)
  %i.eu = lshr exact i64 %.sroa.07.1363.i, 3, !dbg !7401
  %i.ev = trunc i64 %i.eu to i8, !dbg !7402
  %i.ew = add i8 %i.ev, 1, !dbg !7402
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eq, !dbg !7403
  %i.ey = or i8 %i.ew, -128, !dbg !7404
  store i8 %i.ey, ptr %i.ex, align 1, !dbg !7404, !noalias !7094
    #dbg_value(i64 %i.eq, !7079, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6925)
    #dbg_value(i64 %i.eq, !7198, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6927)
    #dbg_value(i64 %i.eq, !7202, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6930)
    #dbg_value(i64 %i.eq, !7205, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6933)
  %.sroa.018.015.i = add nuw i64 %i.eq, 1, !dbg !7405 ; 3 uses
  %i.ez = load i64, ptr %i.k, align 8, !dbg !7406, !noalias !7094, !noundef !718 ; 2 uses
  %i.fa = icmp ult i64 %.sroa.018.015.i, %i.ez, !dbg !7407
  br i1 %i.fa, label %.lr.ph18.i, label %._crit_edge.i, !dbg !7407

bb.aq:                                            ; preds = %bb.an
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !7398, !noalias !7094
  unreachable, !dbg !7398

bb.ar:                                            ; preds = %.lr.ph18.i
  %i.fb = add i64 %.sroa.07.216.i, -8, !dbg !7408
    #dbg_value(i64 %i.fb, !7074, !DIExpression(), !6857)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.017.i, 1, !dbg !7405 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !7205, !DIExpression(), !6933)
    #dbg_value(i64 %.sroa.018.0.i, !7202, !DIExpression(), !6930)
    #dbg_value(i64 %.sroa.018.0.i, !7198, !DIExpression(), !6927)
    #dbg_value(i64 %.sroa.018.0.i, !7079, !DIExpression(), !6925)
    #dbg_value(ptr %.val, !7197, !DIExpression(), !6961)
    #dbg_value(ptr %.val, !7194, !DIExpression(), !6962)
    #dbg_value(ptr %.val, !7191, !DIExpression(), !6963)
    #dbg_value(ptr %.val, !7208, !DIExpression(), !6965)
    #dbg_value(i64 %.sroa.018.0.i, !7198, !DIExpression(), !6961)
    #dbg_value(i64 %.sroa.018.0.i, !7202, !DIExpression(), !6966)
    #dbg_value(i64 %.sroa.018.0.i, !7205, !DIExpression(), !6967)
  %i.fc = load i64, ptr %i.k, align 8, !dbg !7406, !noalias !7094, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6966)
    #dbg_value(ptr poison, !7206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6967)
    #dbg_value(i64 %i.fc, !7203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6966)
    #dbg_value(i64 %i.fc, !7206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6967)
  %i.fd = icmp ult i64 %.sroa.018.0.i, %i.fc, !dbg !7407
  br i1 %i.fd, label %.lr.ph18.i, label %._crit_edge.i, !dbg !7407

.lr.ph18.i:                                       ; preds = %bb.ap, %bb.ar
  %.sroa.018.017.i = phi i64 [ %.sroa.018.0.i, %bb.ar ], [ %.sroa.018.015.i, %bb.ap ] ; 2 uses
  %.sroa.07.216.i = phi i64 [ %i.fb, %bb.ar ], [ %.sroa.07.1363.i, %bb.ap ] ; 3 uses
    #dbg_value(i64 %.sroa.07.216.i, !7074, !DIExpression(), !6857)
  %i.fe = load ptr, ptr %i.l, align 8, !dbg !7409, !noalias !7094, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fe, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6966)
    #dbg_value(ptr %i.fe, !7206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6967)
  %i.ff = and i64 %.sroa.07.216.i, 56, !dbg !7410
  %i.fg = lshr i64 %i.de, %i.ff, !dbg !7410
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.018.017.i, !dbg !7411
  %i.fi = trunc i64 %i.fg to i8, !dbg !7412
  store i8 %i.fi, ptr %i.fh, align 1, !dbg !7412, !noalias !7094
    #dbg_value(i64 %.sroa.018.017.i, !7079, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6925)
    #dbg_value(i64 %.sroa.018.017.i, !7198, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6927)
    #dbg_value(i64 %.sroa.018.017.i, !7202, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6930)
    #dbg_value(i64 %.sroa.018.017.i, !7205, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6933)
  %i.fj = icmp eq i64 %.sroa.07.216.i, 0, !dbg !7413
    #dbg_value(i64 %.sroa.07.216.i, !7074, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !6857)
  br i1 %i.fj, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs4_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.ar, !dbg !7413

._crit_edge.i:                                    ; preds = %bb.ar, %bb.ap
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.015.i, %bb.ap ], [ %.sroa.018.0.i, %bb.ar ], !dbg !7405
  %.lcssa.i = phi i64 [ %i.ez, %bb.ap ], [ %i.fc, %bb.ar ], !dbg !7406
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !7407, !noalias !7094
  unreachable, !dbg !7407

bb.as:                                            ; preds = %bb.ao
  %i.fk = load ptr, ptr %i.l, align 8, !dbg !7414, !noalias !7094, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fk, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6930)
    #dbg_value(ptr %i.fk, !7206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6933)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.eo, !dbg !7415
  %i.fm = trunc nuw nsw i64 %i.de to i8, !dbg !7416
  store i8 %i.fm, ptr %i.fl, align 1, !dbg !7416, !noalias !7094
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs4_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !7417

bb.at:                                            ; preds = %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !7399, !noalias !7094
  unreachable, !dbg !7399

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs4_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph18.i, %bb.as
  ret void, !dbg !7418
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs5_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7421 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !7677, !DIExpression(), !7444)
    #dbg_value(ptr poison, !7681, !DIExpression(), !7445)
    #dbg_value(ptr poison, !7685, !DIExpression(), !7446)
  %i.h = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !7674, !DIExpression(), !7711)
    #dbg_declare(ptr %1, !7675, !DIExpression(), !7712)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !7805
  %.val = load ptr, ptr %0, align 8, !dbg !7806, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7713), !dbg !7806
    #dbg_value(ptr poison, !7696, !DIExpression(), !7449)
    #dbg_declare(ptr %1, !7697, !DIExpression(), !7450)
    #dbg_declare(ptr poison, !7701, !DIExpression(), !7451)
    #dbg_value(i64 3, !7698, !DIExpression(), !7452)
    #dbg_value(i8 -1, !7714, !DIExpression(), !7455)
    #dbg_value(i64 1, !7717, !DIExpression(), !7458)
    #dbg_value(i64 1, !7721, !DIExpression(), !7461)
    #dbg_value(i8 0, !7724, !DIExpression(), !7464)
    #dbg_value(i32 0, !7699, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7465)
    #dbg_value(i32 3, !7699, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7465)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
    #dbg_value(i32 0, !7699, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7465)
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 7 uses
    #dbg_value(i32 1, !7699, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7465)
    #dbg_value(ptr %.val, !7715, !DIExpression(), !7455)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !7467)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !7469)
    #dbg_value(i8 -1, !1699, !DIExpression(), !7467)
    #dbg_value(i64 1, !1710, !DIExpression(), !7472)
  %i.k = load i64, ptr %i.i, align 8, !dbg !7807, !alias.scope !7728, !noalias !7713, !noundef !718 ; 5 uses
    #dbg_value(i64 %i.k, !1700, !DIExpression(), !7475)
    #dbg_value(i64 %i.k, !1724, !DIExpression(), !7477)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !7478)
  %i.l = load i64, ptr %.val, align 8, !dbg !7808, !range !1731, !alias.scope !7728, !noalias !7713, !noundef !718
  %i.m = icmp eq i64 %i.k, %i.l, !dbg !7809
  br i1 %i.m, label %bb.r, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7809

.body.i.i.i:                                      ; preds = %bb.l, %bb.j, %bb.e, %bb.b
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.u, %bb.e ], [ %i.n, %bb.b ], [ %i.ad, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsk5jvY4Bb3tQ_5yasna6models3oid16ObjectIdentifierECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %common.resume.i.i.i unwind label %bb.q, !dbg !7810, !noalias !7729

bb.b:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, %bb.m, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7811, !noalias !7729
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.o = load i8, ptr %.sroa.5.0.copyload.i, align 1, !dbg !7812, !range !1732, !noalias !7729, !noundef !718
  %i.p = trunc nuw i8 %i.o to i1, !dbg !7812
  br i1 %i.p, label %bb.g, label %bb.d, !dbg !7812

bb.d:                                             ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !7813, !noalias !7729
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.q = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 32, !dbg !7814
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !dbg !7814, !noalias !7729, !nonnull !718, !noundef !718
  %i.r = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 40, !dbg !7814
  %.val7.i.i.i = load i64, ptr %i.r, align 8, !dbg !7814, !noalias !7729, !noundef !718
    #dbg_value(ptr poison, !7746, !DIExpression(), !7493)
    #dbg_declare(ptr %i.b, !7749, !DIExpression(), !7494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7815, !noalias !7754
  store i64 0, ptr %i.b, align 8, !dbg !7816, !noalias !7754
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7816
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !dbg !7816, !noalias !7754
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !7816
  store i64 0, ptr %i.t, align 8, !dbg !7816, !noalias !7754
    #dbg_value(ptr %i.b, !7750, !DIExpression(), !7499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7817, !noalias !7754
  store ptr %i.b, ptr %i.a, align 8, !dbg !7817, !noalias !7754
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7817
  store i8 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !7817, !noalias !7754
    #dbg_value(ptr poison, !7755, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7502)
    #dbg_declare(ptr %i.a, !7758, !DIExpression(), !7503)
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_der(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val7.i.i.i)
          to label %bb.i unwind label %bb.e, !dbg !7818, !noalias !7754

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #11
          to label %.body.i.i.i unwind label %bb.f, !dbg !7819, !noalias !7754

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7820, !noalias !7754
  unreachable, !dbg !7820

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !7821, !noalias !7729
    #dbg_value(ptr %.val, !7760, !DIExpression(), !7508)
  store ptr %.val, ptr %i.e, align 8, !dbg !7822, !noalias !7729
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !7822
  store i8 -1, ptr %i.w, align 8, !dbg !7822, !noalias !7729
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.b, !dbg !7823, !noalias !7729

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7824, !noalias !7729
  br label %bb.d, !dbg !7825

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7826, !noalias !7754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !7827, !noalias !7729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7819, !noalias !7754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7828, !noalias !7729
    #dbg_value(ptr %.val, !7760, !DIExpression(), !7511)
  store ptr %.val, ptr %i.c, align 8, !dbg !7829, !noalias !7729
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7829
  store i8 -1, ptr %i.x, align 8, !dbg !7829, !noalias !7729
    #dbg_value(ptr %i.d, !7766, !DIExpression(), !7514)
    #dbg_value(ptr %i.d, !7768, !DIExpression(), !7517)
    #dbg_value(ptr %i.d, !7770, !DIExpression(), !7520)
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7830
  %i.z = load ptr, ptr %i.y, align 8, !dbg !7830, !noalias !7729, !nonnull !718, !noundef !718
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !7831
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !7831, !noalias !7729, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
          to label %bb.k unwind label %bb.j, !dbg !7832, !noalias !7729

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #11
          to label %.body.i.i.i unwind label %bb.q, !dbg !7833, !noalias !7729

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7834, !noalias !7729
    #dbg_value(ptr %i.d, !1894, !DIExpression(), !7528)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.l, !dbg !7835, !noalias !7729

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1899, !DIExpression(), !7530)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i unwind label %bb.n, !dbg !7836, !noalias !7729

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr %i.d, !1899, !DIExpression(), !7532)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !7837, !noalias !7729

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7835, !noalias !7729
  unreachable, !dbg !7835

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7833, !noalias !7729
    #dbg_value(ptr %i.g, !1753, !DIExpression(), !7534)
    #dbg_value(ptr %i.g, !1760, !DIExpression(), !7536)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.o, !dbg !7838, !noalias !7729

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1767, !DIExpression(), !7538)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i.i.i unwind label %bb.p, !dbg !7839, !noalias !7729

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7838, !noalias !7729
  unreachable, !dbg !7838

common.resume.i.i.i:                              ; preds = %bb.o, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.af, %bb.o ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !7840

bb.q:                                             ; preds = %bb.j, %.body.i.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7841, !noalias !7729
  unreachable, !dbg !7841

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.g, !1767, !DIExpression(), !7540)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !7842, !noalias !7729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !7810, !noalias !7729
    #dbg_value(ptr %.val, !7772, !DIExpression(), !7543)
  %i.ai = load i64, ptr %i.i, align 8, !dbg !7843, !noalias !7713, !noundef !718 ; 6 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !7844
  call void @llvm.assume(i1 %i.aj), !dbg !7845
  %i.ak = sub nsw i64 %i.ai, %i.ay, !dbg !7846    ; 4 uses
    #dbg_value(i64 %i.ak, !7702, !DIExpression(), !7544)
    #dbg_value(i64 56, !7704, !DIExpression(), !7545)
  %i.al = icmp ult i64 %i.ak, 128, !dbg !7847     ; 2 uses
  br i1 %i.al, label %.thread.i, label %.preheader.i, !dbg !7847

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7848, !noalias !7713
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7849

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.r, %bb.a
  %i.am = load ptr, ptr %i.j, align 8, !dbg !7850, !alias.scope !7728, !noalias !7713, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.am, !1729, !DIExpression(), !7477)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.k, !dbg !7851
    #dbg_value(ptr %i.an, !1702, !DIExpression(), !7549)
    #dbg_value(ptr %i.an, !1788, !DIExpression(), !7551)
    #dbg_value(i8 -1, !1791, !DIExpression(), !7551)
  store i8 -1, ptr %i.an, align 1, !dbg !7852, !noalias !7713
  %i.ao = add i64 %i.k, 1, !dbg !7853             ; 4 uses
  store i64 %i.ao, ptr %i.i, align 8, !dbg !7853, !alias.scope !7728, !noalias !7713
    #dbg_value(i32 2, !7699, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7465)
    #dbg_value(ptr %.val, !7715, !DIExpression(), !7455)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !7467)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !7469)
    #dbg_value(i8 -1, !1699, !DIExpression(), !7467)
    #dbg_value(i64 1, !1710, !DIExpression(), !7472)
    #dbg_value(i64 %i.ao, !1700, !DIExpression(), !7475)
    #dbg_value(i64 %i.ao, !1724, !DIExpression(), !7477)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !7478)
  %i.ap = load i64, ptr %.val, align 8, !dbg !7808, !range !1731, !alias.scope !7728, !noalias !7713, !noundef !718
  %i.aq = icmp eq i64 %i.ao, %i.ap, !dbg !7809
  br i1 %i.aq, label %bb.s, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !7809

bb.s:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7848, !noalias !7713
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !7849

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.s, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ar = load ptr, ptr %i.j, align 8, !dbg !7850, !alias.scope !7728, !noalias !7713, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ar, !1729, !DIExpression(), !7477)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao, !dbg !7851
    #dbg_value(ptr %i.as, !1702, !DIExpression(), !7549)
    #dbg_value(ptr %i.as, !1788, !DIExpression(), !7551)
    #dbg_value(i8 -1, !1791, !DIExpression(), !7551)
  store i8 -1, ptr %i.as, align 1, !dbg !7852, !noalias !7713
  %i.at = add i64 %i.k, 2, !dbg !7853             ; 4 uses
  store i64 %i.at, ptr %i.i, align 8, !dbg !7853, !alias.scope !7728, !noalias !7713
    #dbg_value(i32 3, !7699, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7465)
    #dbg_value(ptr %.val, !7715, !DIExpression(), !7455)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !7467)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !7469)
    #dbg_value(i8 -1, !1699, !DIExpression(), !7467)
    #dbg_value(i64 1, !1710, !DIExpression(), !7472)
    #dbg_value(i64 %i.at, !1700, !DIExpression(), !7475)
    #dbg_value(i64 %i.at, !1724, !DIExpression(), !7477)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !7478)
  %i.au = load i64, ptr %.val, align 8, !dbg !7808, !range !1731, !alias.scope !7728, !noalias !7713, !noundef !718
  %i.av = icmp eq i64 %i.at, %i.au, !dbg !7809
  br i1 %i.av, label %bb.t, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !7809

bb.t:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7848, !noalias !7713
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !7849

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.t, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.aw = load ptr, ptr %i.j, align 8, !dbg !7850, !alias.scope !7728, !noalias !7713, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.aw, !1729, !DIExpression(), !7477)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at, !dbg !7851
    #dbg_value(ptr %i.ax, !1702, !DIExpression(), !7549)
    #dbg_value(ptr %i.ax, !1788, !DIExpression(), !7551)
    #dbg_value(i8 -1, !1791, !DIExpression(), !7551)
  store i8 -1, ptr %i.ax, align 1, !dbg !7852, !noalias !7713
  %i.ay = add i64 %i.k, 3, !dbg !7853             ; 10 uses
  store i64 %i.ay, ptr %i.i, align 8, !dbg !7853, !alias.scope !7728, !noalias !7713
    #dbg_value(i32 3, !7699, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7465)
    #dbg_value(ptr %.val, !7772, !DIExpression(), !7553)
    #dbg_value(i64 %i.ay, !7700, !DIExpression(), !7554)
    #dbg_value(i64 %i.ay, !7726, !DIExpression(), !7464)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !7854, !alias.scope !7713, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !7744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7555)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7854
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !7854, !alias.scope !7713
    #dbg_value(i64 %.sroa.4.0.copyload.i, !7744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7555)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7854
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !7854, !alias.scope !7713 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !7744, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7555)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !7854
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !7854, !alias.scope !7713 ; 3 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !7744, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7555)
    #dbg_value(ptr poison, !7743, !DIExpression(), !7556)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !7734, !DIExpression(DW_OP_deref), !7557)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !7735, !DIExpression(), !7557)
    #dbg_value(ptr poison, !7732, !DIExpression(), !7558)
    #dbg_value(ptr poison, !7763, !DIExpression(), !7560)
    #dbg_value(ptr poison, !7763, !DIExpression(), !7561)
    #dbg_value(ptr poison, !7763, !DIExpression(), !7562)
    #dbg_declare(ptr %i.g, !7736, !DIExpression(), !7563)
    #dbg_declare(ptr %i.d, !7737, !DIExpression(), !7564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !7855, !noalias !7729
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !7856, !noalias !7729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !7857, !noalias !7729
    #dbg_value(ptr %.val, !7760, !DIExpression(), !7566)
  store ptr %.val, ptr %i.f, align 8, !dbg !7858, !noalias !7729
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !7858
  store i8 -1, ptr %i.az, align 8, !dbg !7858, !noalias !7729
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.c unwind label %bb.b, !dbg !7859, !noalias !7729

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.bd, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7860 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !7704, !DIExpression(), !7545)
  %i.ba = and i64 %.sroa.07.0.i, 56, !dbg !7861
  %i.bb = lshr i64 %i.ak, %i.ba, !dbg !7861
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !7861
  %i.bd = add i64 %.sroa.07.0.i, -8, !dbg !7862
    #dbg_value(i64 %i.bd, !7704, !DIExpression(), !7545)
  br i1 %i.bc, label %.preheader.i, label %bb.u, !dbg !7861

bb.u:                                             ; preds = %.preheader.i
  %i.be = lshr exact i64 %.sroa.07.0.i, 3, !dbg !7863 ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 2, !dbg !7864    ; 2 uses
    #dbg_value(i64 %i.bf, !7703, !DIExpression(), !7567)
    #dbg_value(i64 %.sroa.07.0.i, !7704, !DIExpression(), !7545)
  %i.bg = icmp eq i64 %.sroa.07.0.i, 0, !dbg !7865
  br i1 %i.bg, label %.thread.i, label %bb.v, !dbg !7865

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp eq i64 %i.bf, 3, !dbg !7866
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.w, !dbg !7866

.thread.i:                                        ; preds = %bb.u, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.at, %bb.u ], [ %i.ao, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7867 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.u ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.u ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !7706, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7568)
    #dbg_value(!DIArgList(i64 %i.ay, i64 %.sroa.02.06.i), !7705, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !7868, !noalias !7713
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.ay), !dbg !7869, !noalias !7713
    #dbg_value(ptr %i.h, !1800, !DIExpression(), !7571)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h), !dbg !7870, !noalias !7713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !7871, !noalias !7713
  %.pre.pre = load i64, ptr %i.i, align 8, !dbg !7872, !noalias !7713
  br label %.loopexit7.i, !dbg !7873

bb.w:                                             ; preds = %bb.v
  %i.bh = add nsw i64 %i.be, -1, !dbg !7874       ; 3 uses
    #dbg_value(i64 %i.bh, !7707, !DIExpression(), !7578)
  %i.bi = add nuw i64 %i.bh, %i.ay, !dbg !7875    ; 2 uses
    #dbg_value(i64 %i.bi, !7705, !DIExpression(), !7569)
    #dbg_value(i64 0, !7708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7579)
    #dbg_value(i64 %i.bh, !7708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7579)
    #dbg_value(ptr undef, !7685, !DIExpression(), !7446)
    #dbg_value(ptr undef, !7681, !DIExpression(), !7445)
    #dbg_value(ptr undef, !7677, !DIExpression(), !7444)
    #dbg_value(ptr undef, !7678, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7580)
  %.not18.i = icmp eq i64 %i.bh, 0, !dbg !7876
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !7877

.lr.ph.i.preheader:                               ; preds = %bb.w
  %i.bj = icmp samesign ult i64 %i.ai, %i.ay
  br i1 %i.bj, label %bb.x, label %.lr.ph.i, !dbg !7878, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.bk = phi i64 [ %i.bs, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.ai, %.lr.ph.i.preheader ], !dbg !7879 ; 5 uses
  %.sroa.016.012.i = phi i64 [ %i.bl, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.012.i, !7682, !DIExpression(), !7583)
    #dbg_value(i64 %.sroa.016.012.i, !7718, !DIExpression(), !7458)
    #dbg_value(i64 %.sroa.016.012.i, !7722, !DIExpression(), !7461)
  %i.bl = add nuw i64 %.sroa.016.012.i, 1, !dbg !7880 ; 2 uses
    #dbg_value(i64 %i.bl, !7708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7579)
    #dbg_value(ptr %.val, !7725, !DIExpression(), !7464)
  call void @llvm.experimental.noalias.scope.decl(metadata !7783), !dbg !7881
    #dbg_value(ptr %.val, !1839, !DIExpression(), !7586)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !7587)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !7589)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !7591)
    #dbg_value(i64 %i.ay, !1840, !DIExpression(), !7586)
    #dbg_value(i64 %i.ay, !1855, !DIExpression(), !7593)
    #dbg_value(i8 0, !1841, !DIExpression(), !7586)
    #dbg_value(i64 1, !1859, !DIExpression(), !7596)
    #dbg_value(i64 1, !1857, !DIExpression(), !7598)
    #dbg_value(i64 1, !1859, !DIExpression(), !7602)
    #dbg_value(i64 %i.bk, !1842, !DIExpression(), !7603)
  %i.bm = icmp sgt i64 %i.bk, -1, !dbg !7882
  call void @llvm.assume(i1 %i.bm), !dbg !7883
    #dbg_value(ptr %.val, !1862, !DIExpression(), !7604)
  %2 = load i64, ptr %.val, align 8, !dbg !7884, !range !1731, !alias.scope !7783, !noalias !7713, !noundef !718
  %3 = icmp eq i64 %i.bk, %2, !dbg !7885
  br i1 %3, label %bb.y, label %bb.z, !dbg !7885

bb.x:                                             ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.ay, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !7886, !noalias !7784
  unreachable, !dbg !7886

bb.y:                                             ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7887, !noalias !7713
  br label %bb.z, !dbg !7888

bb.z:                                             ; preds = %bb.y, %.lr.ph.i
  %i.bn = load ptr, ptr %i.j, align 8, !dbg !7889, !alias.scope !7783, !noalias !7713, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bn, !1856, !DIExpression(), !7593)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ay, !dbg !7890 ; 3 uses
    #dbg_value(ptr %i.bo, !1843, !DIExpression(), !7608)
    #dbg_value(ptr %i.bo, !1856, !DIExpression(), !7598)
    #dbg_value(ptr %i.bo, !1868, !DIExpression(), !7610)
  %i.bp = icmp samesign ult i64 %i.ay, %i.bk, !dbg !7891
  br i1 %i.bp, label %bb.aa, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7891

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %i.bo, !1871, !DIExpression(), !7612)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1, !dbg !7892
    #dbg_value(ptr %i.bq, !1874, !DIExpression(), !7612)
  %i.br = sub nuw nsw i64 %i.bk, %i.ay, !dbg !7893
    #dbg_value(i64 %i.br, !1875, !DIExpression(), !7612)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %i.bo, i64 %i.br, i1 false), !dbg !7894, !noalias !7713
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7895

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.aa, %bb.z
    #dbg_value(i8 0, !1869, !DIExpression(), !7610)
  store i8 0, ptr %i.bo, align 1, !dbg !7896, !noalias !7713
  %i.bs = add nuw i64 %i.bk, 1, !dbg !7897        ; 3 uses
    #dbg_value(i64 %i.bs, !1853, !DIExpression(), !7591)
  store i64 %i.bs, ptr %i.i, align 8, !dbg !7898, !alias.scope !7783, !noalias !7713
    #dbg_value(i64 %i.bl, !7708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7579)
    #dbg_value(ptr undef, !7685, !DIExpression(), !7446)
    #dbg_value(ptr undef, !7681, !DIExpression(), !7445)
    #dbg_value(ptr undef, !7677, !DIExpression(), !7444)
    #dbg_value(ptr undef, !7678, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7580)
  %exitcond.not.i = icmp eq i64 %i.bl, %i.bh, !dbg !7876
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !7877

.loopexit7.thread.i:                              ; preds = %bb.w, %bb.v
  %.sroa.014.0.ph.i = phi i64 [ %i.bi, %bb.w ], [ %i.ay, %bb.v ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !7705, !DIExpression(), !7569)
  %i.bt = add i64 %.sroa.014.0.ph.i, -3, !dbg !7899
    #dbg_value(i64 %i.bt, !7709, !DIExpression(), !7613)
    #dbg_value(i64 %i.bt, !7781, !DIExpression(), !7615)
    #dbg_value(i64 %i.bt, !7785, !DIExpression(), !7618)
    #dbg_value(i64 %i.bt, !7788, !DIExpression(), !7621)
  br label %bb.ab, !dbg !7900

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.bs, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7872 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.bf, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.bi, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7901
    #dbg_value(i64 %.sroa.014.0.i, !7705, !DIExpression(), !7569)
  %i.bu = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !7899 ; 4 uses
    #dbg_value(i64 %i.bu, !7709, !DIExpression(), !7613)
    #dbg_value(i64 %i.bu, !7781, !DIExpression(), !7615)
    #dbg_value(i64 %i.bu, !7785, !DIExpression(), !7618)
    #dbg_value(i64 %i.bu, !7788, !DIExpression(), !7621)
  br i1 %i.al, label %bb.ac, label %bb.ab, !dbg !7900

bb.ab:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.bv = phi i64 [ %i.ai, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !7872 ; 2 uses
  %i.bw = phi i64 [ %i.bt, %.loopexit7.thread.i ], [ %i.bu, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1341.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !7780, !DIExpression(), !7622)
    #dbg_value(ptr %.val, !7777, !DIExpression(), !7623)
    #dbg_value(ptr %.val, !7774, !DIExpression(), !7624)
    #dbg_value(ptr %.val, !7791, !DIExpression(), !7627)
    #dbg_value(i64 %i.bw, !7781, !DIExpression(), !7622)
    #dbg_value(i64 %i.bw, !7785, !DIExpression(), !7629)
    #dbg_value(i64 %i.bw, !7788, !DIExpression(), !7631)
    #dbg_value(ptr poison, !7786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7629)
    #dbg_value(ptr poison, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7631)
    #dbg_value(i64 %i.bv, !7786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7629)
    #dbg_value(i64 %i.bv, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7631)
  %i.bx = icmp ult i64 %i.bw, %i.bv, !dbg !7902
  br i1 %i.bx, label %bb.ad, label %bb.ae, !dbg !7902

bb.ac:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !7780, !DIExpression(), !7615)
    #dbg_value(ptr %.val, !7777, !DIExpression(), !7633)
    #dbg_value(ptr %.val, !7774, !DIExpression(), !7635)
    #dbg_value(ptr %.val, !7791, !DIExpression(), !7637)
    #dbg_value(ptr poison, !7786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7618)
    #dbg_value(ptr poison, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7621)
    #dbg_value(i64 %.pre, !7786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7618)
    #dbg_value(i64 %.pre, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7621)
  %i.by = icmp ult i64 %i.bu, %.pre, !dbg !7903
  br i1 %i.by, label %bb.ag, label %bb.ah, !dbg !7903

bb.ad:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !7904, !noalias !7713, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bz, !7786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7629)
    #dbg_value(ptr %i.bz, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7631)
  %i.ca = lshr exact i64 %.sroa.07.1341.i, 3, !dbg !7905
  %i.cb = trunc i64 %i.ca to i8, !dbg !7906
  %i.cc = add i8 %i.cb, 1, !dbg !7906
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw, !dbg !7907
  %i.ce = or i8 %i.cc, -128, !dbg !7908
  store i8 %i.ce, ptr %i.cd, align 1, !dbg !7908, !noalias !7713
    #dbg_value(i64 %i.bw, !7709, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7613)
    #dbg_value(i64 %i.bw, !7781, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7615)
    #dbg_value(i64 %i.bw, !7785, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7618)
    #dbg_value(i64 %i.bw, !7788, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7621)
  %.sroa.018.013.i = add nuw i64 %i.bw, 1, !dbg !7909 ; 3 uses
  %i.cf = load i64, ptr %i.i, align 8, !dbg !7910, !noalias !7713, !noundef !718 ; 2 uses
  %i.cg = icmp ult i64 %.sroa.018.013.i, %i.cf, !dbg !7911
  br i1 %i.cg, label %.lr.ph16.i, label %._crit_edge.i, !dbg !7911

bb.ae:                                            ; preds = %bb.ab
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !7902, !noalias !7713
  unreachable, !dbg !7902

bb.af:                                            ; preds = %.lr.ph16.i
  %i.ch = add i64 %.sroa.07.214.i, -8, !dbg !7912
    #dbg_value(i64 %i.ch, !7704, !DIExpression(), !7545)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.015.i, 1, !dbg !7909 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !7788, !DIExpression(), !7621)
    #dbg_value(i64 %.sroa.018.0.i, !7785, !DIExpression(), !7618)
    #dbg_value(i64 %.sroa.018.0.i, !7781, !DIExpression(), !7615)
    #dbg_value(i64 %.sroa.018.0.i, !7709, !DIExpression(), !7613)
    #dbg_value(ptr %.val, !7780, !DIExpression(), !7649)
    #dbg_value(ptr %.val, !7777, !DIExpression(), !7650)
    #dbg_value(ptr %.val, !7774, !DIExpression(), !7651)
    #dbg_value(ptr %.val, !7791, !DIExpression(), !7653)
    #dbg_value(i64 %.sroa.018.0.i, !7781, !DIExpression(), !7649)
    #dbg_value(i64 %.sroa.018.0.i, !7785, !DIExpression(), !7654)
    #dbg_value(i64 %.sroa.018.0.i, !7788, !DIExpression(), !7655)
  %i.ci = load i64, ptr %i.i, align 8, !dbg !7910, !noalias !7713, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !7786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7654)
    #dbg_value(ptr poison, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7655)
    #dbg_value(i64 %i.ci, !7786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7654)
    #dbg_value(i64 %i.ci, !7789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7655)
  %i.cj = icmp ult i64 %.sroa.018.0.i, %i.ci, !dbg !7911
  br i1 %i.cj, label %.lr.ph16.i, label %._crit_edge.i, !dbg !7911

.lr.ph16.i:                                       ; preds = %bb.ad, %bb.af
  %.sroa.018.015.i = phi i64 [ %.sroa.018.0.i, %bb.af ], [ %.sroa.018.013.i, %bb.ad ] ; 2 uses
  %.sroa.07.214.i = phi i64 [ %i.ch, %bb.af ], [ %.sroa.07.1341.i, %bb.ad ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i, !7704, !DIExpression(), !7545)
  %i.ck = load ptr, ptr %i.j, align 8, !dbg !7913, !noalias !7713, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ck, !7786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7654)
    #dbg_value(ptr %i.ck, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7655)
  %i.cl = and i64 %.sroa.07.214.i, 56, !dbg !7914
  %i.cm = lshr i64 %i.ak, %i.cl, !dbg !7914
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.018.015.i, !dbg !7915
  %i.co = trunc i64 %i.cm to i8, !dbg !7916
  store i8 %i.co, ptr %i.cn, align 1, !dbg !7916, !noalias !7713
    #dbg_value(i64 %.sroa.018.015.i, !7709, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7613)
    #dbg_value(i64 %.sroa.018.015.i, !7781, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7615)
    #dbg_value(i64 %.sroa.018.015.i, !7785, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7618)
    #dbg_value(i64 %.sroa.018.015.i, !7788, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7621)
  %i.cp = icmp eq i64 %.sroa.07.214.i, 0, !dbg !7917
    #dbg_value(i64 %.sroa.07.214.i, !7704, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !7545)
  br i1 %i.cp, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs5_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.af, !dbg !7917

._crit_edge.i:                                    ; preds = %bb.af, %bb.ad
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.013.i, %bb.ad ], [ %.sroa.018.0.i, %bb.af ], !dbg !7909
  %.lcssa.i = phi i64 [ %i.cf, %bb.ad ], [ %i.ci, %bb.af ], !dbg !7910
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !7911, !noalias !7713
  unreachable, !dbg !7911

bb.ag:                                            ; preds = %bb.ac
  %i.cq = load ptr, ptr %i.j, align 8, !dbg !7918, !noalias !7713, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cq, !7786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7618)
    #dbg_value(ptr %i.cq, !7789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7621)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.bu, !dbg !7919
  %i.cs = trunc nuw nsw i64 %i.ak to i8, !dbg !7920
  store i8 %i.cs, ptr %i.cr, align 1, !dbg !7920, !noalias !7713
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs5_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !7921

bb.ah:                                            ; preds = %bb.ac
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !7903, !noalias !7713
  unreachable, !dbg !7903

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs5_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph16.i, %bb.ag
  ret void, !dbg !7922
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7925 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !8416, !DIExpression(), !7978)
    #dbg_value(ptr poison, !8420, !DIExpression(), !7979)
    #dbg_value(ptr poison, !8424, !DIExpression(), !7980)
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !8513, !DIExpression(), !7988)
    #dbg_value(ptr poison, !8517, !DIExpression(), !7989)
    #dbg_value(ptr poison, !8521, !DIExpression(), !7990)
  %i.k = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !8413, !DIExpression(), !8524)
    #dbg_declare(ptr %1, !8414, !DIExpression(), !8525)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !8707
  %.val = load ptr, ptr %0, align 8, !dbg !8708, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8526), !dbg !8708
    #dbg_value(ptr poison, !8498, !DIExpression(), !7993)
end_hunk_5
begin_hunk_6_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8634, !DIExpression(), !8212)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8631, !DIExpression(), !8214)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8647, !DIExpression(), !8216)
    #dbg_value(ptr poison, !8642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8197)
    #dbg_value(ptr poison, !8645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8200)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !8642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8197)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !8645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8200)
  %i.cf = icmp ult i64 %i.cb, %.pre.i.i.i.i.i.i, !dbg !8801
  br i1 %i.cf, label %bb.u, label %.invoke.i.i.i.i, !dbg !8801

bb.s:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %i.w, align 8, !dbg !8802, !noalias !8566, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cg, !8642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8208)
    #dbg_value(ptr %i.cg, !8645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8210)
  %i.ch = lshr exact i64 %.sroa.07.1343.i.i.i.i.i.i.i, 3, !dbg !8803
  %i.ci = trunc i64 %i.ch to i8, !dbg !8804
  %i.cj = add i8 %i.ci, 1, !dbg !8804
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd, !dbg !8805
  %i.cl = or i8 %i.cj, -128, !dbg !8806
  store i8 %i.cl, ptr %i.ck, align 1, !dbg !8806, !noalias !8566
    #dbg_value(i64 %i.cd, !8451, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8192)
    #dbg_value(i64 %i.cd, !8638, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8194)
    #dbg_value(i64 %i.cd, !8641, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8197)
    #dbg_value(i64 %i.cd, !8644, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8200)
  %.sroa.018.013.i.i.i.i.i.i.i = add nuw i64 %i.cd, 1, !dbg !8807 ; 3 uses
  %i.cm = load i64, ptr %i.v, align 8, !dbg !8808, !noalias !8566, !noundef !718 ; 2 uses
  %i.cn = icmp ult i64 %.sroa.018.013.i.i.i.i.i.i.i, %i.cm, !dbg !8809
  br i1 %i.cn, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !8809

bb.t:                                             ; preds = %.lr.ph16.i.i.i.i.i.i.i
  %i.co = add i64 %.sroa.07.214.i.i.i.i.i.i.i, -8, !dbg !8810
    #dbg_value(i64 %i.co, !8446, !DIExpression(), !8128)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.015.i.i.i.i.i.i.i, 1, !dbg !8807 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8644, !DIExpression(), !8200)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8641, !DIExpression(), !8197)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8638, !DIExpression(), !8194)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8451, !DIExpression(), !8192)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8637, !DIExpression(), !8228)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8634, !DIExpression(), !8229)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8631, !DIExpression(), !8230)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8647, !DIExpression(), !8232)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8638, !DIExpression(), !8228)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8641, !DIExpression(), !8233)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8644, !DIExpression(), !8234)
  %i.cp = load i64, ptr %i.v, align 8, !dbg !8808, !noalias !8566, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !8642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8233)
    #dbg_value(ptr poison, !8645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8234)
    #dbg_value(i64 %i.cp, !8642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8233)
    #dbg_value(i64 %i.cp, !8645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8234)
  %i.cq = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.cp, !dbg !8809
  br i1 %i.cq, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !8809

.lr.ph16.i.i.i.i.i.i.i:                           ; preds = %bb.s, %bb.t
  %.sroa.018.015.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.t ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.s ] ; 2 uses
  %.sroa.07.214.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.t ], [ %.sroa.07.1343.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !8446, !DIExpression(), !8128)
  %i.cr = load ptr, ptr %i.w, align 8, !dbg !8811, !noalias !8566, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cr, !8642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8233)
    #dbg_value(ptr %i.cr, !8645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8234)
  %i.cs = and i64 %.sroa.07.214.i.i.i.i.i.i.i, 56, !dbg !8812
  %i.ct = lshr i64 %i.am, %i.cs, !dbg !8812
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.018.015.i.i.i.i.i.i.i, !dbg !8813
  %i.cv = trunc i64 %i.ct to i8, !dbg !8814
  store i8 %i.cv, ptr %i.cu, align 1, !dbg !8814, !noalias !8566
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !8451, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8192)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !8638, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8194)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !8641, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8197)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !8644, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8200)
  %i.cw = icmp eq i64 %.sroa.07.214.i.i.i.i.i.i.i, 0, !dbg !8815
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !8446, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !8128)
  br i1 %i.cw, label %.loopexit.i.i.i, label %bb.t, !dbg !8815

bb.u:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.w, align 8, !dbg !8816, !noalias !8566, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cx, !8642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8197)
    #dbg_value(ptr %i.cx, !8645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8200)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cb, !dbg !8817
  %i.cz = trunc nuw nsw i64 %i.am to i8, !dbg !8818
  store i8 %i.cz, ptr %i.cy, align 1, !dbg !8818, !noalias !8566
  br label %.loopexit.i.i.i, !dbg !8819

.invoke.i.i.i.i:                                  ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.da = phi i64 [ %i.cb, %bb.r ], [ %i.cd, %bb.q ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.t ]
  %i.db = phi i64 [ %.pre.i.i.i.i.i.i, %bb.r ], [ %i.cc, %bb.q ], [ %i.cm, %bb.s ], [ %i.cp, %bb.t ]
  %i.dc = phi ptr [ @4, %bb.r ], [ @2, %bb.q ], [ @3, %bb.s ], [ @3, %bb.t ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8820, !noalias !8544

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %.invoke.i.i.i.i, %bb.n, %.noexc12.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.v, !dbg !8821, !noalias !8544

bb.v:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8822, !noalias !8544
  unreachable, !dbg !8822

bb.w:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !8823, !noalias !8542
    #dbg_value(ptr %.val, !8661, !DIExpression(), !8248)
  store ptr %.val, ptr %i.h, align 8, !dbg !8824, !noalias !8542
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !8824
  store i8 -1, ptr %i.de, align 8, !dbg !8824, !noalias !8542
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.b, !dbg !8825, !noalias !8542

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8826, !noalias !8542
  br label %bb.d, !dbg !8827

.loopexit.i.i.i:                                  ; preds = %.lr.ph16.i.i.i.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8828, !noalias !8544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !8829, !noalias !8666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8821, !noalias !8544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !8830, !noalias !8542
    #dbg_value(ptr %.val, !8661, !DIExpression(), !8251)
  store ptr %.val, ptr %i.f, align 8, !dbg !8831, !noalias !8542
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !8831
  store i8 -1, ptr %i.df, align 8, !dbg !8831, !noalias !8542
    #dbg_value(ptr %i.g, !8668, !DIExpression(), !8254)
    #dbg_value(ptr %i.g, !8670, !DIExpression(), !8257)
    #dbg_value(ptr %i.g, !8672, !DIExpression(), !8260)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !8832
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !8832, !noalias !8542, !nonnull !718, !noundef !718
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !8833
  %i.dj = load i64, ptr %i.di, align 8, !dbg !8833, !noalias !8542, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dj)
          to label %bb.z unwind label %bb.y, !dbg !8834, !noalias !8542

bb.y:                                             ; preds = %.loopexit.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %.body.i.i.i unwind label %bb.af, !dbg !8835, !noalias !8542

bb.z:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8836, !noalias !8542
    #dbg_value(ptr %i.g, !1894, !DIExpression(), !8268)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %bb.aa, !dbg !8837, !noalias !8542

bb.aa:                                            ; preds = %bb.z
  %i.dl = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !8270)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i.i unwind label %bb.ac, !dbg !8838, !noalias !8542

bb.ab:                                            ; preds = %bb.z
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !8272)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !8839, !noalias !8542

bb.ac:                                            ; preds = %bb.aa
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8837, !noalias !8542
  unreachable, !dbg !8837

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8835, !noalias !8542
    #dbg_value(ptr %i.j, !1753, !DIExpression(), !8274)
    #dbg_value(ptr %i.j, !1760, !DIExpression(), !8276)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.ad, !dbg !8840, !noalias !8542

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !8278)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.ae, !dbg !8841, !noalias !8542

bb.ae:                                            ; preds = %bb.ad
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8840, !noalias !8542
  unreachable, !dbg !8840

common.resume.i.i.i:                              ; preds = %bb.ad, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.ad ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !8842

bb.af:                                            ; preds = %bb.y, %.body.i.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8843, !noalias !8542
  unreachable, !dbg !8843

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !8280)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !8844, !noalias !8542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !8712, !noalias !8542
    #dbg_value(ptr %.val, !8674, !DIExpression(), !8283)
  %i.dq = load i64, ptr %i.l, align 8, !dbg !8845, !noalias !8526, !noundef !718 ; 6 uses
  %i.dr = icmp sgt i64 %i.dq, -1, !dbg !8846
  call void @llvm.assume(i1 %i.dr), !dbg !8847
  %i.ds = sub nsw i64 %i.dq, %i.eg, !dbg !8848    ; 4 uses
    #dbg_value(i64 %i.ds, !8504, !DIExpression(), !8284)
    #dbg_value(i64 56, !8506, !DIExpression(), !8285)
  %i.dt = icmp ult i64 %i.ds, 128, !dbg !8849     ; 2 uses
  br i1 %i.dt, label %.thread.i, label %.preheader.i, !dbg !8849

bb.ag:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !8850, !noalias !8526
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !8851

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ag, %bb.a
  %i.du = load ptr, ptr %i.m, align 8, !dbg !8852, !alias.scope !8541, !noalias !8526, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.du, !1729, !DIExpression(), !8021)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.n, !dbg !8853
    #dbg_value(ptr %i.dv, !1702, !DIExpression(), !8289)
    #dbg_value(ptr %i.dv, !1788, !DIExpression(), !8291)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8291)
  store i8 -1, ptr %i.dv, align 1, !dbg !8854, !noalias !8526
  %i.dw = add i64 %i.n, 1, !dbg !8855             ; 4 uses
  store i64 %i.dw, ptr %i.l, align 8, !dbg !8855, !alias.scope !8541, !noalias !8526
    #dbg_value(i32 2, !8501, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8009)
    #dbg_value(ptr %.val, !8528, !DIExpression(), !7999)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !8011)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !8013)
    #dbg_value(i8 -1, !1699, !DIExpression(), !8011)
    #dbg_value(i64 1, !1710, !DIExpression(), !8016)
    #dbg_value(i64 %i.dw, !1700, !DIExpression(), !8019)
    #dbg_value(i64 %i.dw, !1724, !DIExpression(), !8021)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8022)
  %i.dx = load i64, ptr %.val, align 8, !dbg !8710, !range !1731, !alias.scope !8541, !noalias !8526, !noundef !718
  %i.dy = icmp eq i64 %i.dw, %i.dx, !dbg !8711
  br i1 %i.dy, label %bb.ah, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !8711

bb.ah:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !8850, !noalias !8526
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !8851

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.ah, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.dz = load ptr, ptr %i.m, align 8, !dbg !8852, !alias.scope !8541, !noalias !8526, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dz, !1729, !DIExpression(), !8021)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dw, !dbg !8853
    #dbg_value(ptr %i.ea, !1702, !DIExpression(), !8289)
    #dbg_value(ptr %i.ea, !1788, !DIExpression(), !8291)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8291)
  store i8 -1, ptr %i.ea, align 1, !dbg !8854, !noalias !8526
  %i.eb = add i64 %i.n, 2, !dbg !8855             ; 4 uses
  store i64 %i.eb, ptr %i.l, align 8, !dbg !8855, !alias.scope !8541, !noalias !8526
    #dbg_value(i32 3, !8501, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8009)
    #dbg_value(ptr %.val, !8528, !DIExpression(), !7999)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !8011)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !8013)
    #dbg_value(i8 -1, !1699, !DIExpression(), !8011)
    #dbg_value(i64 1, !1710, !DIExpression(), !8016)
    #dbg_value(i64 %i.eb, !1700, !DIExpression(), !8019)
    #dbg_value(i64 %i.eb, !1724, !DIExpression(), !8021)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8022)
  %i.ec = load i64, ptr %.val, align 8, !dbg !8710, !range !1731, !alias.scope !8541, !noalias !8526, !noundef !718
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !8711
  br i1 %i.ed, label %bb.ai, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !8711

bb.ai:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !8850, !noalias !8526
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !8851

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.ai, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.ee = load ptr, ptr %i.m, align 8, !dbg !8852, !alias.scope !8541, !noalias !8526, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ee, !1729, !DIExpression(), !8021)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb, !dbg !8853
    #dbg_value(ptr %i.ef, !1702, !DIExpression(), !8289)
    #dbg_value(ptr %i.ef, !1788, !DIExpression(), !8291)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8291)
  store i8 -1, ptr %i.ef, align 1, !dbg !8854, !noalias !8526
  %i.eg = add i64 %i.n, 3, !dbg !8855             ; 10 uses
  store i64 %i.eg, ptr %i.l, align 8, !dbg !8855, !alias.scope !8541, !noalias !8526
    #dbg_value(i32 3, !8501, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8009)
    #dbg_value(ptr %.val, !8674, !DIExpression(), !8293)
    #dbg_value(i64 %i.eg, !8502, !DIExpression(), !8294)
    #dbg_value(i64 %i.eg, !8539, !DIExpression(), !8008)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !8856, !alias.scope !8526, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !8490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8295)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8856
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !8856, !alias.scope !8526
    #dbg_value(i64 %.sroa.4.0.copyload.i, !8490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8295)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8856
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !8856, !alias.scope !8526 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !8490, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8295)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !8856
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !8856, !alias.scope !8526 ; 5 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !8490, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8295)
    #dbg_value(ptr poison, !8489, !DIExpression(), !8296)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !8478, !DIExpression(DW_OP_deref), !8297)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !8479, !DIExpression(), !8297)
    #dbg_value(ptr poison, !8476, !DIExpression(), !8298)
    #dbg_value(ptr poison, !8664, !DIExpression(), !8300)
    #dbg_value(ptr poison, !8664, !DIExpression(), !8301)
    #dbg_value(ptr poison, !8664, !DIExpression(), !8302)
    #dbg_declare(ptr %i.j, !8480, !DIExpression(), !8303)
    #dbg_declare(ptr %i.g, !8481, !DIExpression(), !8304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8857, !noalias !8542
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !8858, !noalias !8542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8859, !noalias !8542
    #dbg_value(ptr %.val, !8661, !DIExpression(), !8306)
  store ptr %.val, ptr %i.i, align 8, !dbg !8860, !noalias !8542
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !8860
  store i8 -1, ptr %i.eh, align 8, !dbg !8860, !noalias !8542
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b, !dbg !8861, !noalias !8542

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.el, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !8862 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !8506, !DIExpression(), !8285)
  %i.ei = and i64 %.sroa.07.0.i, 56, !dbg !8863
  %i.ej = lshr i64 %i.ds, %i.ei, !dbg !8863
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !8863
  %i.el = add i64 %.sroa.07.0.i, -8, !dbg !8864
    #dbg_value(i64 %i.el, !8506, !DIExpression(), !8285)
  br i1 %i.ek, label %.preheader.i, label %bb.aj, !dbg !8863

bb.aj:                                            ; preds = %.preheader.i
  %i.em = lshr exact i64 %.sroa.07.0.i, 3, !dbg !8865 ; 2 uses
  %i.en = add nuw nsw i64 %i.em, 2, !dbg !8866    ; 2 uses
    #dbg_value(i64 %i.en, !8505, !DIExpression(), !8307)
    #dbg_value(i64 %.sroa.07.0.i, !8506, !DIExpression(), !8285)
  %i.eo = icmp eq i64 %.sroa.07.0.i, 0, !dbg !8867
  br i1 %i.eo, label %.thread.i, label %bb.ak, !dbg !8867

bb.ak:                                            ; preds = %bb.aj
  %.not.i = icmp eq i64 %i.en, 3, !dbg !8868
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.al, !dbg !8868

.thread.i:                                        ; preds = %bb.aj, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.eb, %bb.aj ], [ %i.dw, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !8869 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.aj ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.aj ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !8508, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !8308)
    #dbg_value(!DIArgList(i64 %i.eg, i64 %.sroa.02.06.i), !8507, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !8870, !noalias !8526
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.eg), !dbg !8871, !noalias !8526
    #dbg_value(ptr %i.k, !1800, !DIExpression(), !8311)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k), !dbg !8872, !noalias !8526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !8873, !noalias !8526
  %.pre.pre = load i64, ptr %i.l, align 8, !dbg !8874, !noalias !8526
  br label %.loopexit7.i, !dbg !8875

bb.al:                                            ; preds = %bb.ak
  %i.ep = add nsw i64 %i.em, -1, !dbg !8876       ; 3 uses
    #dbg_value(i64 %i.ep, !8509, !DIExpression(), !8318)
  %i.eq = add nuw i64 %i.ep, %i.eg, !dbg !8877    ; 2 uses
    #dbg_value(i64 %i.eq, !8507, !DIExpression(), !8309)
    #dbg_value(i64 0, !8510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8319)
    #dbg_value(i64 %i.ep, !8510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8319)
    #dbg_value(ptr undef, !8521, !DIExpression(), !7990)
    #dbg_value(ptr undef, !8517, !DIExpression(), !7989)
    #dbg_value(ptr undef, !8513, !DIExpression(), !7988)
    #dbg_value(ptr undef, !8514, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8320)
  %.not20.i = icmp eq i64 %i.ep, 0, !dbg !8878
  br i1 %.not20.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !8879

.lr.ph.i.preheader:                               ; preds = %bb.al
  %i.er = icmp samesign ult i64 %i.dq, %i.eg
  br i1 %i.er, label %bb.am, label %.lr.ph.i, !dbg !8880, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.es = phi i64 [ %i.fa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.dq, %.lr.ph.i.preheader ], !dbg !8881 ; 5 uses
  %.sroa.016.014.i = phi i64 [ %i.et, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.014.i, !8518, !DIExpression(), !8323)
    #dbg_value(i64 %.sroa.016.014.i, !8531, !DIExpression(), !8002)
    #dbg_value(i64 %.sroa.016.014.i, !8535, !DIExpression(), !8005)
  %i.et = add nuw i64 %.sroa.016.014.i, 1, !dbg !8882 ; 2 uses
    #dbg_value(i64 %i.et, !8510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8319)
    #dbg_value(ptr %.val, !8538, !DIExpression(), !8008)
  call void @llvm.experimental.noalias.scope.decl(metadata !8685), !dbg !8883
    #dbg_value(ptr %.val, !1839, !DIExpression(), !8326)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !8327)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !8329)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !8331)
    #dbg_value(i64 %i.eg, !1840, !DIExpression(), !8326)
    #dbg_value(i64 %i.eg, !1855, !DIExpression(), !8333)
    #dbg_value(i8 0, !1841, !DIExpression(), !8326)
    #dbg_value(i64 1, !1859, !DIExpression(), !8336)
    #dbg_value(i64 1, !1857, !DIExpression(), !8338)
    #dbg_value(i64 1, !1859, !DIExpression(), !8342)
    #dbg_value(i64 %i.es, !1842, !DIExpression(), !8343)
  %i.eu = icmp sgt i64 %i.es, -1, !dbg !8884
  call void @llvm.assume(i1 %i.eu), !dbg !8885
    #dbg_value(ptr %.val, !1862, !DIExpression(), !8344)
  %2 = load i64, ptr %.val, align 8, !dbg !8886, !range !1731, !alias.scope !8685, !noalias !8526, !noundef !718
  %3 = icmp eq i64 %i.es, %2, !dbg !8887
  br i1 %3, label %bb.an, label %bb.ao, !dbg !8887

bb.am:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.eg, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !8888, !noalias !8686
  unreachable, !dbg !8888

bb.an:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !8889, !noalias !8526
  br label %bb.ao, !dbg !8890

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i
  %i.ev = load ptr, ptr %i.m, align 8, !dbg !8891, !alias.scope !8685, !noalias !8526, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ev, !1856, !DIExpression(), !8333)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eg, !dbg !8892 ; 3 uses
    #dbg_value(ptr %i.ew, !1843, !DIExpression(), !8348)
    #dbg_value(ptr %i.ew, !1856, !DIExpression(), !8338)
    #dbg_value(ptr %i.ew, !1868, !DIExpression(), !8350)
  %i.ex = icmp samesign ult i64 %i.eg, %i.es, !dbg !8893
  br i1 %i.ex, label %bb.ap, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !8893

bb.ap:                                            ; preds = %bb.ao
    #dbg_value(ptr %i.ew, !1871, !DIExpression(), !8352)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 1, !dbg !8894
    #dbg_value(ptr %i.ey, !1874, !DIExpression(), !8352)
  %i.ez = sub nuw nsw i64 %i.es, %i.eg, !dbg !8895
    #dbg_value(i64 %i.ez, !1875, !DIExpression(), !8352)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ey, ptr nonnull align 1 %i.ew, i64 %i.ez, i1 false), !dbg !8896, !noalias !8526
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !8897

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ap, %bb.ao
    #dbg_value(i8 0, !1869, !DIExpression(), !8350)
  store i8 0, ptr %i.ew, align 1, !dbg !8898, !noalias !8526
  %i.fa = add nuw i64 %i.es, 1, !dbg !8899        ; 3 uses
    #dbg_value(i64 %i.fa, !1853, !DIExpression(), !8331)
  store i64 %i.fa, ptr %i.l, align 8, !dbg !8900, !alias.scope !8685, !noalias !8526
    #dbg_value(i64 %i.et, !8510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8319)
    #dbg_value(ptr undef, !8521, !DIExpression(), !7990)
    #dbg_value(ptr undef, !8517, !DIExpression(), !7989)
    #dbg_value(ptr undef, !8513, !DIExpression(), !7988)
    #dbg_value(ptr undef, !8514, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8320)
  %exitcond.not.i = icmp eq i64 %i.et, %i.ep, !dbg !8878
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !8879

.loopexit7.thread.i:                              ; preds = %bb.al, %bb.ak
  %.sroa.014.0.ph.i = phi i64 [ %i.eq, %bb.al ], [ %i.eg, %bb.ak ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !8507, !DIExpression(), !8309)
  %i.fb = add i64 %.sroa.014.0.ph.i, -3, !dbg !8901
    #dbg_value(i64 %i.fb, !8511, !DIExpression(), !8353)
    #dbg_value(i64 %i.fb, !8683, !DIExpression(), !8355)
    #dbg_value(i64 %i.fb, !8687, !DIExpression(), !8358)
    #dbg_value(i64 %i.fb, !8690, !DIExpression(), !8361)
  br label %bb.aq, !dbg !8902

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.fa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !8874 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.en, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.eq, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !8903
    #dbg_value(i64 %.sroa.014.0.i, !8507, !DIExpression(), !8309)
  %i.fc = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !8901 ; 4 uses
    #dbg_value(i64 %i.fc, !8511, !DIExpression(), !8353)
    #dbg_value(i64 %i.fc, !8683, !DIExpression(), !8355)
    #dbg_value(i64 %i.fc, !8687, !DIExpression(), !8358)
    #dbg_value(i64 %i.fc, !8690, !DIExpression(), !8361)
  br i1 %i.dt, label %bb.ar, label %bb.aq, !dbg !8902

bb.aq:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.fd = phi i64 [ %i.dq, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !8874 ; 2 uses
  %i.fe = phi i64 [ %i.fb, %.loopexit7.thread.i ], [ %i.fc, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1365.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !8682, !DIExpression(), !8362)
    #dbg_value(ptr %.val, !8679, !DIExpression(), !8363)
    #dbg_value(ptr %.val, !8676, !DIExpression(), !8364)
    #dbg_value(ptr %.val, !8693, !DIExpression(), !8367)
    #dbg_value(i64 %i.fe, !8683, !DIExpression(), !8362)
    #dbg_value(i64 %i.fe, !8687, !DIExpression(), !8369)
    #dbg_value(i64 %i.fe, !8690, !DIExpression(), !8371)
    #dbg_value(ptr poison, !8688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8369)
    #dbg_value(ptr poison, !8691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8371)
    #dbg_value(i64 %i.fd, !8688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8369)
    #dbg_value(i64 %i.fd, !8691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8371)
  %i.ff = icmp ult i64 %i.fe, %i.fd, !dbg !8904
  br i1 %i.ff, label %bb.as, label %bb.at, !dbg !8904

bb.ar:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !8682, !DIExpression(), !8355)
    #dbg_value(ptr %.val, !8679, !DIExpression(), !8373)
    #dbg_value(ptr %.val, !8676, !DIExpression(), !8375)
    #dbg_value(ptr %.val, !8693, !DIExpression(), !8377)
    #dbg_value(ptr poison, !8688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8358)
    #dbg_value(ptr poison, !8691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8361)
    #dbg_value(i64 %.pre, !8688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8358)
    #dbg_value(i64 %.pre, !8691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8361)
  %i.fg = icmp ult i64 %i.fc, %.pre, !dbg !8905
  br i1 %i.fg, label %bb.av, label %bb.aw, !dbg !8905

bb.as:                                            ; preds = %bb.aq
  %i.fh = load ptr, ptr %i.m, align 8, !dbg !8906, !noalias !8526, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fh, !8688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8369)
    #dbg_value(ptr %i.fh, !8691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8371)
  %i.fi = lshr exact i64 %.sroa.07.1365.i, 3, !dbg !8907
  %i.fj = trunc i64 %i.fi to i8, !dbg !8908
  %i.fk = add i8 %i.fj, 1, !dbg !8908
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fe, !dbg !8909
  %i.fm = or i8 %i.fk, -128, !dbg !8910
  store i8 %i.fm, ptr %i.fl, align 1, !dbg !8910, !noalias !8526
    #dbg_value(i64 %i.fe, !8511, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8353)
    #dbg_value(i64 %i.fe, !8683, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8355)
    #dbg_value(i64 %i.fe, !8687, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8358)
    #dbg_value(i64 %i.fe, !8690, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8361)
  %.sroa.018.015.i = add nuw i64 %i.fe, 1, !dbg !8911 ; 3 uses
  %i.fn = load i64, ptr %i.l, align 8, !dbg !8912, !noalias !8526, !noundef !718 ; 2 uses
  %i.fo = icmp ult i64 %.sroa.018.015.i, %i.fn, !dbg !8913
  br i1 %i.fo, label %.lr.ph18.i, label %._crit_edge.i, !dbg !8913

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !8904, !noalias !8526
  unreachable, !dbg !8904

bb.au:                                            ; preds = %.lr.ph18.i
  %i.fp = add i64 %.sroa.07.216.i, -8, !dbg !8914
    #dbg_value(i64 %i.fp, !8506, !DIExpression(), !8285)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.017.i, 1, !dbg !8911 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !8690, !DIExpression(), !8361)
    #dbg_value(i64 %.sroa.018.0.i, !8687, !DIExpression(), !8358)
    #dbg_value(i64 %.sroa.018.0.i, !8683, !DIExpression(), !8355)
    #dbg_value(i64 %.sroa.018.0.i, !8511, !DIExpression(), !8353)
    #dbg_value(ptr %.val, !8682, !DIExpression(), !8389)
    #dbg_value(ptr %.val, !8679, !DIExpression(), !8390)
    #dbg_value(ptr %.val, !8676, !DIExpression(), !8391)
    #dbg_value(ptr %.val, !8693, !DIExpression(), !8393)
    #dbg_value(i64 %.sroa.018.0.i, !8683, !DIExpression(), !8389)
    #dbg_value(i64 %.sroa.018.0.i, !8687, !DIExpression(), !8394)
    #dbg_value(i64 %.sroa.018.0.i, !8690, !DIExpression(), !8395)
  %i.fq = load i64, ptr %i.l, align 8, !dbg !8912, !noalias !8526, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !8688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8394)
    #dbg_value(ptr poison, !8691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8395)
    #dbg_value(i64 %i.fq, !8688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8394)
    #dbg_value(i64 %i.fq, !8691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8395)
  %i.fr = icmp ult i64 %.sroa.018.0.i, %i.fq, !dbg !8913
  br i1 %i.fr, label %.lr.ph18.i, label %._crit_edge.i, !dbg !8913

.lr.ph18.i:                                       ; preds = %bb.as, %bb.au
  %.sroa.018.017.i = phi i64 [ %.sroa.018.0.i, %bb.au ], [ %.sroa.018.015.i, %bb.as ] ; 2 uses
  %.sroa.07.216.i = phi i64 [ %i.fp, %bb.au ], [ %.sroa.07.1365.i, %bb.as ] ; 3 uses
    #dbg_value(i64 %.sroa.07.216.i, !8506, !DIExpression(), !8285)
  %i.fs = load ptr, ptr %i.m, align 8, !dbg !8915, !noalias !8526, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fs, !8688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8394)
    #dbg_value(ptr %i.fs, !8691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8395)
  %i.ft = and i64 %.sroa.07.216.i, 56, !dbg !8916
  %i.fu = lshr i64 %i.ds, %i.ft, !dbg !8916
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sroa.018.017.i, !dbg !8917
  %i.fw = trunc i64 %i.fu to i8, !dbg !8918
  store i8 %i.fw, ptr %i.fv, align 1, !dbg !8918, !noalias !8526
    #dbg_value(i64 %.sroa.018.017.i, !8511, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8353)
    #dbg_value(i64 %.sroa.018.017.i, !8683, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8355)
    #dbg_value(i64 %.sroa.018.017.i, !8687, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8358)
    #dbg_value(i64 %.sroa.018.017.i, !8690, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8361)
  %i.fx = icmp eq i64 %.sroa.07.216.i, 0, !dbg !8919
    #dbg_value(i64 %.sroa.07.216.i, !8506, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !8285)
  br i1 %i.fx, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.au, !dbg !8919

._crit_edge.i:                                    ; preds = %bb.au, %bb.as
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.015.i, %bb.as ], [ %.sroa.018.0.i, %bb.au ], !dbg !8911
  %.lcssa.i = phi i64 [ %i.fn, %bb.as ], [ %i.fq, %bb.au ], !dbg !8912
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !8913, !noalias !8526
  unreachable, !dbg !8913

bb.av:                                            ; preds = %bb.ar
  %i.fy = load ptr, ptr %i.m, align 8, !dbg !8920, !noalias !8526, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fy, !8688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8358)
    #dbg_value(ptr %i.fy, !8691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8361)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fc, !dbg !8921
  %i.ga = trunc nuw nsw i64 %i.ds to i8, !dbg !8922
  store i8 %i.ga, ptr %i.fz, align 1, !dbg !8922, !noalias !8526
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !8923

bb.aw:                                            ; preds = %bb.ar
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fc, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !8905, !noalias !8526
  unreachable, !dbg !8905

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph18.i, %bb.av
  ret void, !dbg !8924
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvNtCscbFFjjIlwRm_5rcgen8key_pair24serialize_public_key_derNtB17_7KeyPairE0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8926 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !9124, !DIExpression(), !8949)
    #dbg_value(ptr poison, !9128, !DIExpression(), !8950)
    #dbg_value(ptr poison, !9132, !DIExpression(), !8951)
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !9121, !DIExpression(), !9158)
    #dbg_value(ptr %1, !9122, !DIExpression(), !9159)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !9227
  %.val = load ptr, ptr %0, align 8, !dbg !9228, !nonnull !718, !noundef !718 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9160), !dbg !9228
    #dbg_value(ptr poison, !9143, !DIExpression(), !8954)
    #dbg_value(ptr %1, !9144, !DIExpression(), !8954)
    #dbg_declare(ptr poison, !9148, !DIExpression(), !8955)
    #dbg_value(i64 3, !9145, !DIExpression(), !8956)
    #dbg_value(i8 -1, !9161, !DIExpression(), !8959)
    #dbg_value(i64 1, !9164, !DIExpression(), !8962)
    #dbg_value(i64 1, !9168, !DIExpression(), !8965)
    #dbg_value(i8 0, !9171, !DIExpression(), !8968)
    #dbg_value(i32 0, !9146, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8969)
    #dbg_value(i32 3, !9146, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8969)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
    #dbg_value(i32 0, !9146, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8969)
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 7 uses
    #dbg_value(i32 1, !9146, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8969)
    #dbg_value(ptr %.val, !9162, !DIExpression(), !8959)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !8971)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !8973)
    #dbg_value(i8 -1, !1699, !DIExpression(), !8971)
    #dbg_value(i64 1, !1710, !DIExpression(), !8976)
  %i.f = load i64, ptr %i.d, align 8, !dbg !9229, !alias.scope !9175, !noalias !9160, !noundef !718 ; 5 uses
    #dbg_value(i64 %i.f, !1700, !DIExpression(), !8979)
    #dbg_value(i64 %i.f, !1724, !DIExpression(), !8981)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8982)
  %i.g = load i64, ptr %.val, align 8, !dbg !9230, !range !1731, !alias.scope !9175, !noalias !9160, !noundef !718
  %i.h = icmp eq i64 %i.f, %i.g, !dbg !9231
  br i1 %i.h, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !9231

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !9232, !noalias !9160
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !9233

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !dbg !9234, !alias.scope !9175, !noalias !9160, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.i, !1729, !DIExpression(), !8981)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f, !dbg !9235
    #dbg_value(ptr %i.j, !1702, !DIExpression(), !8986)
    #dbg_value(ptr %i.j, !1788, !DIExpression(), !8988)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8988)
  store i8 -1, ptr %i.j, align 1, !dbg !9236, !noalias !9160
  %i.k = add i64 %i.f, 1, !dbg !9237              ; 4 uses
  store i64 %i.k, ptr %i.d, align 8, !dbg !9237, !alias.scope !9175, !noalias !9160
    #dbg_value(i32 2, !9146, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8969)
    #dbg_value(ptr %.val, !9162, !DIExpression(), !8959)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !8971)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !8973)
    #dbg_value(i8 -1, !1699, !DIExpression(), !8971)
    #dbg_value(i64 1, !1710, !DIExpression(), !8976)
    #dbg_value(i64 %i.k, !1700, !DIExpression(), !8979)
    #dbg_value(i64 %i.k, !1724, !DIExpression(), !8981)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8982)
  %i.l = load i64, ptr %.val, align 8, !dbg !9230, !range !1731, !alias.scope !9175, !noalias !9160, !noundef !718
  %i.m = icmp eq i64 %i.k, %i.l, !dbg !9231
  br i1 %i.m, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !9231

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !9232, !noalias !9160
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !9233

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.c, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.n = load ptr, ptr %i.e, align 8, !dbg !9234, !alias.scope !9175, !noalias !9160, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.n, !1729, !DIExpression(), !8981)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k, !dbg !9235
    #dbg_value(ptr %i.o, !1702, !DIExpression(), !8986)
    #dbg_value(ptr %i.o, !1788, !DIExpression(), !8988)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8988)
  store i8 -1, ptr %i.o, align 1, !dbg !9236, !noalias !9160
  %i.p = add i64 %i.f, 2, !dbg !9237              ; 4 uses
  store i64 %i.p, ptr %i.d, align 8, !dbg !9237, !alias.scope !9175, !noalias !9160
    #dbg_value(i32 3, !9146, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8969)
    #dbg_value(ptr %.val, !9162, !DIExpression(), !8959)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !8971)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !8973)
    #dbg_value(i8 -1, !1699, !DIExpression(), !8971)
    #dbg_value(i64 1, !1710, !DIExpression(), !8976)
    #dbg_value(i64 %i.p, !1700, !DIExpression(), !8979)
    #dbg_value(i64 %i.p, !1724, !DIExpression(), !8981)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8982)
  %i.q = load i64, ptr %.val, align 8, !dbg !9230, !range !1731, !alias.scope !9175, !noalias !9160, !noundef !718
  %i.r = icmp eq i64 %i.p, %i.q, !dbg !9231
  br i1 %i.r, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !9231

bb.d:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !9232, !noalias !9160
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !9233

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.d, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.s = load ptr, ptr %i.e, align 8, !dbg !9234, !alias.scope !9175, !noalias !9160, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.s, !1729, !DIExpression(), !8981)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !9235
    #dbg_value(ptr %i.t, !1702, !DIExpression(), !8986)
    #dbg_value(ptr %i.t, !1788, !DIExpression(), !8988)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8988)
  store i8 -1, ptr %i.t, align 1, !dbg !9236, !noalias !9160
  %i.u = add i64 %i.f, 3, !dbg !9237              ; 10 uses
  store i64 %i.u, ptr %i.d, align 8, !dbg !9237, !alias.scope !9175, !noalias !9160
    #dbg_value(i32 3, !9146, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8969)
    #dbg_value(ptr %.val, !9176, !DIExpression(), !8991)
    #dbg_value(i64 %i.u, !9147, !DIExpression(), !8992)
    #dbg_value(i64 %i.u, !9173, !DIExpression(), !8968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9178), !dbg !9238
    #dbg_value(ptr %1, !9179, !DIExpression(), !8997)
    #dbg_value(ptr poison, !9182, !DIExpression(), !8997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9184), !dbg !9239
    #dbg_value(ptr poison, !9185, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9003)
    #dbg_value(ptr poison, !9188, !DIExpression(), !9003)
    #dbg_value(ptr poison, !9191, !DIExpression(), !9006)
    #dbg_value(ptr poison, !9191, !DIExpression(), !9008)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !9240
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !dbg !9240, !alias.scope !9193, !nonnull !718, !align !1923, !noundef !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9241, !noalias !9193
    #dbg_value(ptr %.val, !9194, !DIExpression(), !9011)
  store ptr %.val, ptr %i.b, align 8, !dbg !9242, !noalias !9193
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9242
  store i8 -1, ptr %i.w, align 8, !dbg !9242, !noalias !9193
  call void @_RNvMs3_NtCscbFFjjIlwRm_5rcgen9sign_algoNtB5_18SignatureAlgorithm19write_oids_sign_alg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !9243, !noalias !9193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9244, !noalias !9193
  %i.x = call { ptr, i64 } @_RNvXs2_NtCscbFFjjIlwRm_5rcgen8key_pairNtB5_7KeyPairNtB5_13PublicKeyData9der_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1), !dbg !9245 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0, !dbg !9245
  %i.z = extractvalue { ptr, i64 } %i.x, 1, !dbg !9245 ; 2 uses
    #dbg_value(ptr %i.y, !9189, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9012)
    #dbg_value(i64 %i.z, !9189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9012)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9246, !noalias !9193
    #dbg_value(ptr %.val, !9194, !DIExpression(), !9014)
  store ptr %.val, ptr %i.a, align 8, !dbg !9247, !noalias !9193
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9247
  store i8 -1, ptr %i.aa, align 8, !dbg !9247, !noalias !9193
  %i.ab = shl i64 %i.z, 3, !dbg !9248
  call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter18write_bitvec_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z, i64 noundef %i.ab), !dbg !9249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9250, !noalias !9193
    #dbg_value(ptr %.val, !9176, !DIExpression(), !9016)
  %i.ac = load i64, ptr %i.d, align 8, !dbg !9251, !noalias !9160, !noundef !718 ; 6 uses
  %i.ad = icmp sgt i64 %i.ac, -1, !dbg !9252
  call void @llvm.assume(i1 %i.ad), !dbg !9253
  %i.ae = sub nsw i64 %i.ac, %i.u, !dbg !9254     ; 4 uses
    #dbg_value(i64 %i.ae, !9149, !DIExpression(), !9017)
    #dbg_value(i64 56, !9151, !DIExpression(), !9018)
  %i.af = icmp ult i64 %i.ae, 128, !dbg !9255     ; 2 uses
  br i1 %i.af, label %.thread.i, label %.preheader.i, !dbg !9255

.preheader.i:                                     ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.aj, %.preheader.i ], [ 56, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i ], !dbg !9256 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !9151, !DIExpression(), !9018)
  %i.ag = and i64 %.sroa.07.0.i, 56, !dbg !9257
  %i.ah = lshr i64 %i.ae, %i.ag, !dbg !9257
  %i.ai = icmp eq i64 %i.ah, 0, !dbg !9257
  %i.aj = add i64 %.sroa.07.0.i, -8, !dbg !9258
    #dbg_value(i64 %i.aj, !9151, !DIExpression(), !9018)
  br i1 %i.ai, label %.preheader.i, label %bb.e, !dbg !9257

bb.e:                                             ; preds = %.preheader.i
  %i.ak = lshr exact i64 %.sroa.07.0.i, 3, !dbg !9259 ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 2, !dbg !9260    ; 2 uses
    #dbg_value(i64 %i.al, !9150, !DIExpression(), !9019)
    #dbg_value(i64 %.sroa.07.0.i, !9151, !DIExpression(), !9018)
  %i.am = icmp eq i64 %.sroa.07.0.i, 0, !dbg !9261
  br i1 %i.am, label %.thread.i, label %bb.f, !dbg !9261

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %i.al, 3, !dbg !9262
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.g, !dbg !9262

.thread.i:                                        ; preds = %bb.e, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i
  %.pre-phi = phi i64 [ %i.p, %bb.e ], [ %i.k, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i ], !dbg !9263 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.e ], [ 1, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.e ], [ 56, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !9153, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9020)
    #dbg_value(!DIArgList(i64 %i.u, i64 %.sroa.02.06.i), !9152, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9021)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9264, !noalias !9160
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.u), !dbg !9265
    #dbg_value(ptr %i.c, !1800, !DIExpression(), !9023)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !dbg !9266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9267, !noalias !9160
  %.pre.pre = load i64, ptr %i.d, align 8, !dbg !9268, !noalias !9160
  br label %.loopexit7.i, !dbg !9269

bb.g:                                             ; preds = %bb.f
  %i.an = add nsw i64 %i.ak, -1, !dbg !9270       ; 3 uses
    #dbg_value(i64 %i.an, !9154, !DIExpression(), !9030)
  %i.ao = add nuw i64 %i.an, %i.u, !dbg !9271     ; 2 uses
    #dbg_value(i64 %i.ao, !9152, !DIExpression(), !9021)
    #dbg_value(i64 0, !9155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9031)
    #dbg_value(i64 %i.an, !9155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9031)
    #dbg_value(ptr undef, !9132, !DIExpression(), !8951)
    #dbg_value(ptr undef, !9128, !DIExpression(), !8950)
    #dbg_value(ptr undef, !9124, !DIExpression(), !8949)
    #dbg_value(ptr undef, !9125, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9032)
  %.not18.i = icmp eq i64 %i.an, 0, !dbg !9272
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !9273

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ap = icmp samesign ult i64 %i.ac, %i.u
  br i1 %i.ap, label %bb.h, label %.lr.ph.i, !dbg !9274, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.aq = phi i64 [ %i.ay, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.ac, %.lr.ph.i.preheader ], !dbg !9275 ; 5 uses
  %.sroa.016.012.i = phi i64 [ %i.ar, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.012.i, !9129, !DIExpression(), !9035)
    #dbg_value(i64 %.sroa.016.012.i, !9165, !DIExpression(), !8962)
    #dbg_value(i64 %.sroa.016.012.i, !9169, !DIExpression(), !8965)
  %i.ar = add nuw i64 %.sroa.016.012.i, 1, !dbg !9276 ; 2 uses
    #dbg_value(i64 %i.ar, !9155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9031)
    #dbg_value(ptr %.val, !9172, !DIExpression(), !8968)
  call void @llvm.experimental.noalias.scope.decl(metadata !9206), !dbg !9277
    #dbg_value(ptr %.val, !1839, !DIExpression(), !9038)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !9039)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !9041)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !9043)
    #dbg_value(i64 %i.u, !1840, !DIExpression(), !9038)
    #dbg_value(i64 %i.u, !1855, !DIExpression(), !9045)
    #dbg_value(i8 0, !1841, !DIExpression(), !9038)
    #dbg_value(i64 1, !1859, !DIExpression(), !9048)
    #dbg_value(i64 1, !1857, !DIExpression(), !9050)
    #dbg_value(i64 1, !1859, !DIExpression(), !9054)
    #dbg_value(i64 %i.aq, !1842, !DIExpression(), !9055)
  %i.as = icmp sgt i64 %i.aq, -1, !dbg !9278
  call void @llvm.assume(i1 %i.as), !dbg !9279
    #dbg_value(ptr %.val, !1862, !DIExpression(), !9056)
  %2 = load i64, ptr %.val, align 8, !dbg !9280, !range !1731, !alias.scope !9206, !noalias !9160, !noundef !718
  %3 = icmp eq i64 %i.aq, %2, !dbg !9281
  br i1 %3, label %bb.i, label %bb.j, !dbg !9281

bb.h:                                             ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !9282, !noalias !9206
  unreachable, !dbg !9282

bb.i:                                             ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !9283
  br label %bb.j, !dbg !9284

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.at = load ptr, ptr %i.e, align 8, !dbg !9285, !alias.scope !9206, !noalias !9160, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.at, !1856, !DIExpression(), !9045)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.u, !dbg !9286 ; 3 uses
    #dbg_value(ptr %i.au, !1843, !DIExpression(), !9060)
    #dbg_value(ptr %i.au, !1856, !DIExpression(), !9050)
    #dbg_value(ptr %i.au, !1868, !DIExpression(), !9062)
  %i.av = icmp samesign ult i64 %i.u, %i.aq, !dbg !9287
  br i1 %i.av, label %bb.k, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !9287

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr %i.au, !1871, !DIExpression(), !9064)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1, !dbg !9288
    #dbg_value(ptr %i.aw, !1874, !DIExpression(), !9064)
  %i.ax = sub nuw nsw i64 %i.aq, %i.u, !dbg !9289
    #dbg_value(i64 %i.ax, !1875, !DIExpression(), !9064)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull align 1 %i.au, i64 %i.ax, i1 false), !dbg !9290
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !9291

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.k, %bb.j
    #dbg_value(i8 0, !1869, !DIExpression(), !9062)
  store i8 0, ptr %i.au, align 1, !dbg !9292
  %i.ay = add nuw i64 %i.aq, 1, !dbg !9293        ; 3 uses
    #dbg_value(i64 %i.ay, !1853, !DIExpression(), !9043)
  store i64 %i.ay, ptr %i.d, align 8, !dbg !9294, !alias.scope !9206, !noalias !9160
    #dbg_value(i64 %i.ar, !9155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9031)
    #dbg_value(ptr undef, !9132, !DIExpression(), !8951)
    #dbg_value(ptr undef, !9128, !DIExpression(), !8950)
    #dbg_value(ptr undef, !9124, !DIExpression(), !8949)
    #dbg_value(ptr undef, !9125, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9032)
  %exitcond.not.i = icmp eq i64 %i.ar, %i.an, !dbg !9272
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !9273

.loopexit7.thread.i:                              ; preds = %bb.g, %bb.f
  %.sroa.014.0.ph.i = phi i64 [ %i.ao, %bb.g ], [ %i.u, %bb.f ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !9152, !DIExpression(), !9021)
  %i.az = add i64 %.sroa.014.0.ph.i, -3, !dbg !9295
    #dbg_value(i64 %i.az, !9156, !DIExpression(), !9065)
    #dbg_value(i64 %i.az, !9204, !DIExpression(), !9067)
    #dbg_value(i64 %i.az, !9207, !DIExpression(), !9070)
    #dbg_value(i64 %i.az, !9210, !DIExpression(), !9073)
  br label %bb.l, !dbg !9296

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.ay, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !9268 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.al, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.ao, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !9297
    #dbg_value(i64 %.sroa.014.0.i, !9152, !DIExpression(), !9021)
  %i.ba = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !9295 ; 4 uses
    #dbg_value(i64 %i.ba, !9156, !DIExpression(), !9065)
    #dbg_value(i64 %i.ba, !9204, !DIExpression(), !9067)
    #dbg_value(i64 %i.ba, !9207, !DIExpression(), !9070)
    #dbg_value(i64 %i.ba, !9210, !DIExpression(), !9073)
  br i1 %i.af, label %bb.m, label %bb.l, !dbg !9296

bb.l:                                             ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.bb = phi i64 [ %i.ac, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !9268 ; 2 uses
  %i.bc = phi i64 [ %i.az, %.loopexit7.thread.i ], [ %i.ba, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1341.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !9203, !DIExpression(), !9074)
    #dbg_value(ptr %.val, !9200, !DIExpression(), !9075)
    #dbg_value(ptr %.val, !9197, !DIExpression(), !9076)
    #dbg_value(ptr %.val, !9213, !DIExpression(), !9079)
    #dbg_value(i64 %i.bc, !9204, !DIExpression(), !9074)
    #dbg_value(i64 %i.bc, !9207, !DIExpression(), !9081)
    #dbg_value(i64 %i.bc, !9210, !DIExpression(), !9083)
    #dbg_value(ptr poison, !9208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9081)
    #dbg_value(ptr poison, !9211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9083)
    #dbg_value(i64 %i.bb, !9208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9081)
    #dbg_value(i64 %i.bb, !9211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9083)
  %i.bd = icmp ult i64 %i.bc, %i.bb, !dbg !9298
  br i1 %i.bd, label %bb.n, label %bb.o, !dbg !9298

bb.m:                                             ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !9203, !DIExpression(), !9067)
    #dbg_value(ptr %.val, !9200, !DIExpression(), !9085)
    #dbg_value(ptr %.val, !9197, !DIExpression(), !9087)
    #dbg_value(ptr %.val, !9213, !DIExpression(), !9089)
    #dbg_value(ptr poison, !9208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9070)
    #dbg_value(ptr poison, !9211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9073)
    #dbg_value(i64 %.pre, !9208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9070)
    #dbg_value(i64 %.pre, !9211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9073)
  %i.be = icmp ult i64 %i.ba, %.pre, !dbg !9299
  br i1 %i.be, label %bb.q, label %bb.r, !dbg !9299

bb.n:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.e, align 8, !dbg !9300, !noalias !9160, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bf, !9208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9081)
    #dbg_value(ptr %i.bf, !9211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9083)
  %i.bg = lshr exact i64 %.sroa.07.1341.i, 3, !dbg !9301
  %i.bh = trunc i64 %i.bg to i8, !dbg !9302
  %i.bi = add i8 %i.bh, 1, !dbg !9302
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc, !dbg !9303
  %i.bk = or i8 %i.bi, -128, !dbg !9304
  store i8 %i.bk, ptr %i.bj, align 1, !dbg !9304
    #dbg_value(i64 %i.bc, !9156, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9065)
    #dbg_value(i64 %i.bc, !9204, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9067)
    #dbg_value(i64 %i.bc, !9207, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9070)
    #dbg_value(i64 %i.bc, !9210, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9073)
  %.sroa.018.013.i = add nuw i64 %i.bc, 1, !dbg !9305 ; 3 uses
  %i.bl = load i64, ptr %i.d, align 8, !dbg !9306, !noalias !9160, !noundef !718 ; 2 uses
  %i.bm = icmp ult i64 %.sroa.018.013.i, %i.bl, !dbg !9307
  br i1 %i.bm, label %.lr.ph16.i, label %._crit_edge.i, !dbg !9307

bb.o:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !9298
  unreachable, !dbg !9298

bb.p:                                             ; preds = %.lr.ph16.i
  %i.bn = add i64 %.sroa.07.214.i, -8, !dbg !9308
    #dbg_value(i64 %i.bn, !9151, !DIExpression(), !9018)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.015.i, 1, !dbg !9305 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !9210, !DIExpression(), !9073)
    #dbg_value(i64 %.sroa.018.0.i, !9207, !DIExpression(), !9070)
    #dbg_value(i64 %.sroa.018.0.i, !9204, !DIExpression(), !9067)
    #dbg_value(i64 %.sroa.018.0.i, !9156, !DIExpression(), !9065)
    #dbg_value(ptr %.val, !9203, !DIExpression(), !9101)
    #dbg_value(ptr %.val, !9200, !DIExpression(), !9102)
    #dbg_value(ptr %.val, !9197, !DIExpression(), !9103)
    #dbg_value(ptr %.val, !9213, !DIExpression(), !9105)
    #dbg_value(i64 %.sroa.018.0.i, !9204, !DIExpression(), !9101)
    #dbg_value(i64 %.sroa.018.0.i, !9207, !DIExpression(), !9106)
    #dbg_value(i64 %.sroa.018.0.i, !9210, !DIExpression(), !9107)
  %i.bo = load i64, ptr %i.d, align 8, !dbg !9306, !noalias !9160, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !9208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9106)
    #dbg_value(ptr poison, !9211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9107)
    #dbg_value(i64 %i.bo, !9208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9106)
    #dbg_value(i64 %i.bo, !9211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9107)
  %i.bp = icmp ult i64 %.sroa.018.0.i, %i.bo, !dbg !9307
  br i1 %i.bp, label %.lr.ph16.i, label %._crit_edge.i, !dbg !9307

.lr.ph16.i:                                       ; preds = %bb.n, %bb.p
  %.sroa.018.015.i = phi i64 [ %.sroa.018.0.i, %bb.p ], [ %.sroa.018.013.i, %bb.n ] ; 2 uses
  %.sroa.07.214.i = phi i64 [ %i.bn, %bb.p ], [ %.sroa.07.1341.i, %bb.n ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i, !9151, !DIExpression(), !9018)
  %i.bq = load ptr, ptr %i.e, align 8, !dbg !9309, !noalias !9160, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bq, !9208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9106)
    #dbg_value(ptr %i.bq, !9211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9107)
  %i.br = and i64 %.sroa.07.214.i, 56, !dbg !9310
  %i.bs = lshr i64 %i.ae, %i.br, !dbg !9310
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.018.015.i, !dbg !9311
  %i.bu = trunc i64 %i.bs to i8, !dbg !9312
  store i8 %i.bu, ptr %i.bt, align 1, !dbg !9312
    #dbg_value(i64 %.sroa.018.015.i, !9156, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9065)
    #dbg_value(i64 %.sroa.018.015.i, !9204, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9067)
    #dbg_value(i64 %.sroa.018.015.i, !9207, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9070)
    #dbg_value(i64 %.sroa.018.015.i, !9210, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9073)
  %i.bv = icmp eq i64 %.sroa.07.214.i, 0, !dbg !9313
    #dbg_value(i64 %.sroa.07.214.i, !9151, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !9018)
  br i1 %i.bv, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvNtCscbFFjjIlwRm_5rcgen8key_pair24serialize_public_key_derNtB1t_7KeyPairE0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.p, !dbg !9313

._crit_edge.i:                                    ; preds = %bb.p, %bb.n
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.013.i, %bb.n ], [ %.sroa.018.0.i, %bb.p ], !dbg !9305
  %.lcssa.i = phi i64 [ %i.bl, %bb.n ], [ %i.bo, %bb.p ], !dbg !9306
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !9307
  unreachable, !dbg !9307

bb.q:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.e, align 8, !dbg !9314, !noalias !9160, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bw, !9208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9070)
    #dbg_value(ptr %i.bw, !9211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9073)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ba, !dbg !9315
  %i.by = trunc nuw nsw i64 %i.ae to i8, !dbg !9316
  store i8 %i.by, ptr %i.bx, align 1, !dbg !9316
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvNtCscbFFjjIlwRm_5rcgen8key_pair24serialize_public_key_derNtB1t_7KeyPairE0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !9317

bb.r:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !9299
  unreachable, !dbg !9299

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvNtCscbFFjjIlwRm_5rcgen8key_pair24serialize_public_key_derNtB1t_7KeyPairE0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph16.i, %bb.q
  ret void, !dbg !9318
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscbFFjjIlwRm_5rcgen8key_pair8sign_derRNtB2_7KeyPairNCINvMs1_NtB4_11certificateNtB13_17CertificateParams25serialize_der_with_signerBH_BG_E0ECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9338 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !11077, !DIExpression(), !9467)
    #dbg_value(ptr poison, !11081, !DIExpression(), !9468)
    #dbg_value(ptr poison, !11085, !DIExpression(), !9469)
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !11328, !DIExpression(), !9477)
    #dbg_value(ptr poison, !11332, !DIExpression(), !9478)
    #dbg_value(ptr poison, !11336, !DIExpression(), !9479)
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !11339, !DIExpression(), !9505)
    #dbg_value(ptr poison, !11343, !DIExpression(), !9506)
    #dbg_value(ptr poison, !11347, !DIExpression(), !9507)
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !11383, !DIExpression(), !9533)
end_hunk_6
