Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.09?download=true
inline.NumInlined: 239
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairE0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !3260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2763)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !3257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2760)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !3260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2763)
  %i.ck = icmp ult i64 %i.cg, %.pre.i.i.i.i.i.i, !dbg !3419
  br i1 %i.ck, label %bb.ag, label %.invoke.i.i.i.i, !dbg !3419

bb.ae:                                            ; preds = %bb.ac
  %i.cl = load ptr, ptr %i.y, align 8, !dbg !3420, !noalias !3107, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cl, !3257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2771)
    #dbg_value(ptr %i.cl, !3260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2773)
  %i.cm = lshr exact i64 %.sroa.07.1342.i.i.i.i.i.i.i, 3, !dbg !3421
  %i.cn = trunc i64 %i.cm to i8, !dbg !3422
  %i.co = add i8 %i.cn, 1, !dbg !3422
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci, !dbg !3423
  %i.cq = or i8 %i.co, -128, !dbg !3424
  store i8 %i.cq, ptr %i.cp, align 1, !dbg !3424, !noalias !3107
    #dbg_value(i64 %i.ci, !3014, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2755)
    #dbg_value(i64 %i.ci, !3253, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2757)
    #dbg_value(i64 %i.ci, !3256, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2760)
    #dbg_value(i64 %i.ci, !3259, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2763)
  %.sroa.018.013.i.i.i.i.i.i.i = add nuw i64 %i.ci, 1, !dbg !3425 ; 3 uses
  %i.cr = load i64, ptr %i.x, align 8, !dbg !3426, !noalias !3107, !noundef !718 ; 2 uses
  %i.cs = icmp ult i64 %.sroa.018.013.i.i.i.i.i.i.i, %i.cr, !dbg !3427
  br i1 %i.cs, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !3427

bb.af:                                            ; preds = %.lr.ph16.i.i.i.i.i.i.i
  %i.ct = add i64 %.sroa.07.214.i.i.i.i.i.i.i, -8, !dbg !3428
    #dbg_value(i64 %i.ct, !3009, !DIExpression(), !2679)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.015.i.i.i.i.i.i.i, 1, !dbg !3425 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3259, !DIExpression(), !2763)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3256, !DIExpression(), !2760)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3253, !DIExpression(), !2757)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3014, !DIExpression(), !2755)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !3252, !DIExpression(), !2791)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !3249, !DIExpression(), !2792)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !3246, !DIExpression(), !2793)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !3262, !DIExpression(), !2795)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3253, !DIExpression(), !2791)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3256, !DIExpression(), !2796)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !3259, !DIExpression(), !2797)
  %i.cu = load i64, ptr %i.x, align 8, !dbg !3426, !noalias !3107, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !3257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2796)
    #dbg_value(ptr poison, !3260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2797)
    #dbg_value(i64 %i.cu, !3257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2796)
    #dbg_value(i64 %i.cu, !3260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2797)
  %i.cv = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.cu, !dbg !3427
  br i1 %i.cv, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !3427

.lr.ph16.i.i.i.i.i.i.i:                           ; preds = %bb.ae, %bb.af
  %.sroa.018.015.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.ae ] ; 2 uses
  %.sroa.07.214.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.af ], [ %.sroa.07.1342.i.i.i.i.i.i.i, %bb.ae ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !3009, !DIExpression(), !2679)
  %i.cw = load ptr, ptr %i.y, align 8, !dbg !3429, !noalias !3107, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cw, !3257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2796)
    #dbg_value(ptr %i.cw, !3260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2797)
  %i.cx = and i64 %.sroa.07.214.i.i.i.i.i.i.i, 56, !dbg !3430
  %i.cy = lshr i64 %i.at, %i.cx, !dbg !3430
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.018.015.i.i.i.i.i.i.i, !dbg !3431
  %i.da = trunc i64 %i.cy to i8, !dbg !3432
  store i8 %i.da, ptr %i.cz, align 1, !dbg !3432, !noalias !3107
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !3014, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2755)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !3253, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2757)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !3256, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2760)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !3259, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2763)
  %i.db = icmp eq i64 %.sroa.07.214.i.i.i.i.i.i.i, 0, !dbg !3433
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !3009, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !2679)
  br i1 %i.db, label %.loopexit.i.i.i, label %bb.af, !dbg !3433

bb.ag:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.y, align 8, !dbg !3434, !noalias !3107, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dc, !3257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2760)
    #dbg_value(ptr %i.dc, !3260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2763)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cg, !dbg !3435
  %i.de = trunc nuw nsw i64 %i.at to i8, !dbg !3436
  store i8 %i.de, ptr %i.dd, align 1, !dbg !3436, !noalias !3107
  br label %.loopexit.i.i.i, !dbg !3437

.invoke.i.i.i.i:                                  ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.df = phi i64 [ %i.cg, %bb.ad ], [ %i.ci, %bb.ac ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.ae ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.af ]
  %i.dg = phi i64 [ %.pre.i.i.i.i.i.i, %bb.ad ], [ %i.ch, %bb.ac ], [ %i.cr, %bb.ae ], [ %i.cu, %bb.af ]
  %i.dh = phi ptr [ @4, %bb.ad ], [ @2, %bb.ac ], [ @3, %bb.ae ], [ @3, %bb.af ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.df, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3438, !noalias !3107

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsk5jvY4Bb3tQ_5yasna6models3oid16ObjectIdentifierECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i.i.i.i.i, %bb.n, %.invoke.i.i.i.i, %bb.z, %.noexc13.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.v, %bb.u, %bb.t, %bb.d
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q, %bb.o
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.an, %bb.q ], [ %lpad.loopexit.split-lp65, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.ah, !dbg !3439, !noalias !3107

bb.ah:                                            ; preds = %.body.i.i.i.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !3440, !noalias !3107
  unreachable, !dbg !3440

bb.ai:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !3441, !noalias !3106
    #dbg_value(ptr %.val, !3276, !DIExpression(), !2811)
  store ptr %.val, ptr %i.h, align 8, !dbg !3442, !noalias !3106
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !3442
  store i8 -1, ptr %i.dj, align 8, !dbg !3442, !noalias !3106
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i1 noundef zeroext true)
          to label %bb.aj unwind label %bb.b, !dbg !3443, !noalias !3106

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3444, !noalias !3106
  br label %bb.d, !dbg !3445

.loopexit.i.i.i:                                  ; preds = %.lr.ph16.i.i.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3446, !noalias !3107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !3447, !noalias !3106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3439, !noalias !3107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3448, !noalias !3106
    #dbg_value(ptr %.val, !3276, !DIExpression(), !2814)
  store ptr %.val, ptr %i.f, align 8, !dbg !3449, !noalias !3106
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3449
  store i8 -1, ptr %i.dk, align 8, !dbg !3449, !noalias !3106
    #dbg_value(ptr %i.g, !3282, !DIExpression(), !2817)
    #dbg_value(ptr %i.g, !3284, !DIExpression(), !2820)
    #dbg_value(ptr %i.g, !3286, !DIExpression(), !2823)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3450
  %i.dm = load ptr, ptr %i.dl, align 8, !dbg !3450, !noalias !3106, !nonnull !718, !noundef !718
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !3451
  %i.do = load i64, ptr %i.dn, align 8, !dbg !3451, !noalias !3106, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.do)
          to label %bb.al unwind label %bb.ak, !dbg !3452, !noalias !3106

bb.ak:                                            ; preds = %.loopexit.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %.body.i.i.i unwind label %bb.ar, !dbg !3453, !noalias !3106

bb.al:                                            ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3454, !noalias !3106
    #dbg_value(ptr %i.g, !1894, !DIExpression(), !2831)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.an unwind label %bb.am, !dbg !3455, !noalias !3106

bb.am:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !2833)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i.i unwind label %bb.ao, !dbg !3456, !noalias !3106

bb.an:                                            ; preds = %bb.al
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !2835)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !3457, !noalias !3106

bb.ao:                                            ; preds = %bb.am
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !3455, !noalias !3106
  unreachable, !dbg !3455

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3453, !noalias !3106
    #dbg_value(ptr %i.j, !1753, !DIExpression(), !2837)
    #dbg_value(ptr %i.j, !1760, !DIExpression(), !2839)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.ap, !dbg !3458, !noalias !3106

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !2841)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.aq, !dbg !3459, !noalias !3106

bb.aq:                                            ; preds = %bb.ap
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !3458, !noalias !3106
  unreachable, !dbg !3458

common.resume.i.i.i:                              ; preds = %bb.ap, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ds, %bb.ap ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !3460

bb.ar:                                            ; preds = %bb.ak, %.body.i.i.i
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !3461, !noalias !3106
  unreachable, !dbg !3461

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !2843)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !3462, !noalias !3106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !3326, !noalias !3106
    #dbg_value(ptr %.val, !3288, !DIExpression(), !2846)
  %i.dv = load i64, ptr %i.l, align 8, !dbg !3463, !noalias !3090, !noundef !718 ; 6 uses
  %i.dw = icmp sgt i64 %i.dv, -1, !dbg !3464
  call void @llvm.assume(i1 %i.dw), !dbg !3465
  %i.dx = sub nsw i64 %i.dv, %i.el, !dbg !3466    ; 4 uses
    #dbg_value(i64 %i.dx, !3068, !DIExpression(), !2847)
    #dbg_value(i64 56, !3070, !DIExpression(), !2848)
  %i.dy = icmp ult i64 %i.dx, 128, !dbg !3467     ; 2 uses
  br i1 %i.dy, label %.thread.i, label %.preheader.i, !dbg !3467

bb.as:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !3468, !noalias !3090
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !3469

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.as, %bb.a
  %i.dz = load ptr, ptr %i.m, align 8, !dbg !3470, !alias.scope !3105, !noalias !3090, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dz, !1729, !DIExpression(), !2561)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.n, !dbg !3471
    #dbg_value(ptr %i.ea, !1702, !DIExpression(), !2852)
    #dbg_value(ptr %i.ea, !1788, !DIExpression(), !2854)
    #dbg_value(i8 -1, !1791, !DIExpression(), !2854)
  store i8 -1, ptr %i.ea, align 1, !dbg !3472, !noalias !3090
  %i.eb = add i64 %i.n, 1, !dbg !3473             ; 4 uses
  store i64 %i.eb, ptr %i.l, align 8, !dbg !3473, !alias.scope !3105, !noalias !3090
    #dbg_value(i32 2, !3065, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2549)
    #dbg_value(ptr %.val, !3092, !DIExpression(), !2539)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !2551)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !2553)
    #dbg_value(i8 -1, !1699, !DIExpression(), !2551)
    #dbg_value(i64 1, !1710, !DIExpression(), !2556)
    #dbg_value(i64 %i.eb, !1700, !DIExpression(), !2559)
    #dbg_value(i64 %i.eb, !1724, !DIExpression(), !2561)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !2562)
  %i.ec = load i64, ptr %.val, align 8, !dbg !3324, !range !1731, !alias.scope !3105, !noalias !3090, !noundef !718
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !3325
  br i1 %i.ed, label %bb.at, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !3325

bb.at:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !3468, !noalias !3090
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !3469

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.at, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ee = load ptr, ptr %i.m, align 8, !dbg !3470, !alias.scope !3105, !noalias !3090, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ee, !1729, !DIExpression(), !2561)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb, !dbg !3471
    #dbg_value(ptr %i.ef, !1702, !DIExpression(), !2852)
    #dbg_value(ptr %i.ef, !1788, !DIExpression(), !2854)
    #dbg_value(i8 -1, !1791, !DIExpression(), !2854)
  store i8 -1, ptr %i.ef, align 1, !dbg !3472, !noalias !3090
  %i.eg = add i64 %i.n, 2, !dbg !3473             ; 4 uses
  store i64 %i.eg, ptr %i.l, align 8, !dbg !3473, !alias.scope !3105, !noalias !3090
    #dbg_value(i32 3, !3065, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2549)
    #dbg_value(ptr %.val, !3092, !DIExpression(), !2539)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !2551)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !2553)
    #dbg_value(i8 -1, !1699, !DIExpression(), !2551)
    #dbg_value(i64 1, !1710, !DIExpression(), !2556)
    #dbg_value(i64 %i.eg, !1700, !DIExpression(), !2559)
    #dbg_value(i64 %i.eg, !1724, !DIExpression(), !2561)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !2562)
  %i.eh = load i64, ptr %.val, align 8, !dbg !3324, !range !1731, !alias.scope !3105, !noalias !3090, !noundef !718
  %i.ei = icmp eq i64 %i.eg, %i.eh, !dbg !3325
  br i1 %i.ei, label %bb.au, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !3325

bb.au:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !3468, !noalias !3090
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !3469

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.au, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.ej = load ptr, ptr %i.m, align 8, !dbg !3470, !alias.scope !3105, !noalias !3090, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ej, !1729, !DIExpression(), !2561)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eg, !dbg !3471
    #dbg_value(ptr %i.ek, !1702, !DIExpression(), !2852)
    #dbg_value(ptr %i.ek, !1788, !DIExpression(), !2854)
    #dbg_value(i8 -1, !1791, !DIExpression(), !2854)
  store i8 -1, ptr %i.ek, align 1, !dbg !3472, !noalias !3090
  %i.el = add i64 %i.n, 3, !dbg !3473             ; 10 uses
  store i64 %i.el, ptr %i.l, align 8, !dbg !3473, !alias.scope !3105, !noalias !3090
    #dbg_value(i32 3, !3065, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2549)
    #dbg_value(ptr %.val, !3288, !DIExpression(), !2856)
    #dbg_value(i64 %i.el, !3066, !DIExpression(), !2857)
    #dbg_value(i64 %i.el, !3103, !DIExpression(), !2548)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !3474, !alias.scope !3090, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !3054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2858)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3474
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !3474, !alias.scope !3090
    #dbg_value(i64 %.sroa.4.0.copyload.i, !3054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2858)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3474
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !3474, !alias.scope !3090 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !3054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2858)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3474
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !3474, !alias.scope !3090 ; 3 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !3054, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2858)
    #dbg_value(ptr poison, !3053, !DIExpression(), !2859)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !3042, !DIExpression(DW_OP_deref), !2860)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !3043, !DIExpression(), !2860)
    #dbg_value(ptr poison, !3040, !DIExpression(), !2861)
    #dbg_value(ptr poison, !3279, !DIExpression(), !2863)
    #dbg_value(ptr poison, !3279, !DIExpression(), !2864)
    #dbg_value(ptr poison, !3279, !DIExpression(), !2865)
    #dbg_declare(ptr %i.j, !3044, !DIExpression(), !2866)
    #dbg_declare(ptr %i.g, !3045, !DIExpression(), !2867)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !3475, !noalias !3106
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !3476, !noalias !3106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !3477, !noalias !3106
    #dbg_value(ptr %.val, !3276, !DIExpression(), !2869)
  store ptr %.val, ptr %i.i, align 8, !dbg !3478, !noalias !3106
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !3478
  store i8 -1, ptr %i.em, align 8, !dbg !3478, !noalias !3106
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b, !dbg !3479, !noalias !3106

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.eq, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !3480 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !3070, !DIExpression(), !2848)
  %i.en = and i64 %.sroa.07.0.i, 56, !dbg !3481
  %i.eo = lshr i64 %i.dx, %i.en, !dbg !3481
  %i.ep = icmp eq i64 %i.eo, 0, !dbg !3481
  %i.eq = add i64 %.sroa.07.0.i, -8, !dbg !3482
    #dbg_value(i64 %i.eq, !3070, !DIExpression(), !2848)
  br i1 %i.ep, label %.preheader.i, label %bb.av, !dbg !3481

bb.av:                                            ; preds = %.preheader.i
  %i.er = lshr exact i64 %.sroa.07.0.i, 3, !dbg !3483 ; 2 uses
  %i.es = add nuw nsw i64 %i.er, 2, !dbg !3484    ; 2 uses
    #dbg_value(i64 %i.es, !3069, !DIExpression(), !2870)
    #dbg_value(i64 %.sroa.07.0.i, !3070, !DIExpression(), !2848)
  %i.et = icmp eq i64 %.sroa.07.0.i, 0, !dbg !3485
  br i1 %i.et, label %.thread.i, label %bb.aw, !dbg !3485

bb.aw:                                            ; preds = %bb.av
  %.not.i = icmp eq i64 %i.es, 3, !dbg !3486
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.ax, !dbg !3486

.thread.i:                                        ; preds = %bb.av, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.eg, %bb.av ], [ %i.eb, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !3487 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.av ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.av ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairE0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !3072, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2871)
    #dbg_value(!DIArgList(i64 %i.el, i64 %.sroa.02.06.i), !3071, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !3488, !noalias !3090
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.el), !dbg !3489, !noalias !3090
    #dbg_value(ptr %i.k, !1800, !DIExpression(), !2874)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k), !dbg !3490, !noalias !3090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !3491, !noalias !3090
  %.pre.pre = load i64, ptr %i.l, align 8, !dbg !3492, !noalias !3090
  br label %.loopexit7.i, !dbg !3493

bb.ax:                                            ; preds = %bb.aw
  %i.eu = add nsw i64 %i.er, -1, !dbg !3494       ; 3 uses
    #dbg_value(i64 %i.eu, !3073, !DIExpression(), !2881)
  %i.ev = add nuw i64 %i.eu, %i.el, !dbg !3495    ; 2 uses
    #dbg_value(i64 %i.ev, !3071, !DIExpression(), !2872)
    #dbg_value(i64 0, !3074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2882)
    #dbg_value(i64 %i.eu, !3074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2882)
    #dbg_value(ptr undef, !3085, !DIExpression(), !2531)
    #dbg_value(ptr undef, !3081, !DIExpression(), !2530)
    #dbg_value(ptr undef, !3077, !DIExpression(), !2529)
    #dbg_value(ptr undef, !3078, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2883)
  %.not23.i = icmp eq i64 %i.eu, 0, !dbg !3496
  br i1 %.not23.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !3497

.lr.ph.i.preheader:                               ; preds = %bb.ax
  %i.ew = icmp samesign ult i64 %i.dv, %i.el
  br i1 %i.ew, label %bb.ay, label %.lr.ph.i, !dbg !3498, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ex = phi i64 [ %i.ff, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.dv, %.lr.ph.i.preheader ], !dbg !3499 ; 5 uses
  %.sroa.016.017.i = phi i64 [ %i.ey, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.017.i, !3082, !DIExpression(), !2886)
    #dbg_value(i64 %.sroa.016.017.i, !3095, !DIExpression(), !2542)
    #dbg_value(i64 %.sroa.016.017.i, !3099, !DIExpression(), !2545)
  %i.ey = add nuw i64 %.sroa.016.017.i, 1, !dbg !3500 ; 2 uses
    #dbg_value(i64 %i.ey, !3074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2882)
    #dbg_value(ptr %.val, !3102, !DIExpression(), !2548)
  call void @llvm.experimental.noalias.scope.decl(metadata !3299), !dbg !3501
    #dbg_value(ptr %.val, !1839, !DIExpression(), !2889)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !2890)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !2892)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !2894)
    #dbg_value(i64 %i.el, !1840, !DIExpression(), !2889)
    #dbg_value(i64 %i.el, !1855, !DIExpression(), !2896)
    #dbg_value(i8 0, !1841, !DIExpression(), !2889)
    #dbg_value(i64 1, !1859, !DIExpression(), !2899)
    #dbg_value(i64 1, !1857, !DIExpression(), !2901)
    #dbg_value(i64 1, !1859, !DIExpression(), !2905)
    #dbg_value(i64 %i.ex, !1842, !DIExpression(), !2906)
  %i.ez = icmp sgt i64 %i.ex, -1, !dbg !3502
  call void @llvm.assume(i1 %i.ez), !dbg !3503
    #dbg_value(ptr %.val, !1862, !DIExpression(), !2907)
  %2 = load i64, ptr %.val, align 8, !dbg !3504, !range !1731, !alias.scope !3299, !noalias !3090, !noundef !718
  %3 = icmp eq i64 %i.ex, %2, !dbg !3505
  br i1 %3, label %bb.az, label %bb.ba, !dbg !3505

bb.ay:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.el, i64 noundef %i.dv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !3506, !noalias !3300
  unreachable, !dbg !3506

bb.az:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !3507, !noalias !3090
  br label %bb.ba, !dbg !3508

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i
  %i.fa = load ptr, ptr %i.m, align 8, !dbg !3509, !alias.scope !3299, !noalias !3090, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fa, !1856, !DIExpression(), !2896)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.el, !dbg !3510 ; 3 uses
    #dbg_value(ptr %i.fb, !1843, !DIExpression(), !2911)
    #dbg_value(ptr %i.fb, !1856, !DIExpression(), !2901)
    #dbg_value(ptr %i.fb, !1868, !DIExpression(), !2913)
  %i.fc = icmp samesign ult i64 %i.el, %i.ex, !dbg !3511
  br i1 %i.fc, label %bb.bb, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !3511

bb.bb:                                            ; preds = %bb.ba
    #dbg_value(ptr %i.fb, !1871, !DIExpression(), !2915)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1, !dbg !3512
    #dbg_value(ptr %i.fd, !1874, !DIExpression(), !2915)
  %i.fe = sub nuw nsw i64 %i.ex, %i.el, !dbg !3513
    #dbg_value(i64 %i.fe, !1875, !DIExpression(), !2915)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull align 1 %i.fb, i64 %i.fe, i1 false), !dbg !3514, !noalias !3090
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !3515

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.bb, %bb.ba
    #dbg_value(i8 0, !1869, !DIExpression(), !2913)
  store i8 0, ptr %i.fb, align 1, !dbg !3516, !noalias !3090
  %i.ff = add nuw i64 %i.ex, 1, !dbg !3517        ; 3 uses
    #dbg_value(i64 %i.ff, !1853, !DIExpression(), !2894)
  store i64 %i.ff, ptr %i.l, align 8, !dbg !3518, !alias.scope !3299, !noalias !3090
    #dbg_value(i64 %i.ey, !3074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2882)
    #dbg_value(ptr undef, !3085, !DIExpression(), !2531)
    #dbg_value(ptr undef, !3081, !DIExpression(), !2530)
    #dbg_value(ptr undef, !3077, !DIExpression(), !2529)
    #dbg_value(ptr undef, !3078, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2883)
  %exitcond.not.i = icmp eq i64 %i.ey, %i.eu, !dbg !3496
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !3497

.loopexit7.thread.i:                              ; preds = %bb.ax, %bb.aw
  %.sroa.014.0.ph.i = phi i64 [ %i.ev, %bb.ax ], [ %i.el, %bb.aw ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !3071, !DIExpression(), !2872)
  %i.fg = add i64 %.sroa.014.0.ph.i, -3, !dbg !3519
    #dbg_value(i64 %i.fg, !3075, !DIExpression(), !2916)
    #dbg_value(i64 %i.fg, !3297, !DIExpression(), !2918)
    #dbg_value(i64 %i.fg, !3301, !DIExpression(), !2921)
    #dbg_value(i64 %i.fg, !3304, !DIExpression(), !2924)
  br label %bb.bc, !dbg !3520

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.ff, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !3492 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.es, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.ev, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !3521
    #dbg_value(i64 %.sroa.014.0.i, !3071, !DIExpression(), !2872)
  %i.fh = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !3519 ; 4 uses
    #dbg_value(i64 %i.fh, !3075, !DIExpression(), !2916)
    #dbg_value(i64 %i.fh, !3297, !DIExpression(), !2918)
    #dbg_value(i64 %i.fh, !3301, !DIExpression(), !2921)
    #dbg_value(i64 %i.fh, !3304, !DIExpression(), !2924)
  br i1 %i.dy, label %bb.bd, label %bb.bc, !dbg !3520

bb.bc:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.fi = phi i64 [ %i.dv, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !3492 ; 2 uses
  %i.fj = phi i64 [ %i.fg, %.loopexit7.thread.i ], [ %i.fh, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1369.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !3296, !DIExpression(), !2925)
    #dbg_value(ptr %.val, !3293, !DIExpression(), !2926)
    #dbg_value(ptr %.val, !3290, !DIExpression(), !2927)
    #dbg_value(ptr %.val, !3307, !DIExpression(), !2930)
    #dbg_value(i64 %i.fj, !3297, !DIExpression(), !2925)
    #dbg_value(i64 %i.fj, !3301, !DIExpression(), !2932)
    #dbg_value(i64 %i.fj, !3304, !DIExpression(), !2934)
    #dbg_value(ptr poison, !3302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2932)
    #dbg_value(ptr poison, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2934)
    #dbg_value(i64 %i.fi, !3302, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2932)
    #dbg_value(i64 %i.fi, !3305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2934)
  %i.fk = icmp ult i64 %i.fj, %i.fi, !dbg !3522
  br i1 %i.fk, label %bb.be, label %bb.bf, !dbg !3522

bb.bd:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !3296, !DIExpression(), !2918)
    #dbg_value(ptr %.val, !3293, !DIExpression(), !2936)
    #dbg_value(ptr %.val, !3290, !DIExpression(), !2938)
    #dbg_value(ptr %.val, !3307, !DIExpression(), !2940)
    #dbg_value(ptr poison, !3302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2921)
    #dbg_value(ptr poison, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2924)
    #dbg_value(i64 %.pre, !3302, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2921)
    #dbg_value(i64 %.pre, !3305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2924)
  %i.fl = icmp ult i64 %i.fh, %.pre, !dbg !3523
  br i1 %i.fl, label %bb.bh, label %bb.bi, !dbg !3523

bb.be:                                            ; preds = %bb.bc
  %i.fm = load ptr, ptr %i.m, align 8, !dbg !3524, !noalias !3090, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fm, !3302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2932)
    #dbg_value(ptr %i.fm, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2934)
  %i.fn = lshr exact i64 %.sroa.07.1369.i, 3, !dbg !3525
  %i.fo = trunc i64 %i.fn to i8, !dbg !3526
  %i.fp = add i8 %i.fo, 1, !dbg !3526
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fj, !dbg !3527
  %i.fr = or i8 %i.fp, -128, !dbg !3528
  store i8 %i.fr, ptr %i.fq, align 1, !dbg !3528, !noalias !3090
    #dbg_value(i64 %i.fj, !3075, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2916)
    #dbg_value(i64 %i.fj, !3297, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2918)
    #dbg_value(i64 %i.fj, !3301, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2921)
    #dbg_value(i64 %i.fj, !3304, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2924)
  %.sroa.018.018.i = add nuw i64 %i.fj, 1, !dbg !3529 ; 3 uses
  %i.fs = load i64, ptr %i.l, align 8, !dbg !3530, !noalias !3090, !noundef !718 ; 2 uses
  %i.ft = icmp ult i64 %.sroa.018.018.i, %i.fs, !dbg !3531
  br i1 %i.ft, label %.lr.ph21.i, label %._crit_edge.i, !dbg !3531

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fj, i64 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !3522, !noalias !3090
  unreachable, !dbg !3522

bb.bg:                                            ; preds = %.lr.ph21.i
  %i.fu = add i64 %.sroa.07.219.i, -8, !dbg !3532
    #dbg_value(i64 %i.fu, !3070, !DIExpression(), !2848)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.020.i, 1, !dbg !3529 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !3304, !DIExpression(), !2924)
    #dbg_value(i64 %.sroa.018.0.i, !3301, !DIExpression(), !2921)
    #dbg_value(i64 %.sroa.018.0.i, !3297, !DIExpression(), !2918)
    #dbg_value(i64 %.sroa.018.0.i, !3075, !DIExpression(), !2916)
    #dbg_value(ptr %.val, !3296, !DIExpression(), !2952)
    #dbg_value(ptr %.val, !3293, !DIExpression(), !2953)
    #dbg_value(ptr %.val, !3290, !DIExpression(), !2954)
    #dbg_value(ptr %.val, !3307, !DIExpression(), !2956)
    #dbg_value(i64 %.sroa.018.0.i, !3297, !DIExpression(), !2952)
    #dbg_value(i64 %.sroa.018.0.i, !3301, !DIExpression(), !2957)
    #dbg_value(i64 %.sroa.018.0.i, !3304, !DIExpression(), !2958)
  %i.fv = load i64, ptr %i.l, align 8, !dbg !3530, !noalias !3090, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !3302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2957)
    #dbg_value(ptr poison, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2958)
    #dbg_value(i64 %i.fv, !3302, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2957)
    #dbg_value(i64 %i.fv, !3305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2958)
  %i.fw = icmp ult i64 %.sroa.018.0.i, %i.fv, !dbg !3531
  br i1 %i.fw, label %.lr.ph21.i, label %._crit_edge.i, !dbg !3531

.lr.ph21.i:                                       ; preds = %bb.be, %bb.bg
  %.sroa.018.020.i = phi i64 [ %.sroa.018.0.i, %bb.bg ], [ %.sroa.018.018.i, %bb.be ] ; 2 uses
  %.sroa.07.219.i = phi i64 [ %i.fu, %bb.bg ], [ %.sroa.07.1369.i, %bb.be ] ; 3 uses
    #dbg_value(i64 %.sroa.07.219.i, !3070, !DIExpression(), !2848)
  %i.fx = load ptr, ptr %i.m, align 8, !dbg !3533, !noalias !3090, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fx, !3302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2957)
    #dbg_value(ptr %i.fx, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2958)
  %i.fy = and i64 %.sroa.07.219.i, 56, !dbg !3534
  %i.fz = lshr i64 %i.dx, %i.fy, !dbg !3534
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.018.020.i, !dbg !3535
  %i.gb = trunc i64 %i.fz to i8, !dbg !3536
  store i8 %i.gb, ptr %i.ga, align 1, !dbg !3536, !noalias !3090
    #dbg_value(i64 %.sroa.018.020.i, !3075, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2916)
    #dbg_value(i64 %.sroa.018.020.i, !3297, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2918)
    #dbg_value(i64 %.sroa.018.020.i, !3301, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2921)
    #dbg_value(i64 %.sroa.018.020.i, !3304, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2924)
  %i.gc = icmp eq i64 %.sroa.07.219.i, 0, !dbg !3537
    #dbg_value(i64 %.sroa.07.219.i, !3070, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !2848)
  br i1 %i.gc, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.bg, !dbg !3537

._crit_edge.i:                                    ; preds = %bb.bg, %bb.be
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.018.i, %bb.be ], [ %.sroa.018.0.i, %bb.bg ], !dbg !3529
  %.lcssa.i = phi i64 [ %i.fs, %bb.be ], [ %i.fv, %bb.bg ], !dbg !3530
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !3531, !noalias !3090
  unreachable, !dbg !3531

bb.bh:                                            ; preds = %bb.bd
  %i.gd = load ptr, ptr %i.m, align 8, !dbg !3538, !noalias !3090, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.gd, !3302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2921)
    #dbg_value(ptr %i.gd, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2924)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fh, !dbg !3539
  %i.gf = trunc nuw nsw i64 %i.dx to i8, !dbg !3540
  store i8 %i.gf, ptr %i.ge, align 1, !dbg !3540, !noalias !3090
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairE0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !3541

bb.bi:                                            ; preds = %bb.bd
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fh, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !3523, !noalias !3090
  unreachable, !dbg !3523

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairE0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph21.i, %bb.bh
  ret void, !dbg !3542
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs0_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3545 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !4030, !DIExpression(), !3598)
    #dbg_value(ptr poison, !4034, !DIExpression(), !3599)
    #dbg_value(ptr poison, !4038, !DIExpression(), !3600)
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !4128, !DIExpression(), !3608)
    #dbg_value(ptr poison, !4132, !DIExpression(), !3609)
    #dbg_value(ptr poison, !4136, !DIExpression(), !3610)
  %i.j = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !4027, !DIExpression(), !4139)
    #dbg_declare(ptr %1, !4028, !DIExpression(), !4140)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !4340
  %.val = load ptr, ptr %0, align 8, !dbg !4341, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4141), !dbg !4341
    #dbg_value(ptr poison, !4113, !DIExpression(), !3613)
    #dbg_declare(ptr %1, !4114, !DIExpression(), !3614)
end_hunk_0
begin_hunk_1_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs0_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4268, !DIExpression(), !3826)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4265, !DIExpression(), !3828)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4281, !DIExpression(), !3830)
    #dbg_value(ptr poison, !4276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3811)
    #dbg_value(ptr poison, !4279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3814)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !4276, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3811)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !4279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3814)
  %i.bx = icmp ult i64 %i.bt, %.pre.i.i.i.i.i.i, !dbg !4418
  br i1 %i.bx, label %bb.s, label %.invoke.i.i.i.i, !dbg !4418

bb.q:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.x, align 8, !dbg !4419, !noalias !4158, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.by, !4276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3822)
    #dbg_value(ptr %i.by, !4279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3824)
  %i.bz = lshr exact i64 %.sroa.07.1341.i.i.i.i.i.i.i, 3, !dbg !4420
  %i.ca = trunc i64 %i.bz to i8, !dbg !4421
  %i.cb = add i8 %i.ca, 1, !dbg !4421
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv, !dbg !4422
  %i.cd = or i8 %i.cb, -128, !dbg !4423
  store i8 %i.cd, ptr %i.cc, align 1, !dbg !4423, !noalias !4158
    #dbg_value(i64 %i.bv, !4065, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3806)
    #dbg_value(i64 %i.bv, !4272, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3808)
    #dbg_value(i64 %i.bv, !4275, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3811)
    #dbg_value(i64 %i.bv, !4278, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3814)
  %.sroa.018.013.i.i.i.i.i.i.i = add nuw i64 %i.bv, 1, !dbg !4424 ; 3 uses
  %i.ce = load i64, ptr %i.w, align 8, !dbg !4425, !noalias !4158, !noundef !718 ; 2 uses
  %i.cf = icmp ult i64 %.sroa.018.013.i.i.i.i.i.i.i, %i.ce, !dbg !4426
  br i1 %i.cf, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !4426

bb.r:                                             ; preds = %.lr.ph16.i.i.i.i.i.i.i
  %i.cg = add i64 %.sroa.07.214.i.i.i.i.i.i.i, -8, !dbg !4427
    #dbg_value(i64 %i.cg, !4060, !DIExpression(), !3728)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.015.i.i.i.i.i.i.i, 1, !dbg !4424 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4278, !DIExpression(), !3814)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4275, !DIExpression(), !3811)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4272, !DIExpression(), !3808)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4065, !DIExpression(), !3806)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4271, !DIExpression(), !3842)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4268, !DIExpression(), !3843)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4265, !DIExpression(), !3844)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !4281, !DIExpression(), !3846)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4272, !DIExpression(), !3842)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4275, !DIExpression(), !3847)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !4278, !DIExpression(), !3848)
  %i.ch = load i64, ptr %i.w, align 8, !dbg !4425, !noalias !4158, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !4276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3847)
    #dbg_value(ptr poison, !4279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3848)
    #dbg_value(i64 %i.ch, !4276, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3847)
    #dbg_value(i64 %i.ch, !4279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3848)
  %i.ci = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.ch, !dbg !4426
  br i1 %i.ci, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !4426

.lr.ph16.i.i.i.i.i.i.i:                           ; preds = %bb.q, %bb.r
  %.sroa.018.015.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.07.214.i.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.r ], [ %.sroa.07.1341.i.i.i.i.i.i.i, %bb.q ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !4060, !DIExpression(), !3728)
  %i.cj = load ptr, ptr %i.x, align 8, !dbg !4428, !noalias !4158, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cj, !4276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3847)
    #dbg_value(ptr %i.cj, !4279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3848)
  %i.ck = and i64 %.sroa.07.214.i.i.i.i.i.i.i, 56, !dbg !4429
  %i.cl = lshr i64 %i.ag, %i.ck, !dbg !4429
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.018.015.i.i.i.i.i.i.i, !dbg !4430
  %i.cn = trunc i64 %i.cl to i8, !dbg !4431
  store i8 %i.cn, ptr %i.cm, align 1, !dbg !4431, !noalias !4158
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !4065, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3806)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !4272, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3808)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !4275, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3811)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !4278, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3814)
  %i.co = icmp eq i64 %.sroa.07.214.i.i.i.i.i.i.i, 0, !dbg !4432
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !4060, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !3728)
  br i1 %i.co, label %.loopexit.i.i.i, label %bb.r, !dbg !4432

bb.s:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.x, align 8, !dbg !4433, !noalias !4158, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cp, !4276, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3811)
    #dbg_value(ptr %i.cp, !4279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3814)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bt, !dbg !4434
  %i.cr = trunc nuw nsw i64 %i.ag to i8, !dbg !4435
  store i8 %i.cr, ptr %i.cq, align 1, !dbg !4435, !noalias !4158
  br label %.loopexit.i.i.i, !dbg !4436

.invoke.i.i.i.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cs = phi i64 [ %i.bt, %bb.p ], [ %i.bv, %bb.o ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.r ]
  %i.ct = phi i64 [ %.pre.i.i.i.i.i.i, %bb.p ], [ %i.bu, %bb.o ], [ %i.ce, %bb.q ], [ %i.ch, %bb.r ]
  %i.cu = phi ptr [ @4, %bb.p ], [ @2, %bb.o ], [ @3, %bb.q ], [ @3, %bb.r ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4437, !noalias !4158

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.e, %.invoke.i.i.i.i, %bb.l, %.noexc12.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %bb.d
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #11
          to label %.body.i.i.i unwind label %bb.t, !dbg !4438, !noalias !4158

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4439, !noalias !4158
  unreachable, !dbg !4439

bb.u:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4440, !noalias !4157
    #dbg_value(ptr %.val, !4295, !DIExpression(), !3862)
  store ptr %.val, ptr %i.g, align 8, !dbg !4441, !noalias !4157
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4441
  store i8 -1, ptr %i.cw, align 8, !dbg !4441, !noalias !4157
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.b, !dbg !4442, !noalias !4157

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4443, !noalias !4157
  br label %bb.d, !dbg !4444

.loopexit.i.i.i:                                  ; preds = %.lr.ph16.i.i.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4445, !noalias !4158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !4446, !noalias !4157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4438, !noalias !4158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4447, !noalias !4157
    #dbg_value(ptr %.val, !4295, !DIExpression(), !3865)
  store ptr %.val, ptr %i.e, align 8, !dbg !4448, !noalias !4157
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !4448
  store i8 -1, ptr %i.cx, align 8, !dbg !4448, !noalias !4157
    #dbg_value(ptr %i.f, !4301, !DIExpression(), !3868)
    #dbg_value(ptr %i.f, !4303, !DIExpression(), !3871)
    #dbg_value(ptr %i.f, !4305, !DIExpression(), !3874)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !4449
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !4449, !noalias !4157, !nonnull !718, !noundef !718
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !4450
  %i.db = load i64, ptr %i.da, align 8, !dbg !4450, !noalias !4157, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.db)
          to label %bb.x unwind label %bb.w, !dbg !4451, !noalias !4157

bb.w:                                             ; preds = %.loopexit.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #11
          to label %.body.i.i.i unwind label %bb.ad, !dbg !4452, !noalias !4157

bb.x:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4453, !noalias !4157
    #dbg_value(ptr %i.f, !1894, !DIExpression(), !3882)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.y, !dbg !4454, !noalias !4157

bb.y:                                             ; preds = %bb.x
  %i.dd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !1899, !DIExpression(), !3884)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.aa, !dbg !4455, !noalias !4157

bb.z:                                             ; preds = %bb.x
    #dbg_value(ptr %i.f, !1899, !DIExpression(), !3886)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !4456, !noalias !4157

bb.aa:                                            ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4454, !noalias !4157
  unreachable, !dbg !4454

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4452, !noalias !4157
    #dbg_value(ptr %i.i, !1753, !DIExpression(), !3888)
    #dbg_value(ptr %i.i, !1760, !DIExpression(), !3890)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.ab, !dbg !4457, !noalias !4157

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !1767, !DIExpression(), !3892)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i.i.i unwind label %bb.ac, !dbg !4458, !noalias !4157

bb.ac:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4457, !noalias !4157
  unreachable, !dbg !4457

common.resume.i.i.i:                              ; preds = %bb.ab, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.df, %bb.ab ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !4459

bb.ad:                                            ; preds = %bb.w, %.body.i.i.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4460, !noalias !4157
  unreachable, !dbg !4460

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.i, !1767, !DIExpression(), !3894)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !4461, !noalias !4157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !4345, !noalias !4157
    #dbg_value(ptr %.val, !4307, !DIExpression(), !3897)
  %i.di = load i64, ptr %i.k, align 8, !dbg !4462, !noalias !4141, !noundef !718 ; 6 uses
  %i.dj = icmp sgt i64 %i.di, -1, !dbg !4463
  call void @llvm.assume(i1 %i.dj), !dbg !4464
  %i.dk = sub nsw i64 %i.di, %i.dy, !dbg !4465    ; 4 uses
    #dbg_value(i64 %i.dk, !4119, !DIExpression(), !3898)
    #dbg_value(i64 56, !4121, !DIExpression(), !3899)
  %i.dl = icmp ult i64 %i.dk, 128, !dbg !4466     ; 2 uses
  br i1 %i.dl, label %.thread.i, label %.preheader.i, !dbg !4466

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !4467, !noalias !4141
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !4468

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ae, %bb.a
  %i.dm = load ptr, ptr %i.l, align 8, !dbg !4469, !alias.scope !4156, !noalias !4141, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dm, !1729, !DIExpression(), !3640)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.m, !dbg !4470
    #dbg_value(ptr %i.dn, !1702, !DIExpression(), !3903)
    #dbg_value(ptr %i.dn, !1788, !DIExpression(), !3905)
    #dbg_value(i8 -1, !1791, !DIExpression(), !3905)
  store i8 -1, ptr %i.dn, align 1, !dbg !4471, !noalias !4141
  %i.do = add i64 %i.m, 1, !dbg !4472             ; 4 uses
  store i64 %i.do, ptr %i.k, align 8, !dbg !4472, !alias.scope !4156, !noalias !4141
    #dbg_value(i32 2, !4116, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3628)
    #dbg_value(ptr %.val, !4143, !DIExpression(), !3618)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !3630)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !3632)
    #dbg_value(i8 -1, !1699, !DIExpression(), !3630)
    #dbg_value(i64 1, !1710, !DIExpression(), !3635)
    #dbg_value(i64 %i.do, !1700, !DIExpression(), !3638)
    #dbg_value(i64 %i.do, !1724, !DIExpression(), !3640)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !3641)
  %i.dp = load i64, ptr %.val, align 8, !dbg !4343, !range !1731, !alias.scope !4156, !noalias !4141, !noundef !718
  %i.dq = icmp eq i64 %i.do, %i.dp, !dbg !4344
  br i1 %i.dq, label %bb.af, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !4344

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !4467, !noalias !4141
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !4468

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.af, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.dr = load ptr, ptr %i.l, align 8, !dbg !4469, !alias.scope !4156, !noalias !4141, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dr, !1729, !DIExpression(), !3640)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do, !dbg !4470
    #dbg_value(ptr %i.ds, !1702, !DIExpression(), !3903)
    #dbg_value(ptr %i.ds, !1788, !DIExpression(), !3905)
    #dbg_value(i8 -1, !1791, !DIExpression(), !3905)
  store i8 -1, ptr %i.ds, align 1, !dbg !4471, !noalias !4141
  %i.dt = add i64 %i.m, 2, !dbg !4472             ; 4 uses
  store i64 %i.dt, ptr %i.k, align 8, !dbg !4472, !alias.scope !4156, !noalias !4141
    #dbg_value(i32 3, !4116, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3628)
    #dbg_value(ptr %.val, !4143, !DIExpression(), !3618)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !3630)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !3632)
    #dbg_value(i8 -1, !1699, !DIExpression(), !3630)
    #dbg_value(i64 1, !1710, !DIExpression(), !3635)
    #dbg_value(i64 %i.dt, !1700, !DIExpression(), !3638)
    #dbg_value(i64 %i.dt, !1724, !DIExpression(), !3640)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !3641)
  %i.du = load i64, ptr %.val, align 8, !dbg !4343, !range !1731, !alias.scope !4156, !noalias !4141, !noundef !718
  %i.dv = icmp eq i64 %i.dt, %i.du, !dbg !4344
  br i1 %i.dv, label %bb.ag, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !4344

bb.ag:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !4467, !noalias !4141
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !4468

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.ag, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.dw = load ptr, ptr %i.l, align 8, !dbg !4469, !alias.scope !4156, !noalias !4141, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dw, !1729, !DIExpression(), !3640)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dt, !dbg !4470
    #dbg_value(ptr %i.dx, !1702, !DIExpression(), !3903)
    #dbg_value(ptr %i.dx, !1788, !DIExpression(), !3905)
    #dbg_value(i8 -1, !1791, !DIExpression(), !3905)
  store i8 -1, ptr %i.dx, align 1, !dbg !4471, !noalias !4141
  %i.dy = add i64 %i.m, 3, !dbg !4472             ; 10 uses
  store i64 %i.dy, ptr %i.k, align 8, !dbg !4472, !alias.scope !4156, !noalias !4141
    #dbg_value(i32 3, !4116, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3628)
    #dbg_value(ptr %.val, !4307, !DIExpression(), !3907)
    #dbg_value(i64 %i.dy, !4117, !DIExpression(), !3908)
    #dbg_value(i64 %i.dy, !4154, !DIExpression(), !3627)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !4473, !alias.scope !4141, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !4105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3909)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4473
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !4473, !alias.scope !4141
    #dbg_value(i64 %.sroa.4.0.copyload.i, !4105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3909)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4473
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !4473, !alias.scope !4141 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !4105, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3909)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4473
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !4473, !alias.scope !4141 ; 3 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4105, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3909)
    #dbg_value(ptr poison, !4104, !DIExpression(), !3910)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !4093, !DIExpression(DW_OP_deref), !3911)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4094, !DIExpression(), !3911)
    #dbg_value(ptr poison, !4091, !DIExpression(), !3912)
    #dbg_value(ptr poison, !4298, !DIExpression(), !3914)
    #dbg_value(ptr poison, !4298, !DIExpression(), !3915)
    #dbg_value(ptr poison, !4298, !DIExpression(), !3916)
    #dbg_declare(ptr %i.i, !4095, !DIExpression(), !3917)
    #dbg_declare(ptr %i.f, !4096, !DIExpression(), !3918)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !4474, !noalias !4157
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !4475, !noalias !4157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !4476, !noalias !4157
    #dbg_value(ptr %.val, !4295, !DIExpression(), !3920)
  store ptr %.val, ptr %i.h, align 8, !dbg !4477, !noalias !4157
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !4477
  store i8 -1, ptr %i.dz, align 8, !dbg !4477, !noalias !4157
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.b, !dbg !4478, !noalias !4157

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.ed, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !4479 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !4121, !DIExpression(), !3899)
  %i.ea = and i64 %.sroa.07.0.i, 56, !dbg !4480
  %i.eb = lshr i64 %i.dk, %i.ea, !dbg !4480
  %i.ec = icmp eq i64 %i.eb, 0, !dbg !4480
  %i.ed = add i64 %.sroa.07.0.i, -8, !dbg !4481
    #dbg_value(i64 %i.ed, !4121, !DIExpression(), !3899)
  br i1 %i.ec, label %.preheader.i, label %bb.ah, !dbg !4480

bb.ah:                                            ; preds = %.preheader.i
  %i.ee = lshr exact i64 %.sroa.07.0.i, 3, !dbg !4482 ; 2 uses
  %i.ef = add nuw nsw i64 %i.ee, 2, !dbg !4483    ; 2 uses
    #dbg_value(i64 %i.ef, !4120, !DIExpression(), !3921)
    #dbg_value(i64 %.sroa.07.0.i, !4121, !DIExpression(), !3899)
  %i.eg = icmp eq i64 %.sroa.07.0.i, 0, !dbg !4484
  br i1 %i.eg, label %.thread.i, label %bb.ai, !dbg !4484

bb.ai:                                            ; preds = %bb.ah
  %.not.i = icmp eq i64 %i.ef, 3, !dbg !4485
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.aj, !dbg !4485

.thread.i:                                        ; preds = %bb.ah, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.dt, %bb.ah ], [ %i.do, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !4486 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.ah ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.ah ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs0_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !4123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !3922)
    #dbg_value(!DIArgList(i64 %i.dy, i64 %.sroa.02.06.i), !4122, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !3923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4487, !noalias !4141
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.dy), !dbg !4488, !noalias !4141
    #dbg_value(ptr %i.j, !1800, !DIExpression(), !3925)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j), !dbg !4489, !noalias !4141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !4490, !noalias !4141
  %.pre.pre = load i64, ptr %i.k, align 8, !dbg !4491, !noalias !4141
  br label %.loopexit7.i, !dbg !4492

bb.aj:                                            ; preds = %bb.ai
  %i.eh = add nsw i64 %i.ee, -1, !dbg !4493       ; 3 uses
    #dbg_value(i64 %i.eh, !4124, !DIExpression(), !3932)
  %i.ei = add nuw i64 %i.eh, %i.dy, !dbg !4494    ; 2 uses
    #dbg_value(i64 %i.ei, !4122, !DIExpression(), !3923)
    #dbg_value(i64 0, !4125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3933)
    #dbg_value(i64 %i.eh, !4125, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3933)
    #dbg_value(ptr undef, !4136, !DIExpression(), !3610)
    #dbg_value(ptr undef, !4132, !DIExpression(), !3609)
    #dbg_value(ptr undef, !4128, !DIExpression(), !3608)
    #dbg_value(ptr undef, !4129, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3934)
  %.not23.i = icmp eq i64 %i.eh, 0, !dbg !4495
  br i1 %.not23.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !4496

.lr.ph.i.preheader:                               ; preds = %bb.aj
  %i.ej = icmp samesign ult i64 %i.di, %i.dy
  br i1 %i.ej, label %bb.ak, label %.lr.ph.i, !dbg !4497, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ek = phi i64 [ %i.es, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.di, %.lr.ph.i.preheader ], !dbg !4498 ; 5 uses
  %.sroa.016.017.i = phi i64 [ %i.el, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.017.i, !4133, !DIExpression(), !3937)
    #dbg_value(i64 %.sroa.016.017.i, !4146, !DIExpression(), !3621)
    #dbg_value(i64 %.sroa.016.017.i, !4150, !DIExpression(), !3624)
  %i.el = add nuw i64 %.sroa.016.017.i, 1, !dbg !4499 ; 2 uses
    #dbg_value(i64 %i.el, !4125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3933)
    #dbg_value(ptr %.val, !4153, !DIExpression(), !3627)
  call void @llvm.experimental.noalias.scope.decl(metadata !4318), !dbg !4500
    #dbg_value(ptr %.val, !1839, !DIExpression(), !3940)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !3941)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !3943)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !3945)
    #dbg_value(i64 %i.dy, !1840, !DIExpression(), !3940)
    #dbg_value(i64 %i.dy, !1855, !DIExpression(), !3947)
    #dbg_value(i8 0, !1841, !DIExpression(), !3940)
    #dbg_value(i64 1, !1859, !DIExpression(), !3950)
    #dbg_value(i64 1, !1857, !DIExpression(), !3952)
    #dbg_value(i64 1, !1859, !DIExpression(), !3956)
    #dbg_value(i64 %i.ek, !1842, !DIExpression(), !3957)
  %i.em = icmp sgt i64 %i.ek, -1, !dbg !4501
  call void @llvm.assume(i1 %i.em), !dbg !4502
    #dbg_value(ptr %.val, !1862, !DIExpression(), !3958)
  %2 = load i64, ptr %.val, align 8, !dbg !4503, !range !1731, !alias.scope !4318, !noalias !4141, !noundef !718
  %3 = icmp eq i64 %i.ek, %2, !dbg !4504
  br i1 %3, label %bb.al, label %bb.am, !dbg !4504

bb.ak:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.dy, i64 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !4505, !noalias !4319
  unreachable, !dbg !4505

bb.al:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !4506, !noalias !4141
  br label %bb.am, !dbg !4507

bb.am:                                            ; preds = %bb.al, %.lr.ph.i
  %i.en = load ptr, ptr %i.l, align 8, !dbg !4508, !alias.scope !4318, !noalias !4141, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.en, !1856, !DIExpression(), !3947)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.dy, !dbg !4509 ; 3 uses
    #dbg_value(ptr %i.eo, !1843, !DIExpression(), !3962)
    #dbg_value(ptr %i.eo, !1856, !DIExpression(), !3952)
    #dbg_value(ptr %i.eo, !1868, !DIExpression(), !3964)
  %i.ep = icmp samesign ult i64 %i.dy, %i.ek, !dbg !4510
  br i1 %i.ep, label %bb.an, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !4510

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %i.eo, !1871, !DIExpression(), !3966)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1, !dbg !4511
    #dbg_value(ptr %i.eq, !1874, !DIExpression(), !3966)
  %i.er = sub nuw nsw i64 %i.ek, %i.dy, !dbg !4512
    #dbg_value(i64 %i.er, !1875, !DIExpression(), !3966)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr nonnull align 1 %i.eo, i64 %i.er, i1 false), !dbg !4513, !noalias !4141
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !4514

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.an, %bb.am
    #dbg_value(i8 0, !1869, !DIExpression(), !3964)
  store i8 0, ptr %i.eo, align 1, !dbg !4515, !noalias !4141
  %i.es = add nuw i64 %i.ek, 1, !dbg !4516        ; 3 uses
    #dbg_value(i64 %i.es, !1853, !DIExpression(), !3945)
  store i64 %i.es, ptr %i.k, align 8, !dbg !4517, !alias.scope !4318, !noalias !4141
    #dbg_value(i64 %i.el, !4125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3933)
    #dbg_value(ptr undef, !4136, !DIExpression(), !3610)
    #dbg_value(ptr undef, !4132, !DIExpression(), !3609)
    #dbg_value(ptr undef, !4128, !DIExpression(), !3608)
    #dbg_value(ptr undef, !4129, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3934)
  %exitcond.not.i = icmp eq i64 %i.el, %i.eh, !dbg !4495
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !4496

.loopexit7.thread.i:                              ; preds = %bb.aj, %bb.ai
  %.sroa.014.0.ph.i = phi i64 [ %i.ei, %bb.aj ], [ %i.dy, %bb.ai ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !4122, !DIExpression(), !3923)
  %i.et = add i64 %.sroa.014.0.ph.i, -3, !dbg !4518
    #dbg_value(i64 %i.et, !4126, !DIExpression(), !3967)
    #dbg_value(i64 %i.et, !4316, !DIExpression(), !3969)
    #dbg_value(i64 %i.et, !4320, !DIExpression(), !3972)
    #dbg_value(i64 %i.et, !4323, !DIExpression(), !3975)
  br label %bb.ao, !dbg !4519

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.es, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !4491 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.ef, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.ei, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !4520
    #dbg_value(i64 %.sroa.014.0.i, !4122, !DIExpression(), !3923)
  %i.eu = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !4518 ; 4 uses
    #dbg_value(i64 %i.eu, !4126, !DIExpression(), !3967)
    #dbg_value(i64 %i.eu, !4316, !DIExpression(), !3969)
    #dbg_value(i64 %i.eu, !4320, !DIExpression(), !3972)
    #dbg_value(i64 %i.eu, !4323, !DIExpression(), !3975)
  br i1 %i.dl, label %bb.ap, label %bb.ao, !dbg !4519

bb.ao:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.ev = phi i64 [ %i.di, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !4491 ; 2 uses
  %i.ew = phi i64 [ %i.et, %.loopexit7.thread.i ], [ %i.eu, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1369.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !4315, !DIExpression(), !3976)
    #dbg_value(ptr %.val, !4312, !DIExpression(), !3977)
    #dbg_value(ptr %.val, !4309, !DIExpression(), !3978)
    #dbg_value(ptr %.val, !4326, !DIExpression(), !3981)
    #dbg_value(i64 %i.ew, !4316, !DIExpression(), !3976)
    #dbg_value(i64 %i.ew, !4320, !DIExpression(), !3983)
    #dbg_value(i64 %i.ew, !4323, !DIExpression(), !3985)
    #dbg_value(ptr poison, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3983)
    #dbg_value(ptr poison, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3985)
    #dbg_value(i64 %i.ev, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3983)
    #dbg_value(i64 %i.ev, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3985)
  %i.ex = icmp ult i64 %i.ew, %i.ev, !dbg !4521
  br i1 %i.ex, label %bb.aq, label %bb.ar, !dbg !4521

bb.ap:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !4315, !DIExpression(), !3969)
    #dbg_value(ptr %.val, !4312, !DIExpression(), !3987)
    #dbg_value(ptr %.val, !4309, !DIExpression(), !3989)
    #dbg_value(ptr %.val, !4326, !DIExpression(), !3991)
    #dbg_value(ptr poison, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3972)
    #dbg_value(ptr poison, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3975)
    #dbg_value(i64 %.pre, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3972)
    #dbg_value(i64 %.pre, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3975)
  %i.ey = icmp ult i64 %i.eu, %.pre, !dbg !4522
  br i1 %i.ey, label %bb.at, label %bb.au, !dbg !4522

bb.aq:                                            ; preds = %bb.ao
  %i.ez = load ptr, ptr %i.l, align 8, !dbg !4523, !noalias !4141, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ez, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3983)
    #dbg_value(ptr %i.ez, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3985)
  %i.fa = lshr exact i64 %.sroa.07.1369.i, 3, !dbg !4524
  %i.fb = trunc i64 %i.fa to i8, !dbg !4525
  %i.fc = add i8 %i.fb, 1, !dbg !4525
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew, !dbg !4526
  %i.fe = or i8 %i.fc, -128, !dbg !4527
  store i8 %i.fe, ptr %i.fd, align 1, !dbg !4527, !noalias !4141
    #dbg_value(i64 %i.ew, !4126, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3967)
    #dbg_value(i64 %i.ew, !4316, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3969)
    #dbg_value(i64 %i.ew, !4320, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3972)
    #dbg_value(i64 %i.ew, !4323, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3975)
  %.sroa.018.018.i = add nuw i64 %i.ew, 1, !dbg !4528 ; 3 uses
  %i.ff = load i64, ptr %i.k, align 8, !dbg !4529, !noalias !4141, !noundef !718 ; 2 uses
  %i.fg = icmp ult i64 %.sroa.018.018.i, %i.ff, !dbg !4530
  br i1 %i.fg, label %.lr.ph21.i, label %._crit_edge.i, !dbg !4530

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ew, i64 noundef %i.ev, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !4521, !noalias !4141
  unreachable, !dbg !4521

bb.as:                                            ; preds = %.lr.ph21.i
  %i.fh = add i64 %.sroa.07.219.i, -8, !dbg !4531
    #dbg_value(i64 %i.fh, !4121, !DIExpression(), !3899)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.020.i, 1, !dbg !4528 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !4323, !DIExpression(), !3975)
    #dbg_value(i64 %.sroa.018.0.i, !4320, !DIExpression(), !3972)
    #dbg_value(i64 %.sroa.018.0.i, !4316, !DIExpression(), !3969)
    #dbg_value(i64 %.sroa.018.0.i, !4126, !DIExpression(), !3967)
    #dbg_value(ptr %.val, !4315, !DIExpression(), !4003)
    #dbg_value(ptr %.val, !4312, !DIExpression(), !4004)
    #dbg_value(ptr %.val, !4309, !DIExpression(), !4005)
    #dbg_value(ptr %.val, !4326, !DIExpression(), !4007)
    #dbg_value(i64 %.sroa.018.0.i, !4316, !DIExpression(), !4003)
    #dbg_value(i64 %.sroa.018.0.i, !4320, !DIExpression(), !4008)
    #dbg_value(i64 %.sroa.018.0.i, !4323, !DIExpression(), !4009)
  %i.fi = load i64, ptr %i.k, align 8, !dbg !4529, !noalias !4141, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4008)
    #dbg_value(ptr poison, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
    #dbg_value(i64 %i.fi, !4321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4008)
    #dbg_value(i64 %i.fi, !4324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4009)
  %i.fj = icmp ult i64 %.sroa.018.0.i, %i.fi, !dbg !4530
  br i1 %i.fj, label %.lr.ph21.i, label %._crit_edge.i, !dbg !4530

.lr.ph21.i:                                       ; preds = %bb.aq, %bb.as
  %.sroa.018.020.i = phi i64 [ %.sroa.018.0.i, %bb.as ], [ %.sroa.018.018.i, %bb.aq ] ; 2 uses
  %.sroa.07.219.i = phi i64 [ %i.fh, %bb.as ], [ %.sroa.07.1369.i, %bb.aq ] ; 3 uses
    #dbg_value(i64 %.sroa.07.219.i, !4121, !DIExpression(), !3899)
  %i.fk = load ptr, ptr %i.l, align 8, !dbg !4532, !noalias !4141, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fk, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4008)
    #dbg_value(ptr %i.fk, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4009)
  %i.fl = and i64 %.sroa.07.219.i, 56, !dbg !4533
  %i.fm = lshr i64 %i.dk, %i.fl, !dbg !4533
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.018.020.i, !dbg !4534
  %i.fo = trunc i64 %i.fm to i8, !dbg !4535
  store i8 %i.fo, ptr %i.fn, align 1, !dbg !4535, !noalias !4141
    #dbg_value(i64 %.sroa.018.020.i, !4126, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3967)
    #dbg_value(i64 %.sroa.018.020.i, !4316, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3969)
    #dbg_value(i64 %.sroa.018.020.i, !4320, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3972)
    #dbg_value(i64 %.sroa.018.020.i, !4323, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3975)
  %i.fp = icmp eq i64 %.sroa.07.219.i, 0, !dbg !4536
    #dbg_value(i64 %.sroa.07.219.i, !4121, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !3899)
  br i1 %i.fp, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs0_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.as, !dbg !4536

._crit_edge.i:                                    ; preds = %bb.as, %bb.aq
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.018.i, %bb.aq ], [ %.sroa.018.0.i, %bb.as ], !dbg !4528
  %.lcssa.i = phi i64 [ %i.ff, %bb.aq ], [ %i.fi, %bb.as ], !dbg !4529
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !4530, !noalias !4141
  unreachable, !dbg !4530

bb.at:                                            ; preds = %bb.ap
  %i.fq = load ptr, ptr %i.l, align 8, !dbg !4537, !noalias !4141, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fq, !4321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3972)
    #dbg_value(ptr %i.fq, !4324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3975)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.eu, !dbg !4538
  %i.fs = trunc nuw nsw i64 %i.dk to i8, !dbg !4539
  store i8 %i.fs, ptr %i.fr, align 1, !dbg !4539, !noalias !4141
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs0_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !4540

bb.au:                                            ; preds = %bb.ap
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !4522, !noalias !4141
  unreachable, !dbg !4522

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs0_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph21.i, %bb.at
  ret void, !dbg !4541
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs1_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4544 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !4824, !DIExpression(), !4567)
    #dbg_value(ptr poison, !4828, !DIExpression(), !4568)
    #dbg_value(ptr poison, !4832, !DIExpression(), !4569)
  %i.i = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !4821, !DIExpression(), !4858)
    #dbg_declare(ptr %1, !4822, !DIExpression(), !4859)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !4963
  %.val = load ptr, ptr %0, align 8, !dbg !4964, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4860), !dbg !4964
    #dbg_value(ptr poison, !4843, !DIExpression(), !4572)
    #dbg_declare(ptr %1, !4844, !DIExpression(), !4573)
    #dbg_value(i64 3, !4845, !DIExpression(), !4574)
    #dbg_value(i8 -1, !4861, !DIExpression(), !4577)
    #dbg_value(i64 1, !4864, !DIExpression(), !4580)
    #dbg_value(i64 1, !4868, !DIExpression(), !4583)
end_hunk_1
begin_hunk_2_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs1_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !4969, !noalias !4876
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.p = load i8, ptr %.sroa.5.0.copyload.i, align 1, !dbg !4970, !range !1732, !noalias !4876, !noundef !718
  %i.q = trunc nuw i8 %i.p to i1, !dbg !4970
  br i1 %i.q, label %bb.l, label %bb.d, !dbg !4970

bb.d:                                             ; preds = %bb.m, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4971, !noalias !4876
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i), "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i = load ptr, ptr %.sroa.7.0.copyload.i, align 8, !dbg !4972, !noalias !4876, !nonnull !718, !noundef !718
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 8, !dbg !4972
  %.val7.i.i.i = load i64, ptr %i.r, align 8, !dbg !4972, !noalias !4876, !noundef !718
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4615)
    #dbg_value(ptr poison, !4893, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4615)
    #dbg_declare(ptr %i.c, !4896, !DIExpression(), !4616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4973, !noalias !4901
  store i64 0, ptr %i.c, align 8, !dbg !4974, !noalias !4901
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4974
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !dbg !4974, !noalias !4901
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4974
  store i64 0, ptr %i.t, align 8, !dbg !4974, !noalias !4901
    #dbg_value(ptr %i.c, !4897, !DIExpression(), !4622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4975, !noalias !4901
  store ptr %i.c, ptr %i.b, align 8, !dbg !4975, !noalias !4901
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4975
  store i8 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !4975, !noalias !4901
    #dbg_value(ptr poison, !4902, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4625)
    #dbg_value(ptr poison, !4902, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 64), !4625)
    #dbg_value(ptr poison, !4906, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4625)
    #dbg_declare(ptr %i.b, !4905, !DIExpression(), !4626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4976, !noalias !4908
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 264, !dbg !4976
  invoke void @_RINvMsb_CscbFFjjIlwRm_5rcgenNtB6_11KeyIdMethod6deriveRShECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val7.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.j, !dbg !4977, !noalias !4909

.noexc.i.i.i.i:                                   ; preds = %bb.d
    #dbg_value(ptr %i.a, !4910, !DIExpression(), !4632)
    #dbg_value(ptr %i.a, !4912, !DIExpression(), !4635)
    #dbg_value(ptr %i.a, !4914, !DIExpression(), !4638)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4978
  %i.w = load ptr, ptr %i.v, align 8, !dbg !4978, !noalias !4908, !nonnull !718, !noundef !718
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4979
  %i.y = load i64, ptr %i.x, align 8, !dbg !4979, !noalias !4908, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.f unwind label %bb.e, !dbg !4980, !noalias !4909

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %.body.i.i.i.i unwind label %bb.i, !dbg !4981, !noalias !4916

bb.f:                                             ; preds = %.noexc.i.i.i.i
    #dbg_value(ptr %i.a, !1894, !DIExpression(), !4646)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i unwind label %bb.g, !dbg !4982, !noalias !4916

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !4648)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i.i unwind label %bb.h, !dbg !4983, !noalias !4916

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4982, !noalias !4916
  unreachable, !dbg !4982

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i: ; preds = %bb.f
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !4650)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.j, !dbg !4984, !noalias !4909

bb.i:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4985, !noalias !4916
  unreachable, !dbg !4985

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !4986

.body.i.i.i.i:                                    ; preds = %bb.j, %bb.g, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.aa, %bb.g ], [ %i.z, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #11
          to label %.body.i.i.i unwind label %bb.k, !dbg !4986, !noalias !4909

bb.k:                                             ; preds = %.body.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !4987, !noalias !4909
  unreachable, !dbg !4987

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4988, !noalias !4876
    #dbg_value(ptr %.val, !4917, !DIExpression(), !4655)
  store ptr %.val, ptr %i.f, align 8, !dbg !4989, !noalias !4876
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !4989
  store i8 -1, ptr %i.af, align 8, !dbg !4989, !noalias !4876
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.b, !dbg !4990, !noalias !4876

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4991, !noalias !4876
  br label %bb.d, !dbg !4992

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4981, !noalias !4908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4993, !noalias !4901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !4994, !noalias !4922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4986, !noalias !4901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4995, !noalias !4876
    #dbg_value(ptr %.val, !4917, !DIExpression(), !4658)
  store ptr %.val, ptr %i.d, align 8, !dbg !4996, !noalias !4876
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !4996
  store i8 -1, ptr %i.ag, align 8, !dbg !4996, !noalias !4876
    #dbg_value(ptr %i.e, !4924, !DIExpression(), !4661)
    #dbg_value(ptr %i.e, !4926, !DIExpression(), !4664)
    #dbg_value(ptr %i.e, !4928, !DIExpression(), !4667)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4997
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !4997, !noalias !4876, !nonnull !718, !noundef !718
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !4998
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !4998, !noalias !4876, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %bb.p unwind label %bb.o, !dbg !4999, !noalias !4876

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.v, !dbg !5000, !noalias !4876

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5001, !noalias !4876
    #dbg_value(ptr %i.e, !1894, !DIExpression(), !4675)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.r unwind label %bb.q, !dbg !5002, !noalias !4876

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !1899, !DIExpression(), !4677)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i.i unwind label %bb.s, !dbg !5003, !noalias !4876

bb.r:                                             ; preds = %bb.p
    #dbg_value(ptr %i.e, !1899, !DIExpression(), !4679)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !5004, !noalias !4876

bb.s:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5002, !noalias !4876
  unreachable, !dbg !5002

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5000, !noalias !4876
    #dbg_value(ptr %i.h, !1753, !DIExpression(), !4681)
    #dbg_value(ptr %i.h, !1760, !DIExpression(), !4683)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.t, !dbg !5005, !noalias !4876

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !1767, !DIExpression(), !4685)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i.i.i unwind label %bb.u, !dbg !5006, !noalias !4876

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5005, !noalias !4876
  unreachable, !dbg !5005

common.resume.i.i.i:                              ; preds = %bb.t, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.t ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !5007

bb.v:                                             ; preds = %bb.o, %.body.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5008, !noalias !4876
  unreachable, !dbg !5008

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.h, !1767, !DIExpression(), !4687)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !5009, !noalias !4876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !4968, !noalias !4876
    #dbg_value(ptr %.val, !4930, !DIExpression(), !4690)
  %i.ar = load i64, ptr %i.j, align 8, !dbg !5010, !noalias !4860, !noundef !718 ; 6 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !5011
  call void @llvm.assume(i1 %i.as), !dbg !5012
  %i.at = sub nsw i64 %i.ar, %i.bh, !dbg !5013    ; 4 uses
    #dbg_value(i64 %i.at, !4849, !DIExpression(), !4691)
    #dbg_value(i64 56, !4851, !DIExpression(), !4692)
  %i.au = icmp ult i64 %i.at, 128, !dbg !5014     ; 2 uses
  br i1 %i.au, label %.thread.i, label %.preheader.i, !dbg !5014

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5015, !noalias !4860
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5016

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.w, %bb.a
  %i.av = load ptr, ptr %i.k, align 8, !dbg !5017, !alias.scope !4875, !noalias !4860, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.av, !1729, !DIExpression(), !4599)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.l, !dbg !5018
    #dbg_value(ptr %i.aw, !1702, !DIExpression(), !4696)
    #dbg_value(ptr %i.aw, !1788, !DIExpression(), !4698)
    #dbg_value(i8 -1, !1791, !DIExpression(), !4698)
  store i8 -1, ptr %i.aw, align 1, !dbg !5019, !noalias !4860
  %i.ax = add i64 %i.l, 1, !dbg !5020             ; 4 uses
  store i64 %i.ax, ptr %i.j, align 8, !dbg !5020, !alias.scope !4875, !noalias !4860
    #dbg_value(i32 2, !4846, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4587)
    #dbg_value(ptr %.val, !4862, !DIExpression(), !4577)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !4589)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !4591)
    #dbg_value(i8 -1, !1699, !DIExpression(), !4589)
    #dbg_value(i64 1, !1710, !DIExpression(), !4594)
    #dbg_value(i64 %i.ax, !1700, !DIExpression(), !4597)
    #dbg_value(i64 %i.ax, !1724, !DIExpression(), !4599)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !4600)
  %i.ay = load i64, ptr %.val, align 8, !dbg !4966, !range !1731, !alias.scope !4875, !noalias !4860, !noundef !718
  %i.az = icmp eq i64 %i.ax, %i.ay, !dbg !4967
  br i1 %i.az, label %bb.x, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !4967

bb.x:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5015, !noalias !4860
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !5016

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.x, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ba = load ptr, ptr %i.k, align 8, !dbg !5017, !alias.scope !4875, !noalias !4860, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ba, !1729, !DIExpression(), !4599)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax, !dbg !5018
    #dbg_value(ptr %i.bb, !1702, !DIExpression(), !4696)
    #dbg_value(ptr %i.bb, !1788, !DIExpression(), !4698)
    #dbg_value(i8 -1, !1791, !DIExpression(), !4698)
  store i8 -1, ptr %i.bb, align 1, !dbg !5019, !noalias !4860
  %i.bc = add i64 %i.l, 2, !dbg !5020             ; 4 uses
  store i64 %i.bc, ptr %i.j, align 8, !dbg !5020, !alias.scope !4875, !noalias !4860
    #dbg_value(i32 3, !4846, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4587)
    #dbg_value(ptr %.val, !4862, !DIExpression(), !4577)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !4589)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !4591)
    #dbg_value(i8 -1, !1699, !DIExpression(), !4589)
    #dbg_value(i64 1, !1710, !DIExpression(), !4594)
    #dbg_value(i64 %i.bc, !1700, !DIExpression(), !4597)
    #dbg_value(i64 %i.bc, !1724, !DIExpression(), !4599)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !4600)
  %i.bd = load i64, ptr %.val, align 8, !dbg !4966, !range !1731, !alias.scope !4875, !noalias !4860, !noundef !718
  %i.be = icmp eq i64 %i.bc, %i.bd, !dbg !4967
  br i1 %i.be, label %bb.y, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !4967

bb.y:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5015, !noalias !4860
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !5016

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.y, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.bf = load ptr, ptr %i.k, align 8, !dbg !5017, !alias.scope !4875, !noalias !4860, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bf, !1729, !DIExpression(), !4599)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc, !dbg !5018
    #dbg_value(ptr %i.bg, !1702, !DIExpression(), !4696)
    #dbg_value(ptr %i.bg, !1788, !DIExpression(), !4698)
    #dbg_value(i8 -1, !1791, !DIExpression(), !4698)
  store i8 -1, ptr %i.bg, align 1, !dbg !5019, !noalias !4860
  %i.bh = add i64 %i.l, 3, !dbg !5020             ; 10 uses
  store i64 %i.bh, ptr %i.j, align 8, !dbg !5020, !alias.scope !4875, !noalias !4860
    #dbg_value(i32 3, !4846, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4587)
    #dbg_value(ptr %.val, !4930, !DIExpression(), !4700)
    #dbg_value(i64 %i.bh, !4847, !DIExpression(), !4701)
    #dbg_value(i64 %i.bh, !4873, !DIExpression(), !4586)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !5021, !alias.scope !4860, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !4891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4702)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5021
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5021, !alias.scope !4860
    #dbg_value(i64 %.sroa.4.0.copyload.i, !4891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4702)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5021
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !5021, !alias.scope !4860 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !4891, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4702)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5021
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !5021, !alias.scope !4860 ; 2 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4891, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4702)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !5021
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !5021, !alias.scope !4860 ; 3 uses
    #dbg_value(ptr %.sroa.7.0.copyload.i, !4891, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !4702)
    #dbg_value(ptr poison, !4890, !DIExpression(), !4703)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !4881, !DIExpression(DW_OP_deref), !4704)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !4882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4704)
    #dbg_value(ptr %.sroa.7.0.copyload.i, !4882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4704)
    #dbg_value(ptr poison, !4879, !DIExpression(), !4705)
    #dbg_value(ptr poison, !4920, !DIExpression(), !4707)
    #dbg_value(ptr poison, !4920, !DIExpression(), !4708)
    #dbg_value(ptr poison, !4920, !DIExpression(), !4709)
    #dbg_declare(ptr %i.h, !4883, !DIExpression(), !4710)
    #dbg_declare(ptr %i.e, !4884, !DIExpression(), !4711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5022, !noalias !4876
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !5023, !noalias !4876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !5024, !noalias !4876
    #dbg_value(ptr %.val, !4917, !DIExpression(), !4713)
  store ptr %.val, ptr %i.g, align 8, !dbg !5025, !noalias !4876
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !5025
  store i8 -1, ptr %i.bi, align 8, !dbg !5025, !noalias !4876
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.c unwind label %bb.b, !dbg !5026, !noalias !4876

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.bm, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5027 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !4851, !DIExpression(), !4692)
  %i.bj = and i64 %.sroa.07.0.i, 56, !dbg !5028
  %i.bk = lshr i64 %i.at, %i.bj, !dbg !5028
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !5028
  %i.bm = add i64 %.sroa.07.0.i, -8, !dbg !5029
    #dbg_value(i64 %i.bm, !4851, !DIExpression(), !4692)
  br i1 %i.bl, label %.preheader.i, label %bb.z, !dbg !5028

bb.z:                                             ; preds = %.preheader.i
  %i.bn = lshr exact i64 %.sroa.07.0.i, 3, !dbg !5030 ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 2, !dbg !5031    ; 2 uses
    #dbg_value(i64 %i.bo, !4850, !DIExpression(), !4714)
    #dbg_value(i64 %.sroa.07.0.i, !4851, !DIExpression(), !4692)
  %i.bp = icmp eq i64 %.sroa.07.0.i, 0, !dbg !5032
  br i1 %i.bp, label %.thread.i, label %bb.aa, !dbg !5032

bb.aa:                                            ; preds = %bb.z
  %.not.i = icmp eq i64 %i.bo, 3, !dbg !5033
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.ab, !dbg !5033

.thread.i:                                        ; preds = %bb.z, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.bc, %bb.z ], [ %i.ax, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5034 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.z ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.z ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs1_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !4853, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !4715)
    #dbg_value(!DIArgList(i64 %i.bh, i64 %.sroa.02.06.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !4716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5035, !noalias !4860
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.bh), !dbg !5036, !noalias !4860
    #dbg_value(ptr %i.i, !1800, !DIExpression(), !4718)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i), !dbg !5037, !noalias !4860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5038, !noalias !4860
  %.pre.pre = load i64, ptr %i.j, align 8, !dbg !5039, !noalias !4860
  br label %.loopexit7.i, !dbg !5040

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add nsw i64 %i.bn, -1, !dbg !5041       ; 3 uses
    #dbg_value(i64 %i.bq, !4854, !DIExpression(), !4725)
  %i.br = add nuw i64 %i.bq, %i.bh, !dbg !5042    ; 2 uses
    #dbg_value(i64 %i.br, !4852, !DIExpression(), !4716)
    #dbg_value(i64 0, !4855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4726)
    #dbg_value(i64 %i.bq, !4855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4726)
    #dbg_value(ptr undef, !4832, !DIExpression(), !4569)
    #dbg_value(ptr undef, !4828, !DIExpression(), !4568)
    #dbg_value(ptr undef, !4824, !DIExpression(), !4567)
    #dbg_value(ptr undef, !4825, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4727)
  %.not18.i = icmp eq i64 %i.bq, 0, !dbg !5043
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !5044

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %i.bs = icmp samesign ult i64 %i.ar, %i.bh
  br i1 %i.bs, label %bb.ac, label %.lr.ph.i, !dbg !5045, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.bt = phi i64 [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.ar, %.lr.ph.i.preheader ], !dbg !5046 ; 5 uses
  %.sroa.016.012.i = phi i64 [ %i.bu, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.012.i, !4829, !DIExpression(), !4730)
    #dbg_value(i64 %.sroa.016.012.i, !4865, !DIExpression(), !4580)
    #dbg_value(i64 %.sroa.016.012.i, !4869, !DIExpression(), !4583)
  %i.bu = add nuw i64 %.sroa.016.012.i, 1, !dbg !5047 ; 2 uses
    #dbg_value(i64 %i.bu, !4855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4726)
    #dbg_value(ptr %.val, !4872, !DIExpression(), !4586)
  call void @llvm.experimental.noalias.scope.decl(metadata !4941), !dbg !5048
    #dbg_value(ptr %.val, !1839, !DIExpression(), !4733)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !4734)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !4736)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !4738)
    #dbg_value(i64 %i.bh, !1840, !DIExpression(), !4733)
    #dbg_value(i64 %i.bh, !1855, !DIExpression(), !4740)
    #dbg_value(i8 0, !1841, !DIExpression(), !4733)
    #dbg_value(i64 1, !1859, !DIExpression(), !4743)
    #dbg_value(i64 1, !1857, !DIExpression(), !4745)
    #dbg_value(i64 1, !1859, !DIExpression(), !4749)
    #dbg_value(i64 %i.bt, !1842, !DIExpression(), !4750)
  %i.bv = icmp sgt i64 %i.bt, -1, !dbg !5049
  call void @llvm.assume(i1 %i.bv), !dbg !5050
    #dbg_value(ptr %.val, !1862, !DIExpression(), !4751)
  %2 = load i64, ptr %.val, align 8, !dbg !5051, !range !1731, !alias.scope !4941, !noalias !4860, !noundef !718
  %3 = icmp eq i64 %i.bt, %2, !dbg !5052
  br i1 %3, label %bb.ad, label %bb.ae, !dbg !5052

bb.ac:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.bh, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !5053, !noalias !4942
  unreachable, !dbg !5053

bb.ad:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5054, !noalias !4860
  br label %bb.ae, !dbg !5055

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i
  %i.bw = load ptr, ptr %i.k, align 8, !dbg !5056, !alias.scope !4941, !noalias !4860, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bw, !1856, !DIExpression(), !4740)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bh, !dbg !5057 ; 3 uses
    #dbg_value(ptr %i.bx, !1843, !DIExpression(), !4755)
    #dbg_value(ptr %i.bx, !1856, !DIExpression(), !4745)
    #dbg_value(ptr %i.bx, !1868, !DIExpression(), !4757)
  %i.by = icmp samesign ult i64 %i.bh, %i.bt, !dbg !5058
  br i1 %i.by, label %bb.af, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5058

bb.af:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.bx, !1871, !DIExpression(), !4759)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1, !dbg !5059
    #dbg_value(ptr %i.bz, !1874, !DIExpression(), !4759)
  %i.ca = sub nuw nsw i64 %i.bt, %i.bh, !dbg !5060
    #dbg_value(i64 %i.ca, !1875, !DIExpression(), !4759)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.bx, i64 %i.ca, i1 false), !dbg !5061, !noalias !4860
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5062

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.af, %bb.ae
    #dbg_value(i8 0, !1869, !DIExpression(), !4757)
  store i8 0, ptr %i.bx, align 1, !dbg !5063, !noalias !4860
  %i.cb = add nuw i64 %i.bt, 1, !dbg !5064        ; 3 uses
    #dbg_value(i64 %i.cb, !1853, !DIExpression(), !4738)
  store i64 %i.cb, ptr %i.j, align 8, !dbg !5065, !alias.scope !4941, !noalias !4860
    #dbg_value(i64 %i.bu, !4855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4726)
    #dbg_value(ptr undef, !4832, !DIExpression(), !4569)
    #dbg_value(ptr undef, !4828, !DIExpression(), !4568)
    #dbg_value(ptr undef, !4824, !DIExpression(), !4567)
    #dbg_value(ptr undef, !4825, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4727)
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bq, !dbg !5043
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !5044

.loopexit7.thread.i:                              ; preds = %bb.ab, %bb.aa
  %.sroa.014.0.ph.i = phi i64 [ %i.br, %bb.ab ], [ %i.bh, %bb.aa ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !4852, !DIExpression(), !4716)
  %i.cc = add i64 %.sroa.014.0.ph.i, -3, !dbg !5066
    #dbg_value(i64 %i.cc, !4856, !DIExpression(), !4760)
    #dbg_value(i64 %i.cc, !4939, !DIExpression(), !4762)
    #dbg_value(i64 %i.cc, !4943, !DIExpression(), !4765)
    #dbg_value(i64 %i.cc, !4946, !DIExpression(), !4768)
  br label %bb.ag, !dbg !5067

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5039 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.bo, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.br, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5068
    #dbg_value(i64 %.sroa.014.0.i, !4852, !DIExpression(), !4716)
  %i.cd = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !5066 ; 4 uses
    #dbg_value(i64 %i.cd, !4856, !DIExpression(), !4760)
    #dbg_value(i64 %i.cd, !4939, !DIExpression(), !4762)
    #dbg_value(i64 %i.cd, !4943, !DIExpression(), !4765)
    #dbg_value(i64 %i.cd, !4946, !DIExpression(), !4768)
  br i1 %i.au, label %bb.ah, label %bb.ag, !dbg !5067

bb.ag:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.ce = phi i64 [ %i.ar, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !5039 ; 2 uses
  %i.cf = phi i64 [ %i.cc, %.loopexit7.thread.i ], [ %i.cd, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1341.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !4938, !DIExpression(), !4769)
    #dbg_value(ptr %.val, !4935, !DIExpression(), !4770)
    #dbg_value(ptr %.val, !4932, !DIExpression(), !4771)
    #dbg_value(ptr %.val, !4949, !DIExpression(), !4774)
    #dbg_value(i64 %i.cf, !4939, !DIExpression(), !4769)
    #dbg_value(i64 %i.cf, !4943, !DIExpression(), !4776)
    #dbg_value(i64 %i.cf, !4946, !DIExpression(), !4778)
    #dbg_value(ptr poison, !4944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4776)
    #dbg_value(ptr poison, !4947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4778)
    #dbg_value(i64 %i.ce, !4944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4776)
    #dbg_value(i64 %i.ce, !4947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4778)
  %i.cg = icmp ult i64 %i.cf, %i.ce, !dbg !5069
  br i1 %i.cg, label %bb.ai, label %bb.aj, !dbg !5069

bb.ah:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !4938, !DIExpression(), !4762)
    #dbg_value(ptr %.val, !4935, !DIExpression(), !4780)
    #dbg_value(ptr %.val, !4932, !DIExpression(), !4782)
    #dbg_value(ptr %.val, !4949, !DIExpression(), !4784)
    #dbg_value(ptr poison, !4944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4765)
    #dbg_value(ptr poison, !4947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4768)
    #dbg_value(i64 %.pre, !4944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4765)
    #dbg_value(i64 %.pre, !4947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4768)
  %i.ch = icmp ult i64 %i.cd, %.pre, !dbg !5070
  br i1 %i.ch, label %bb.al, label %bb.am, !dbg !5070

bb.ai:                                            ; preds = %bb.ag
  %i.ci = load ptr, ptr %i.k, align 8, !dbg !5071, !noalias !4860, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ci, !4944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4776)
    #dbg_value(ptr %i.ci, !4947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4778)
  %i.cj = lshr exact i64 %.sroa.07.1341.i, 3, !dbg !5072
  %i.ck = trunc i64 %i.cj to i8, !dbg !5073
  %i.cl = add i8 %i.ck, 1, !dbg !5073
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf, !dbg !5074
  %i.cn = or i8 %i.cl, -128, !dbg !5075
  store i8 %i.cn, ptr %i.cm, align 1, !dbg !5075, !noalias !4860
    #dbg_value(i64 %i.cf, !4856, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4760)
    #dbg_value(i64 %i.cf, !4939, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4762)
    #dbg_value(i64 %i.cf, !4943, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4765)
    #dbg_value(i64 %i.cf, !4946, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4768)
  %.sroa.018.013.i = add nuw i64 %i.cf, 1, !dbg !5076 ; 3 uses
  %i.co = load i64, ptr %i.j, align 8, !dbg !5077, !noalias !4860, !noundef !718 ; 2 uses
  %i.cp = icmp ult i64 %.sroa.018.013.i, %i.co, !dbg !5078
  br i1 %i.cp, label %.lr.ph16.i, label %._crit_edge.i, !dbg !5078

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !5069, !noalias !4860
  unreachable, !dbg !5069

bb.ak:                                            ; preds = %.lr.ph16.i
  %i.cq = add i64 %.sroa.07.214.i, -8, !dbg !5079
    #dbg_value(i64 %i.cq, !4851, !DIExpression(), !4692)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.015.i, 1, !dbg !5076 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !4946, !DIExpression(), !4768)
    #dbg_value(i64 %.sroa.018.0.i, !4943, !DIExpression(), !4765)
    #dbg_value(i64 %.sroa.018.0.i, !4939, !DIExpression(), !4762)
    #dbg_value(i64 %.sroa.018.0.i, !4856, !DIExpression(), !4760)
    #dbg_value(ptr %.val, !4938, !DIExpression(), !4796)
    #dbg_value(ptr %.val, !4935, !DIExpression(), !4797)
    #dbg_value(ptr %.val, !4932, !DIExpression(), !4798)
    #dbg_value(ptr %.val, !4949, !DIExpression(), !4800)
    #dbg_value(i64 %.sroa.018.0.i, !4939, !DIExpression(), !4796)
    #dbg_value(i64 %.sroa.018.0.i, !4943, !DIExpression(), !4801)
    #dbg_value(i64 %.sroa.018.0.i, !4946, !DIExpression(), !4802)
  %i.cr = load i64, ptr %i.j, align 8, !dbg !5077, !noalias !4860, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !4944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4801)
    #dbg_value(ptr poison, !4947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4802)
    #dbg_value(i64 %i.cr, !4944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4801)
    #dbg_value(i64 %i.cr, !4947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4802)
  %i.cs = icmp ult i64 %.sroa.018.0.i, %i.cr, !dbg !5078
  br i1 %i.cs, label %.lr.ph16.i, label %._crit_edge.i, !dbg !5078

.lr.ph16.i:                                       ; preds = %bb.ai, %bb.ak
  %.sroa.018.015.i = phi i64 [ %.sroa.018.0.i, %bb.ak ], [ %.sroa.018.013.i, %bb.ai ] ; 2 uses
  %.sroa.07.214.i = phi i64 [ %i.cq, %bb.ak ], [ %.sroa.07.1341.i, %bb.ai ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i, !4851, !DIExpression(), !4692)
  %i.ct = load ptr, ptr %i.k, align 8, !dbg !5080, !noalias !4860, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ct, !4944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4801)
    #dbg_value(ptr %i.ct, !4947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4802)
  %i.cu = and i64 %.sroa.07.214.i, 56, !dbg !5081
  %i.cv = lshr i64 %i.at, %i.cu, !dbg !5081
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.018.015.i, !dbg !5082
  %i.cx = trunc i64 %i.cv to i8, !dbg !5083
  store i8 %i.cx, ptr %i.cw, align 1, !dbg !5083, !noalias !4860
    #dbg_value(i64 %.sroa.018.015.i, !4856, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4760)
    #dbg_value(i64 %.sroa.018.015.i, !4939, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4762)
    #dbg_value(i64 %.sroa.018.015.i, !4943, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4765)
    #dbg_value(i64 %.sroa.018.015.i, !4946, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4768)
  %i.cy = icmp eq i64 %.sroa.07.214.i, 0, !dbg !5084
    #dbg_value(i64 %.sroa.07.214.i, !4851, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !4692)
  br i1 %i.cy, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs1_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.ak, !dbg !5084

._crit_edge.i:                                    ; preds = %bb.ak, %bb.ai
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.013.i, %bb.ai ], [ %.sroa.018.0.i, %bb.ak ], !dbg !5076
  %.lcssa.i = phi i64 [ %i.co, %bb.ai ], [ %i.cr, %bb.ak ], !dbg !5077
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !5078, !noalias !4860
  unreachable, !dbg !5078

bb.al:                                            ; preds = %bb.ah
  %i.cz = load ptr, ptr %i.k, align 8, !dbg !5085, !noalias !4860, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cz, !4944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4765)
    #dbg_value(ptr %i.cz, !4947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4768)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cd, !dbg !5086
  %i.db = trunc nuw nsw i64 %i.at to i8, !dbg !5087
  store i8 %i.db, ptr %i.da, align 1, !dbg !5087, !noalias !4860
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs1_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !5088

bb.am:                                            ; preds = %bb.ah
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !5070, !noalias !4860
  unreachable, !dbg !5070

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs1_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph16.i, %bb.al
  ret void, !dbg !5089
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs2_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5092 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !5539, !DIExpression(), !5145)
    #dbg_value(ptr poison, !5543, !DIExpression(), !5146)
    #dbg_value(ptr poison, !5547, !DIExpression(), !5147)
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !5637, !DIExpression(), !5155)
    #dbg_value(ptr poison, !5641, !DIExpression(), !5156)
    #dbg_value(ptr poison, !5645, !DIExpression(), !5157)
  %i.k = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !5536, !DIExpression(), !5648)
    #dbg_declare(ptr %1, !5537, !DIExpression(), !5649)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !5780
  %.val = load ptr, ptr %0, align 8, !dbg !5781, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5650), !dbg !5781
    #dbg_value(ptr poison, !5622, !DIExpression(), !5160)
end_hunk_2
begin_hunk_3_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs2_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5708, !DIExpression(), !5334)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5705, !DIExpression(), !5336)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5721, !DIExpression(), !5338)
    #dbg_value(ptr poison, !5716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5319)
    #dbg_value(ptr poison, !5719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5322)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !5716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5319)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !5719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5322)
  %i.bv = icmp ult i64 %i.br, %.pre.i.i.i.i.i.i, !dbg !5861
  br i1 %i.bv, label %bb.s, label %.invoke.i.i.i.i, !dbg !5861

bb.q:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.x, align 8, !dbg !5862, !noalias !5667, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bw, !5716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5330)
    #dbg_value(ptr %i.bw, !5719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5332)
  %i.bx = lshr exact i64 %.sroa.07.1543.i.i.i.i.i.i.i, 3, !dbg !5863
  %i.by = trunc i64 %i.bx to i8, !dbg !5864
  %i.bz = add i8 %i.by, 1, !dbg !5864
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bt, !dbg !5865
  %i.cb = or i8 %i.bz, -128, !dbg !5866
  store i8 %i.cb, ptr %i.ca, align 1, !dbg !5866, !noalias !5667
    #dbg_value(i64 %i.bt, !5574, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5314)
    #dbg_value(i64 %i.bt, !5712, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5316)
    #dbg_value(i64 %i.bt, !5715, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5319)
    #dbg_value(i64 %i.bt, !5718, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5322)
  %.sroa.018.015.i.i.i.i.i.i.i = add nuw i64 %i.bt, 1, !dbg !5867 ; 3 uses
  %i.cc = load i64, ptr %i.w, align 8, !dbg !5868, !noalias !5667, !noundef !718 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.018.015.i.i.i.i.i.i.i, %i.cc, !dbg !5869
  br i1 %i.cd, label %.lr.ph18.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !5869

bb.r:                                             ; preds = %.lr.ph18.i.i.i.i.i.i.i
  %i.ce = add i64 %.sroa.07.216.i.i.i.i.i.i.i, -8, !dbg !5870
    #dbg_value(i64 %i.ce, !5569, !DIExpression(), !5251)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.017.i.i.i.i.i.i.i, 1, !dbg !5867 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5718, !DIExpression(), !5322)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5715, !DIExpression(), !5319)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5712, !DIExpression(), !5316)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5574, !DIExpression(), !5314)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5711, !DIExpression(), !5350)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5708, !DIExpression(), !5351)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5705, !DIExpression(), !5352)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !5721, !DIExpression(), !5354)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5712, !DIExpression(), !5350)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5715, !DIExpression(), !5355)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !5718, !DIExpression(), !5356)
  %i.cf = load i64, ptr %i.w, align 8, !dbg !5868, !noalias !5667, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !5716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5355)
    #dbg_value(ptr poison, !5719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5356)
    #dbg_value(i64 %i.cf, !5716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5355)
    #dbg_value(i64 %i.cf, !5719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5356)
  %i.cg = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.cf, !dbg !5869
  br i1 %i.cg, label %.lr.ph18.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !5869

.lr.ph18.i.i.i.i.i.i.i:                           ; preds = %bb.q, %bb.r
  %.sroa.018.017.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.018.015.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.07.216.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.r ], [ %.sroa.07.1543.i.i.i.i.i.i.i, %bb.q ] ; 3 uses
    #dbg_value(i64 %.sroa.07.216.i.i.i.i.i.i.i, !5569, !DIExpression(), !5251)
  %i.ch = load ptr, ptr %i.x, align 8, !dbg !5871, !noalias !5667, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ch, !5716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5355)
    #dbg_value(ptr %i.ch, !5719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5356)
  %i.ci = and i64 %.sroa.07.216.i.i.i.i.i.i.i, 56, !dbg !5872
  %i.cj = lshr i64 %i.ae, %i.ci, !dbg !5872
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.018.017.i.i.i.i.i.i.i, !dbg !5873
  %i.cl = trunc i64 %i.cj to i8, !dbg !5874
  store i8 %i.cl, ptr %i.ck, align 1, !dbg !5874, !noalias !5667
    #dbg_value(i64 %.sroa.018.017.i.i.i.i.i.i.i, !5574, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5314)
    #dbg_value(i64 %.sroa.018.017.i.i.i.i.i.i.i, !5712, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5316)
    #dbg_value(i64 %.sroa.018.017.i.i.i.i.i.i.i, !5715, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5319)
    #dbg_value(i64 %.sroa.018.017.i.i.i.i.i.i.i, !5718, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5322)
  %i.cm = icmp eq i64 %.sroa.07.216.i.i.i.i.i.i.i, 0, !dbg !5875
    #dbg_value(i64 %.sroa.07.216.i.i.i.i.i.i.i, !5569, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5251)
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r, !dbg !5875

bb.s:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.x, align 8, !dbg !5876, !noalias !5667, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cn, !5716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5319)
    #dbg_value(ptr %i.cn, !5719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5322)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.br, !dbg !5877
  %i.cp = trunc nuw nsw i64 %i.ae to i8, !dbg !5878
  store i8 %i.cp, ptr %i.co, align 1, !dbg !5878, !noalias !5667
  br label %.loopexit.i.i.i, !dbg !5879

.invoke.i.i.i.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cq = phi i64 [ %i.br, %bb.p ], [ %i.bt, %bb.o ], [ %.sroa.018.015.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.r ]
  %i.cr = phi i64 [ %.pre.i.i.i.i.i.i, %bb.p ], [ %i.bs, %bb.o ], [ %i.cc, %bb.q ], [ %i.cf, %bb.r ]
  %i.cs = phi ptr [ @4, %bb.p ], [ @2, %bb.o ], [ @3, %bb.q ], [ @3, %bb.r ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cq, i64 noundef %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5880, !noalias !5667

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %.invoke.i.i.i.i, %bb.l, %.noexc13.i.i.i.i, %.thread.i.i.i.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.t, !dbg !5881, !noalias !5667

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5882, !noalias !5667
  unreachable, !dbg !5882

bb.u:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5883, !noalias !5666
    #dbg_value(ptr %.val, !5735, !DIExpression(), !5370)
  store ptr %.val, ptr %i.h, align 8, !dbg !5884, !noalias !5666
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !5884
  store i8 -1, ptr %i.cu, align 8, !dbg !5884, !noalias !5666
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.b, !dbg !5885, !noalias !5666

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5886, !noalias !5666
  br label %bb.d, !dbg !5887

.loopexit.i.i.i:                                  ; preds = %.lr.ph18.i.i.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5888, !noalias !5667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !5889, !noalias !5666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5881, !noalias !5667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5890, !noalias !5666
    #dbg_value(ptr %.val, !5735, !DIExpression(), !5373)
  store ptr %.val, ptr %i.f, align 8, !dbg !5891, !noalias !5666
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !5891
  store i8 -1, ptr %i.cv, align 8, !dbg !5891, !noalias !5666
    #dbg_value(ptr %i.g, !5741, !DIExpression(), !5376)
    #dbg_value(ptr %i.g, !5743, !DIExpression(), !5379)
    #dbg_value(ptr %i.g, !5745, !DIExpression(), !5382)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !5892
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !5892, !noalias !5666, !nonnull !718, !noundef !718
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !5893
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !5893, !noalias !5666, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cz)
          to label %bb.x unwind label %bb.w, !dbg !5894, !noalias !5666

bb.w:                                             ; preds = %.loopexit.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %.body.i.i.i unwind label %bb.ad, !dbg !5895, !noalias !5666

bb.x:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !5896, !noalias !5666
    #dbg_value(ptr %i.g, !1894, !DIExpression(), !5390)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %bb.y, !dbg !5897, !noalias !5666

bb.y:                                             ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !5392)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i.i unwind label %bb.aa, !dbg !5898, !noalias !5666

bb.z:                                             ; preds = %bb.x
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !5394)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !5899, !noalias !5666

bb.aa:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5897, !noalias !5666
  unreachable, !dbg !5897

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5895, !noalias !5666
    #dbg_value(ptr %i.j, !1753, !DIExpression(), !5396)
    #dbg_value(ptr %i.j, !1760, !DIExpression(), !5398)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.ab, !dbg !5900, !noalias !5666

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !5400)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.ac, !dbg !5901, !noalias !5666

bb.ac:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5900, !noalias !5666
  unreachable, !dbg !5900

common.resume.i.i.i:                              ; preds = %bb.ab, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.dd, %bb.ab ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !5902

bb.ad:                                            ; preds = %bb.w, %.body.i.i.i
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5903, !noalias !5666
  unreachable, !dbg !5903

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !5402)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !5904, !noalias !5666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5785, !noalias !5666
    #dbg_value(ptr %.val, !5747, !DIExpression(), !5405)
  %i.dg = load i64, ptr %i.l, align 8, !dbg !5905, !noalias !5650, !noundef !718 ; 6 uses
  %i.dh = icmp sgt i64 %i.dg, -1, !dbg !5906
  call void @llvm.assume(i1 %i.dh), !dbg !5907
  %i.di = sub nsw i64 %i.dg, %i.dw, !dbg !5908    ; 4 uses
    #dbg_value(i64 %i.di, !5628, !DIExpression(), !5406)
    #dbg_value(i64 56, !5630, !DIExpression(), !5407)
  %i.dj = icmp ult i64 %i.di, 128, !dbg !5909     ; 2 uses
  br i1 %i.dj, label %.thread.i, label %.preheader.i, !dbg !5909

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5910, !noalias !5650
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5911

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ae, %bb.a
  %i.dk = load ptr, ptr %i.m, align 8, !dbg !5912, !alias.scope !5665, !noalias !5650, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dk, !1729, !DIExpression(), !5187)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.n, !dbg !5913
    #dbg_value(ptr %i.dl, !1702, !DIExpression(), !5411)
    #dbg_value(ptr %i.dl, !1788, !DIExpression(), !5413)
    #dbg_value(i8 -1, !1791, !DIExpression(), !5413)
  store i8 -1, ptr %i.dl, align 1, !dbg !5914, !noalias !5650
  %i.dm = add i64 %i.n, 1, !dbg !5915             ; 4 uses
  store i64 %i.dm, ptr %i.l, align 8, !dbg !5915, !alias.scope !5665, !noalias !5650
    #dbg_value(i32 2, !5625, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5175)
    #dbg_value(ptr %.val, !5652, !DIExpression(), !5165)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !5177)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !5179)
    #dbg_value(i8 -1, !1699, !DIExpression(), !5177)
    #dbg_value(i64 1, !1710, !DIExpression(), !5182)
    #dbg_value(i64 %i.dm, !1700, !DIExpression(), !5185)
    #dbg_value(i64 %i.dm, !1724, !DIExpression(), !5187)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !5188)
  %i.dn = load i64, ptr %.val, align 8, !dbg !5783, !range !1731, !alias.scope !5665, !noalias !5650, !noundef !718
  %i.do = icmp eq i64 %i.dm, %i.dn, !dbg !5784
  br i1 %i.do, label %bb.af, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !5784

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5910, !noalias !5650
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !5911

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.af, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.dp = load ptr, ptr %i.m, align 8, !dbg !5912, !alias.scope !5665, !noalias !5650, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dp, !1729, !DIExpression(), !5187)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm, !dbg !5913
    #dbg_value(ptr %i.dq, !1702, !DIExpression(), !5411)
    #dbg_value(ptr %i.dq, !1788, !DIExpression(), !5413)
    #dbg_value(i8 -1, !1791, !DIExpression(), !5413)
  store i8 -1, ptr %i.dq, align 1, !dbg !5914, !noalias !5650
  %i.dr = add i64 %i.n, 2, !dbg !5915             ; 4 uses
  store i64 %i.dr, ptr %i.l, align 8, !dbg !5915, !alias.scope !5665, !noalias !5650
    #dbg_value(i32 3, !5625, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5175)
    #dbg_value(ptr %.val, !5652, !DIExpression(), !5165)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !5177)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !5179)
    #dbg_value(i8 -1, !1699, !DIExpression(), !5177)
    #dbg_value(i64 1, !1710, !DIExpression(), !5182)
    #dbg_value(i64 %i.dr, !1700, !DIExpression(), !5185)
    #dbg_value(i64 %i.dr, !1724, !DIExpression(), !5187)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !5188)
  %i.ds = load i64, ptr %.val, align 8, !dbg !5783, !range !1731, !alias.scope !5665, !noalias !5650, !noundef !718
  %i.dt = icmp eq i64 %i.dr, %i.ds, !dbg !5784
  br i1 %i.dt, label %bb.ag, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !5784

bb.ag:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5910, !noalias !5650
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !5911

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.ag, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.du = load ptr, ptr %i.m, align 8, !dbg !5912, !alias.scope !5665, !noalias !5650, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.du, !1729, !DIExpression(), !5187)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dr, !dbg !5913
    #dbg_value(ptr %i.dv, !1702, !DIExpression(), !5411)
    #dbg_value(ptr %i.dv, !1788, !DIExpression(), !5413)
    #dbg_value(i8 -1, !1791, !DIExpression(), !5413)
  store i8 -1, ptr %i.dv, align 1, !dbg !5914, !noalias !5650
  %i.dw = add i64 %i.n, 3, !dbg !5915             ; 10 uses
  store i64 %i.dw, ptr %i.l, align 8, !dbg !5915, !alias.scope !5665, !noalias !5650
    #dbg_value(i32 3, !5625, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5175)
    #dbg_value(ptr %.val, !5747, !DIExpression(), !5415)
    #dbg_value(i64 %i.dw, !5626, !DIExpression(), !5416)
    #dbg_value(i64 %i.dw, !5663, !DIExpression(), !5174)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !5916, !alias.scope !5650, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !5614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5417)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !5916
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5916, !alias.scope !5650
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5417)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5916
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !5916, !alias.scope !5650 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !5614, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5417)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5916
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !5916, !alias.scope !5650 ; 3 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5614, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5417)
    #dbg_value(ptr poison, !5613, !DIExpression(), !5418)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !5602, !DIExpression(DW_OP_deref), !5419)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5603, !DIExpression(), !5419)
    #dbg_value(ptr poison, !5600, !DIExpression(), !5420)
    #dbg_value(ptr poison, !5738, !DIExpression(), !5422)
    #dbg_value(ptr poison, !5738, !DIExpression(), !5423)
    #dbg_value(ptr poison, !5738, !DIExpression(), !5424)
    #dbg_declare(ptr %i.j, !5604, !DIExpression(), !5425)
    #dbg_declare(ptr %i.g, !5605, !DIExpression(), !5426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !5917, !noalias !5666
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !5918, !noalias !5666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5919, !noalias !5666
    #dbg_value(ptr %.val, !5735, !DIExpression(), !5428)
  store ptr %.val, ptr %i.i, align 8, !dbg !5920, !noalias !5666
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !5920
  store i8 -1, ptr %i.dx, align 8, !dbg !5920, !noalias !5666
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b, !dbg !5921, !noalias !5666

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.eb, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5922 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !5630, !DIExpression(), !5407)
  %i.dy = and i64 %.sroa.07.0.i, 56, !dbg !5923
  %i.dz = lshr i64 %i.di, %i.dy, !dbg !5923
  %i.ea = icmp eq i64 %i.dz, 0, !dbg !5923
  %i.eb = add i64 %.sroa.07.0.i, -8, !dbg !5924
    #dbg_value(i64 %i.eb, !5630, !DIExpression(), !5407)
  br i1 %i.ea, label %.preheader.i, label %bb.ah, !dbg !5923

bb.ah:                                            ; preds = %.preheader.i
  %i.ec = lshr exact i64 %.sroa.07.0.i, 3, !dbg !5925 ; 2 uses
  %i.ed = add nuw nsw i64 %i.ec, 2, !dbg !5926    ; 2 uses
    #dbg_value(i64 %i.ed, !5629, !DIExpression(), !5429)
    #dbg_value(i64 %.sroa.07.0.i, !5630, !DIExpression(), !5407)
  %i.ee = icmp eq i64 %.sroa.07.0.i, 0, !dbg !5927
  br i1 %i.ee, label %.thread.i, label %bb.ai, !dbg !5927

bb.ai:                                            ; preds = %bb.ah
  %.not.i = icmp eq i64 %i.ed, 3, !dbg !5928
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.aj, !dbg !5928

.thread.i:                                        ; preds = %bb.ah, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.dr, %bb.ah ], [ %i.dm, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5929 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.ah ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.ah ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs2_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !5632, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5430)
    #dbg_value(!DIArgList(i64 %i.dw, i64 %.sroa.02.06.i), !5631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !5930, !noalias !5650
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.dw), !dbg !5931, !noalias !5650
    #dbg_value(ptr %i.k, !1800, !DIExpression(), !5433)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k), !dbg !5932, !noalias !5650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !5933, !noalias !5650
  %.pre.pre = load i64, ptr %i.l, align 8, !dbg !5934, !noalias !5650
  br label %.loopexit7.i, !dbg !5935

bb.aj:                                            ; preds = %bb.ai
  %i.ef = add nsw i64 %i.ec, -1, !dbg !5936       ; 3 uses
    #dbg_value(i64 %i.ef, !5633, !DIExpression(), !5440)
  %i.eg = add nuw i64 %i.ef, %i.dw, !dbg !5937    ; 2 uses
    #dbg_value(i64 %i.eg, !5631, !DIExpression(), !5431)
    #dbg_value(i64 0, !5634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5441)
    #dbg_value(i64 %i.ef, !5634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5441)
    #dbg_value(ptr undef, !5645, !DIExpression(), !5157)
    #dbg_value(ptr undef, !5641, !DIExpression(), !5156)
    #dbg_value(ptr undef, !5637, !DIExpression(), !5155)
    #dbg_value(ptr undef, !5638, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5442)
  %.not20.i = icmp eq i64 %i.ef, 0, !dbg !5938
  br i1 %.not20.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !5939

.lr.ph.i.preheader:                               ; preds = %bb.aj
  %i.eh = icmp samesign ult i64 %i.dg, %i.dw
  br i1 %i.eh, label %bb.ak, label %.lr.ph.i, !dbg !5940, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ei = phi i64 [ %i.eq, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.dg, %.lr.ph.i.preheader ], !dbg !5941 ; 5 uses
  %.sroa.016.014.i = phi i64 [ %i.ej, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.014.i, !5642, !DIExpression(), !5445)
    #dbg_value(i64 %.sroa.016.014.i, !5655, !DIExpression(), !5168)
    #dbg_value(i64 %.sroa.016.014.i, !5659, !DIExpression(), !5171)
  %i.ej = add nuw i64 %.sroa.016.014.i, 1, !dbg !5942 ; 2 uses
    #dbg_value(i64 %i.ej, !5634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5441)
    #dbg_value(ptr %.val, !5662, !DIExpression(), !5174)
  call void @llvm.experimental.noalias.scope.decl(metadata !5758), !dbg !5943
    #dbg_value(ptr %.val, !1839, !DIExpression(), !5448)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !5449)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !5451)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !5453)
    #dbg_value(i64 %i.dw, !1840, !DIExpression(), !5448)
    #dbg_value(i64 %i.dw, !1855, !DIExpression(), !5455)
    #dbg_value(i8 0, !1841, !DIExpression(), !5448)
    #dbg_value(i64 1, !1859, !DIExpression(), !5458)
    #dbg_value(i64 1, !1857, !DIExpression(), !5460)
    #dbg_value(i64 1, !1859, !DIExpression(), !5464)
    #dbg_value(i64 %i.ei, !1842, !DIExpression(), !5465)
  %i.ek = icmp sgt i64 %i.ei, -1, !dbg !5944
  call void @llvm.assume(i1 %i.ek), !dbg !5945
    #dbg_value(ptr %.val, !1862, !DIExpression(), !5466)
  %2 = load i64, ptr %.val, align 8, !dbg !5946, !range !1731, !alias.scope !5758, !noalias !5650, !noundef !718
  %3 = icmp eq i64 %i.ei, %2, !dbg !5947
  br i1 %3, label %bb.al, label %bb.am, !dbg !5947

bb.ak:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.dw, i64 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !5948, !noalias !5759
  unreachable, !dbg !5948

bb.al:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !5949, !noalias !5650
  br label %bb.am, !dbg !5950

bb.am:                                            ; preds = %bb.al, %.lr.ph.i
  %i.el = load ptr, ptr %i.m, align 8, !dbg !5951, !alias.scope !5758, !noalias !5650, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.el, !1856, !DIExpression(), !5455)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.dw, !dbg !5952 ; 3 uses
    #dbg_value(ptr %i.em, !1843, !DIExpression(), !5470)
    #dbg_value(ptr %i.em, !1856, !DIExpression(), !5460)
    #dbg_value(ptr %i.em, !1868, !DIExpression(), !5472)
  %i.en = icmp samesign ult i64 %i.dw, %i.ei, !dbg !5953
  br i1 %i.en, label %bb.an, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5953

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %i.em, !1871, !DIExpression(), !5474)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1, !dbg !5954
    #dbg_value(ptr %i.eo, !1874, !DIExpression(), !5474)
  %i.ep = sub nuw nsw i64 %i.ei, %i.dw, !dbg !5955
    #dbg_value(i64 %i.ep, !1875, !DIExpression(), !5474)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 1 %i.em, i64 %i.ep, i1 false), !dbg !5956, !noalias !5650
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !5957

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.an, %bb.am
    #dbg_value(i8 0, !1869, !DIExpression(), !5472)
  store i8 0, ptr %i.em, align 1, !dbg !5958, !noalias !5650
  %i.eq = add nuw i64 %i.ei, 1, !dbg !5959        ; 3 uses
    #dbg_value(i64 %i.eq, !1853, !DIExpression(), !5453)
  store i64 %i.eq, ptr %i.l, align 8, !dbg !5960, !alias.scope !5758, !noalias !5650
    #dbg_value(i64 %i.ej, !5634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5441)
    #dbg_value(ptr undef, !5645, !DIExpression(), !5157)
    #dbg_value(ptr undef, !5641, !DIExpression(), !5156)
    #dbg_value(ptr undef, !5637, !DIExpression(), !5155)
    #dbg_value(ptr undef, !5638, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5442)
  %exitcond.not.i = icmp eq i64 %i.ej, %i.ef, !dbg !5938
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !5939

.loopexit7.thread.i:                              ; preds = %bb.aj, %bb.ai
  %.sroa.014.0.ph.i = phi i64 [ %i.eg, %bb.aj ], [ %i.dw, %bb.ai ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !5631, !DIExpression(), !5431)
  %i.er = add i64 %.sroa.014.0.ph.i, -3, !dbg !5961
    #dbg_value(i64 %i.er, !5635, !DIExpression(), !5475)
    #dbg_value(i64 %i.er, !5756, !DIExpression(), !5477)
    #dbg_value(i64 %i.er, !5760, !DIExpression(), !5480)
    #dbg_value(i64 %i.er, !5763, !DIExpression(), !5483)
  br label %bb.ao, !dbg !5962

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.eq, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5934 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.ed, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.eg, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !5963
    #dbg_value(i64 %.sroa.014.0.i, !5631, !DIExpression(), !5431)
  %i.es = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !5961 ; 4 uses
    #dbg_value(i64 %i.es, !5635, !DIExpression(), !5475)
    #dbg_value(i64 %i.es, !5756, !DIExpression(), !5477)
    #dbg_value(i64 %i.es, !5760, !DIExpression(), !5480)
    #dbg_value(i64 %i.es, !5763, !DIExpression(), !5483)
  br i1 %i.dj, label %bb.ap, label %bb.ao, !dbg !5962

bb.ao:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.et = phi i64 [ %i.dg, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !5934 ; 2 uses
  %i.eu = phi i64 [ %i.er, %.loopexit7.thread.i ], [ %i.es, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1363.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !5755, !DIExpression(), !5484)
    #dbg_value(ptr %.val, !5752, !DIExpression(), !5485)
    #dbg_value(ptr %.val, !5749, !DIExpression(), !5486)
    #dbg_value(ptr %.val, !5766, !DIExpression(), !5489)
    #dbg_value(i64 %i.eu, !5756, !DIExpression(), !5484)
    #dbg_value(i64 %i.eu, !5760, !DIExpression(), !5491)
    #dbg_value(i64 %i.eu, !5763, !DIExpression(), !5493)
    #dbg_value(ptr poison, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5491)
    #dbg_value(ptr poison, !5764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5493)
    #dbg_value(i64 %i.et, !5761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5491)
    #dbg_value(i64 %i.et, !5764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5493)
  %i.ev = icmp ult i64 %i.eu, %i.et, !dbg !5964
  br i1 %i.ev, label %bb.aq, label %bb.ar, !dbg !5964

bb.ap:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !5755, !DIExpression(), !5477)
    #dbg_value(ptr %.val, !5752, !DIExpression(), !5495)
    #dbg_value(ptr %.val, !5749, !DIExpression(), !5497)
    #dbg_value(ptr %.val, !5766, !DIExpression(), !5499)
    #dbg_value(ptr poison, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5480)
    #dbg_value(ptr poison, !5764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5483)
    #dbg_value(i64 %.pre, !5761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5480)
    #dbg_value(i64 %.pre, !5764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5483)
  %i.ew = icmp ult i64 %i.es, %.pre, !dbg !5965
  br i1 %i.ew, label %bb.at, label %bb.au, !dbg !5965

bb.aq:                                            ; preds = %bb.ao
  %i.ex = load ptr, ptr %i.m, align 8, !dbg !5966, !noalias !5650, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ex, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5491)
    #dbg_value(ptr %i.ex, !5764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5493)
  %i.ey = lshr exact i64 %.sroa.07.1363.i, 3, !dbg !5967
  %i.ez = trunc i64 %i.ey to i8, !dbg !5968
  %i.fa = add i8 %i.ez, 1, !dbg !5968
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu, !dbg !5969
  %i.fc = or i8 %i.fa, -128, !dbg !5970
  store i8 %i.fc, ptr %i.fb, align 1, !dbg !5970, !noalias !5650
    #dbg_value(i64 %i.eu, !5635, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5475)
    #dbg_value(i64 %i.eu, !5756, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5477)
    #dbg_value(i64 %i.eu, !5760, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5480)
    #dbg_value(i64 %i.eu, !5763, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5483)
  %.sroa.018.015.i = add nuw i64 %i.eu, 1, !dbg !5971 ; 3 uses
  %i.fd = load i64, ptr %i.l, align 8, !dbg !5972, !noalias !5650, !noundef !718 ; 2 uses
  %i.fe = icmp ult i64 %.sroa.018.015.i, %i.fd, !dbg !5973
  br i1 %i.fe, label %.lr.ph18.i, label %._crit_edge.i, !dbg !5973

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !5964, !noalias !5650
  unreachable, !dbg !5964

bb.as:                                            ; preds = %.lr.ph18.i
  %i.ff = add i64 %.sroa.07.216.i, -8, !dbg !5974
    #dbg_value(i64 %i.ff, !5630, !DIExpression(), !5407)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.017.i, 1, !dbg !5971 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !5763, !DIExpression(), !5483)
    #dbg_value(i64 %.sroa.018.0.i, !5760, !DIExpression(), !5480)
    #dbg_value(i64 %.sroa.018.0.i, !5756, !DIExpression(), !5477)
    #dbg_value(i64 %.sroa.018.0.i, !5635, !DIExpression(), !5475)
    #dbg_value(ptr %.val, !5755, !DIExpression(), !5511)
    #dbg_value(ptr %.val, !5752, !DIExpression(), !5512)
    #dbg_value(ptr %.val, !5749, !DIExpression(), !5513)
    #dbg_value(ptr %.val, !5766, !DIExpression(), !5515)
    #dbg_value(i64 %.sroa.018.0.i, !5756, !DIExpression(), !5511)
    #dbg_value(i64 %.sroa.018.0.i, !5760, !DIExpression(), !5516)
    #dbg_value(i64 %.sroa.018.0.i, !5763, !DIExpression(), !5517)
  %i.fg = load i64, ptr %i.l, align 8, !dbg !5972, !noalias !5650, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5516)
    #dbg_value(ptr poison, !5764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5517)
    #dbg_value(i64 %i.fg, !5761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5516)
    #dbg_value(i64 %i.fg, !5764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5517)
  %i.fh = icmp ult i64 %.sroa.018.0.i, %i.fg, !dbg !5973
  br i1 %i.fh, label %.lr.ph18.i, label %._crit_edge.i, !dbg !5973

.lr.ph18.i:                                       ; preds = %bb.aq, %bb.as
  %.sroa.018.017.i = phi i64 [ %.sroa.018.0.i, %bb.as ], [ %.sroa.018.015.i, %bb.aq ] ; 2 uses
  %.sroa.07.216.i = phi i64 [ %i.ff, %bb.as ], [ %.sroa.07.1363.i, %bb.aq ] ; 3 uses
    #dbg_value(i64 %.sroa.07.216.i, !5630, !DIExpression(), !5407)
  %i.fi = load ptr, ptr %i.m, align 8, !dbg !5975, !noalias !5650, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fi, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5516)
    #dbg_value(ptr %i.fi, !5764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5517)
  %i.fj = and i64 %.sroa.07.216.i, 56, !dbg !5976
  %i.fk = lshr i64 %i.di, %i.fj, !dbg !5976
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.sroa.018.017.i, !dbg !5977
  %i.fm = trunc i64 %i.fk to i8, !dbg !5978
  store i8 %i.fm, ptr %i.fl, align 1, !dbg !5978, !noalias !5650
    #dbg_value(i64 %.sroa.018.017.i, !5635, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5475)
    #dbg_value(i64 %.sroa.018.017.i, !5756, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5477)
    #dbg_value(i64 %.sroa.018.017.i, !5760, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5480)
    #dbg_value(i64 %.sroa.018.017.i, !5763, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5483)
  %i.fn = icmp eq i64 %.sroa.07.216.i, 0, !dbg !5979
    #dbg_value(i64 %.sroa.07.216.i, !5630, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !5407)
  br i1 %i.fn, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs2_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.as, !dbg !5979

._crit_edge.i:                                    ; preds = %bb.as, %bb.aq
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.015.i, %bb.aq ], [ %.sroa.018.0.i, %bb.as ], !dbg !5971
  %.lcssa.i = phi i64 [ %i.fd, %bb.aq ], [ %i.fg, %bb.as ], !dbg !5972
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !5973, !noalias !5650
  unreachable, !dbg !5973

bb.at:                                            ; preds = %bb.ap
  %i.fo = load ptr, ptr %i.m, align 8, !dbg !5980, !noalias !5650, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fo, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5480)
    #dbg_value(ptr %i.fo, !5764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5483)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.es, !dbg !5981
  %i.fq = trunc nuw nsw i64 %i.di to i8, !dbg !5982
  store i8 %i.fq, ptr %i.fp, align 1, !dbg !5982, !noalias !5650
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs2_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !5983

bb.au:                                            ; preds = %bb.ap
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.es, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !5965, !noalias !5650
  unreachable, !dbg !5965

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs2_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph18.i, %bb.at
  ret void, !dbg !5984
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs3_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5987 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !6267, !DIExpression(), !6010)
    #dbg_value(ptr poison, !6271, !DIExpression(), !6011)
    #dbg_value(ptr poison, !6275, !DIExpression(), !6012)
  %i.i = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !6264, !DIExpression(), !6301)
    #dbg_declare(ptr %1, !6265, !DIExpression(), !6302)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !6406
  %.val = load ptr, ptr %0, align 8, !dbg !6407, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6303), !dbg !6407
    #dbg_value(ptr poison, !6286, !DIExpression(), !6015)
    #dbg_declare(ptr %1, !6287, !DIExpression(), !6016)
    #dbg_value(i64 3, !6288, !DIExpression(), !6017)
    #dbg_value(i8 -1, !6304, !DIExpression(), !6020)
    #dbg_value(i64 1, !6307, !DIExpression(), !6023)
    #dbg_value(i64 1, !6311, !DIExpression(), !6026)
end_hunk_3
begin_hunk_4_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs3_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6412, !noalias !6319
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.p = load i8, ptr %.sroa.5.0.copyload.i, align 1, !dbg !6413, !range !1732, !noalias !6319, !noundef !718
  %i.q = trunc nuw i8 %i.p to i1, !dbg !6413
  br i1 %i.q, label %bb.l, label %bb.d, !dbg !6413

bb.d:                                             ; preds = %bb.m, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6414, !noalias !6319
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i), "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  %.val.i.i.i = load ptr, ptr %.sroa.7.0.copyload.i, align 8, !dbg !6415, !noalias !6319, !nonnull !718, !noundef !718
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload.i, i64 8, !dbg !6415
  %.val7.i.i.i = load i64, ptr %i.r, align 8, !dbg !6415, !noalias !6319, !noundef !718
    #dbg_value(ptr %.sroa.6.0.copyload.i, !6336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6058)
    #dbg_value(ptr poison, !6336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6058)
    #dbg_declare(ptr %i.c, !6339, !DIExpression(), !6059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6416, !noalias !6344
  store i64 0, ptr %i.c, align 8, !dbg !6417, !noalias !6344
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6417
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !dbg !6417, !noalias !6344
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6417
  store i64 0, ptr %i.t, align 8, !dbg !6417, !noalias !6344
    #dbg_value(ptr %i.c, !6340, !DIExpression(), !6065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6418, !noalias !6344
  store ptr %i.c, ptr %i.b, align 8, !dbg !6418, !noalias !6344
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6418
  store i8 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !6418, !noalias !6344
    #dbg_value(ptr poison, !6345, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6068)
    #dbg_value(ptr poison, !6345, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 64, 64), !6068)
    #dbg_value(ptr poison, !6349, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6068)
    #dbg_declare(ptr %i.b, !6348, !DIExpression(), !6069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6419, !noalias !6351
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 264, !dbg !6419
  invoke void @_RINvMsb_CscbFFjjIlwRm_5rcgenNtB6_11KeyIdMethod6deriveRShECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val7.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.j, !dbg !6420, !noalias !6352

.noexc.i.i.i.i:                                   ; preds = %bb.d
    #dbg_value(ptr %i.a, !6353, !DIExpression(), !6075)
    #dbg_value(ptr %i.a, !6355, !DIExpression(), !6078)
    #dbg_value(ptr %i.a, !6357, !DIExpression(), !6081)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6421
  %i.w = load ptr, ptr %i.v, align 8, !dbg !6421, !noalias !6351, !nonnull !718, !noundef !718
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6422
  %i.y = load i64, ptr %i.x, align 8, !dbg !6422, !noalias !6351, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.f unwind label %bb.e, !dbg !6423, !noalias !6352

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %.body.i.i.i.i unwind label %bb.i, !dbg !6424, !noalias !6359

bb.f:                                             ; preds = %.noexc.i.i.i.i
    #dbg_value(ptr %i.a, !1894, !DIExpression(), !6089)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i unwind label %bb.g, !dbg !6425, !noalias !6359

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !6091)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i.i unwind label %bb.h, !dbg !6426, !noalias !6359

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6425, !noalias !6359
  unreachable, !dbg !6425

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i: ; preds = %bb.f
    #dbg_value(ptr %i.a, !1899, !DIExpression(), !6093)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.j, !dbg !6427, !noalias !6352

bb.i:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6428, !noalias !6359
  unreachable, !dbg !6428

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !6429

.body.i.i.i.i:                                    ; preds = %bb.j, %bb.g, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.aa, %bb.g ], [ %i.z, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #11
          to label %.body.i.i.i unwind label %bb.k, !dbg !6429, !noalias !6352

bb.k:                                             ; preds = %.body.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6430, !noalias !6352
  unreachable, !dbg !6430

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6431, !noalias !6319
    #dbg_value(ptr %.val, !6360, !DIExpression(), !6098)
  store ptr %.val, ptr %i.f, align 8, !dbg !6432, !noalias !6319
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !6432
  store i8 -1, ptr %i.af, align 8, !dbg !6432, !noalias !6319
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.b, !dbg !6433, !noalias !6319

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6434, !noalias !6319
  br label %bb.d, !dbg !6435

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6424, !noalias !6351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6436, !noalias !6344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !6437, !noalias !6365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6429, !noalias !6344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6438, !noalias !6319
    #dbg_value(ptr %.val, !6360, !DIExpression(), !6101)
  store ptr %.val, ptr %i.d, align 8, !dbg !6439, !noalias !6319
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !6439
  store i8 -1, ptr %i.ag, align 8, !dbg !6439, !noalias !6319
    #dbg_value(ptr %i.e, !6367, !DIExpression(), !6104)
    #dbg_value(ptr %i.e, !6369, !DIExpression(), !6107)
    #dbg_value(ptr %i.e, !6371, !DIExpression(), !6110)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6440
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !6440, !noalias !6319, !nonnull !718, !noundef !718
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !6441
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !6441, !noalias !6319, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %bb.p unwind label %bb.o, !dbg !6442, !noalias !6319

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.v, !dbg !6443, !noalias !6319

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6444, !noalias !6319
    #dbg_value(ptr %i.e, !1894, !DIExpression(), !6118)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.r unwind label %bb.q, !dbg !6445, !noalias !6319

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !1899, !DIExpression(), !6120)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i.i unwind label %bb.s, !dbg !6446, !noalias !6319

bb.r:                                             ; preds = %bb.p
    #dbg_value(ptr %i.e, !1899, !DIExpression(), !6122)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !6447, !noalias !6319

bb.s:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6445, !noalias !6319
  unreachable, !dbg !6445

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6443, !noalias !6319
    #dbg_value(ptr %i.h, !1753, !DIExpression(), !6124)
    #dbg_value(ptr %i.h, !1760, !DIExpression(), !6126)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.t, !dbg !6448, !noalias !6319

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !1767, !DIExpression(), !6128)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i.i.i unwind label %bb.u, !dbg !6449, !noalias !6319

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6448, !noalias !6319
  unreachable, !dbg !6448

common.resume.i.i.i:                              ; preds = %bb.t, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.t ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !6450

bb.v:                                             ; preds = %bb.o, %.body.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !6451, !noalias !6319
  unreachable, !dbg !6451

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.h, !1767, !DIExpression(), !6130)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !6452, !noalias !6319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6411, !noalias !6319
    #dbg_value(ptr %.val, !6373, !DIExpression(), !6133)
  %i.ar = load i64, ptr %i.j, align 8, !dbg !6453, !noalias !6303, !noundef !718 ; 6 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !6454
  call void @llvm.assume(i1 %i.as), !dbg !6455
  %i.at = sub nsw i64 %i.ar, %i.bh, !dbg !6456    ; 4 uses
    #dbg_value(i64 %i.at, !6292, !DIExpression(), !6134)
    #dbg_value(i64 56, !6294, !DIExpression(), !6135)
  %i.au = icmp ult i64 %i.at, 128, !dbg !6457     ; 2 uses
  br i1 %i.au, label %.thread.i, label %.preheader.i, !dbg !6457

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !6458, !noalias !6303
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !6459

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.w, %bb.a
  %i.av = load ptr, ptr %i.k, align 8, !dbg !6460, !alias.scope !6318, !noalias !6303, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.av, !1729, !DIExpression(), !6042)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.l, !dbg !6461
    #dbg_value(ptr %i.aw, !1702, !DIExpression(), !6139)
    #dbg_value(ptr %i.aw, !1788, !DIExpression(), !6141)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6141)
  store i8 -1, ptr %i.aw, align 1, !dbg !6462, !noalias !6303
  %i.ax = add i64 %i.l, 1, !dbg !6463             ; 4 uses
  store i64 %i.ax, ptr %i.j, align 8, !dbg !6463, !alias.scope !6318, !noalias !6303
    #dbg_value(i32 2, !6289, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6030)
    #dbg_value(ptr %.val, !6305, !DIExpression(), !6020)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !6032)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !6034)
    #dbg_value(i8 -1, !1699, !DIExpression(), !6032)
    #dbg_value(i64 1, !1710, !DIExpression(), !6037)
    #dbg_value(i64 %i.ax, !1700, !DIExpression(), !6040)
    #dbg_value(i64 %i.ax, !1724, !DIExpression(), !6042)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !6043)
  %i.ay = load i64, ptr %.val, align 8, !dbg !6409, !range !1731, !alias.scope !6318, !noalias !6303, !noundef !718
  %i.az = icmp eq i64 %i.ax, %i.ay, !dbg !6410
  br i1 %i.az, label %bb.x, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !6410

bb.x:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !6458, !noalias !6303
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !6459

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.x, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ba = load ptr, ptr %i.k, align 8, !dbg !6460, !alias.scope !6318, !noalias !6303, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ba, !1729, !DIExpression(), !6042)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax, !dbg !6461
    #dbg_value(ptr %i.bb, !1702, !DIExpression(), !6139)
    #dbg_value(ptr %i.bb, !1788, !DIExpression(), !6141)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6141)
  store i8 -1, ptr %i.bb, align 1, !dbg !6462, !noalias !6303
  %i.bc = add i64 %i.l, 2, !dbg !6463             ; 4 uses
  store i64 %i.bc, ptr %i.j, align 8, !dbg !6463, !alias.scope !6318, !noalias !6303
    #dbg_value(i32 3, !6289, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6030)
    #dbg_value(ptr %.val, !6305, !DIExpression(), !6020)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !6032)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !6034)
    #dbg_value(i8 -1, !1699, !DIExpression(), !6032)
    #dbg_value(i64 1, !1710, !DIExpression(), !6037)
    #dbg_value(i64 %i.bc, !1700, !DIExpression(), !6040)
    #dbg_value(i64 %i.bc, !1724, !DIExpression(), !6042)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !6043)
  %i.bd = load i64, ptr %.val, align 8, !dbg !6409, !range !1731, !alias.scope !6318, !noalias !6303, !noundef !718
  %i.be = icmp eq i64 %i.bc, %i.bd, !dbg !6410
  br i1 %i.be, label %bb.y, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !6410

bb.y:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !6458, !noalias !6303
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !6459

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.y, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.bf = load ptr, ptr %i.k, align 8, !dbg !6460, !alias.scope !6318, !noalias !6303, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bf, !1729, !DIExpression(), !6042)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc, !dbg !6461
    #dbg_value(ptr %i.bg, !1702, !DIExpression(), !6139)
    #dbg_value(ptr %i.bg, !1788, !DIExpression(), !6141)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6141)
  store i8 -1, ptr %i.bg, align 1, !dbg !6462, !noalias !6303
  %i.bh = add i64 %i.l, 3, !dbg !6463             ; 10 uses
  store i64 %i.bh, ptr %i.j, align 8, !dbg !6463, !alias.scope !6318, !noalias !6303
    #dbg_value(i32 3, !6289, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6030)
    #dbg_value(ptr %.val, !6373, !DIExpression(), !6143)
    #dbg_value(i64 %i.bh, !6290, !DIExpression(), !6144)
    #dbg_value(i64 %i.bh, !6316, !DIExpression(), !6029)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !6464, !alias.scope !6303, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !6334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6145)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6464
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !6464, !alias.scope !6303
    #dbg_value(i64 %.sroa.4.0.copyload.i, !6334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6145)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6464
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !6464, !alias.scope !6303 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !6334, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6145)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !6464
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !6464, !alias.scope !6303 ; 2 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !6334, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6145)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !6464
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !6464, !alias.scope !6303 ; 3 uses
    #dbg_value(ptr %.sroa.7.0.copyload.i, !6334, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6145)
    #dbg_value(ptr poison, !6333, !DIExpression(), !6146)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !6324, !DIExpression(DW_OP_deref), !6147)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !6325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6147)
    #dbg_value(ptr %.sroa.7.0.copyload.i, !6325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6147)
    #dbg_value(ptr poison, !6322, !DIExpression(), !6148)
    #dbg_value(ptr poison, !6363, !DIExpression(), !6150)
    #dbg_value(ptr poison, !6363, !DIExpression(), !6151)
    #dbg_value(ptr poison, !6363, !DIExpression(), !6152)
    #dbg_declare(ptr %i.h, !6326, !DIExpression(), !6153)
    #dbg_declare(ptr %i.e, !6327, !DIExpression(), !6154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !6465, !noalias !6319
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !6466, !noalias !6319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6467, !noalias !6319
    #dbg_value(ptr %.val, !6360, !DIExpression(), !6156)
  store ptr %.val, ptr %i.g, align 8, !dbg !6468, !noalias !6319
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !6468
  store i8 -1, ptr %i.bi, align 8, !dbg !6468, !noalias !6319
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.c unwind label %bb.b, !dbg !6469, !noalias !6319

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.bm, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !6470 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !6294, !DIExpression(), !6135)
  %i.bj = and i64 %.sroa.07.0.i, 56, !dbg !6471
  %i.bk = lshr i64 %i.at, %i.bj, !dbg !6471
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !6471
  %i.bm = add i64 %.sroa.07.0.i, -8, !dbg !6472
    #dbg_value(i64 %i.bm, !6294, !DIExpression(), !6135)
  br i1 %i.bl, label %.preheader.i, label %bb.z, !dbg !6471

bb.z:                                             ; preds = %.preheader.i
  %i.bn = lshr exact i64 %.sroa.07.0.i, 3, !dbg !6473 ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 2, !dbg !6474    ; 2 uses
    #dbg_value(i64 %i.bo, !6293, !DIExpression(), !6157)
    #dbg_value(i64 %.sroa.07.0.i, !6294, !DIExpression(), !6135)
  %i.bp = icmp eq i64 %.sroa.07.0.i, 0, !dbg !6475
  br i1 %i.bp, label %.thread.i, label %bb.aa, !dbg !6475

bb.aa:                                            ; preds = %bb.z
  %.not.i = icmp eq i64 %i.bo, 3, !dbg !6476
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.ab, !dbg !6476

.thread.i:                                        ; preds = %bb.z, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.bc, %bb.z ], [ %i.ax, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !6477 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.z ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.z ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs3_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !6296, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6158)
    #dbg_value(!DIArgList(i64 %i.bh, i64 %.sroa.02.06.i), !6295, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !6478, !noalias !6303
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.bh), !dbg !6479, !noalias !6303
    #dbg_value(ptr %i.i, !1800, !DIExpression(), !6161)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i), !dbg !6480, !noalias !6303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6481, !noalias !6303
  %.pre.pre = load i64, ptr %i.j, align 8, !dbg !6482, !noalias !6303
  br label %.loopexit7.i, !dbg !6483

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add nsw i64 %i.bn, -1, !dbg !6484       ; 3 uses
    #dbg_value(i64 %i.bq, !6297, !DIExpression(), !6168)
  %i.br = add nuw i64 %i.bq, %i.bh, !dbg !6485    ; 2 uses
    #dbg_value(i64 %i.br, !6295, !DIExpression(), !6159)
    #dbg_value(i64 0, !6298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6169)
    #dbg_value(i64 %i.bq, !6298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6169)
    #dbg_value(ptr undef, !6275, !DIExpression(), !6012)
    #dbg_value(ptr undef, !6271, !DIExpression(), !6011)
    #dbg_value(ptr undef, !6267, !DIExpression(), !6010)
    #dbg_value(ptr undef, !6268, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6170)
  %.not18.i = icmp eq i64 %i.bq, 0, !dbg !6486
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !6487

.lr.ph.i.preheader:                               ; preds = %bb.ab
  %i.bs = icmp samesign ult i64 %i.ar, %i.bh
  br i1 %i.bs, label %bb.ac, label %.lr.ph.i, !dbg !6488, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.bt = phi i64 [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.ar, %.lr.ph.i.preheader ], !dbg !6489 ; 5 uses
  %.sroa.016.012.i = phi i64 [ %i.bu, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.012.i, !6272, !DIExpression(), !6173)
    #dbg_value(i64 %.sroa.016.012.i, !6308, !DIExpression(), !6023)
    #dbg_value(i64 %.sroa.016.012.i, !6312, !DIExpression(), !6026)
  %i.bu = add nuw i64 %.sroa.016.012.i, 1, !dbg !6490 ; 2 uses
    #dbg_value(i64 %i.bu, !6298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6169)
    #dbg_value(ptr %.val, !6315, !DIExpression(), !6029)
  call void @llvm.experimental.noalias.scope.decl(metadata !6384), !dbg !6491
    #dbg_value(ptr %.val, !1839, !DIExpression(), !6176)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !6177)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !6179)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !6181)
    #dbg_value(i64 %i.bh, !1840, !DIExpression(), !6176)
    #dbg_value(i64 %i.bh, !1855, !DIExpression(), !6183)
    #dbg_value(i8 0, !1841, !DIExpression(), !6176)
    #dbg_value(i64 1, !1859, !DIExpression(), !6186)
    #dbg_value(i64 1, !1857, !DIExpression(), !6188)
    #dbg_value(i64 1, !1859, !DIExpression(), !6192)
    #dbg_value(i64 %i.bt, !1842, !DIExpression(), !6193)
  %i.bv = icmp sgt i64 %i.bt, -1, !dbg !6492
  call void @llvm.assume(i1 %i.bv), !dbg !6493
    #dbg_value(ptr %.val, !1862, !DIExpression(), !6194)
  %2 = load i64, ptr %.val, align 8, !dbg !6494, !range !1731, !alias.scope !6384, !noalias !6303, !noundef !718
  %3 = icmp eq i64 %i.bt, %2, !dbg !6495
  br i1 %3, label %bb.ad, label %bb.ae, !dbg !6495

bb.ac:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.bh, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !6496, !noalias !6385
  unreachable, !dbg !6496

bb.ad:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !6497, !noalias !6303
  br label %bb.ae, !dbg !6498

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i
  %i.bw = load ptr, ptr %i.k, align 8, !dbg !6499, !alias.scope !6384, !noalias !6303, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bw, !1856, !DIExpression(), !6183)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bh, !dbg !6500 ; 3 uses
    #dbg_value(ptr %i.bx, !1843, !DIExpression(), !6198)
    #dbg_value(ptr %i.bx, !1856, !DIExpression(), !6188)
    #dbg_value(ptr %i.bx, !1868, !DIExpression(), !6200)
  %i.by = icmp samesign ult i64 %i.bh, %i.bt, !dbg !6501
  br i1 %i.by, label %bb.af, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !6501

bb.af:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.bx, !1871, !DIExpression(), !6202)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1, !dbg !6502
    #dbg_value(ptr %i.bz, !1874, !DIExpression(), !6202)
  %i.ca = sub nuw nsw i64 %i.bt, %i.bh, !dbg !6503
    #dbg_value(i64 %i.ca, !1875, !DIExpression(), !6202)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.bx, i64 %i.ca, i1 false), !dbg !6504, !noalias !6303
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !6505

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.af, %bb.ae
    #dbg_value(i8 0, !1869, !DIExpression(), !6200)
  store i8 0, ptr %i.bx, align 1, !dbg !6506, !noalias !6303
  %i.cb = add nuw i64 %i.bt, 1, !dbg !6507        ; 3 uses
    #dbg_value(i64 %i.cb, !1853, !DIExpression(), !6181)
  store i64 %i.cb, ptr %i.j, align 8, !dbg !6508, !alias.scope !6384, !noalias !6303
    #dbg_value(i64 %i.bu, !6298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6169)
    #dbg_value(ptr undef, !6275, !DIExpression(), !6012)
    #dbg_value(ptr undef, !6271, !DIExpression(), !6011)
    #dbg_value(ptr undef, !6267, !DIExpression(), !6010)
    #dbg_value(ptr undef, !6268, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6170)
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bq, !dbg !6486
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !6487

.loopexit7.thread.i:                              ; preds = %bb.ab, %bb.aa
  %.sroa.014.0.ph.i = phi i64 [ %i.br, %bb.ab ], [ %i.bh, %bb.aa ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !6295, !DIExpression(), !6159)
  %i.cc = add i64 %.sroa.014.0.ph.i, -3, !dbg !6509
    #dbg_value(i64 %i.cc, !6299, !DIExpression(), !6203)
    #dbg_value(i64 %i.cc, !6382, !DIExpression(), !6205)
    #dbg_value(i64 %i.cc, !6386, !DIExpression(), !6208)
    #dbg_value(i64 %i.cc, !6389, !DIExpression(), !6211)
  br label %bb.ag, !dbg !6510

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.cb, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !6482 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.bo, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.br, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !6511
    #dbg_value(i64 %.sroa.014.0.i, !6295, !DIExpression(), !6159)
  %i.cd = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !6509 ; 4 uses
    #dbg_value(i64 %i.cd, !6299, !DIExpression(), !6203)
    #dbg_value(i64 %i.cd, !6382, !DIExpression(), !6205)
    #dbg_value(i64 %i.cd, !6386, !DIExpression(), !6208)
    #dbg_value(i64 %i.cd, !6389, !DIExpression(), !6211)
  br i1 %i.au, label %bb.ah, label %bb.ag, !dbg !6510

bb.ag:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.ce = phi i64 [ %i.ar, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !6482 ; 2 uses
  %i.cf = phi i64 [ %i.cc, %.loopexit7.thread.i ], [ %i.cd, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1341.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !6381, !DIExpression(), !6212)
    #dbg_value(ptr %.val, !6378, !DIExpression(), !6213)
    #dbg_value(ptr %.val, !6375, !DIExpression(), !6214)
    #dbg_value(ptr %.val, !6392, !DIExpression(), !6217)
    #dbg_value(i64 %i.cf, !6382, !DIExpression(), !6212)
    #dbg_value(i64 %i.cf, !6386, !DIExpression(), !6219)
    #dbg_value(i64 %i.cf, !6389, !DIExpression(), !6221)
    #dbg_value(ptr poison, !6387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6219)
    #dbg_value(ptr poison, !6390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6221)
    #dbg_value(i64 %i.ce, !6387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6219)
    #dbg_value(i64 %i.ce, !6390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6221)
  %i.cg = icmp ult i64 %i.cf, %i.ce, !dbg !6512
  br i1 %i.cg, label %bb.ai, label %bb.aj, !dbg !6512

bb.ah:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !6381, !DIExpression(), !6205)
    #dbg_value(ptr %.val, !6378, !DIExpression(), !6223)
    #dbg_value(ptr %.val, !6375, !DIExpression(), !6225)
    #dbg_value(ptr %.val, !6392, !DIExpression(), !6227)
    #dbg_value(ptr poison, !6387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(ptr poison, !6390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6211)
    #dbg_value(i64 %.pre, !6387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(i64 %.pre, !6390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6211)
  %i.ch = icmp ult i64 %i.cd, %.pre, !dbg !6513
  br i1 %i.ch, label %bb.al, label %bb.am, !dbg !6513

bb.ai:                                            ; preds = %bb.ag
  %i.ci = load ptr, ptr %i.k, align 8, !dbg !6514, !noalias !6303, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ci, !6387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6219)
    #dbg_value(ptr %i.ci, !6390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6221)
  %i.cj = lshr exact i64 %.sroa.07.1341.i, 3, !dbg !6515
  %i.ck = trunc i64 %i.cj to i8, !dbg !6516
  %i.cl = add i8 %i.ck, 1, !dbg !6516
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf, !dbg !6517
  %i.cn = or i8 %i.cl, -128, !dbg !6518
  store i8 %i.cn, ptr %i.cm, align 1, !dbg !6518, !noalias !6303
    #dbg_value(i64 %i.cf, !6299, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6203)
    #dbg_value(i64 %i.cf, !6382, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6205)
    #dbg_value(i64 %i.cf, !6386, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6208)
    #dbg_value(i64 %i.cf, !6389, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6211)
  %.sroa.018.013.i = add nuw i64 %i.cf, 1, !dbg !6519 ; 3 uses
  %i.co = load i64, ptr %i.j, align 8, !dbg !6520, !noalias !6303, !noundef !718 ; 2 uses
  %i.cp = icmp ult i64 %.sroa.018.013.i, %i.co, !dbg !6521
  br i1 %i.cp, label %.lr.ph16.i, label %._crit_edge.i, !dbg !6521

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !6512, !noalias !6303
  unreachable, !dbg !6512

bb.ak:                                            ; preds = %.lr.ph16.i
  %i.cq = add i64 %.sroa.07.214.i, -8, !dbg !6522
    #dbg_value(i64 %i.cq, !6294, !DIExpression(), !6135)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.015.i, 1, !dbg !6519 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !6389, !DIExpression(), !6211)
    #dbg_value(i64 %.sroa.018.0.i, !6386, !DIExpression(), !6208)
    #dbg_value(i64 %.sroa.018.0.i, !6382, !DIExpression(), !6205)
    #dbg_value(i64 %.sroa.018.0.i, !6299, !DIExpression(), !6203)
    #dbg_value(ptr %.val, !6381, !DIExpression(), !6239)
    #dbg_value(ptr %.val, !6378, !DIExpression(), !6240)
    #dbg_value(ptr %.val, !6375, !DIExpression(), !6241)
    #dbg_value(ptr %.val, !6392, !DIExpression(), !6243)
    #dbg_value(i64 %.sroa.018.0.i, !6382, !DIExpression(), !6239)
    #dbg_value(i64 %.sroa.018.0.i, !6386, !DIExpression(), !6244)
    #dbg_value(i64 %.sroa.018.0.i, !6389, !DIExpression(), !6245)
  %i.cr = load i64, ptr %i.j, align 8, !dbg !6520, !noalias !6303, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !6387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6244)
    #dbg_value(ptr poison, !6390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6245)
    #dbg_value(i64 %i.cr, !6387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6244)
    #dbg_value(i64 %i.cr, !6390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6245)
  %i.cs = icmp ult i64 %.sroa.018.0.i, %i.cr, !dbg !6521
  br i1 %i.cs, label %.lr.ph16.i, label %._crit_edge.i, !dbg !6521

.lr.ph16.i:                                       ; preds = %bb.ai, %bb.ak
  %.sroa.018.015.i = phi i64 [ %.sroa.018.0.i, %bb.ak ], [ %.sroa.018.013.i, %bb.ai ] ; 2 uses
  %.sroa.07.214.i = phi i64 [ %i.cq, %bb.ak ], [ %.sroa.07.1341.i, %bb.ai ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i, !6294, !DIExpression(), !6135)
  %i.ct = load ptr, ptr %i.k, align 8, !dbg !6523, !noalias !6303, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ct, !6387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6244)
    #dbg_value(ptr %i.ct, !6390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6245)
  %i.cu = and i64 %.sroa.07.214.i, 56, !dbg !6524
  %i.cv = lshr i64 %i.at, %i.cu, !dbg !6524
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.018.015.i, !dbg !6525
  %i.cx = trunc i64 %i.cv to i8, !dbg !6526
  store i8 %i.cx, ptr %i.cw, align 1, !dbg !6526, !noalias !6303
    #dbg_value(i64 %.sroa.018.015.i, !6299, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6203)
    #dbg_value(i64 %.sroa.018.015.i, !6382, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6205)
    #dbg_value(i64 %.sroa.018.015.i, !6386, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6208)
    #dbg_value(i64 %.sroa.018.015.i, !6389, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6211)
  %i.cy = icmp eq i64 %.sroa.07.214.i, 0, !dbg !6527
    #dbg_value(i64 %.sroa.07.214.i, !6294, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !6135)
  br i1 %i.cy, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs3_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.ak, !dbg !6527

._crit_edge.i:                                    ; preds = %bb.ak, %bb.ai
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.013.i, %bb.ai ], [ %.sroa.018.0.i, %bb.ak ], !dbg !6519
  %.lcssa.i = phi i64 [ %i.co, %bb.ai ], [ %i.cr, %bb.ak ], !dbg !6520
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !6521, !noalias !6303
  unreachable, !dbg !6521

bb.al:                                            ; preds = %bb.ah
  %i.cz = load ptr, ptr %i.k, align 8, !dbg !6528, !noalias !6303, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cz, !6387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(ptr %i.cz, !6390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6211)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cd, !dbg !6529
  %i.db = trunc nuw nsw i64 %i.at to i8, !dbg !6530
  store i8 %i.db, ptr %i.da, align 1, !dbg !6530, !noalias !6303
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs3_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !6531

bb.am:                                            ; preds = %bb.ah
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !6513, !noalias !6303
  unreachable, !dbg !6513

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs3_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph16.i, %bb.al
  ret void, !dbg !6532
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs4_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6535 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !6970, !DIExpression(), !6588)
    #dbg_value(ptr poison, !6974, !DIExpression(), !6589)
    #dbg_value(ptr poison, !6978, !DIExpression(), !6590)
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !7065, !DIExpression(), !6598)
    #dbg_value(ptr poison, !7069, !DIExpression(), !6599)
    #dbg_value(ptr poison, !7073, !DIExpression(), !6600)
  %i.j = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !6967, !DIExpression(), !7076)
    #dbg_declare(ptr %1, !6968, !DIExpression(), !7077)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !7206
  %.val = load ptr, ptr %0, align 8, !dbg !7207, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7078), !dbg !7207
    #dbg_value(ptr poison, !7050, !DIExpression(), !6603)
    #dbg_declare(ptr %1, !7051, !DIExpression(), !6604)
end_hunk_4
begin_hunk_5_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs4_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7134, !DIExpression(), !6768)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7131, !DIExpression(), !6770)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7147, !DIExpression(), !6772)
    #dbg_value(ptr poison, !7142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6753)
    #dbg_value(ptr poison, !7145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6756)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !7142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6753)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !7145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6756)
  %i.br = icmp ult i64 %i.bn, %.pre.i.i.i.i.i.i, !dbg !7279
  br i1 %i.br, label %bb.r, label %.invoke.i.i.i.i, !dbg !7279

bb.p:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %i.v, align 8, !dbg !7280, !noalias !7095, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bs, !7142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6764)
    #dbg_value(ptr %i.bs, !7145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6766)
  %i.bt = lshr exact i64 %.sroa.07.1341.i.i.i.i.i.i.i, 3, !dbg !7281
  %i.bu = trunc i64 %i.bt to i8, !dbg !7282
  %i.bv = add i8 %i.bu, 1, !dbg !7282
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp, !dbg !7283
  %i.bx = or i8 %i.bv, -128, !dbg !7284
  store i8 %i.bx, ptr %i.bw, align 1, !dbg !7284, !noalias !7095
    #dbg_value(i64 %i.bp, !7003, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6748)
    #dbg_value(i64 %i.bp, !7138, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6750)
    #dbg_value(i64 %i.bp, !7141, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6753)
    #dbg_value(i64 %i.bp, !7144, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6756)
  %.sroa.018.013.i.i.i.i.i.i.i = add nuw i64 %i.bp, 1, !dbg !7285 ; 3 uses
  %i.by = load i64, ptr %i.u, align 8, !dbg !7286, !noalias !7095, !noundef !718 ; 2 uses
  %i.bz = icmp ult i64 %.sroa.018.013.i.i.i.i.i.i.i, %i.by, !dbg !7287
  br i1 %i.bz, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !7287

bb.q:                                             ; preds = %.lr.ph16.i.i.i.i.i.i.i
  %i.ca = add i64 %.sroa.07.214.i.i.i.i.i.i.i, -8, !dbg !7288
    #dbg_value(i64 %i.ca, !6998, !DIExpression(), !6701)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.015.i.i.i.i.i.i.i, 1, !dbg !7285 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7144, !DIExpression(), !6756)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7141, !DIExpression(), !6753)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7138, !DIExpression(), !6750)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7003, !DIExpression(), !6748)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7137, !DIExpression(), !6784)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7134, !DIExpression(), !6785)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7131, !DIExpression(), !6786)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !7147, !DIExpression(), !6788)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7138, !DIExpression(), !6784)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7141, !DIExpression(), !6789)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !7144, !DIExpression(), !6790)
  %i.cb = load i64, ptr %i.u, align 8, !dbg !7286, !noalias !7095, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !7142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6789)
    #dbg_value(ptr poison, !7145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
    #dbg_value(i64 %i.cb, !7142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6789)
    #dbg_value(i64 %i.cb, !7145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6790)
  %i.cc = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.cb, !dbg !7287
  br i1 %i.cc, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !7287

.lr.ph16.i.i.i.i.i.i.i:                           ; preds = %bb.p, %bb.q
  %.sroa.018.015.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.p ] ; 2 uses
  %.sroa.07.214.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.q ], [ %.sroa.07.1341.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !6998, !DIExpression(), !6701)
  %i.cd = load ptr, ptr %i.v, align 8, !dbg !7289, !noalias !7095, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cd, !7142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6789)
    #dbg_value(ptr %i.cd, !7145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6790)
  %i.ce = and i64 %.sroa.07.214.i.i.i.i.i.i.i, 56, !dbg !7290
  %i.cf = lshr i64 %i.ap, %i.ce, !dbg !7290
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.018.015.i.i.i.i.i.i.i, !dbg !7291
  %i.ch = trunc i64 %i.cf to i8, !dbg !7292
  store i8 %i.ch, ptr %i.cg, align 1, !dbg !7292, !noalias !7095
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !7003, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6748)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !7138, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6750)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !7141, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6753)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !7144, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6756)
  %i.ci = icmp eq i64 %.sroa.07.214.i.i.i.i.i.i.i, 0, !dbg !7293
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !6998, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !6701)
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.q, !dbg !7293

bb.r:                                             ; preds = %bb.o
  %i.cj = load ptr, ptr %i.v, align 8, !dbg !7294, !noalias !7095, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cj, !7142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6753)
    #dbg_value(ptr %i.cj, !7145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6756)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bn, !dbg !7295
  %i.cl = trunc nuw nsw i64 %i.ap to i8, !dbg !7296
  store i8 %i.cl, ptr %i.ck, align 1, !dbg !7296, !noalias !7095
  br label %.loopexit.i.i.i, !dbg !7297

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.cm = phi i64 [ %i.bn, %bb.o ], [ %i.bp, %bb.n ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.q ]
  %i.cn = phi i64 [ %.pre.i.i.i.i.i.i, %bb.o ], [ %i.bo, %bb.n ], [ %i.by, %bb.p ], [ %i.cb, %bb.q ]
  %i.co = phi ptr [ @4, %bb.o ], [ @2, %bb.n ], [ @3, %bb.p ], [ @3, %bb.q ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7298, !noalias !7095

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %.invoke.i.i.i.i, %bb.k, %.noexc10.i.i.i.i, %.thread.i.i.i.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #11
          to label %.body.i.i.i unwind label %bb.s, !dbg !7299, !noalias !7095

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7300, !noalias !7095
  unreachable, !dbg !7300

bb.t:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !7301, !noalias !7094
    #dbg_value(ptr %.val, !7161, !DIExpression(), !6804)
  store ptr %.val, ptr %i.g, align 8, !dbg !7302, !noalias !7094
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !7302
  store i8 -1, ptr %i.cq, align 8, !dbg !7302, !noalias !7094
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.b, !dbg !7303, !noalias !7094

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !7304, !noalias !7094
  br label %bb.d, !dbg !7305

.loopexit.i.i.i:                                  ; preds = %.lr.ph16.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7306, !noalias !7095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !7307, !noalias !7094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7299, !noalias !7095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !7308, !noalias !7094
    #dbg_value(ptr %.val, !7161, !DIExpression(), !6807)
  store ptr %.val, ptr %i.e, align 8, !dbg !7309, !noalias !7094
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !7309
  store i8 -1, ptr %i.cr, align 8, !dbg !7309, !noalias !7094
    #dbg_value(ptr %i.f, !7167, !DIExpression(), !6810)
    #dbg_value(ptr %i.f, !7169, !DIExpression(), !6813)
    #dbg_value(ptr %i.f, !7171, !DIExpression(), !6816)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !7310
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !7310, !noalias !7094, !nonnull !718, !noundef !718
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !7311
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !7311, !noalias !7094, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.w unwind label %bb.v, !dbg !7312, !noalias !7094

bb.v:                                             ; preds = %.loopexit.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #11
          to label %.body.i.i.i unwind label %bb.ac, !dbg !7313, !noalias !7094

bb.w:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7314, !noalias !7094
    #dbg_value(ptr %i.f, !1894, !DIExpression(), !6824)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.y unwind label %bb.x, !dbg !7315, !noalias !7094

bb.x:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !1899, !DIExpression(), !6826)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.z, !dbg !7316, !noalias !7094

bb.y:                                             ; preds = %bb.w
    #dbg_value(ptr %i.f, !1899, !DIExpression(), !6828)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !7317, !noalias !7094

bb.z:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7315, !noalias !7094
  unreachable, !dbg !7315

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7313, !noalias !7094
    #dbg_value(ptr %i.i, !1753, !DIExpression(), !6830)
    #dbg_value(ptr %i.i, !1760, !DIExpression(), !6832)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.aa, !dbg !7318, !noalias !7094

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !1767, !DIExpression(), !6834)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i.i.i unwind label %bb.ab, !dbg !7319, !noalias !7094

bb.ab:                                            ; preds = %bb.aa
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7318, !noalias !7094
  unreachable, !dbg !7318

common.resume.i.i.i:                              ; preds = %bb.aa, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !7320

bb.ac:                                            ; preds = %bb.v, %.body.i.i.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7321, !noalias !7094
  unreachable, !dbg !7321

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.i, !1767, !DIExpression(), !6836)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !7322, !noalias !7094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !7211, !noalias !7094
    #dbg_value(ptr %.val, !7173, !DIExpression(), !6839)
  %i.dc = load i64, ptr %i.k, align 8, !dbg !7323, !noalias !7078, !noundef !718 ; 6 uses
  %i.dd = icmp sgt i64 %i.dc, -1, !dbg !7324
  call void @llvm.assume(i1 %i.dd), !dbg !7325
  %i.de = sub nsw i64 %i.dc, %i.ds, !dbg !7326    ; 4 uses
    #dbg_value(i64 %i.de, !7056, !DIExpression(), !6840)
    #dbg_value(i64 56, !7058, !DIExpression(), !6841)
  %i.df = icmp ult i64 %i.de, 128, !dbg !7327     ; 2 uses
  br i1 %i.df, label %.thread.i, label %.preheader.i, !dbg !7327

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7328, !noalias !7078
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7329

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ad, %bb.a
  %i.dg = load ptr, ptr %i.l, align 8, !dbg !7330, !alias.scope !7093, !noalias !7078, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dg, !1729, !DIExpression(), !6630)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.m, !dbg !7331
    #dbg_value(ptr %i.dh, !1702, !DIExpression(), !6845)
    #dbg_value(ptr %i.dh, !1788, !DIExpression(), !6847)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6847)
  store i8 -1, ptr %i.dh, align 1, !dbg !7332, !noalias !7078
  %i.di = add i64 %i.m, 1, !dbg !7333             ; 4 uses
  store i64 %i.di, ptr %i.k, align 8, !dbg !7333, !alias.scope !7093, !noalias !7078
    #dbg_value(i32 2, !7053, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6618)
    #dbg_value(ptr %.val, !7080, !DIExpression(), !6608)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !6620)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !6622)
    #dbg_value(i8 -1, !1699, !DIExpression(), !6620)
    #dbg_value(i64 1, !1710, !DIExpression(), !6625)
    #dbg_value(i64 %i.di, !1700, !DIExpression(), !6628)
    #dbg_value(i64 %i.di, !1724, !DIExpression(), !6630)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !6631)
  %i.dj = load i64, ptr %.val, align 8, !dbg !7209, !range !1731, !alias.scope !7093, !noalias !7078, !noundef !718
  %i.dk = icmp eq i64 %i.di, %i.dj, !dbg !7210
  br i1 %i.dk, label %bb.ae, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !7210

bb.ae:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7328, !noalias !7078
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !7329

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.ae, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.dl = load ptr, ptr %i.l, align 8, !dbg !7330, !alias.scope !7093, !noalias !7078, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dl, !1729, !DIExpression(), !6630)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di, !dbg !7331
    #dbg_value(ptr %i.dm, !1702, !DIExpression(), !6845)
    #dbg_value(ptr %i.dm, !1788, !DIExpression(), !6847)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6847)
  store i8 -1, ptr %i.dm, align 1, !dbg !7332, !noalias !7078
  %i.dn = add i64 %i.m, 2, !dbg !7333             ; 4 uses
  store i64 %i.dn, ptr %i.k, align 8, !dbg !7333, !alias.scope !7093, !noalias !7078
    #dbg_value(i32 3, !7053, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6618)
    #dbg_value(ptr %.val, !7080, !DIExpression(), !6608)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !6620)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !6622)
    #dbg_value(i8 -1, !1699, !DIExpression(), !6620)
    #dbg_value(i64 1, !1710, !DIExpression(), !6625)
    #dbg_value(i64 %i.dn, !1700, !DIExpression(), !6628)
    #dbg_value(i64 %i.dn, !1724, !DIExpression(), !6630)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !6631)
  %i.do = load i64, ptr %.val, align 8, !dbg !7209, !range !1731, !alias.scope !7093, !noalias !7078, !noundef !718
  %i.dp = icmp eq i64 %i.dn, %i.do, !dbg !7210
  br i1 %i.dp, label %bb.af, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !7210

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7328, !noalias !7078
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !7329

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.af, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.dq = load ptr, ptr %i.l, align 8, !dbg !7330, !alias.scope !7093, !noalias !7078, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dq, !1729, !DIExpression(), !6630)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dn, !dbg !7331
    #dbg_value(ptr %i.dr, !1702, !DIExpression(), !6845)
    #dbg_value(ptr %i.dr, !1788, !DIExpression(), !6847)
    #dbg_value(i8 -1, !1791, !DIExpression(), !6847)
  store i8 -1, ptr %i.dr, align 1, !dbg !7332, !noalias !7078
  %i.ds = add i64 %i.m, 3, !dbg !7333             ; 10 uses
  store i64 %i.ds, ptr %i.k, align 8, !dbg !7333, !alias.scope !7093, !noalias !7078
    #dbg_value(i32 3, !7053, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6618)
    #dbg_value(ptr %.val, !7173, !DIExpression(), !6849)
    #dbg_value(i64 %i.ds, !7054, !DIExpression(), !6850)
    #dbg_value(i64 %i.ds, !7091, !DIExpression(), !6617)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !7334, !alias.scope !7078, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !7042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6851)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7334
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !7334, !alias.scope !7078
    #dbg_value(i64 %.sroa.4.0.copyload.i, !7042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6851)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7334
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !7334, !alias.scope !7078 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !7042, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6851)
    #dbg_value(ptr poison, !7041, !DIExpression(), !6852)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !7030, !DIExpression(DW_OP_deref), !6853)
    #dbg_value(ptr poison, !7028, !DIExpression(), !6854)
    #dbg_value(ptr poison, !7164, !DIExpression(), !6856)
    #dbg_value(ptr poison, !7164, !DIExpression(), !6857)
    #dbg_value(ptr poison, !7164, !DIExpression(), !6858)
    #dbg_declare(ptr %i.i, !7032, !DIExpression(), !6859)
    #dbg_declare(ptr %i.f, !7033, !DIExpression(), !6860)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !7335, !noalias !7094
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !7336, !noalias !7094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !7337, !noalias !7094
    #dbg_value(ptr %.val, !7161, !DIExpression(), !6862)
  store ptr %.val, ptr %i.h, align 8, !dbg !7338, !noalias !7094
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !7338
  store i8 -1, ptr %i.dt, align 8, !dbg !7338, !noalias !7094
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.b, !dbg !7339, !noalias !7094

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.dx, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7340 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !7058, !DIExpression(), !6841)
  %i.du = and i64 %.sroa.07.0.i, 56, !dbg !7341
  %i.dv = lshr i64 %i.de, %i.du, !dbg !7341
  %i.dw = icmp eq i64 %i.dv, 0, !dbg !7341
  %i.dx = add i64 %.sroa.07.0.i, -8, !dbg !7342
    #dbg_value(i64 %i.dx, !7058, !DIExpression(), !6841)
  br i1 %i.dw, label %.preheader.i, label %bb.ag, !dbg !7341

bb.ag:                                            ; preds = %.preheader.i
  %i.dy = lshr exact i64 %.sroa.07.0.i, 3, !dbg !7343 ; 2 uses
  %i.dz = add nuw nsw i64 %i.dy, 2, !dbg !7344    ; 2 uses
    #dbg_value(i64 %i.dz, !7057, !DIExpression(), !6863)
    #dbg_value(i64 %.sroa.07.0.i, !7058, !DIExpression(), !6841)
  %i.ea = icmp eq i64 %.sroa.07.0.i, 0, !dbg !7345
  br i1 %i.ea, label %.thread.i, label %bb.ah, !dbg !7345

bb.ah:                                            ; preds = %bb.ag
  %.not.i = icmp eq i64 %i.dz, 3, !dbg !7346
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.ai, !dbg !7346

.thread.i:                                        ; preds = %bb.ag, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.dn, %bb.ag ], [ %i.di, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7347 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.ag ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.ag ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs4_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !7060, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6864)
    #dbg_value(!DIArgList(i64 %i.ds, i64 %.sroa.02.06.i), !7059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !7348, !noalias !7078
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.ds), !dbg !7349, !noalias !7078
    #dbg_value(ptr %i.j, !1800, !DIExpression(), !6867)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j), !dbg !7350, !noalias !7078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !7351, !noalias !7078
  %.pre.pre = load i64, ptr %i.k, align 8, !dbg !7352, !noalias !7078
  br label %.loopexit7.i, !dbg !7353

bb.ai:                                            ; preds = %bb.ah
  %i.eb = add nsw i64 %i.dy, -1, !dbg !7354       ; 3 uses
    #dbg_value(i64 %i.eb, !7061, !DIExpression(), !6874)
  %i.ec = add nuw i64 %i.eb, %i.ds, !dbg !7355    ; 2 uses
    #dbg_value(i64 %i.ec, !7059, !DIExpression(), !6865)
    #dbg_value(i64 0, !7062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6875)
    #dbg_value(i64 %i.eb, !7062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6875)
    #dbg_value(ptr undef, !7073, !DIExpression(), !6600)
    #dbg_value(ptr undef, !7069, !DIExpression(), !6599)
    #dbg_value(ptr undef, !7065, !DIExpression(), !6598)
    #dbg_value(ptr undef, !7066, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6876)
  %.not20.i = icmp eq i64 %i.eb, 0, !dbg !7356
  br i1 %.not20.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !7357

.lr.ph.i.preheader:                               ; preds = %bb.ai
  %i.ed = icmp samesign ult i64 %i.dc, %i.ds
  br i1 %i.ed, label %bb.aj, label %.lr.ph.i, !dbg !7358, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ee = phi i64 [ %i.em, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.dc, %.lr.ph.i.preheader ], !dbg !7359 ; 5 uses
  %.sroa.016.014.i = phi i64 [ %i.ef, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.014.i, !7070, !DIExpression(), !6879)
    #dbg_value(i64 %.sroa.016.014.i, !7083, !DIExpression(), !6611)
    #dbg_value(i64 %.sroa.016.014.i, !7087, !DIExpression(), !6614)
  %i.ef = add nuw i64 %.sroa.016.014.i, 1, !dbg !7360 ; 2 uses
    #dbg_value(i64 %i.ef, !7062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6875)
    #dbg_value(ptr %.val, !7090, !DIExpression(), !6617)
  call void @llvm.experimental.noalias.scope.decl(metadata !7184), !dbg !7361
    #dbg_value(ptr %.val, !1839, !DIExpression(), !6882)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !6883)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !6885)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !6887)
    #dbg_value(i64 %i.ds, !1840, !DIExpression(), !6882)
    #dbg_value(i64 %i.ds, !1855, !DIExpression(), !6889)
    #dbg_value(i8 0, !1841, !DIExpression(), !6882)
    #dbg_value(i64 1, !1859, !DIExpression(), !6892)
    #dbg_value(i64 1, !1857, !DIExpression(), !6894)
    #dbg_value(i64 1, !1859, !DIExpression(), !6898)
    #dbg_value(i64 %i.ee, !1842, !DIExpression(), !6899)
  %i.eg = icmp sgt i64 %i.ee, -1, !dbg !7362
  call void @llvm.assume(i1 %i.eg), !dbg !7363
    #dbg_value(ptr %.val, !1862, !DIExpression(), !6900)
  %2 = load i64, ptr %.val, align 8, !dbg !7364, !range !1731, !alias.scope !7184, !noalias !7078, !noundef !718
  %3 = icmp eq i64 %i.ee, %2, !dbg !7365
  br i1 %3, label %bb.ak, label %bb.al, !dbg !7365

bb.aj:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.ds, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !7366, !noalias !7185
  unreachable, !dbg !7366

bb.ak:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7367, !noalias !7078
  br label %bb.al, !dbg !7368

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i
  %i.eh = load ptr, ptr %i.l, align 8, !dbg !7369, !alias.scope !7184, !noalias !7078, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.eh, !1856, !DIExpression(), !6889)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ds, !dbg !7370 ; 3 uses
    #dbg_value(ptr %i.ei, !1843, !DIExpression(), !6904)
    #dbg_value(ptr %i.ei, !1856, !DIExpression(), !6894)
    #dbg_value(ptr %i.ei, !1868, !DIExpression(), !6906)
  %i.ej = icmp samesign ult i64 %i.ds, %i.ee, !dbg !7371
  br i1 %i.ej, label %bb.am, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7371

bb.am:                                            ; preds = %bb.al
    #dbg_value(ptr %i.ei, !1871, !DIExpression(), !6908)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 1, !dbg !7372
    #dbg_value(ptr %i.ek, !1874, !DIExpression(), !6908)
  %i.el = sub nuw nsw i64 %i.ee, %i.ds, !dbg !7373
    #dbg_value(i64 %i.el, !1875, !DIExpression(), !6908)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull align 1 %i.ei, i64 %i.el, i1 false), !dbg !7374, !noalias !7078
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7375

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.am, %bb.al
    #dbg_value(i8 0, !1869, !DIExpression(), !6906)
  store i8 0, ptr %i.ei, align 1, !dbg !7376, !noalias !7078
  %i.em = add nuw i64 %i.ee, 1, !dbg !7377        ; 3 uses
    #dbg_value(i64 %i.em, !1853, !DIExpression(), !6887)
  store i64 %i.em, ptr %i.k, align 8, !dbg !7378, !alias.scope !7184, !noalias !7078
    #dbg_value(i64 %i.ef, !7062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6875)
    #dbg_value(ptr undef, !7073, !DIExpression(), !6600)
    #dbg_value(ptr undef, !7069, !DIExpression(), !6599)
    #dbg_value(ptr undef, !7065, !DIExpression(), !6598)
    #dbg_value(ptr undef, !7066, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6876)
  %exitcond.not.i = icmp eq i64 %i.ef, %i.eb, !dbg !7356
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !7357

.loopexit7.thread.i:                              ; preds = %bb.ai, %bb.ah
  %.sroa.014.0.ph.i = phi i64 [ %i.ec, %bb.ai ], [ %i.ds, %bb.ah ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !7059, !DIExpression(), !6865)
  %i.en = add i64 %.sroa.014.0.ph.i, -3, !dbg !7379
    #dbg_value(i64 %i.en, !7063, !DIExpression(), !6909)
    #dbg_value(i64 %i.en, !7182, !DIExpression(), !6911)
    #dbg_value(i64 %i.en, !7186, !DIExpression(), !6914)
    #dbg_value(i64 %i.en, !7189, !DIExpression(), !6917)
  br label %bb.an, !dbg !7380

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.em, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7352 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.dz, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.ec, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7381
    #dbg_value(i64 %.sroa.014.0.i, !7059, !DIExpression(), !6865)
  %i.eo = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !7379 ; 4 uses
    #dbg_value(i64 %i.eo, !7063, !DIExpression(), !6909)
    #dbg_value(i64 %i.eo, !7182, !DIExpression(), !6911)
    #dbg_value(i64 %i.eo, !7186, !DIExpression(), !6914)
    #dbg_value(i64 %i.eo, !7189, !DIExpression(), !6917)
  br i1 %i.df, label %bb.ao, label %bb.an, !dbg !7380

bb.an:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.ep = phi i64 [ %i.dc, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !7352 ; 2 uses
  %i.eq = phi i64 [ %i.en, %.loopexit7.thread.i ], [ %i.eo, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1363.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !7181, !DIExpression(), !6918)
    #dbg_value(ptr %.val, !7178, !DIExpression(), !6919)
    #dbg_value(ptr %.val, !7175, !DIExpression(), !6920)
    #dbg_value(ptr %.val, !7192, !DIExpression(), !6923)
    #dbg_value(i64 %i.eq, !7182, !DIExpression(), !6918)
    #dbg_value(i64 %i.eq, !7186, !DIExpression(), !6925)
    #dbg_value(i64 %i.eq, !7189, !DIExpression(), !6927)
    #dbg_value(ptr poison, !7187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6925)
    #dbg_value(ptr poison, !7190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6927)
    #dbg_value(i64 %i.ep, !7187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6925)
    #dbg_value(i64 %i.ep, !7190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6927)
  %i.er = icmp ult i64 %i.eq, %i.ep, !dbg !7382
  br i1 %i.er, label %bb.ap, label %bb.aq, !dbg !7382

bb.ao:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !7181, !DIExpression(), !6911)
    #dbg_value(ptr %.val, !7178, !DIExpression(), !6929)
    #dbg_value(ptr %.val, !7175, !DIExpression(), !6931)
    #dbg_value(ptr %.val, !7192, !DIExpression(), !6933)
    #dbg_value(ptr poison, !7187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6914)
    #dbg_value(ptr poison, !7190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6917)
    #dbg_value(i64 %.pre, !7187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6914)
    #dbg_value(i64 %.pre, !7190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6917)
  %i.es = icmp ult i64 %i.eo, %.pre, !dbg !7383
  br i1 %i.es, label %bb.as, label %bb.at, !dbg !7383

bb.ap:                                            ; preds = %bb.an
  %i.et = load ptr, ptr %i.l, align 8, !dbg !7384, !noalias !7078, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.et, !7187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6925)
    #dbg_value(ptr %i.et, !7190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6927)
  %i.eu = lshr exact i64 %.sroa.07.1363.i, 3, !dbg !7385
  %i.ev = trunc i64 %i.eu to i8, !dbg !7386
  %i.ew = add i8 %i.ev, 1, !dbg !7386
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eq, !dbg !7387
  %i.ey = or i8 %i.ew, -128, !dbg !7388
  store i8 %i.ey, ptr %i.ex, align 1, !dbg !7388, !noalias !7078
    #dbg_value(i64 %i.eq, !7063, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6909)
    #dbg_value(i64 %i.eq, !7182, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6911)
    #dbg_value(i64 %i.eq, !7186, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6914)
    #dbg_value(i64 %i.eq, !7189, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6917)
  %.sroa.018.015.i = add nuw i64 %i.eq, 1, !dbg !7389 ; 3 uses
  %i.ez = load i64, ptr %i.k, align 8, !dbg !7390, !noalias !7078, !noundef !718 ; 2 uses
  %i.fa = icmp ult i64 %.sroa.018.015.i, %i.ez, !dbg !7391
  br i1 %i.fa, label %.lr.ph18.i, label %._crit_edge.i, !dbg !7391

bb.aq:                                            ; preds = %bb.an
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !7382, !noalias !7078
  unreachable, !dbg !7382

bb.ar:                                            ; preds = %.lr.ph18.i
  %i.fb = add i64 %.sroa.07.216.i, -8, !dbg !7392
    #dbg_value(i64 %i.fb, !7058, !DIExpression(), !6841)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.017.i, 1, !dbg !7389 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !7189, !DIExpression(), !6917)
    #dbg_value(i64 %.sroa.018.0.i, !7186, !DIExpression(), !6914)
    #dbg_value(i64 %.sroa.018.0.i, !7182, !DIExpression(), !6911)
    #dbg_value(i64 %.sroa.018.0.i, !7063, !DIExpression(), !6909)
    #dbg_value(ptr %.val, !7181, !DIExpression(), !6945)
    #dbg_value(ptr %.val, !7178, !DIExpression(), !6946)
    #dbg_value(ptr %.val, !7175, !DIExpression(), !6947)
    #dbg_value(ptr %.val, !7192, !DIExpression(), !6949)
    #dbg_value(i64 %.sroa.018.0.i, !7182, !DIExpression(), !6945)
    #dbg_value(i64 %.sroa.018.0.i, !7186, !DIExpression(), !6950)
    #dbg_value(i64 %.sroa.018.0.i, !7189, !DIExpression(), !6951)
  %i.fc = load i64, ptr %i.k, align 8, !dbg !7390, !noalias !7078, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !7187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6950)
    #dbg_value(ptr poison, !7190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6951)
    #dbg_value(i64 %i.fc, !7187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6950)
    #dbg_value(i64 %i.fc, !7190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6951)
  %i.fd = icmp ult i64 %.sroa.018.0.i, %i.fc, !dbg !7391
  br i1 %i.fd, label %.lr.ph18.i, label %._crit_edge.i, !dbg !7391

.lr.ph18.i:                                       ; preds = %bb.ap, %bb.ar
  %.sroa.018.017.i = phi i64 [ %.sroa.018.0.i, %bb.ar ], [ %.sroa.018.015.i, %bb.ap ] ; 2 uses
  %.sroa.07.216.i = phi i64 [ %i.fb, %bb.ar ], [ %.sroa.07.1363.i, %bb.ap ] ; 3 uses
    #dbg_value(i64 %.sroa.07.216.i, !7058, !DIExpression(), !6841)
  %i.fe = load ptr, ptr %i.l, align 8, !dbg !7393, !noalias !7078, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fe, !7187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6950)
    #dbg_value(ptr %i.fe, !7190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6951)
  %i.ff = and i64 %.sroa.07.216.i, 56, !dbg !7394
  %i.fg = lshr i64 %i.de, %i.ff, !dbg !7394
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.018.017.i, !dbg !7395
  %i.fi = trunc i64 %i.fg to i8, !dbg !7396
  store i8 %i.fi, ptr %i.fh, align 1, !dbg !7396, !noalias !7078
    #dbg_value(i64 %.sroa.018.017.i, !7063, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6909)
    #dbg_value(i64 %.sroa.018.017.i, !7182, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6911)
    #dbg_value(i64 %.sroa.018.017.i, !7186, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6914)
    #dbg_value(i64 %.sroa.018.017.i, !7189, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !6917)
  %i.fj = icmp eq i64 %.sroa.07.216.i, 0, !dbg !7397
    #dbg_value(i64 %.sroa.07.216.i, !7058, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !6841)
  br i1 %i.fj, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs4_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.ar, !dbg !7397

._crit_edge.i:                                    ; preds = %bb.ar, %bb.ap
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.015.i, %bb.ap ], [ %.sroa.018.0.i, %bb.ar ], !dbg !7389
  %.lcssa.i = phi i64 [ %i.ez, %bb.ap ], [ %i.fc, %bb.ar ], !dbg !7390
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !7391, !noalias !7078
  unreachable, !dbg !7391

bb.as:                                            ; preds = %bb.ao
  %i.fk = load ptr, ptr %i.l, align 8, !dbg !7398, !noalias !7078, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fk, !7187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6914)
    #dbg_value(ptr %i.fk, !7190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6917)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.eo, !dbg !7399
  %i.fm = trunc nuw nsw i64 %i.de to i8, !dbg !7400
  store i8 %i.fm, ptr %i.fl, align 1, !dbg !7400, !noalias !7078
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs4_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !7401

bb.at:                                            ; preds = %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !7383, !noalias !7078
  unreachable, !dbg !7383

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs4_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph18.i, %bb.as
  ret void, !dbg !7402
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs5_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7405 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !7660, !DIExpression(), !7428)
    #dbg_value(ptr poison, !7664, !DIExpression(), !7429)
    #dbg_value(ptr poison, !7668, !DIExpression(), !7430)
  %i.h = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !7657, !DIExpression(), !7694)
    #dbg_declare(ptr %1, !7658, !DIExpression(), !7695)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !7788
  %.val = load ptr, ptr %0, align 8, !dbg !7789, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7696), !dbg !7789
    #dbg_value(ptr poison, !7679, !DIExpression(), !7433)
    #dbg_declare(ptr %1, !7680, !DIExpression(), !7434)
    #dbg_value(i64 3, !7681, !DIExpression(), !7435)
    #dbg_value(i8 -1, !7697, !DIExpression(), !7438)
    #dbg_value(i64 1, !7700, !DIExpression(), !7441)
    #dbg_value(i64 1, !7704, !DIExpression(), !7444)
    #dbg_value(i8 0, !7707, !DIExpression(), !7447)
    #dbg_value(i32 0, !7682, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7448)
    #dbg_value(i32 3, !7682, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7448)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
    #dbg_value(i32 0, !7682, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7448)
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 7 uses
    #dbg_value(i32 1, !7682, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7448)
    #dbg_value(ptr %.val, !7698, !DIExpression(), !7438)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !7450)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !7452)
    #dbg_value(i8 -1, !1699, !DIExpression(), !7450)
    #dbg_value(i64 1, !1710, !DIExpression(), !7455)
  %i.k = load i64, ptr %i.i, align 8, !dbg !7790, !alias.scope !7711, !noalias !7696, !noundef !718 ; 5 uses
    #dbg_value(i64 %i.k, !1700, !DIExpression(), !7458)
    #dbg_value(i64 %i.k, !1724, !DIExpression(), !7460)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !7461)
  %i.l = load i64, ptr %.val, align 8, !dbg !7791, !range !1731, !alias.scope !7711, !noalias !7696, !noundef !718
  %i.m = icmp eq i64 %i.k, %i.l, !dbg !7792
  br i1 %i.m, label %bb.r, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7792

.body.i.i.i:                                      ; preds = %bb.l, %bb.j, %bb.e, %bb.b
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.u, %bb.e ], [ %i.n, %bb.b ], [ %i.ad, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsk5jvY4Bb3tQ_5yasna6models3oid16ObjectIdentifierECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %common.resume.i.i.i unwind label %bb.q, !dbg !7793, !noalias !7712

bb.b:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, %bb.m, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7794, !noalias !7712
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.o = load i8, ptr %.sroa.5.0.copyload.i, align 1, !dbg !7795, !range !1732, !noalias !7712, !noundef !718
  %i.p = trunc nuw i8 %i.o to i1, !dbg !7795
  br i1 %i.p, label %bb.g, label %bb.d, !dbg !7795

bb.d:                                             ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !7796, !noalias !7712
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.q = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 32, !dbg !7797
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !dbg !7797, !noalias !7712, !nonnull !718, !noundef !718
  %i.r = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 40, !dbg !7797
  %.val7.i.i.i = load i64, ptr %i.r, align 8, !dbg !7797, !noalias !7712, !noundef !718
    #dbg_value(ptr poison, !7729, !DIExpression(), !7476)
    #dbg_declare(ptr %i.b, !7732, !DIExpression(), !7477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7798, !noalias !7737
  store i64 0, ptr %i.b, align 8, !dbg !7799, !noalias !7737
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7799
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !dbg !7799, !noalias !7737
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !7799
  store i64 0, ptr %i.t, align 8, !dbg !7799, !noalias !7737
    #dbg_value(ptr %i.b, !7733, !DIExpression(), !7482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7800, !noalias !7737
  store ptr %i.b, ptr %i.a, align 8, !dbg !7800, !noalias !7737
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7800
  store i8 -1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !7800, !noalias !7737
    #dbg_value(ptr poison, !7738, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7485)
    #dbg_declare(ptr %i.a, !7741, !DIExpression(), !7486)
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_der(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val7.i.i.i)
          to label %bb.i unwind label %bb.e, !dbg !7801, !noalias !7737

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #11
          to label %.body.i.i.i unwind label %bb.f, !dbg !7802, !noalias !7737

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7803, !noalias !7737
  unreachable, !dbg !7803

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !7804, !noalias !7712
    #dbg_value(ptr %.val, !7743, !DIExpression(), !7491)
  store ptr %.val, ptr %i.e, align 8, !dbg !7805, !noalias !7712
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !7805
  store i8 -1, ptr %i.w, align 8, !dbg !7805, !noalias !7712
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.b, !dbg !7806, !noalias !7712

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7807, !noalias !7712
  br label %bb.d, !dbg !7808

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7809, !noalias !7737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !7810, !noalias !7712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7802, !noalias !7737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7811, !noalias !7712
    #dbg_value(ptr %.val, !7743, !DIExpression(), !7494)
  store ptr %.val, ptr %i.c, align 8, !dbg !7812, !noalias !7712
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7812
  store i8 -1, ptr %i.x, align 8, !dbg !7812, !noalias !7712
    #dbg_value(ptr %i.d, !7749, !DIExpression(), !7497)
    #dbg_value(ptr %i.d, !7751, !DIExpression(), !7500)
    #dbg_value(ptr %i.d, !7753, !DIExpression(), !7503)
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7813
  %i.z = load ptr, ptr %i.y, align 8, !dbg !7813, !noalias !7712, !nonnull !718, !noundef !718
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !7814
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !7814, !noalias !7712, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
          to label %bb.k unwind label %bb.j, !dbg !7815, !noalias !7712

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #11
          to label %.body.i.i.i unwind label %bb.q, !dbg !7816, !noalias !7712

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7817, !noalias !7712
    #dbg_value(ptr %i.d, !1894, !DIExpression(), !7511)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.l, !dbg !7818, !noalias !7712

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1899, !DIExpression(), !7513)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i unwind label %bb.n, !dbg !7819, !noalias !7712

bb.m:                                             ; preds = %bb.k
    #dbg_value(ptr %i.d, !1899, !DIExpression(), !7515)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !7820, !noalias !7712

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7818, !noalias !7712
  unreachable, !dbg !7818

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7816, !noalias !7712
    #dbg_value(ptr %i.g, !1753, !DIExpression(), !7517)
    #dbg_value(ptr %i.g, !1760, !DIExpression(), !7519)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.o, !dbg !7821, !noalias !7712

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1767, !DIExpression(), !7521)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i.i.i unwind label %bb.p, !dbg !7822, !noalias !7712

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7821, !noalias !7712
  unreachable, !dbg !7821

common.resume.i.i.i:                              ; preds = %bb.o, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.af, %bb.o ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !7823

bb.q:                                             ; preds = %bb.j, %.body.i.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !7824, !noalias !7712
  unreachable, !dbg !7824

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.g, !1767, !DIExpression(), !7523)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !7825, !noalias !7712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !7793, !noalias !7712
    #dbg_value(ptr %.val, !7755, !DIExpression(), !7526)
  %i.ai = load i64, ptr %i.i, align 8, !dbg !7826, !noalias !7696, !noundef !718 ; 6 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !7827
  call void @llvm.assume(i1 %i.aj), !dbg !7828
  %i.ak = sub nsw i64 %i.ai, %i.ay, !dbg !7829    ; 4 uses
    #dbg_value(i64 %i.ak, !7685, !DIExpression(), !7527)
    #dbg_value(i64 56, !7687, !DIExpression(), !7528)
  %i.al = icmp ult i64 %i.ak, 128, !dbg !7830     ; 2 uses
  br i1 %i.al, label %.thread.i, label %.preheader.i, !dbg !7830

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7831, !noalias !7696
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7832

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.r, %bb.a
  %i.am = load ptr, ptr %i.j, align 8, !dbg !7833, !alias.scope !7711, !noalias !7696, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.am, !1729, !DIExpression(), !7460)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.k, !dbg !7834
    #dbg_value(ptr %i.an, !1702, !DIExpression(), !7532)
    #dbg_value(ptr %i.an, !1788, !DIExpression(), !7534)
    #dbg_value(i8 -1, !1791, !DIExpression(), !7534)
  store i8 -1, ptr %i.an, align 1, !dbg !7835, !noalias !7696
  %i.ao = add i64 %i.k, 1, !dbg !7836             ; 4 uses
  store i64 %i.ao, ptr %i.i, align 8, !dbg !7836, !alias.scope !7711, !noalias !7696
    #dbg_value(i32 2, !7682, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7448)
    #dbg_value(ptr %.val, !7698, !DIExpression(), !7438)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !7450)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !7452)
    #dbg_value(i8 -1, !1699, !DIExpression(), !7450)
    #dbg_value(i64 1, !1710, !DIExpression(), !7455)
    #dbg_value(i64 %i.ao, !1700, !DIExpression(), !7458)
    #dbg_value(i64 %i.ao, !1724, !DIExpression(), !7460)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !7461)
  %i.ap = load i64, ptr %.val, align 8, !dbg !7791, !range !1731, !alias.scope !7711, !noalias !7696, !noundef !718
  %i.aq = icmp eq i64 %i.ao, %i.ap, !dbg !7792
  br i1 %i.aq, label %bb.s, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !7792

bb.s:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7831, !noalias !7696
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !7832

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.s, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.ar = load ptr, ptr %i.j, align 8, !dbg !7833, !alias.scope !7711, !noalias !7696, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ar, !1729, !DIExpression(), !7460)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao, !dbg !7834
    #dbg_value(ptr %i.as, !1702, !DIExpression(), !7532)
    #dbg_value(ptr %i.as, !1788, !DIExpression(), !7534)
    #dbg_value(i8 -1, !1791, !DIExpression(), !7534)
  store i8 -1, ptr %i.as, align 1, !dbg !7835, !noalias !7696
  %i.at = add i64 %i.k, 2, !dbg !7836             ; 4 uses
  store i64 %i.at, ptr %i.i, align 8, !dbg !7836, !alias.scope !7711, !noalias !7696
    #dbg_value(i32 3, !7682, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7448)
    #dbg_value(ptr %.val, !7698, !DIExpression(), !7438)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !7450)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !7452)
    #dbg_value(i8 -1, !1699, !DIExpression(), !7450)
    #dbg_value(i64 1, !1710, !DIExpression(), !7455)
    #dbg_value(i64 %i.at, !1700, !DIExpression(), !7458)
    #dbg_value(i64 %i.at, !1724, !DIExpression(), !7460)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !7461)
  %i.au = load i64, ptr %.val, align 8, !dbg !7791, !range !1731, !alias.scope !7711, !noalias !7696, !noundef !718
  %i.av = icmp eq i64 %i.at, %i.au, !dbg !7792
  br i1 %i.av, label %bb.t, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !7792

bb.t:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7831, !noalias !7696
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !7832

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.t, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.aw = load ptr, ptr %i.j, align 8, !dbg !7833, !alias.scope !7711, !noalias !7696, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.aw, !1729, !DIExpression(), !7460)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at, !dbg !7834
    #dbg_value(ptr %i.ax, !1702, !DIExpression(), !7532)
    #dbg_value(ptr %i.ax, !1788, !DIExpression(), !7534)
    #dbg_value(i8 -1, !1791, !DIExpression(), !7534)
  store i8 -1, ptr %i.ax, align 1, !dbg !7835, !noalias !7696
  %i.ay = add i64 %i.k, 3, !dbg !7836             ; 10 uses
  store i64 %i.ay, ptr %i.i, align 8, !dbg !7836, !alias.scope !7711, !noalias !7696
    #dbg_value(i32 3, !7682, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7448)
    #dbg_value(ptr %.val, !7755, !DIExpression(), !7536)
    #dbg_value(i64 %i.ay, !7683, !DIExpression(), !7537)
    #dbg_value(i64 %i.ay, !7709, !DIExpression(), !7447)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !7837, !alias.scope !7696, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !7727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7538)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7837
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !7837, !alias.scope !7696
    #dbg_value(i64 %.sroa.4.0.copyload.i, !7727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7538)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7837
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !7837, !alias.scope !7696 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !7727, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7538)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !7837
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !7837, !alias.scope !7696 ; 3 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !7727, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !7538)
    #dbg_value(ptr poison, !7726, !DIExpression(), !7539)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !7717, !DIExpression(DW_OP_deref), !7540)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !7718, !DIExpression(), !7540)
    #dbg_value(ptr poison, !7715, !DIExpression(), !7541)
    #dbg_value(ptr poison, !7746, !DIExpression(), !7543)
    #dbg_value(ptr poison, !7746, !DIExpression(), !7544)
    #dbg_value(ptr poison, !7746, !DIExpression(), !7545)
    #dbg_declare(ptr %i.g, !7719, !DIExpression(), !7546)
    #dbg_declare(ptr %i.d, !7720, !DIExpression(), !7547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !7838, !noalias !7712
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !7839, !noalias !7712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !7840, !noalias !7712
    #dbg_value(ptr %.val, !7743, !DIExpression(), !7549)
  store ptr %.val, ptr %i.f, align 8, !dbg !7841, !noalias !7712
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !7841
  store i8 -1, ptr %i.az, align 8, !dbg !7841, !noalias !7712
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.c unwind label %bb.b, !dbg !7842, !noalias !7712

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.bd, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7843 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !7687, !DIExpression(), !7528)
  %i.ba = and i64 %.sroa.07.0.i, 56, !dbg !7844
  %i.bb = lshr i64 %i.ak, %i.ba, !dbg !7844
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !7844
  %i.bd = add i64 %.sroa.07.0.i, -8, !dbg !7845
    #dbg_value(i64 %i.bd, !7687, !DIExpression(), !7528)
  br i1 %i.bc, label %.preheader.i, label %bb.u, !dbg !7844

bb.u:                                             ; preds = %.preheader.i
  %i.be = lshr exact i64 %.sroa.07.0.i, 3, !dbg !7846 ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 2, !dbg !7847    ; 2 uses
    #dbg_value(i64 %i.bf, !7686, !DIExpression(), !7550)
    #dbg_value(i64 %.sroa.07.0.i, !7687, !DIExpression(), !7528)
  %i.bg = icmp eq i64 %.sroa.07.0.i, 0, !dbg !7848
  br i1 %i.bg, label %.thread.i, label %bb.v, !dbg !7848

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp eq i64 %i.bf, 3, !dbg !7849
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.w, !dbg !7849

.thread.i:                                        ; preds = %bb.u, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.at, %bb.u ], [ %i.ao, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7850 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.u ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.u ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs5_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !7689, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !7551)
    #dbg_value(!DIArgList(i64 %i.ay, i64 %.sroa.02.06.i), !7688, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !7552)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !7851, !noalias !7696
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.ay), !dbg !7852, !noalias !7696
    #dbg_value(ptr %i.h, !1800, !DIExpression(), !7554)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h), !dbg !7853, !noalias !7696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !7854, !noalias !7696
  %.pre.pre = load i64, ptr %i.i, align 8, !dbg !7855, !noalias !7696
  br label %.loopexit7.i, !dbg !7856

bb.w:                                             ; preds = %bb.v
  %i.bh = add nsw i64 %i.be, -1, !dbg !7857       ; 3 uses
    #dbg_value(i64 %i.bh, !7690, !DIExpression(), !7561)
  %i.bi = add nuw i64 %i.bh, %i.ay, !dbg !7858    ; 2 uses
    #dbg_value(i64 %i.bi, !7688, !DIExpression(), !7552)
    #dbg_value(i64 0, !7691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7562)
    #dbg_value(i64 %i.bh, !7691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7562)
    #dbg_value(ptr undef, !7668, !DIExpression(), !7430)
    #dbg_value(ptr undef, !7664, !DIExpression(), !7429)
    #dbg_value(ptr undef, !7660, !DIExpression(), !7428)
    #dbg_value(ptr undef, !7661, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7563)
  %.not18.i = icmp eq i64 %i.bh, 0, !dbg !7859
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !7860

.lr.ph.i.preheader:                               ; preds = %bb.w
  %i.bj = icmp samesign ult i64 %i.ai, %i.ay
  br i1 %i.bj, label %bb.x, label %.lr.ph.i, !dbg !7861, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.bk = phi i64 [ %i.bs, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.ai, %.lr.ph.i.preheader ], !dbg !7862 ; 5 uses
  %.sroa.016.012.i = phi i64 [ %i.bl, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.012.i, !7665, !DIExpression(), !7566)
    #dbg_value(i64 %.sroa.016.012.i, !7701, !DIExpression(), !7441)
    #dbg_value(i64 %.sroa.016.012.i, !7705, !DIExpression(), !7444)
  %i.bl = add nuw i64 %.sroa.016.012.i, 1, !dbg !7863 ; 2 uses
    #dbg_value(i64 %i.bl, !7691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7562)
    #dbg_value(ptr %.val, !7708, !DIExpression(), !7447)
  call void @llvm.experimental.noalias.scope.decl(metadata !7766), !dbg !7864
    #dbg_value(ptr %.val, !1839, !DIExpression(), !7569)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !7570)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !7572)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !7574)
    #dbg_value(i64 %i.ay, !1840, !DIExpression(), !7569)
    #dbg_value(i64 %i.ay, !1855, !DIExpression(), !7576)
    #dbg_value(i8 0, !1841, !DIExpression(), !7569)
    #dbg_value(i64 1, !1859, !DIExpression(), !7579)
    #dbg_value(i64 1, !1857, !DIExpression(), !7581)
    #dbg_value(i64 1, !1859, !DIExpression(), !7585)
    #dbg_value(i64 %i.bk, !1842, !DIExpression(), !7586)
  %i.bm = icmp sgt i64 %i.bk, -1, !dbg !7865
  call void @llvm.assume(i1 %i.bm), !dbg !7866
    #dbg_value(ptr %.val, !1862, !DIExpression(), !7587)
  %2 = load i64, ptr %.val, align 8, !dbg !7867, !range !1731, !alias.scope !7766, !noalias !7696, !noundef !718
  %3 = icmp eq i64 %i.bk, %2, !dbg !7868
  br i1 %3, label %bb.y, label %bb.z, !dbg !7868

bb.x:                                             ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.ay, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !7869, !noalias !7767
  unreachable, !dbg !7869

bb.y:                                             ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !7870, !noalias !7696
  br label %bb.z, !dbg !7871

bb.z:                                             ; preds = %bb.y, %.lr.ph.i
  %i.bn = load ptr, ptr %i.j, align 8, !dbg !7872, !alias.scope !7766, !noalias !7696, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bn, !1856, !DIExpression(), !7576)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ay, !dbg !7873 ; 3 uses
    #dbg_value(ptr %i.bo, !1843, !DIExpression(), !7591)
    #dbg_value(ptr %i.bo, !1856, !DIExpression(), !7581)
    #dbg_value(ptr %i.bo, !1868, !DIExpression(), !7593)
  %i.bp = icmp samesign ult i64 %i.ay, %i.bk, !dbg !7874
  br i1 %i.bp, label %bb.aa, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7874

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %i.bo, !1871, !DIExpression(), !7595)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1, !dbg !7875
    #dbg_value(ptr %i.bq, !1874, !DIExpression(), !7595)
  %i.br = sub nuw nsw i64 %i.bk, %i.ay, !dbg !7876
    #dbg_value(i64 %i.br, !1875, !DIExpression(), !7595)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %i.bo, i64 %i.br, i1 false), !dbg !7877, !noalias !7696
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !7878

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.aa, %bb.z
    #dbg_value(i8 0, !1869, !DIExpression(), !7593)
  store i8 0, ptr %i.bo, align 1, !dbg !7879, !noalias !7696
  %i.bs = add nuw i64 %i.bk, 1, !dbg !7880        ; 3 uses
    #dbg_value(i64 %i.bs, !1853, !DIExpression(), !7574)
  store i64 %i.bs, ptr %i.i, align 8, !dbg !7881, !alias.scope !7766, !noalias !7696
    #dbg_value(i64 %i.bl, !7691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7562)
    #dbg_value(ptr undef, !7668, !DIExpression(), !7430)
    #dbg_value(ptr undef, !7664, !DIExpression(), !7429)
    #dbg_value(ptr undef, !7660, !DIExpression(), !7428)
    #dbg_value(ptr undef, !7661, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7563)
  %exitcond.not.i = icmp eq i64 %i.bl, %i.bh, !dbg !7859
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !7860

.loopexit7.thread.i:                              ; preds = %bb.w, %bb.v
  %.sroa.014.0.ph.i = phi i64 [ %i.bi, %bb.w ], [ %i.ay, %bb.v ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !7688, !DIExpression(), !7552)
  %i.bt = add i64 %.sroa.014.0.ph.i, -3, !dbg !7882
    #dbg_value(i64 %i.bt, !7692, !DIExpression(), !7596)
    #dbg_value(i64 %i.bt, !7764, !DIExpression(), !7598)
    #dbg_value(i64 %i.bt, !7768, !DIExpression(), !7601)
    #dbg_value(i64 %i.bt, !7771, !DIExpression(), !7604)
  br label %bb.ab, !dbg !7883

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.bs, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7855 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.bf, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.bi, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !7884
    #dbg_value(i64 %.sroa.014.0.i, !7688, !DIExpression(), !7552)
  %i.bu = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !7882 ; 4 uses
    #dbg_value(i64 %i.bu, !7692, !DIExpression(), !7596)
    #dbg_value(i64 %i.bu, !7764, !DIExpression(), !7598)
    #dbg_value(i64 %i.bu, !7768, !DIExpression(), !7601)
    #dbg_value(i64 %i.bu, !7771, !DIExpression(), !7604)
  br i1 %i.al, label %bb.ac, label %bb.ab, !dbg !7883

bb.ab:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.bv = phi i64 [ %i.ai, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !7855 ; 2 uses
  %i.bw = phi i64 [ %i.bt, %.loopexit7.thread.i ], [ %i.bu, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1341.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !7763, !DIExpression(), !7605)
    #dbg_value(ptr %.val, !7760, !DIExpression(), !7606)
    #dbg_value(ptr %.val, !7757, !DIExpression(), !7607)
    #dbg_value(ptr %.val, !7774, !DIExpression(), !7610)
    #dbg_value(i64 %i.bw, !7764, !DIExpression(), !7605)
    #dbg_value(i64 %i.bw, !7768, !DIExpression(), !7612)
    #dbg_value(i64 %i.bw, !7771, !DIExpression(), !7614)
    #dbg_value(ptr poison, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7612)
    #dbg_value(ptr poison, !7772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7614)
    #dbg_value(i64 %i.bv, !7769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7612)
    #dbg_value(i64 %i.bv, !7772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7614)
  %i.bx = icmp ult i64 %i.bw, %i.bv, !dbg !7885
  br i1 %i.bx, label %bb.ad, label %bb.ae, !dbg !7885

bb.ac:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !7763, !DIExpression(), !7598)
    #dbg_value(ptr %.val, !7760, !DIExpression(), !7616)
    #dbg_value(ptr %.val, !7757, !DIExpression(), !7618)
    #dbg_value(ptr %.val, !7774, !DIExpression(), !7620)
    #dbg_value(ptr poison, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7601)
    #dbg_value(ptr poison, !7772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7604)
    #dbg_value(i64 %.pre, !7769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7601)
    #dbg_value(i64 %.pre, !7772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7604)
  %i.by = icmp ult i64 %i.bu, %.pre, !dbg !7886
  br i1 %i.by, label %bb.ag, label %bb.ah, !dbg !7886

bb.ad:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %i.j, align 8, !dbg !7887, !noalias !7696, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bz, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7612)
    #dbg_value(ptr %i.bz, !7772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7614)
  %i.ca = lshr exact i64 %.sroa.07.1341.i, 3, !dbg !7888
  %i.cb = trunc i64 %i.ca to i8, !dbg !7889
  %i.cc = add i8 %i.cb, 1, !dbg !7889
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw, !dbg !7890
  %i.ce = or i8 %i.cc, -128, !dbg !7891
  store i8 %i.ce, ptr %i.cd, align 1, !dbg !7891, !noalias !7696
    #dbg_value(i64 %i.bw, !7692, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7596)
    #dbg_value(i64 %i.bw, !7764, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7598)
    #dbg_value(i64 %i.bw, !7768, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7601)
    #dbg_value(i64 %i.bw, !7771, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7604)
  %.sroa.018.013.i = add nuw i64 %i.bw, 1, !dbg !7892 ; 3 uses
  %i.cf = load i64, ptr %i.i, align 8, !dbg !7893, !noalias !7696, !noundef !718 ; 2 uses
  %i.cg = icmp ult i64 %.sroa.018.013.i, %i.cf, !dbg !7894
  br i1 %i.cg, label %.lr.ph16.i, label %._crit_edge.i, !dbg !7894

bb.ae:                                            ; preds = %bb.ab
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !7885, !noalias !7696
  unreachable, !dbg !7885

bb.af:                                            ; preds = %.lr.ph16.i
  %i.ch = add i64 %.sroa.07.214.i, -8, !dbg !7895
    #dbg_value(i64 %i.ch, !7687, !DIExpression(), !7528)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.015.i, 1, !dbg !7892 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !7771, !DIExpression(), !7604)
    #dbg_value(i64 %.sroa.018.0.i, !7768, !DIExpression(), !7601)
    #dbg_value(i64 %.sroa.018.0.i, !7764, !DIExpression(), !7598)
    #dbg_value(i64 %.sroa.018.0.i, !7692, !DIExpression(), !7596)
    #dbg_value(ptr %.val, !7763, !DIExpression(), !7632)
    #dbg_value(ptr %.val, !7760, !DIExpression(), !7633)
    #dbg_value(ptr %.val, !7757, !DIExpression(), !7634)
    #dbg_value(ptr %.val, !7774, !DIExpression(), !7636)
    #dbg_value(i64 %.sroa.018.0.i, !7764, !DIExpression(), !7632)
    #dbg_value(i64 %.sroa.018.0.i, !7768, !DIExpression(), !7637)
    #dbg_value(i64 %.sroa.018.0.i, !7771, !DIExpression(), !7638)
  %i.ci = load i64, ptr %i.i, align 8, !dbg !7893, !noalias !7696, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7637)
    #dbg_value(ptr poison, !7772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7638)
    #dbg_value(i64 %i.ci, !7769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7637)
    #dbg_value(i64 %i.ci, !7772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7638)
  %i.cj = icmp ult i64 %.sroa.018.0.i, %i.ci, !dbg !7894
  br i1 %i.cj, label %.lr.ph16.i, label %._crit_edge.i, !dbg !7894

.lr.ph16.i:                                       ; preds = %bb.ad, %bb.af
  %.sroa.018.015.i = phi i64 [ %.sroa.018.0.i, %bb.af ], [ %.sroa.018.013.i, %bb.ad ] ; 2 uses
  %.sroa.07.214.i = phi i64 [ %i.ch, %bb.af ], [ %.sroa.07.1341.i, %bb.ad ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i, !7687, !DIExpression(), !7528)
  %i.ck = load ptr, ptr %i.j, align 8, !dbg !7896, !noalias !7696, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ck, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7637)
    #dbg_value(ptr %i.ck, !7772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7638)
  %i.cl = and i64 %.sroa.07.214.i, 56, !dbg !7897
  %i.cm = lshr i64 %i.ak, %i.cl, !dbg !7897
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.018.015.i, !dbg !7898
  %i.co = trunc i64 %i.cm to i8, !dbg !7899
  store i8 %i.co, ptr %i.cn, align 1, !dbg !7899, !noalias !7696
    #dbg_value(i64 %.sroa.018.015.i, !7692, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7596)
    #dbg_value(i64 %.sroa.018.015.i, !7764, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7598)
    #dbg_value(i64 %.sroa.018.015.i, !7768, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7601)
    #dbg_value(i64 %.sroa.018.015.i, !7771, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7604)
  %i.cp = icmp eq i64 %.sroa.07.214.i, 0, !dbg !7900
    #dbg_value(i64 %.sroa.07.214.i, !7687, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !7528)
  br i1 %i.cp, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs5_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.af, !dbg !7900

._crit_edge.i:                                    ; preds = %bb.af, %bb.ad
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.013.i, %bb.ad ], [ %.sroa.018.0.i, %bb.af ], !dbg !7892
  %.lcssa.i = phi i64 [ %i.cf, %bb.ad ], [ %i.ci, %bb.af ], !dbg !7893
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !7894, !noalias !7696
  unreachable, !dbg !7894

bb.ag:                                            ; preds = %bb.ac
  %i.cq = load ptr, ptr %i.j, align 8, !dbg !7901, !noalias !7696, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cq, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7601)
    #dbg_value(ptr %i.cq, !7772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7604)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.bu, !dbg !7902
  %i.cs = trunc nuw nsw i64 %i.ak to i8, !dbg !7903
  store i8 %i.cs, ptr %i.cr, align 1, !dbg !7903, !noalias !7696
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs5_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !7904

bb.ah:                                            ; preds = %bb.ac
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !7886, !noalias !7696
  unreachable, !dbg !7886

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs5_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph16.i, %bb.ag
  ret void, !dbg !7905
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs_0E0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7908 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !8397, !DIExpression(), !7961)
    #dbg_value(ptr poison, !8401, !DIExpression(), !7962)
    #dbg_value(ptr poison, !8405, !DIExpression(), !7963)
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !8494, !DIExpression(), !7971)
    #dbg_value(ptr poison, !8498, !DIExpression(), !7972)
    #dbg_value(ptr poison, !8502, !DIExpression(), !7973)
  %i.k = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !8394, !DIExpression(), !8505)
    #dbg_declare(ptr %1, !8395, !DIExpression(), !8506)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !8688
  %.val = load ptr, ptr %0, align 8, !dbg !8689, !nonnull !718, !noundef !718 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8507), !dbg !8689
    #dbg_value(ptr poison, !8479, !DIExpression(), !7976)
end_hunk_5
begin_hunk_6_@_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB17_11certificateNtB1W_17CertificateParams16write_extensionsRNtNtB17_8key_pair7KeyPairEs_0E0ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8615, !DIExpression(), !8193)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8612, !DIExpression(), !8195)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8628, !DIExpression(), !8197)
    #dbg_value(ptr poison, !8623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8178)
    #dbg_value(ptr poison, !8626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8181)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !8623, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8178)
    #dbg_value(i64 %.pre.i.i.i.i.i.i, !8626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8181)
  %i.cf = icmp ult i64 %i.cb, %.pre.i.i.i.i.i.i, !dbg !8782
  br i1 %i.cf, label %bb.u, label %.invoke.i.i.i.i, !dbg !8782

bb.s:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %i.w, align 8, !dbg !8783, !noalias !8547, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cg, !8623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8189)
    #dbg_value(ptr %i.cg, !8626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8191)
  %i.ch = lshr exact i64 %.sroa.07.1343.i.i.i.i.i.i.i, 3, !dbg !8784
  %i.ci = trunc i64 %i.ch to i8, !dbg !8785
  %i.cj = add i8 %i.ci, 1, !dbg !8785
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd, !dbg !8786
  %i.cl = or i8 %i.cj, -128, !dbg !8787
  store i8 %i.cl, ptr %i.ck, align 1, !dbg !8787, !noalias !8547
    #dbg_value(i64 %i.cd, !8432, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8173)
    #dbg_value(i64 %i.cd, !8619, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8175)
    #dbg_value(i64 %i.cd, !8622, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8178)
    #dbg_value(i64 %i.cd, !8625, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8181)
  %.sroa.018.013.i.i.i.i.i.i.i = add nuw i64 %i.cd, 1, !dbg !8788 ; 3 uses
  %i.cm = load i64, ptr %i.v, align 8, !dbg !8789, !noalias !8547, !noundef !718 ; 2 uses
  %i.cn = icmp ult i64 %.sroa.018.013.i.i.i.i.i.i.i, %i.cm, !dbg !8790
  br i1 %i.cn, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !8790

bb.t:                                             ; preds = %.lr.ph16.i.i.i.i.i.i.i
  %i.co = add i64 %.sroa.07.214.i.i.i.i.i.i.i, -8, !dbg !8791
    #dbg_value(i64 %i.co, !8427, !DIExpression(), !8109)
  %.sroa.018.0.i.i.i.i.i.i.i = add nuw i64 %.sroa.018.015.i.i.i.i.i.i.i, 1, !dbg !8788 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8625, !DIExpression(), !8181)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8622, !DIExpression(), !8178)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8619, !DIExpression(), !8175)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8432, !DIExpression(), !8173)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8618, !DIExpression(), !8209)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8615, !DIExpression(), !8210)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8612, !DIExpression(), !8211)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !8628, !DIExpression(), !8213)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8619, !DIExpression(), !8209)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8622, !DIExpression(), !8214)
    #dbg_value(i64 %.sroa.018.0.i.i.i.i.i.i.i, !8625, !DIExpression(), !8215)
  %i.cp = load i64, ptr %i.v, align 8, !dbg !8789, !noalias !8547, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !8623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8214)
    #dbg_value(ptr poison, !8626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8215)
    #dbg_value(i64 %i.cp, !8623, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8214)
    #dbg_value(i64 %i.cp, !8626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8215)
  %i.cq = icmp ult i64 %.sroa.018.0.i.i.i.i.i.i.i, %i.cp, !dbg !8790
  br i1 %i.cq, label %.lr.ph16.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, !dbg !8790

.lr.ph16.i.i.i.i.i.i.i:                           ; preds = %bb.s, %bb.t
  %.sroa.018.015.i.i.i.i.i.i.i = phi i64 [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.t ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.s ] ; 2 uses
  %.sroa.07.214.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.t ], [ %.sroa.07.1343.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !8427, !DIExpression(), !8109)
  %i.cr = load ptr, ptr %i.w, align 8, !dbg !8792, !noalias !8547, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cr, !8623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8214)
    #dbg_value(ptr %i.cr, !8626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8215)
  %i.cs = and i64 %.sroa.07.214.i.i.i.i.i.i.i, 56, !dbg !8793
  %i.ct = lshr i64 %i.am, %i.cs, !dbg !8793
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.018.015.i.i.i.i.i.i.i, !dbg !8794
  %i.cv = trunc i64 %i.ct to i8, !dbg !8795
  store i8 %i.cv, ptr %i.cu, align 1, !dbg !8795, !noalias !8547
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !8432, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8173)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !8619, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8175)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !8622, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8178)
    #dbg_value(i64 %.sroa.018.015.i.i.i.i.i.i.i, !8625, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8181)
  %i.cw = icmp eq i64 %.sroa.07.214.i.i.i.i.i.i.i, 0, !dbg !8796
    #dbg_value(i64 %.sroa.07.214.i.i.i.i.i.i.i, !8427, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !8109)
  br i1 %i.cw, label %.loopexit.i.i.i, label %bb.t, !dbg !8796

bb.u:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.w, align 8, !dbg !8797, !noalias !8547, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.cx, !8623, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8178)
    #dbg_value(ptr %i.cx, !8626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8181)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cb, !dbg !8798
  %i.cz = trunc nuw nsw i64 %i.am to i8, !dbg !8799
  store i8 %i.cz, ptr %i.cy, align 1, !dbg !8799, !noalias !8547
  br label %.loopexit.i.i.i, !dbg !8800

.invoke.i.i.i.i:                                  ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.da = phi i64 [ %i.cb, %bb.r ], [ %i.cd, %bb.q ], [ %.sroa.018.013.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.018.0.i.i.i.i.i.i.i, %bb.t ]
  %i.db = phi i64 [ %.pre.i.i.i.i.i.i, %bb.r ], [ %i.cc, %bb.q ], [ %i.cm, %bb.s ], [ %i.cp, %bb.t ]
  %i.dc = phi ptr [ @4, %bb.r ], [ @2, %bb.q ], [ @3, %bb.s ], [ @3, %bb.t ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc) #14
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8801, !noalias !8525

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %.invoke.i.i.i.i, %bb.n, %.noexc12.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #11
          to label %.body.i.i.i unwind label %bb.v, !dbg !8802, !noalias !8525

bb.v:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8803, !noalias !8525
  unreachable, !dbg !8803

bb.w:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !8804, !noalias !8523
    #dbg_value(ptr %.val, !8642, !DIExpression(), !8229)
  store ptr %.val, ptr %i.h, align 8, !dbg !8805, !noalias !8523
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !8805
  store i8 -1, ptr %i.de, align 8, !dbg !8805, !noalias !8523
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter10write_bool(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.b, !dbg !8806, !noalias !8523

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8807, !noalias !8523
  br label %bb.d, !dbg !8808

.loopexit.i.i.i:                                  ; preds = %.lr.ph16.i.i.i.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8809, !noalias !8525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !8810, !noalias !8647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8802, !noalias !8525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !8811, !noalias !8523
    #dbg_value(ptr %.val, !8642, !DIExpression(), !8232)
  store ptr %.val, ptr %i.f, align 8, !dbg !8812, !noalias !8523
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !8812
  store i8 -1, ptr %i.df, align 8, !dbg !8812, !noalias !8523
    #dbg_value(ptr %i.g, !8649, !DIExpression(), !8235)
    #dbg_value(ptr %i.g, !8651, !DIExpression(), !8238)
    #dbg_value(ptr %i.g, !8653, !DIExpression(), !8241)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !8813
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !8813, !noalias !8523, !nonnull !718, !noundef !718
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !8814
  %i.dj = load i64, ptr %i.di, align 8, !dbg !8814, !noalias !8523, !noundef !718
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter11write_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dj)
          to label %bb.z unwind label %bb.y, !dbg !8815, !noalias !8523

bb.y:                                             ; preds = %.loopexit.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #11
          to label %.body.i.i.i unwind label %bb.af, !dbg !8816, !noalias !8523

bb.z:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8817, !noalias !8523
    #dbg_value(ptr %i.g, !1894, !DIExpression(), !8249)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %bb.aa, !dbg !8818, !noalias !8523

bb.aa:                                            ; preds = %bb.z
  %i.dl = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !8251)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i.i unwind label %bb.ac, !dbg !8819, !noalias !8523

bb.ab:                                            ; preds = %bb.z
    #dbg_value(ptr %i.g, !1899, !DIExpression(), !8253)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.b, !dbg !8820, !noalias !8523

bb.ac:                                            ; preds = %bb.aa
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8818, !noalias !8523
  unreachable, !dbg !8818

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8816, !noalias !8523
    #dbg_value(ptr %i.j, !1753, !DIExpression(), !8255)
    #dbg_value(ptr %i.j, !1760, !DIExpression(), !8257)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.ad, !dbg !8821, !noalias !8523

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !8259)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.ae, !dbg !8822, !noalias !8523

bb.ae:                                            ; preds = %bb.ad
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8821, !noalias !8523
  unreachable, !dbg !8821

common.resume.i.i.i:                              ; preds = %bb.ad, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.ad ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i, !dbg !8823

bb.af:                                            ; preds = %bb.y, %.body.i.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !8824, !noalias !8523
  unreachable, !dbg !8824

_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(ptr %i.j, !1767, !DIExpression(), !8261)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !8825, !noalias !8523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !8693, !noalias !8523
    #dbg_value(ptr %.val, !8655, !DIExpression(), !8264)
  %i.dq = load i64, ptr %i.l, align 8, !dbg !8826, !noalias !8507, !noundef !718 ; 6 uses
  %i.dr = icmp sgt i64 %i.dq, -1, !dbg !8827
  call void @llvm.assume(i1 %i.dr), !dbg !8828
  %i.ds = sub nsw i64 %i.dq, %i.eg, !dbg !8829    ; 4 uses
    #dbg_value(i64 %i.ds, !8485, !DIExpression(), !8265)
    #dbg_value(i64 56, !8487, !DIExpression(), !8266)
  %i.dt = icmp ult i64 %i.ds, 128, !dbg !8830     ; 2 uses
  br i1 %i.dt, label %.thread.i, label %.preheader.i, !dbg !8830

bb.ag:                                            ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !8831, !noalias !8507
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !8832

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ag, %bb.a
  %i.du = load ptr, ptr %i.m, align 8, !dbg !8833, !alias.scope !8522, !noalias !8507, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.du, !1729, !DIExpression(), !8003)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.n, !dbg !8834
    #dbg_value(ptr %i.dv, !1702, !DIExpression(), !8270)
    #dbg_value(ptr %i.dv, !1788, !DIExpression(), !8272)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8272)
  store i8 -1, ptr %i.dv, align 1, !dbg !8835, !noalias !8507
  %i.dw = add i64 %i.n, 1, !dbg !8836             ; 4 uses
  store i64 %i.dw, ptr %i.l, align 8, !dbg !8836, !alias.scope !8522, !noalias !8507
    #dbg_value(i32 2, !8482, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7991)
    #dbg_value(ptr %.val, !8509, !DIExpression(), !7981)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !7993)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !7995)
    #dbg_value(i8 -1, !1699, !DIExpression(), !7993)
    #dbg_value(i64 1, !1710, !DIExpression(), !7998)
    #dbg_value(i64 %i.dw, !1700, !DIExpression(), !8001)
    #dbg_value(i64 %i.dw, !1724, !DIExpression(), !8003)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8004)
  %i.dx = load i64, ptr %.val, align 8, !dbg !8691, !range !1731, !alias.scope !8522, !noalias !8507, !noundef !718
  %i.dy = icmp eq i64 %i.dw, %i.dx, !dbg !8692
  br i1 %i.dy, label %bb.ah, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !8692

bb.ah:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !8831, !noalias !8507
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !8832

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.ah, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.dz = load ptr, ptr %i.m, align 8, !dbg !8833, !alias.scope !8522, !noalias !8507, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.dz, !1729, !DIExpression(), !8003)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dw, !dbg !8834
    #dbg_value(ptr %i.ea, !1702, !DIExpression(), !8270)
    #dbg_value(ptr %i.ea, !1788, !DIExpression(), !8272)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8272)
  store i8 -1, ptr %i.ea, align 1, !dbg !8835, !noalias !8507
  %i.eb = add i64 %i.n, 2, !dbg !8836             ; 4 uses
  store i64 %i.eb, ptr %i.l, align 8, !dbg !8836, !alias.scope !8522, !noalias !8507
    #dbg_value(i32 3, !8482, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7991)
    #dbg_value(ptr %.val, !8509, !DIExpression(), !7981)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !7993)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !7995)
    #dbg_value(i8 -1, !1699, !DIExpression(), !7993)
    #dbg_value(i64 1, !1710, !DIExpression(), !7998)
    #dbg_value(i64 %i.eb, !1700, !DIExpression(), !8001)
    #dbg_value(i64 %i.eb, !1724, !DIExpression(), !8003)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8004)
  %i.ec = load i64, ptr %.val, align 8, !dbg !8691, !range !1731, !alias.scope !8522, !noalias !8507, !noundef !718
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !8692
  br i1 %i.ed, label %bb.ai, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !8692

bb.ai:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !8831, !noalias !8507
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !8832

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.ai, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.ee = load ptr, ptr %i.m, align 8, !dbg !8833, !alias.scope !8522, !noalias !8507, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ee, !1729, !DIExpression(), !8003)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb, !dbg !8834
    #dbg_value(ptr %i.ef, !1702, !DIExpression(), !8270)
    #dbg_value(ptr %i.ef, !1788, !DIExpression(), !8272)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8272)
  store i8 -1, ptr %i.ef, align 1, !dbg !8835, !noalias !8507
  %i.eg = add i64 %i.n, 3, !dbg !8836             ; 10 uses
  store i64 %i.eg, ptr %i.l, align 8, !dbg !8836, !alias.scope !8522, !noalias !8507
    #dbg_value(i32 3, !8482, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7991)
    #dbg_value(ptr %.val, !8655, !DIExpression(), !8274)
    #dbg_value(i64 %i.eg, !8483, !DIExpression(), !8275)
    #dbg_value(i64 %i.eg, !8520, !DIExpression(), !7990)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !8837, !alias.scope !8507, !nonnull !718, !noundef !718
    #dbg_value(ptr %.sroa.0.0.copyload.i, !8471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8276)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8837
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !8837, !alias.scope !8507
    #dbg_value(i64 %.sroa.4.0.copyload.i, !8471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8276)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8837
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !8837, !alias.scope !8507 ; 2 uses
    #dbg_value(ptr %.sroa.5.0.copyload.i, !8471, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8276)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !8837
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !8837, !alias.scope !8507 ; 5 uses
    #dbg_value(ptr %.sroa.6.0.copyload.i, !8471, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8276)
    #dbg_value(ptr poison, !8470, !DIExpression(), !8277)
    #dbg_value(ptr %.sroa.5.0.copyload.i, !8459, !DIExpression(DW_OP_deref), !8278)
    #dbg_value(ptr %.sroa.6.0.copyload.i, !8460, !DIExpression(), !8278)
    #dbg_value(ptr poison, !8457, !DIExpression(), !8279)
    #dbg_value(ptr poison, !8645, !DIExpression(), !8281)
    #dbg_value(ptr poison, !8645, !DIExpression(), !8282)
    #dbg_value(ptr poison, !8645, !DIExpression(), !8283)
    #dbg_declare(ptr %i.j, !8461, !DIExpression(), !8284)
    #dbg_declare(ptr %i.g, !8462, !DIExpression(), !8285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !8838, !noalias !8523
  call void @_RNvMNtNtCsk5jvY4Bb3tQ_5yasna6models3oidNtB2_16ObjectIdentifier10from_slice(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i), !dbg !8839, !noalias !8523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8840, !noalias !8523
    #dbg_value(ptr %.val, !8642, !DIExpression(), !8287)
  store ptr %.val, ptr %i.i, align 8, !dbg !8841, !noalias !8523
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !8841
  store i8 -1, ptr %i.eh, align 8, !dbg !8841, !noalias !8523
  invoke void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter9write_oid(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b, !dbg !8842, !noalias !8523

.preheader.i:                                     ; preds = %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.el, %.preheader.i ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !8843 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !8487, !DIExpression(), !8266)
  %i.ei = and i64 %.sroa.07.0.i, 56, !dbg !8844
  %i.ej = lshr i64 %i.ds, %i.ei, !dbg !8844
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !8844
  %i.el = add i64 %.sroa.07.0.i, -8, !dbg !8845
    #dbg_value(i64 %i.el, !8487, !DIExpression(), !8266)
  br i1 %i.ek, label %.preheader.i, label %bb.aj, !dbg !8844

bb.aj:                                            ; preds = %.preheader.i
  %i.em = lshr exact i64 %.sroa.07.0.i, 3, !dbg !8846 ; 2 uses
  %i.en = add nuw nsw i64 %i.em, 2, !dbg !8847    ; 2 uses
    #dbg_value(i64 %i.en, !8486, !DIExpression(), !8288)
    #dbg_value(i64 %.sroa.07.0.i, !8487, !DIExpression(), !8266)
  %i.eo = icmp eq i64 %.sroa.07.0.i, 0, !dbg !8848
  br i1 %i.eo, label %.thread.i, label %bb.ak, !dbg !8848

bb.ak:                                            ; preds = %bb.aj
  %.not.i = icmp eq i64 %i.en, 3, !dbg !8849
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.al, !dbg !8849

.thread.i:                                        ; preds = %bb.aj, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i
  %.pre-phi = phi i64 [ %i.eb, %bb.aj ], [ %i.dw, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !8850 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.aj ], [ 1, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.aj ], [ 56, %_RNCINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB5_9DERWriter14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB19_11certificateNtB1Y_17CertificateParams16write_extensionsRNtNtB19_8key_pair7KeyPairEs_0E0E0Cskigd7sy4fqX_10quinn_perf.exit.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !8489, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !8289)
    #dbg_value(!DIArgList(i64 %i.eg, i64 %.sroa.02.06.i), !8488, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !8290)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !8851, !noalias !8507
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.eg), !dbg !8852, !noalias !8507
    #dbg_value(ptr %i.k, !1800, !DIExpression(), !8292)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k), !dbg !8853, !noalias !8507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !8854, !noalias !8507
  %.pre.pre = load i64, ptr %i.l, align 8, !dbg !8855, !noalias !8507
  br label %.loopexit7.i, !dbg !8856

bb.al:                                            ; preds = %bb.ak
  %i.ep = add nsw i64 %i.em, -1, !dbg !8857       ; 3 uses
    #dbg_value(i64 %i.ep, !8490, !DIExpression(), !8299)
  %i.eq = add nuw i64 %i.ep, %i.eg, !dbg !8858    ; 2 uses
    #dbg_value(i64 %i.eq, !8488, !DIExpression(), !8290)
    #dbg_value(i64 0, !8491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8300)
    #dbg_value(i64 %i.ep, !8491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8300)
    #dbg_value(ptr undef, !8502, !DIExpression(), !7973)
    #dbg_value(ptr undef, !8498, !DIExpression(), !7972)
    #dbg_value(ptr undef, !8494, !DIExpression(), !7971)
    #dbg_value(ptr undef, !8495, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8301)
  %.not20.i = icmp eq i64 %i.ep, 0, !dbg !8859
  br i1 %.not20.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !8860

.lr.ph.i.preheader:                               ; preds = %bb.al
  %i.er = icmp samesign ult i64 %i.dq, %i.eg
  br i1 %i.er, label %bb.am, label %.lr.ph.i, !dbg !8861, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.es = phi i64 [ %i.fa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.dq, %.lr.ph.i.preheader ], !dbg !8862 ; 5 uses
  %.sroa.016.014.i = phi i64 [ %i.et, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.014.i, !8499, !DIExpression(), !8304)
    #dbg_value(i64 %.sroa.016.014.i, !8512, !DIExpression(), !7984)
    #dbg_value(i64 %.sroa.016.014.i, !8516, !DIExpression(), !7987)
  %i.et = add nuw i64 %.sroa.016.014.i, 1, !dbg !8863 ; 2 uses
    #dbg_value(i64 %i.et, !8491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8300)
    #dbg_value(ptr %.val, !8519, !DIExpression(), !7990)
  call void @llvm.experimental.noalias.scope.decl(metadata !8666), !dbg !8864
    #dbg_value(ptr %.val, !1839, !DIExpression(), !8307)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !8308)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !8310)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !8312)
    #dbg_value(i64 %i.eg, !1840, !DIExpression(), !8307)
    #dbg_value(i64 %i.eg, !1855, !DIExpression(), !8314)
    #dbg_value(i8 0, !1841, !DIExpression(), !8307)
    #dbg_value(i64 1, !1859, !DIExpression(), !8317)
    #dbg_value(i64 1, !1857, !DIExpression(), !8319)
    #dbg_value(i64 1, !1859, !DIExpression(), !8323)
    #dbg_value(i64 %i.es, !1842, !DIExpression(), !8324)
  %i.eu = icmp sgt i64 %i.es, -1, !dbg !8865
  call void @llvm.assume(i1 %i.eu), !dbg !8866
    #dbg_value(ptr %.val, !1862, !DIExpression(), !8325)
  %2 = load i64, ptr %.val, align 8, !dbg !8867, !range !1731, !alias.scope !8666, !noalias !8507, !noundef !718
  %3 = icmp eq i64 %i.es, %2, !dbg !8868
  br i1 %3, label %bb.an, label %bb.ao, !dbg !8868

bb.am:                                            ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.eg, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !8869, !noalias !8667
  unreachable, !dbg !8869

bb.an:                                            ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !8870, !noalias !8507
  br label %bb.ao, !dbg !8871

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i
  %i.ev = load ptr, ptr %i.m, align 8, !dbg !8872, !alias.scope !8666, !noalias !8507, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.ev, !1856, !DIExpression(), !8314)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eg, !dbg !8873 ; 3 uses
    #dbg_value(ptr %i.ew, !1843, !DIExpression(), !8329)
    #dbg_value(ptr %i.ew, !1856, !DIExpression(), !8319)
    #dbg_value(ptr %i.ew, !1868, !DIExpression(), !8331)
  %i.ex = icmp samesign ult i64 %i.eg, %i.es, !dbg !8874
  br i1 %i.ex, label %bb.ap, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !8874

bb.ap:                                            ; preds = %bb.ao
    #dbg_value(ptr %i.ew, !1871, !DIExpression(), !8333)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 1, !dbg !8875
    #dbg_value(ptr %i.ey, !1874, !DIExpression(), !8333)
  %i.ez = sub nuw nsw i64 %i.es, %i.eg, !dbg !8876
    #dbg_value(i64 %i.ez, !1875, !DIExpression(), !8333)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ey, ptr nonnull align 1 %i.ew, i64 %i.ez, i1 false), !dbg !8877, !noalias !8507
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !8878

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.ap, %bb.ao
    #dbg_value(i8 0, !1869, !DIExpression(), !8331)
  store i8 0, ptr %i.ew, align 1, !dbg !8879, !noalias !8507
  %i.fa = add nuw i64 %i.es, 1, !dbg !8880        ; 3 uses
    #dbg_value(i64 %i.fa, !1853, !DIExpression(), !8312)
  store i64 %i.fa, ptr %i.l, align 8, !dbg !8881, !alias.scope !8666, !noalias !8507
    #dbg_value(i64 %i.et, !8491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8300)
    #dbg_value(ptr undef, !8502, !DIExpression(), !7973)
    #dbg_value(ptr undef, !8498, !DIExpression(), !7972)
    #dbg_value(ptr undef, !8494, !DIExpression(), !7971)
    #dbg_value(ptr undef, !8495, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8301)
  %exitcond.not.i = icmp eq i64 %i.et, %i.ep, !dbg !8859
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !8860

.loopexit7.thread.i:                              ; preds = %bb.al, %bb.ak
  %.sroa.014.0.ph.i = phi i64 [ %i.eq, %bb.al ], [ %i.eg, %bb.ak ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !8488, !DIExpression(), !8290)
  %i.fb = add i64 %.sroa.014.0.ph.i, -3, !dbg !8882
    #dbg_value(i64 %i.fb, !8492, !DIExpression(), !8334)
    #dbg_value(i64 %i.fb, !8664, !DIExpression(), !8336)
    #dbg_value(i64 %i.fb, !8668, !DIExpression(), !8339)
    #dbg_value(i64 %i.fb, !8671, !DIExpression(), !8342)
  br label %bb.aq, !dbg !8883

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.fa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !8855 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.en, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.eq, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !8884
    #dbg_value(i64 %.sroa.014.0.i, !8488, !DIExpression(), !8290)
  %i.fc = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !8882 ; 4 uses
    #dbg_value(i64 %i.fc, !8492, !DIExpression(), !8334)
    #dbg_value(i64 %i.fc, !8664, !DIExpression(), !8336)
    #dbg_value(i64 %i.fc, !8668, !DIExpression(), !8339)
    #dbg_value(i64 %i.fc, !8671, !DIExpression(), !8342)
  br i1 %i.dt, label %bb.ar, label %bb.aq, !dbg !8883

bb.aq:                                            ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.fd = phi i64 [ %i.dq, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !8855 ; 2 uses
  %i.fe = phi i64 [ %i.fb, %.loopexit7.thread.i ], [ %i.fc, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1365.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !8663, !DIExpression(), !8343)
    #dbg_value(ptr %.val, !8660, !DIExpression(), !8344)
    #dbg_value(ptr %.val, !8657, !DIExpression(), !8345)
    #dbg_value(ptr %.val, !8674, !DIExpression(), !8348)
    #dbg_value(i64 %i.fe, !8664, !DIExpression(), !8343)
    #dbg_value(i64 %i.fe, !8668, !DIExpression(), !8350)
    #dbg_value(i64 %i.fe, !8671, !DIExpression(), !8352)
    #dbg_value(ptr poison, !8669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8350)
    #dbg_value(ptr poison, !8672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8352)
    #dbg_value(i64 %i.fd, !8669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8350)
    #dbg_value(i64 %i.fd, !8672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8352)
  %i.ff = icmp ult i64 %i.fe, %i.fd, !dbg !8885
  br i1 %i.ff, label %bb.as, label %bb.at, !dbg !8885

bb.ar:                                            ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !8663, !DIExpression(), !8336)
    #dbg_value(ptr %.val, !8660, !DIExpression(), !8354)
    #dbg_value(ptr %.val, !8657, !DIExpression(), !8356)
    #dbg_value(ptr %.val, !8674, !DIExpression(), !8358)
    #dbg_value(ptr poison, !8669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8339)
    #dbg_value(ptr poison, !8672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8342)
    #dbg_value(i64 %.pre, !8669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8339)
    #dbg_value(i64 %.pre, !8672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8342)
  %i.fg = icmp ult i64 %i.fc, %.pre, !dbg !8886
  br i1 %i.fg, label %bb.av, label %bb.aw, !dbg !8886

bb.as:                                            ; preds = %bb.aq
  %i.fh = load ptr, ptr %i.m, align 8, !dbg !8887, !noalias !8507, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fh, !8669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8350)
    #dbg_value(ptr %i.fh, !8672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8352)
  %i.fi = lshr exact i64 %.sroa.07.1365.i, 3, !dbg !8888
  %i.fj = trunc i64 %i.fi to i8, !dbg !8889
  %i.fk = add i8 %i.fj, 1, !dbg !8889
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fe, !dbg !8890
  %i.fm = or i8 %i.fk, -128, !dbg !8891
  store i8 %i.fm, ptr %i.fl, align 1, !dbg !8891, !noalias !8507
    #dbg_value(i64 %i.fe, !8492, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8334)
    #dbg_value(i64 %i.fe, !8664, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8336)
    #dbg_value(i64 %i.fe, !8668, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8339)
    #dbg_value(i64 %i.fe, !8671, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8342)
  %.sroa.018.015.i = add nuw i64 %i.fe, 1, !dbg !8892 ; 3 uses
  %i.fn = load i64, ptr %i.l, align 8, !dbg !8893, !noalias !8507, !noundef !718 ; 2 uses
  %i.fo = icmp ult i64 %.sroa.018.015.i, %i.fn, !dbg !8894
  br i1 %i.fo, label %.lr.ph18.i, label %._crit_edge.i, !dbg !8894

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !8885, !noalias !8507
  unreachable, !dbg !8885

bb.au:                                            ; preds = %.lr.ph18.i
  %i.fp = add i64 %.sroa.07.216.i, -8, !dbg !8895
    #dbg_value(i64 %i.fp, !8487, !DIExpression(), !8266)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.017.i, 1, !dbg !8892 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !8671, !DIExpression(), !8342)
    #dbg_value(i64 %.sroa.018.0.i, !8668, !DIExpression(), !8339)
    #dbg_value(i64 %.sroa.018.0.i, !8664, !DIExpression(), !8336)
    #dbg_value(i64 %.sroa.018.0.i, !8492, !DIExpression(), !8334)
    #dbg_value(ptr %.val, !8663, !DIExpression(), !8370)
    #dbg_value(ptr %.val, !8660, !DIExpression(), !8371)
    #dbg_value(ptr %.val, !8657, !DIExpression(), !8372)
    #dbg_value(ptr %.val, !8674, !DIExpression(), !8374)
    #dbg_value(i64 %.sroa.018.0.i, !8664, !DIExpression(), !8370)
    #dbg_value(i64 %.sroa.018.0.i, !8668, !DIExpression(), !8375)
    #dbg_value(i64 %.sroa.018.0.i, !8671, !DIExpression(), !8376)
  %i.fq = load i64, ptr %i.l, align 8, !dbg !8893, !noalias !8507, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !8669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8375)
    #dbg_value(ptr poison, !8672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8376)
    #dbg_value(i64 %i.fq, !8669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8375)
    #dbg_value(i64 %i.fq, !8672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8376)
  %i.fr = icmp ult i64 %.sroa.018.0.i, %i.fq, !dbg !8894
  br i1 %i.fr, label %.lr.ph18.i, label %._crit_edge.i, !dbg !8894

.lr.ph18.i:                                       ; preds = %bb.as, %bb.au
  %.sroa.018.017.i = phi i64 [ %.sroa.018.0.i, %bb.au ], [ %.sroa.018.015.i, %bb.as ] ; 2 uses
  %.sroa.07.216.i = phi i64 [ %i.fp, %bb.au ], [ %.sroa.07.1365.i, %bb.as ] ; 3 uses
    #dbg_value(i64 %.sroa.07.216.i, !8487, !DIExpression(), !8266)
  %i.fs = load ptr, ptr %i.m, align 8, !dbg !8896, !noalias !8507, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fs, !8669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8375)
    #dbg_value(ptr %i.fs, !8672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8376)
  %i.ft = and i64 %.sroa.07.216.i, 56, !dbg !8897
  %i.fu = lshr i64 %i.ds, %i.ft, !dbg !8897
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sroa.018.017.i, !dbg !8898
  %i.fw = trunc i64 %i.fu to i8, !dbg !8899
  store i8 %i.fw, ptr %i.fv, align 1, !dbg !8899, !noalias !8507
    #dbg_value(i64 %.sroa.018.017.i, !8492, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8334)
    #dbg_value(i64 %.sroa.018.017.i, !8664, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8336)
    #dbg_value(i64 %.sroa.018.017.i, !8668, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8339)
    #dbg_value(i64 %.sroa.018.017.i, !8671, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !8342)
  %i.fx = icmp eq i64 %.sroa.07.216.i, 0, !dbg !8900
    #dbg_value(i64 %.sroa.07.216.i, !8487, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !8266)
  br i1 %i.fx, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.au, !dbg !8900

._crit_edge.i:                                    ; preds = %bb.au, %bb.as
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.015.i, %bb.as ], [ %.sroa.018.0.i, %bb.au ], !dbg !8892
  %.lcssa.i = phi i64 [ %i.fn, %bb.as ], [ %i.fq, %bb.au ], !dbg !8893
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !8894, !noalias !8507
  unreachable, !dbg !8894

bb.av:                                            ; preds = %bb.ar
  %i.fy = load ptr, ptr %i.m, align 8, !dbg !8901, !noalias !8507, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.fy, !8669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8339)
    #dbg_value(ptr %i.fy, !8672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8342)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fc, !dbg !8902
  %i.ga = trunc nuw nsw i64 %i.ds to i8, !dbg !8903
  store i8 %i.ga, ptr %i.fz, align 1, !dbg !8903, !noalias !8507
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs_0E0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !8904

bb.aw:                                            ; preds = %bb.ar
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fc, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !8886, !noalias !8507
  unreachable, !dbg !8886

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvCscbFFjjIlwRm_5rcgen20write_x509_extensionNCINvMs1_NtB1t_11certificateNtB2i_17CertificateParams16write_extensionsRNtNtB1t_8key_pair7KeyPairEs_0E0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph18.i, %bb.av
  ret void, !dbg !8905
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter14write_sequenceuNCINvNtCscbFFjjIlwRm_5rcgen8key_pair24serialize_public_key_derNtB17_7KeyPairE0ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8907 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !9104, !DIExpression(), !8930)
    #dbg_value(ptr poison, !9108, !DIExpression(), !8931)
    #dbg_value(ptr poison, !9112, !DIExpression(), !8932)
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !9101, !DIExpression(), !9138)
    #dbg_value(ptr %1, !9102, !DIExpression(), !9139)
  tail call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter16write_identifier(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 16, i8 noundef 0, i1 noundef zeroext true), !dbg !9207
  %.val = load ptr, ptr %0, align 8, !dbg !9208, !nonnull !718, !noundef !718 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9140), !dbg !9208
    #dbg_value(ptr poison, !9123, !DIExpression(), !8935)
    #dbg_value(ptr %1, !9124, !DIExpression(), !8935)
    #dbg_value(i64 3, !9125, !DIExpression(), !8936)
    #dbg_value(i8 -1, !9141, !DIExpression(), !8939)
    #dbg_value(i64 1, !9144, !DIExpression(), !8942)
    #dbg_value(i64 1, !9148, !DIExpression(), !8945)
    #dbg_value(i8 0, !9151, !DIExpression(), !8948)
    #dbg_value(i32 0, !9126, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8949)
    #dbg_value(i32 3, !9126, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8949)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
    #dbg_value(i32 0, !9126, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8949)
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 7 uses
    #dbg_value(i32 1, !9126, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8949)
    #dbg_value(ptr %.val, !9142, !DIExpression(), !8939)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !8951)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !8953)
    #dbg_value(i8 -1, !1699, !DIExpression(), !8951)
    #dbg_value(i64 1, !1710, !DIExpression(), !8956)
  %i.f = load i64, ptr %i.d, align 8, !dbg !9209, !alias.scope !9155, !noalias !9140, !noundef !718 ; 5 uses
    #dbg_value(i64 %i.f, !1700, !DIExpression(), !8959)
    #dbg_value(i64 %i.f, !1724, !DIExpression(), !8961)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8962)
  %i.g = load i64, ptr %.val, align 8, !dbg !9210, !range !1731, !alias.scope !9155, !noalias !9140, !noundef !718
  %i.h = icmp eq i64 %i.f, %i.g, !dbg !9211
  br i1 %i.h, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !9211

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !9212, !noalias !9140
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !9213

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !dbg !9214, !alias.scope !9155, !noalias !9140, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.i, !1729, !DIExpression(), !8961)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f, !dbg !9215
    #dbg_value(ptr %i.j, !1702, !DIExpression(), !8966)
    #dbg_value(ptr %i.j, !1788, !DIExpression(), !8968)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8968)
  store i8 -1, ptr %i.j, align 1, !dbg !9216, !noalias !9140
  %i.k = add i64 %i.f, 1, !dbg !9217              ; 4 uses
  store i64 %i.k, ptr %i.d, align 8, !dbg !9217, !alias.scope !9155, !noalias !9140
    #dbg_value(i32 2, !9126, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8949)
    #dbg_value(ptr %.val, !9142, !DIExpression(), !8939)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !8951)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !8953)
    #dbg_value(i8 -1, !1699, !DIExpression(), !8951)
    #dbg_value(i64 1, !1710, !DIExpression(), !8956)
    #dbg_value(i64 %i.k, !1700, !DIExpression(), !8959)
    #dbg_value(i64 %i.k, !1724, !DIExpression(), !8961)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8962)
  %i.l = load i64, ptr %.val, align 8, !dbg !9210, !range !1731, !alias.scope !9155, !noalias !9140, !noundef !718
  %i.m = icmp eq i64 %i.k, %i.l, !dbg !9211
  br i1 %i.m, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !9211

bb.c:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !9212, !noalias !9140
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i, !dbg !9213

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i: ; preds = %bb.c, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.n = load ptr, ptr %i.e, align 8, !dbg !9214, !alias.scope !9155, !noalias !9140, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.n, !1729, !DIExpression(), !8961)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k, !dbg !9215
    #dbg_value(ptr %i.o, !1702, !DIExpression(), !8966)
    #dbg_value(ptr %i.o, !1788, !DIExpression(), !8968)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8968)
  store i8 -1, ptr %i.o, align 1, !dbg !9216, !noalias !9140
  %i.p = add i64 %i.f, 2, !dbg !9217              ; 4 uses
  store i64 %i.p, ptr %i.d, align 8, !dbg !9217, !alias.scope !9155, !noalias !9140
    #dbg_value(i32 3, !9126, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8949)
    #dbg_value(ptr %.val, !9142, !DIExpression(), !8939)
    #dbg_value(ptr %.val, !1694, !DIExpression(), !8951)
    #dbg_value(ptr %.val, !1704, !DIExpression(), !8953)
    #dbg_value(i8 -1, !1699, !DIExpression(), !8951)
    #dbg_value(i64 1, !1710, !DIExpression(), !8956)
    #dbg_value(i64 %i.p, !1700, !DIExpression(), !8959)
    #dbg_value(i64 %i.p, !1724, !DIExpression(), !8961)
    #dbg_value(ptr %.val, !1721, !DIExpression(), !8962)
  %i.q = load i64, ptr %.val, align 8, !dbg !9210, !range !1731, !alias.scope !9155, !noalias !9140, !noundef !718
  %i.r = icmp eq i64 %i.p, %i.q, !dbg !9211
  br i1 %i.r, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !9211

bb.d:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !9212, !noalias !9140
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, !dbg !9213

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i: ; preds = %bb.d, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.1.i
  %i.s = load ptr, ptr %i.e, align 8, !dbg !9214, !alias.scope !9155, !noalias !9140, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.s, !1729, !DIExpression(), !8961)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p, !dbg !9215
    #dbg_value(ptr %i.t, !1702, !DIExpression(), !8966)
    #dbg_value(ptr %i.t, !1788, !DIExpression(), !8968)
    #dbg_value(i8 -1, !1791, !DIExpression(), !8968)
  store i8 -1, ptr %i.t, align 1, !dbg !9216, !noalias !9140
  %i.u = add i64 %i.f, 3, !dbg !9217              ; 10 uses
  store i64 %i.u, ptr %i.d, align 8, !dbg !9217, !alias.scope !9155, !noalias !9140
    #dbg_value(i32 3, !9126, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8949)
    #dbg_value(ptr %.val, !9156, !DIExpression(), !8971)
    #dbg_value(i64 %i.u, !9127, !DIExpression(), !8972)
    #dbg_value(i64 %i.u, !9153, !DIExpression(), !8948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9158), !dbg !9218
    #dbg_value(ptr %1, !9159, !DIExpression(), !8977)
    #dbg_value(ptr poison, !9162, !DIExpression(), !8977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9164), !dbg !9219
    #dbg_value(ptr poison, !9165, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !8983)
    #dbg_value(ptr poison, !9168, !DIExpression(), !8983)
    #dbg_value(ptr poison, !9171, !DIExpression(), !8986)
    #dbg_value(ptr poison, !9171, !DIExpression(), !8988)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !9220
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !dbg !9220, !alias.scope !9173, !nonnull !718, !align !1923, !noundef !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9221, !noalias !9173
    #dbg_value(ptr %.val, !9174, !DIExpression(), !8991)
  store ptr %.val, ptr %i.b, align 8, !dbg !9222, !noalias !9173
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9222
  store i8 -1, ptr %i.w, align 8, !dbg !9222, !noalias !9173
  call void @_RNvMs3_NtCscbFFjjIlwRm_5rcgen9sign_algoNtB5_18SignatureAlgorithm19write_oids_sign_alg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !9223, !noalias !9173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9224, !noalias !9173
  %i.x = call { ptr, i64 } @_RNvXs2_NtCscbFFjjIlwRm_5rcgen8key_pairNtB5_7KeyPairNtB5_13PublicKeyData9der_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1), !dbg !9225 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0, !dbg !9225
  %i.z = extractvalue { ptr, i64 } %i.x, 1, !dbg !9225 ; 2 uses
    #dbg_value(ptr %i.y, !9169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8992)
    #dbg_value(i64 %i.z, !9169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9226, !noalias !9173
    #dbg_value(ptr %.val, !9174, !DIExpression(), !8994)
  store ptr %.val, ptr %i.a, align 8, !dbg !9227, !noalias !9173
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9227
  store i8 -1, ptr %i.aa, align 8, !dbg !9227, !noalias !9173
  %i.ab = shl i64 %i.z, 3, !dbg !9228
  call void @_RNvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB2_9DERWriter18write_bitvec_bytes(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z, i64 noundef %i.ab), !dbg !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9230, !noalias !9173
    #dbg_value(ptr %.val, !9156, !DIExpression(), !8996)
  %i.ac = load i64, ptr %i.d, align 8, !dbg !9231, !noalias !9140, !noundef !718 ; 6 uses
  %i.ad = icmp sgt i64 %i.ac, -1, !dbg !9232
  call void @llvm.assume(i1 %i.ad), !dbg !9233
  %i.ae = sub nsw i64 %i.ac, %i.u, !dbg !9234     ; 4 uses
    #dbg_value(i64 %i.ae, !9129, !DIExpression(), !8997)
    #dbg_value(i64 56, !9131, !DIExpression(), !8998)
  %i.af = icmp ult i64 %i.ae, 128, !dbg !9235     ; 2 uses
  br i1 %i.af, label %.thread.i, label %.preheader.i, !dbg !9235

.preheader.i:                                     ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i, %.preheader.i
  %.sroa.07.0.i = phi i64 [ %i.aj, %.preheader.i ], [ 56, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i ], !dbg !9236 ; 6 uses
    #dbg_value(i64 %.sroa.07.0.i, !9131, !DIExpression(), !8998)
  %i.ag = and i64 %.sroa.07.0.i, 56, !dbg !9237
  %i.ah = lshr i64 %i.ae, %i.ag, !dbg !9237
  %i.ai = icmp eq i64 %i.ah, 0, !dbg !9237
  %i.aj = add i64 %.sroa.07.0.i, -8, !dbg !9238
    #dbg_value(i64 %i.aj, !9131, !DIExpression(), !8998)
  br i1 %i.ai, label %.preheader.i, label %bb.e, !dbg !9237

bb.e:                                             ; preds = %.preheader.i
  %i.ak = lshr exact i64 %.sroa.07.0.i, 3, !dbg !9239 ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 2, !dbg !9240    ; 2 uses
    #dbg_value(i64 %i.al, !9130, !DIExpression(), !8999)
    #dbg_value(i64 %.sroa.07.0.i, !9131, !DIExpression(), !8998)
  %i.am = icmp eq i64 %.sroa.07.0.i, 0, !dbg !9241
  br i1 %i.am, label %.thread.i, label %bb.f, !dbg !9241

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %i.al, 3, !dbg !9242
  br i1 %.not.i, label %.loopexit7.thread.i, label %bb.g, !dbg !9242

.thread.i:                                        ; preds = %bb.e, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i
  %.pre-phi = phi i64 [ %i.p, %bb.e ], [ %i.k, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i ], !dbg !9243 ; 2 uses
  %.sroa.02.06.i = phi i64 [ 2, %bb.e ], [ 1, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i ]
  %.sroa.07.14.i = phi i64 [ 0, %bb.e ], [ 56, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskigd7sy4fqX_10quinn_perf.exit.2.i ]
    #dbg_value(!DIArgList(i64 3, i64 %.sroa.02.06.i), !9133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9000)
    #dbg_value(!DIArgList(i64 %i.u, i64 %.sroa.02.06.i), !9132, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !9001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9244, !noalias !9140
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %.pre-phi, i64 noundef %i.u), !dbg !9245
    #dbg_value(ptr %i.c, !1800, !DIExpression(), !9003)
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !dbg !9246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9247, !noalias !9140
  %.pre.pre = load i64, ptr %i.d, align 8, !dbg !9248, !noalias !9140
  br label %.loopexit7.i, !dbg !9249

bb.g:                                             ; preds = %bb.f
  %i.an = add nsw i64 %i.ak, -1, !dbg !9250       ; 3 uses
    #dbg_value(i64 %i.an, !9134, !DIExpression(), !9010)
  %i.ao = add nuw i64 %i.an, %i.u, !dbg !9251     ; 2 uses
    #dbg_value(i64 %i.ao, !9132, !DIExpression(), !9001)
    #dbg_value(i64 0, !9135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9011)
    #dbg_value(i64 %i.an, !9135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9011)
    #dbg_value(ptr undef, !9112, !DIExpression(), !8932)
    #dbg_value(ptr undef, !9108, !DIExpression(), !8931)
    #dbg_value(ptr undef, !9104, !DIExpression(), !8930)
    #dbg_value(ptr undef, !9105, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9012)
  %.not18.i = icmp eq i64 %i.an, 0, !dbg !9252
  br i1 %.not18.i, label %.loopexit7.thread.i, label %.lr.ph.i.preheader, !dbg !9253

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ap = icmp samesign ult i64 %i.ac, %i.u
  br i1 %i.ap, label %bb.h, label %.lr.ph.i, !dbg !9254, !prof !1834

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i
  %i.aq = phi i64 [ %i.ay, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ %i.ac, %.lr.ph.i.preheader ], !dbg !9255 ; 5 uses
  %.sroa.016.012.i = phi i64 [ %i.ar, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.016.012.i, !9109, !DIExpression(), !9015)
    #dbg_value(i64 %.sroa.016.012.i, !9145, !DIExpression(), !8942)
    #dbg_value(i64 %.sroa.016.012.i, !9149, !DIExpression(), !8945)
  %i.ar = add nuw i64 %.sroa.016.012.i, 1, !dbg !9256 ; 2 uses
    #dbg_value(i64 %i.ar, !9135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9011)
    #dbg_value(ptr %.val, !9152, !DIExpression(), !8948)
  call void @llvm.experimental.noalias.scope.decl(metadata !9186), !dbg !9257
    #dbg_value(ptr %.val, !1839, !DIExpression(), !9018)
    #dbg_value(ptr %.val, !1845, !DIExpression(), !9019)
    #dbg_value(ptr %.val, !1847, !DIExpression(), !9021)
    #dbg_value(ptr %.val, !1849, !DIExpression(), !9023)
    #dbg_value(i64 %i.u, !1840, !DIExpression(), !9018)
    #dbg_value(i64 %i.u, !1855, !DIExpression(), !9025)
    #dbg_value(i8 0, !1841, !DIExpression(), !9018)
    #dbg_value(i64 1, !1859, !DIExpression(), !9028)
    #dbg_value(i64 1, !1857, !DIExpression(), !9030)
    #dbg_value(i64 1, !1859, !DIExpression(), !9034)
    #dbg_value(i64 %i.aq, !1842, !DIExpression(), !9035)
  %i.as = icmp sgt i64 %i.aq, -1, !dbg !9258
  call void @llvm.assume(i1 %i.as), !dbg !9259
    #dbg_value(ptr %.val, !1862, !DIExpression(), !9036)
  %2 = load i64, ptr %.val, align 8, !dbg !9260, !range !1731, !alias.scope !9186, !noalias !9140, !noundef !718
  %3 = icmp eq i64 %i.aq, %2, !dbg !9261
  br i1 %3, label %bb.i, label %bb.j, !dbg !9261

bb.h:                                             ; preds = %.lr.ph.i.preheader
  call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !dbg !9262, !noalias !9186
  unreachable, !dbg !9262

bb.i:                                             ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val) #13, !dbg !9263
  br label %bb.j, !dbg !9264

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.at = load ptr, ptr %i.e, align 8, !dbg !9265, !alias.scope !9186, !noalias !9140, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.at, !1856, !DIExpression(), !9025)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.u, !dbg !9266 ; 3 uses
    #dbg_value(ptr %i.au, !1843, !DIExpression(), !9040)
    #dbg_value(ptr %i.au, !1856, !DIExpression(), !9030)
    #dbg_value(ptr %i.au, !1868, !DIExpression(), !9042)
  %i.av = icmp samesign ult i64 %i.u, %i.aq, !dbg !9267
  br i1 %i.av, label %bb.k, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !9267

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr %i.au, !1871, !DIExpression(), !9044)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1, !dbg !9268
    #dbg_value(ptr %i.aw, !1874, !DIExpression(), !9044)
  %i.ax = sub nuw nsw i64 %i.aq, %i.u, !dbg !9269
    #dbg_value(i64 %i.ax, !1875, !DIExpression(), !9044)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull align 1 %i.au, i64 %i.ax, i1 false), !dbg !9270
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !9271

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.k, %bb.j
    #dbg_value(i8 0, !1869, !DIExpression(), !9042)
  store i8 0, ptr %i.au, align 1, !dbg !9272
  %i.ay = add nuw i64 %i.aq, 1, !dbg !9273        ; 3 uses
    #dbg_value(i64 %i.ay, !1853, !DIExpression(), !9023)
  store i64 %i.ay, ptr %i.d, align 8, !dbg !9274, !alias.scope !9186, !noalias !9140
    #dbg_value(i64 %i.ar, !9135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9011)
    #dbg_value(ptr undef, !9112, !DIExpression(), !8932)
    #dbg_value(ptr undef, !9108, !DIExpression(), !8931)
    #dbg_value(ptr undef, !9104, !DIExpression(), !8930)
    #dbg_value(ptr undef, !9105, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9012)
  %exitcond.not.i = icmp eq i64 %i.ar, %i.an, !dbg !9252
  br i1 %exitcond.not.i, label %.loopexit7.i, label %.lr.ph.i, !dbg !9253

.loopexit7.thread.i:                              ; preds = %bb.g, %bb.f
  %.sroa.014.0.ph.i = phi i64 [ %i.ao, %bb.g ], [ %i.u, %bb.f ]
    #dbg_value(i64 %.sroa.014.0.ph.i, !9132, !DIExpression(), !9001)
  %i.az = add i64 %.sroa.014.0.ph.i, -3, !dbg !9275
    #dbg_value(i64 %i.az, !9136, !DIExpression(), !9045)
    #dbg_value(i64 %i.az, !9184, !DIExpression(), !9047)
    #dbg_value(i64 %i.az, !9187, !DIExpression(), !9050)
    #dbg_value(i64 %i.az, !9190, !DIExpression(), !9053)
  br label %bb.l, !dbg !9276

.loopexit7.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i, %.thread.i
  %.pre = phi i64 [ %.pre.pre, %.thread.i ], [ %i.ay, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !9248 ; 3 uses
  %.sroa.02.05.i = phi i64 [ %.sroa.02.06.i, %.thread.i ], [ %i.al, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.07.13.i = phi i64 [ %.sroa.07.14.i, %.thread.i ], [ %.sroa.07.0.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ]
  %.sroa.014.0.i = phi i64 [ %.pre-phi, %.thread.i ], [ %i.ao, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10insert_mutCskigd7sy4fqX_10quinn_perf.exit.i ], !dbg !9277
    #dbg_value(i64 %.sroa.014.0.i, !9132, !DIExpression(), !9001)
  %i.ba = sub i64 %.sroa.014.0.i, %.sroa.02.05.i, !dbg !9275 ; 4 uses
    #dbg_value(i64 %i.ba, !9136, !DIExpression(), !9045)
    #dbg_value(i64 %i.ba, !9184, !DIExpression(), !9047)
    #dbg_value(i64 %i.ba, !9187, !DIExpression(), !9050)
    #dbg_value(i64 %i.ba, !9190, !DIExpression(), !9053)
  br i1 %i.af, label %bb.m, label %bb.l, !dbg !9276

bb.l:                                             ; preds = %.loopexit7.i, %.loopexit7.thread.i
  %i.bb = phi i64 [ %i.ac, %.loopexit7.thread.i ], [ %.pre, %.loopexit7.i ], !dbg !9248 ; 2 uses
  %i.bc = phi i64 [ %i.az, %.loopexit7.thread.i ], [ %i.ba, %.loopexit7.i ] ; 4 uses
  %.sroa.07.1341.i = phi i64 [ %.sroa.07.0.i, %.loopexit7.thread.i ], [ %.sroa.07.13.i, %.loopexit7.i ] ; 2 uses
    #dbg_value(ptr %.val, !9183, !DIExpression(), !9054)
    #dbg_value(ptr %.val, !9180, !DIExpression(), !9055)
    #dbg_value(ptr %.val, !9177, !DIExpression(), !9056)
    #dbg_value(ptr %.val, !9193, !DIExpression(), !9059)
    #dbg_value(i64 %i.bc, !9184, !DIExpression(), !9054)
    #dbg_value(i64 %i.bc, !9187, !DIExpression(), !9061)
    #dbg_value(i64 %i.bc, !9190, !DIExpression(), !9063)
    #dbg_value(ptr poison, !9188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9061)
    #dbg_value(ptr poison, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9063)
    #dbg_value(i64 %i.bb, !9188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9061)
    #dbg_value(i64 %i.bb, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9063)
  %i.bd = icmp ult i64 %i.bc, %i.bb, !dbg !9278
  br i1 %i.bd, label %bb.n, label %bb.o, !dbg !9278

bb.m:                                             ; preds = %.loopexit7.i
    #dbg_value(ptr %.val, !9183, !DIExpression(), !9047)
    #dbg_value(ptr %.val, !9180, !DIExpression(), !9065)
    #dbg_value(ptr %.val, !9177, !DIExpression(), !9067)
    #dbg_value(ptr %.val, !9193, !DIExpression(), !9069)
    #dbg_value(ptr poison, !9188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9050)
    #dbg_value(ptr poison, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9053)
    #dbg_value(i64 %.pre, !9188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9050)
    #dbg_value(i64 %.pre, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9053)
  %i.be = icmp ult i64 %i.ba, %.pre, !dbg !9279
  br i1 %i.be, label %bb.q, label %bb.r, !dbg !9279

bb.n:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.e, align 8, !dbg !9280, !noalias !9140, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bf, !9188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9061)
    #dbg_value(ptr %i.bf, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9063)
  %i.bg = lshr exact i64 %.sroa.07.1341.i, 3, !dbg !9281
  %i.bh = trunc i64 %i.bg to i8, !dbg !9282
  %i.bi = add i8 %i.bh, 1, !dbg !9282
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc, !dbg !9283
  %i.bk = or i8 %i.bi, -128, !dbg !9284
  store i8 %i.bk, ptr %i.bj, align 1, !dbg !9284
    #dbg_value(i64 %i.bc, !9136, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9045)
    #dbg_value(i64 %i.bc, !9184, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9047)
    #dbg_value(i64 %i.bc, !9187, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9050)
    #dbg_value(i64 %i.bc, !9190, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9053)
  %.sroa.018.013.i = add nuw i64 %i.bc, 1, !dbg !9285 ; 3 uses
  %i.bl = load i64, ptr %i.d, align 8, !dbg !9286, !noalias !9140, !noundef !718 ; 2 uses
  %i.bm = icmp ult i64 %.sroa.018.013.i, %i.bl, !dbg !9287
  br i1 %i.bm, label %.lr.ph16.i, label %._crit_edge.i, !dbg !9287

bb.o:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !dbg !9278
  unreachable, !dbg !9278

bb.p:                                             ; preds = %.lr.ph16.i
  %i.bn = add i64 %.sroa.07.214.i, -8, !dbg !9288
    #dbg_value(i64 %i.bn, !9131, !DIExpression(), !8998)
  %.sroa.018.0.i = add nuw i64 %.sroa.018.015.i, 1, !dbg !9285 ; 3 uses
    #dbg_value(i64 %.sroa.018.0.i, !9190, !DIExpression(), !9053)
    #dbg_value(i64 %.sroa.018.0.i, !9187, !DIExpression(), !9050)
    #dbg_value(i64 %.sroa.018.0.i, !9184, !DIExpression(), !9047)
    #dbg_value(i64 %.sroa.018.0.i, !9136, !DIExpression(), !9045)
    #dbg_value(ptr %.val, !9183, !DIExpression(), !9081)
    #dbg_value(ptr %.val, !9180, !DIExpression(), !9082)
    #dbg_value(ptr %.val, !9177, !DIExpression(), !9083)
    #dbg_value(ptr %.val, !9193, !DIExpression(), !9085)
    #dbg_value(i64 %.sroa.018.0.i, !9184, !DIExpression(), !9081)
    #dbg_value(i64 %.sroa.018.0.i, !9187, !DIExpression(), !9086)
    #dbg_value(i64 %.sroa.018.0.i, !9190, !DIExpression(), !9087)
  %i.bo = load i64, ptr %i.d, align 8, !dbg !9286, !noalias !9140, !noundef !718 ; 2 uses
    #dbg_value(ptr poison, !9188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9086)
    #dbg_value(ptr poison, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9087)
    #dbg_value(i64 %i.bo, !9188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9086)
    #dbg_value(i64 %i.bo, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9087)
  %i.bp = icmp ult i64 %.sroa.018.0.i, %i.bo, !dbg !9287
  br i1 %i.bp, label %.lr.ph16.i, label %._crit_edge.i, !dbg !9287

.lr.ph16.i:                                       ; preds = %bb.n, %bb.p
  %.sroa.018.015.i = phi i64 [ %.sroa.018.0.i, %bb.p ], [ %.sroa.018.013.i, %bb.n ] ; 2 uses
  %.sroa.07.214.i = phi i64 [ %i.bn, %bb.p ], [ %.sroa.07.1341.i, %bb.n ] ; 3 uses
    #dbg_value(i64 %.sroa.07.214.i, !9131, !DIExpression(), !8998)
  %i.bq = load ptr, ptr %i.e, align 8, !dbg !9289, !noalias !9140, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bq, !9188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9086)
    #dbg_value(ptr %i.bq, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9087)
  %i.br = and i64 %.sroa.07.214.i, 56, !dbg !9290
  %i.bs = lshr i64 %i.ae, %i.br, !dbg !9290
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.018.015.i, !dbg !9291
  %i.bu = trunc i64 %i.bs to i8, !dbg !9292
  store i8 %i.bu, ptr %i.bt, align 1, !dbg !9292
    #dbg_value(i64 %.sroa.018.015.i, !9136, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9045)
    #dbg_value(i64 %.sroa.018.015.i, !9184, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9047)
    #dbg_value(i64 %.sroa.018.015.i, !9187, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9050)
    #dbg_value(i64 %.sroa.018.015.i, !9190, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9053)
  %i.bv = icmp eq i64 %.sroa.07.214.i, 0, !dbg !9293
    #dbg_value(i64 %.sroa.07.214.i, !9131, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !8998)
  br i1 %i.bv, label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvNtCscbFFjjIlwRm_5rcgen8key_pair24serialize_public_key_derNtB1t_7KeyPairE0E0ECskigd7sy4fqX_10quinn_perf.exit, label %bb.p, !dbg !9293

._crit_edge.i:                                    ; preds = %bb.p, %bb.n
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.013.i, %bb.n ], [ %.sroa.018.0.i, %bb.p ], !dbg !9285
  %.lcssa.i = phi i64 [ %i.bl, %bb.n ], [ %i.bo, %bb.p ], !dbg !9286
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %.lcssa.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14, !dbg !9287
  unreachable, !dbg !9287

bb.q:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.e, align 8, !dbg !9294, !noalias !9140, !nonnull !718, !noundef !718
    #dbg_value(ptr %i.bw, !9188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9050)
    #dbg_value(ptr %i.bw, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9053)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ba, !dbg !9295
  %i.by = trunc nuw nsw i64 %i.ae to i8, !dbg !9296
  store i8 %i.by, ptr %i.bx, align 1, !dbg !9296
  br label %_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvNtCscbFFjjIlwRm_5rcgen8key_pair24serialize_public_key_derNtB1t_7KeyPairE0E0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !9297

bb.r:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %.pre, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !dbg !9279
  unreachable, !dbg !9279

_RINvMNtCsk5jvY4Bb3tQ_5yasna6writerNtB3_9DERWriter11with_lengthuNCINvB2_14write_sequenceuNCINvNtCscbFFjjIlwRm_5rcgen8key_pair24serialize_public_key_derNtB1t_7KeyPairE0E0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %.lr.ph16.i, %bb.q
  ret void, !dbg !9298
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscbFFjjIlwRm_5rcgen8key_pair8sign_derRNtB2_7KeyPairNCINvMs1_NtB4_11certificateNtB13_17CertificateParams25serialize_der_with_signerBH_BG_E0ECskigd7sy4fqX_10quinn_perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9318 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !11043, !DIExpression(), !9447)
    #dbg_value(ptr poison, !11047, !DIExpression(), !9448)
    #dbg_value(ptr poison, !11051, !DIExpression(), !9449)
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !11294, !DIExpression(), !9457)
    #dbg_value(ptr poison, !11298, !DIExpression(), !9458)
    #dbg_value(ptr poison, !11302, !DIExpression(), !9459)
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !11305, !DIExpression(), !9485)
    #dbg_value(ptr poison, !11309, !DIExpression(), !9486)
    #dbg_value(ptr poison, !11313, !DIExpression(), !9487)
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !11349, !DIExpression(), !9513)
end_hunk_6
