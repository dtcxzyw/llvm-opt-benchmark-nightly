Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog-2e3720e2d56e44fb.qlog.2b827698b949cf29-cgu.2?download=true
inline.NumInlined: 546
inline.NumDeleted: 86
begin_hunk_0_@_RNvXs3L_NtNtCs3JBf551F2Kj_4qlog6events4quicNtB6_14PacketBufferedNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq:bb.a
    #dbg_value(ptr %0, !23348, !DIExpression(), !23354)
    #dbg_value(ptr %1, !23349, !DIExpression(), !23355)
  %i.a = load i64, ptr %0, align 8, !dbg !23398, !range !2896, !noundef !1210
  %.not = icmp eq i64 %i.a, 2, !dbg !23398
  %i.b = load i64, ptr %1, align 8, !dbg !23398, !range !2896, !noundef !1210
  %i.c = icmp eq i64 %i.b, 2, !dbg !23398         ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !23399

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %.split, !dbg !23399

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23353

.split:                                           ; preds = %bb.b
    #dbg_value(ptr %0, !23350, !DIExpression(), !23356)
    #dbg_value(ptr %1, !23351, !DIExpression(), !23356)
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXsh_NtNtCs3JBf551F2Kj_4qlog6events4quicNtB5_12PacketHeaderNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) #22, !dbg !23400
  br i1 %i.d, label %bb.d, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23353

bb.d:                                             ; preds = %.split, %bb.c
    #dbg_value(ptr %0, !23357, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !23363)
    #dbg_value(ptr %1, !23358, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !23364)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !23401
  %i.f = load i64, ptr %i.e, align 8, !dbg !23401, !range !2896, !noundef !1210 ; 2 uses
  %.not13 = icmp eq i64 %i.f, 2, !dbg !23401
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !23401
  %i.h = load i64, ptr %i.g, align 8, !dbg !23401, !range !2896, !noundef !1210 ; 2 uses
  %i.i = icmp eq i64 %i.h, 2, !dbg !23401         ; 2 uses
  br i1 %.not13, label %bb.f, label %bb.e, !dbg !23402

bb.e:                                             ; preds = %bb.d
  br i1 %i.i, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.g, !dbg !23402

bb.f:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.o, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23362

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr %i.e, !23359, !DIExpression(), !23365)
    #dbg_value(ptr %i.g, !23360, !DIExpression(), !23365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23366), !dbg !23403
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23367), !dbg !23403
    #dbg_value(ptr %i.e, !3826, !DIExpression(), !23276)
    #dbg_value(ptr %i.g, !3830, !DIExpression(), !23276)
    #dbg_declare(ptr poison, !3832, !DIExpression(), !23282)
    #dbg_declare(ptr poison, !3832, !DIExpression(), !23284)
    #dbg_value(ptr %i.e, !3850, !DIExpression(), !23286)
    #dbg_value(ptr %i.g, !3851, !DIExpression(), !23287)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !23404
  %i.k = trunc nuw i64 %i.f to i1, !dbg !23405
  %i.l = trunc nuw i64 %i.h to i1, !dbg !23405    ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.i, !dbg !23405

bb.h:                                             ; preds = %bb.g
  br i1 %i.l, label %.split.i, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23405

bb.i:                                             ; preds = %bb.g
  br i1 %i.l, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.j, !dbg !23406

.split.i:                                         ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !23404
    #dbg_value(ptr %i.e, !3852, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23288)
    #dbg_value(ptr %i.e, !3857, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23290)
    #dbg_value(ptr %i.g, !3853, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23291)
    #dbg_value(ptr %i.g, !3858, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23292)
  %i.n = load i64, ptr %i.j, align 8, !dbg !23407, !alias.scope !23366, !noalias !23367, !noundef !1210
  %i.o = load i64, ptr %i.m, align 8, !dbg !23408, !alias.scope !23367, !noalias !23366, !noundef !1210
  %i.p = icmp eq i64 %i.n, %i.o, !dbg !23407
  br i1 %i.p, label %bb.j, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23406

bb.j:                                             ; preds = %.split.i, %bb.i
    #dbg_value(ptr %i.e, !3850, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23294)
    #dbg_value(ptr %i.g, !3851, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !23295)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !23409
  %i.r = load i64, ptr %i.q, align 8, !dbg !23409, !range !3453, !alias.scope !23366, !noalias !23367, !noundef !1210
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !23409
  %i.t = trunc nuw i64 %i.r to i1, !dbg !23410
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !23409
  %i.v = load i64, ptr %i.u, align 8, !dbg !23409, !range !3453, !alias.scope !23367, !noalias !23366, !noundef !1210
  %i.w = trunc nuw i64 %i.v to i1, !dbg !23410    ; 2 uses
  br i1 %i.t, label %bb.k, label %bb.l, !dbg !23410

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %.split14.i, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23410

bb.l:                                             ; preds = %bb.j
  br i1 %i.w, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.m, !dbg !23411

.split14.i:                                       ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !23409
    #dbg_value(ptr %i.e, !3854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23296)
    #dbg_value(ptr %i.e, !3857, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23298)
    #dbg_value(ptr %i.g, !3855, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23299)
    #dbg_value(ptr %i.g, !3858, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23300)
  %i.y = load i64, ptr %i.s, align 8, !dbg !23412, !alias.scope !23366, !noalias !23367, !noundef !1210
  %i.z = load i64, ptr %i.x, align 8, !dbg !23413, !alias.scope !23367, !noalias !23366, !noundef !1210
  %i.aa = icmp eq i64 %i.y, %i.z, !dbg !23412
  br i1 %i.aa, label %bb.m, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23411

bb.m:                                             ; preds = %.split14.i, %bb.l
    #dbg_value(ptr %i.e, !3845, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !23301)
    #dbg_value(ptr %i.g, !3846, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !23302)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !23414
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !23414, !alias.scope !23366, !noalias !23367, !align !2912, !noundef !1210 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null, !dbg !23414  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !23414
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !23414, !alias.scope !23367, !noalias !23366, !align !2912, !noundef !1210 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null, !dbg !23414    ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.af, !dbg !23415
  br i1 %brmerge.i, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.n, !dbg !23415

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.e, !3847, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !23303)
    #dbg_value(ptr %i.e, !3841, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !23304)
    #dbg_value(ptr %i.g, !3848, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !23305)
    #dbg_value(ptr %i.g, !3842, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !23306)
    #dbg_value(ptr %i.ac, !3838, !DIExpression(), !23307)
    #dbg_value(ptr %i.ae, !3839, !DIExpression(), !23307)
    #dbg_value(ptr %i.ac, !3835, !DIExpression(), !23308)
    #dbg_value(ptr %i.ac, !3833, !DIExpression(), !23309)
    #dbg_value(ptr %i.ac, !3861, !DIExpression(), !23311)
    #dbg_value(ptr %i.ac, !3863, !DIExpression(), !23313)
    #dbg_value(ptr %i.ac, !3865, !DIExpression(), !23315)
    #dbg_value(ptr %i.ae, !3836, !DIExpression(), !23316)
    #dbg_value(ptr %i.ae, !3833, !DIExpression(), !23317)
    #dbg_value(ptr %i.ae, !3861, !DIExpression(), !23319)
    #dbg_value(ptr %i.ae, !3863, !DIExpression(), !23321)
    #dbg_value(ptr %i.ae, !3865, !DIExpression(), !23323)
    #dbg_value(ptr poison, !3870, !DIExpression(), !23326)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !23416
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !23416, !noalias !23368, !noundef !1210 ; 2 uses
    #dbg_value(i64 %i.ah, !3877, !DIExpression(), !23327)
    #dbg_value(i64 %i.ah, !3872, !DIExpression(), !23326)
    #dbg_value(i64 %i.ah, !3873, !DIExpression(), !23328)
    #dbg_value(ptr poison, !3875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23329)
    #dbg_value(i64 %i.ah, !3875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23329)
    #dbg_value(ptr poison, !3871, !DIExpression(), !23326)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !23417
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !23417, !noalias !23368, !noundef !1210
    #dbg_value(ptr poison, !3876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23329)
    #dbg_value(i64 %i.aj, !3876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23329)
  %i.ak = icmp eq i64 %i.ah, %i.aj, !dbg !23418
  br i1 %i.ak, label %.split18, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23418

.split18:                                         ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !23419
  %i.am = load ptr, ptr %i.al, align 8, !dbg !23419, !noalias !23368, !nonnull !1210, !noundef !1210
    #dbg_value(ptr %i.am, !3871, !DIExpression(), !23326)
    #dbg_value(ptr %i.am, !3876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23329)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !23420
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !23420, !noalias !23368, !nonnull !1210, !noundef !1210
    #dbg_value(ptr %i.ao, !3870, !DIExpression(), !23326)
    #dbg_value(ptr %i.ao, !3875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23329)
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %i.am, i64 %i.ah), !dbg !23421, !noalias !23368
  %i.ap = icmp eq i32 %bcmp.i, 0, !dbg !23421
  br i1 %i.ap, label %bb.o, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23362

_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m
  %.mux.i = and i1 %.not.i, %i.af, !dbg !23415
  br i1 %.mux.i, label %bb.o, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23362

bb.o:                                             ; preds = %.split18, %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.f
    #dbg_value(ptr %0, !23369, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !23375)
    #dbg_value(ptr %1, !23370, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !23376)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !23422
  %i.ar = load i32, ptr %i.aq, align 8, !dbg !23422, !range !3815, !noundef !1210
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 188, !dbg !23422
  %i.at = trunc nuw i32 %i.ar to i1, !dbg !23423
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !23422
  %i.av = load i32, ptr %i.au, align 8, !dbg !23422, !range !3815, !noundef !1210
  %i.aw = trunc nuw i32 %i.av to i1, !dbg !23423  ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.q, !dbg !23423

bb.p:                                             ; preds = %bb.o
  br i1 %i.aw, label %.split19, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23423

bb.q:                                             ; preds = %bb.o
  br i1 %i.aw, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.r, !dbg !23374

.split19:                                         ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 188, !dbg !23422
    #dbg_value(ptr %0, !23371, !DIExpression(DW_OP_plus_uconst, 188, DW_OP_stack_value), !23378)
    #dbg_value(ptr %0, !23379, !DIExpression(DW_OP_plus_uconst, 188, DW_OP_stack_value), !23383)
    #dbg_value(ptr %1, !23372, !DIExpression(DW_OP_plus_uconst, 188, DW_OP_stack_value), !23384)
    #dbg_value(ptr %1, !23380, !DIExpression(DW_OP_plus_uconst, 188, DW_OP_stack_value), !23385)
  %i.ay = load i32, ptr %i.as, align 4, !dbg !23424, !noundef !1210
  %i.az = load i32, ptr %i.ax, align 4, !dbg !23425, !noundef !1210
  %i.ba = icmp eq i32 %i.ay, %i.az, !dbg !23424
  br i1 %i.ba, label %bb.r, label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23374

bb.r:                                             ; preds = %.split19, %bb.q
    #dbg_value(ptr %0, !23387, !DIExpression(DW_OP_plus_uconst, 192, DW_OP_stack_value), !23396)
    #dbg_value(ptr %1, !23390, !DIExpression(DW_OP_plus_uconst, 192, DW_OP_stack_value), !23397)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !23426
  %i.bc = load i8, ptr %i.bb, align 8, !dbg !23426, !range !3341, !noundef !1210 ; 2 uses
  %.not15 = icmp eq i8 %i.bc, 2, !dbg !23426
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !23426
  %i.be = load i8, ptr %i.bd, align 8, !dbg !23426, !range !3341, !noundef !1210 ; 2 uses
  br i1 %.not15, label %bb.t, label %bb.s, !dbg !23427

_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %.split.i, %bb.n, %bb.l, %bb.h, %bb.k, %.split14.i, %bb.i, %.split19, %.split18, %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %.split, %bb.s, %bb.c, %bb.f, %bb.q, %bb.b, %bb.e, %bb.p, %bb.t
  %.sroa.0.0 = phi i1 [ %.not20, %bb.s ], [ false, %bb.c ], [ %i.bf, %bb.t ], [ false, %bb.p ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.split ], [ false, %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit ], [ false, %.split19 ], [ false, %.split18 ], [ false, %bb.i ], [ false, %.split14.i ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.l ], [ false, %bb.n ], [ false, %.split.i ]
  ret i1 %.sroa.0.0, !dbg !23428

bb.s:                                             ; preds = %bb.r
  %.not20 = icmp eq i8 %i.bc, %i.be
  br label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23427

bb.t:                                             ; preds = %bb.r
  %i.bf = icmp eq i8 %i.be, 2, !dbg !23426
  br label %_RNvXsu_NtCs3JBf551F2Kj_4qlog6eventsNtB5_7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !23427
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs3R_NtNtCs3JBf551F2Kj_4qlog6events4quicNtB6_12PacketsAckedNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 !dbg !23429 {
bb.a:
    #dbg_value(ptr %0, !23452, !DIExpression(), !23455)
    #dbg_value(ptr %1, !23453, !DIExpression(), !23455)
    #dbg_declare(ptr poison, !23456, !DIExpression(), !23471)
    #dbg_declare(ptr poison, !23456, !DIExpression(), !23488)
    #dbg_value(ptr %0, !23489, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23495)
    #dbg_value(ptr %1, !23490, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !23496)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23579
  %i.b = load i8, ptr %i.a, align 8, !dbg !23579, !range !3805, !noundef !1210 ; 2 uses
  %.not = icmp eq i8 %i.b, -1, !dbg !23579
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23579
  %i.d = load i8, ptr %i.c, align 8, !dbg !23579, !range !3805, !noundef !1210 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !23580

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !23580

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.d, -1, !dbg !23579
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !23494

bb.d:                                             ; preds = %bb.b, %bb.c
    #dbg_value(ptr %0, !23475, !DIExpression(), !23497)
    #dbg_value(ptr %1, !23476, !DIExpression(), !23498)
  %i.g = load i64, ptr %0, align 8, !dbg !23581, !range !1274, !noundef !1210 ; 2 uses
  %.not14 = icmp eq i64 %i.g, -1, !dbg !23581
  %i.h = load i64, ptr %1, align 8, !dbg !23581, !range !1274, !noundef !1210 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1, !dbg !23581
  %brmerge = or i1 %.not14, %i.i, !dbg !23582
  %i.j = and i64 %i.g, %i.h, !dbg !23582
  %.mux = icmp eq i64 %i.j, -1, !dbg !23582
  br i1 %brmerge, label %bb.e, label %bb.f, !dbg !23582

bb.e:                                             ; preds = %bb.d, %bb.f, %bb.c, %bb.b, %bb.g
  %.sroa.0.0.shrunk = phi i1 [ %i.u, %bb.g ], [ %.mux, %bb.d ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk, !dbg !23583

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !23477, !DIExpression(), !23499)
    #dbg_value(ptr %0, !23482, !DIExpression(), !23500)
    #dbg_value(ptr %0, !23464, !DIExpression(), !23501)
    #dbg_value(ptr %0, !23502, !DIExpression(), !23507)
    #dbg_value(ptr %0, !23508, !DIExpression(), !23512)
    #dbg_value(ptr %0, !23513, !DIExpression(), !23520)
    #dbg_value(ptr %1, !23478, !DIExpression(), !23521)
    #dbg_value(ptr %1, !23483, !DIExpression(), !23522)
    #dbg_value(ptr %1, !23464, !DIExpression(), !23523)
    #dbg_value(ptr %1, !23502, !DIExpression(), !23526)
    #dbg_value(ptr %1, !23508, !DIExpression(), !23529)
    #dbg_value(ptr %1, !23513, !DIExpression(), !23532)
    #dbg_value(ptr poison, !23533, !DIExpression(), !23542)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23584
  %i.l = load i64, ptr %i.k, align 8, !dbg !23584, !noundef !1210 ; 2 uses
    #dbg_value(i64 %i.l, !23547, !DIExpression(), !23553)
    #dbg_value(i64 %i.l, !23537, !DIExpression(), !23542)
    #dbg_value(ptr poison, !23545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23554)
    #dbg_value(i64 %i.l, !23545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23554)
    #dbg_value(ptr poison, !23536, !DIExpression(), !23542)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23585
  %i.n = load i64, ptr %i.m, align 8, !dbg !23585, !noundef !1210
    #dbg_value(ptr poison, !23546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23554)
    #dbg_value(i64 %i.n, !23546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23554)
  %i.o = icmp eq i64 %i.l, %i.n, !dbg !23586
  br i1 %i.o, label %bb.g, label %bb.e, !dbg !23586

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23587
  %i.q = load ptr, ptr %i.p, align 8, !dbg !23587, !nonnull !1210, !noundef !1210
    #dbg_value(ptr %i.q, !23536, !DIExpression(), !23542)
    #dbg_value(ptr %i.q, !23546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23554)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23588
  %i.s = load ptr, ptr %i.r, align 8, !dbg !23588, !nonnull !1210, !noundef !1210
    #dbg_value(ptr %i.s, !23533, !DIExpression(), !23542)
    #dbg_value(ptr %i.s, !23545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23554)
  %i.t = shl nuw i64 %i.l, 3, !dbg !23589
    #dbg_value(i64 %i.t, !23538, !DIExpression(), !23578)
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.q, i64 %i.t), !dbg !23590
  %i.u = icmp eq i32 %bcmp, 0, !dbg !23590
  br label %bb.e, !dbg !23591
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs3X_NtNtCs3JBf551F2Kj_4qlog6events4quicNtB6_18StreamStateUpdatedNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 !dbg !23592 {
bb.a:
    #dbg_value(ptr %0, !23607, !DIExpression(), !23610)
    #dbg_value(ptr %1, !23608, !DIExpression(), !23610)
  %i.a = load i64, ptr %0, align 8, !dbg !23667, !noundef !1210
  %i.b = load i64, ptr %1, align 8, !dbg !23667, !noundef !1210
  %i.c = icmp eq i64 %i.a, %i.b, !dbg !23667
  br i1 %i.c, label %bb.b, label %bb.j, !dbg !23667

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !23612, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !23621)
    #dbg_value(ptr %1, !23615, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !23622)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !23668
  %i.e = load i8, ptr %i.d, align 2, !dbg !23668, !range !3341, !noundef !1210 ; 2 uses
  %.not = icmp eq i8 %i.e, 2, !dbg !23668
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10, !dbg !23668
  %i.g = load i8, ptr %i.f, align 2, !dbg !23668, !range !3341, !noundef !1210 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c, !dbg !23669

bb.c:                                             ; preds = %bb.b
  %.not22 = icmp eq i8 %i.e, %i.g
  br i1 %.not22, label %bb.e, label %bb.j, !dbg !23669

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i8 %i.g, 2, !dbg !23668
  br i1 %i.h, label %bb.e, label %bb.j, !dbg !23620

bb.e:                                             ; preds = %bb.c, %bb.d
    #dbg_value(ptr %0, !23624, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23633)
    #dbg_value(ptr %1, !23627, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23634)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23670
  %i.j = load i8, ptr %i.i, align 8, !dbg !23670, !range !23635, !noundef !1210 ; 2 uses
  %.not14 = icmp eq i8 %i.j, -1, !dbg !23670
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23670
  %i.l = load i8, ptr %i.k, align 8, !dbg !23670, !range !23635, !noundef !1210 ; 2 uses
  br i1 %.not14, label %bb.g, label %bb.f, !dbg !23671

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !23636, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23648)
    #dbg_value(ptr %1, !23640, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23648)
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.h, label %bb.j, !dbg !23671

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i8 %i.l, -1, !dbg !23670
  br i1 %i.n, label %bb.h, label %bb.j, !dbg !23632

bb.h:                                             ; preds = %bb.f, %bb.g
    #dbg_value(ptr %0, !23636, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !23650)
    #dbg_value(ptr %1, !23640, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !23650)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !23650
  %i.p = load i8, ptr %i.o, align 1, !dbg !23650, !range !23651, !noundef !1210
    #dbg_value(i8 %i.p, !23643, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !23652)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9, !dbg !23672
  %i.r = load i8, ptr %i.q, align 1, !dbg !23672, !range !23651, !noundef !1210
    #dbg_value(i8 %i.r, !23644, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !23653)
  %i.s = icmp eq i8 %i.p, %i.r, !dbg !23673
  br i1 %i.s, label %bb.i, label %bb.j, !dbg !23649

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %0, !23656, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !23665)
    #dbg_value(ptr %1, !23659, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !23666)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 11, !dbg !23674
  %i.u = load i8, ptr %i.t, align 1, !dbg !23674, !range !3341, !noundef !1210 ; 2 uses
  %.not16 = icmp eq i8 %i.u, 2, !dbg !23674
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 11, !dbg !23674
  %i.w = load i8, ptr %i.v, align 1, !dbg !23674, !range !3341, !noundef !1210 ; 2 uses
  br i1 %.not16, label %bb.l, label %bb.k, !dbg !23675

bb.j:                                             ; preds = %bb.k, %bb.d, %bb.g, %bb.h, %bb.a, %bb.c, %bb.f, %bb.l
  %.sroa.0.0 = phi i1 [ %.not23, %bb.k ], [ false, %bb.d ], [ %i.x, %bb.l ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.g ]
  ret i1 %.sroa.0.0, !dbg !23676

bb.k:                                             ; preds = %bb.i
  %.not23 = icmp eq i8 %i.u, %i.w
  br label %bb.j, !dbg !23675

bb.l:                                             ; preds = %bb.i
  %i.x = icmp eq i8 %i.w, 2, !dbg !23674
  br label %bb.j, !dbg !23675
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs3_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9EventTypeE4from(i8 noundef range(i8 0, 4) %0, i8 %1) unnamed_addr #0 !dbg !743 {
bb.a:
    #dbg_value(i8 %0, !3957, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !23677)
    #dbg_value(i8 %1, !3957, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !23677)
  switch i8 %0, label %bb.b [
    i8 0, label %switch.lookup
    i8 1, label %bb.c
  ], !dbg !23678, !prof !3959

bb.b:                                             ; preds = %bb.c, %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #24, !dbg !23679
  unreachable, !dbg !23679

bb.c:                                             ; preds = %bb.a
  switch i8 %1, label %bb.d [
    i8 0, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.g
    i8 1, label %bb.b
  ], !dbg !23678, !prof !3960

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !23680

switch.lookup:                                    ; preds = %bb.a
  %i.a = zext nneg i8 %1 to i64, !dbg !23678
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCs3JBf551F2Kj_4qlog6eventsNtB4_5EventNtB4_9Eventable10importance, i64 %i.a, !dbg !23678
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !23678
  br label %bb.e, !dbg !23678

bb.e:                                             ; preds = %switch.lookup, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.g, %bb.f
  %.sroa.03.0 = phi i8 [ 2, %bb.g ], [ 1, %bb.c ], [ %switch.load, %switch.lookup ], [ 1, %bb.c ], [ 0, %bb.f ], [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.c ], !dbg !23677
  ret i8 %.sroa.03.0, !dbg !23681

bb.f:                                             ; preds = %bb.c, %bb.c
  br label %bb.e, !dbg !23682

bb.g:                                             ; preds = %bb.c
  br label %bb.e, !dbg !23683
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBg_9EventDataNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtBb_6___SeedNtB15_15DeserializeSeed11deserializeNtB5_s_9___VisitorNtB15_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !23685 {
bb.a:
    #dbg_value(ptr %0, !23693, !DIExpression(), !23696)
    #dbg_value(ptr %1, !23694, !DIExpression(), !23696)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 41), !dbg !23697
  ret i1 %i.a, !dbg !23698
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs3d_NtNtCs3JBf551F2Kj_4qlog6events4quicNtB6_20UdpDatagramsReceivedNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #6 !dbg !23699 {
bb.a:
    #dbg_value(ptr %0, !23810, !DIExpression(), !23813)
    #dbg_value(ptr %1, !23811, !DIExpression(), !23813)
    #dbg_declare(ptr poison, !23814, !DIExpression(), !23821)
    #dbg_declare(ptr poison, !23814, !DIExpression(), !23831)
    #dbg_declare(ptr poison, !23832, !DIExpression(), !23840)
    #dbg_declare(ptr poison, !23832, !DIExpression(), !23850)
    #dbg_value(ptr %0, !23851, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !23857)
    #dbg_value(ptr %1, !23852, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !23858)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !23986
  %i.b = load i16, ptr %i.a, align 8, !dbg !23986, !range !3554, !noundef !1210
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 50, !dbg !23986
  %i.d = trunc nuw i16 %i.b to i1, !dbg !23987
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !23986
  %i.f = load i16, ptr %i.e, align 8, !dbg !23986, !range !3554, !noundef !1210
  %i.g = trunc nuw i16 %i.f to i1, !dbg !23987    ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !23987

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %.split, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread, !dbg !23987

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread, label %bb.d, !dbg !23856

.split:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 50, !dbg !23986
    #dbg_value(ptr %0, !23853, !DIExpression(DW_OP_plus_uconst, 50, DW_OP_stack_value), !23859)
    #dbg_value(ptr %0, !23860, !DIExpression(DW_OP_plus_uconst, 50, DW_OP_stack_value), !23864)
    #dbg_value(ptr %1, !23854, !DIExpression(DW_OP_plus_uconst, 50, DW_OP_stack_value), !23865)
    #dbg_value(ptr %1, !23861, !DIExpression(DW_OP_plus_uconst, 50, DW_OP_stack_value), !23866)
  %i.i = load i16, ptr %i.c, align 2, !dbg !23988, !noundef !1210
  %i.j = load i16, ptr %i.h, align 2, !dbg !23989, !noundef !1210
  %i.k = icmp eq i16 %i.i, %i.j, !dbg !23988
  br i1 %i.k, label %bb.d, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread, !dbg !23856

bb.d:                                             ; preds = %.split, %bb.c
    #dbg_value(ptr %0, !23822, !DIExpression(), !23867)
    #dbg_value(ptr %1, !23823, !DIExpression(), !23868)
  %i.l = load i64, ptr %0, align 8, !dbg !23990, !range !1274, !noundef !1210
  %.not = icmp eq i64 %i.l, -1, !dbg !23990
  %i.m = load i64, ptr %1, align 8, !dbg !23990, !range !1274, !noundef !1210
  %i.n = icmp eq i64 %i.m, -1, !dbg !23990        ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e, !dbg !23991

bb.e:                                             ; preds = %bb.d
  br i1 %i.n, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread, label %bb.g, !dbg !23991

bb.f:                                             ; preds = %bb.d
  br i1 %i.n, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread, !dbg !23818

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !23824, !DIExpression(), !23869)
    #dbg_value(ptr %0, !23827, !DIExpression(), !23870)
    #dbg_value(ptr %0, !23815, !DIExpression(), !23871)
    #dbg_value(ptr %0, !23872, !DIExpression(), !23875)
    #dbg_value(ptr %0, !23876, !DIExpression(), !23879)
    #dbg_value(ptr %0, !23880, !DIExpression(), !23883)
    #dbg_value(ptr %1, !23825, !DIExpression(), !23884)
    #dbg_value(ptr %1, !23828, !DIExpression(), !23885)
    #dbg_value(ptr %1, !23815, !DIExpression(), !23886)
    #dbg_value(ptr %1, !23872, !DIExpression(), !23889)
    #dbg_value(ptr %1, !23876, !DIExpression(), !23892)
    #dbg_value(ptr %1, !23880, !DIExpression(), !23895)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23992
  %i.p = load i64, ptr %i.o, align 8, !dbg !23992, !noundef !1210 ; 3 uses
    #dbg_value(i64 %i.p, !23896, !DIExpression(), !23901)
    #dbg_value(ptr poison, !23897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(i64 %i.p, !23897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23902)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23993
  %i.r = load i64, ptr %i.q, align 8, !dbg !23993, !noundef !1210
    #dbg_value(ptr poison, !23898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(i64 %i.r, !23898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23902)
  %i.s = icmp eq i64 %i.p, %i.r, !dbg !23994
  br i1 %i.s, label %bb.h, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread, !dbg !23994

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23995
  %i.u = load ptr, ptr %i.t, align 8, !dbg !23995, !nonnull !1210, !noundef !1210
    #dbg_value(ptr %i.u, !23898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23996
  %i.w = load ptr, ptr %i.v, align 8, !dbg !23996, !nonnull !1210, !noundef !1210
    #dbg_value(ptr %i.w, !23897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(ptr %i.w, !4018, !DIExpression(), !23720)
    #dbg_value(ptr %i.w, !4030, !DIExpression(), !23722)
    #dbg_value(ptr %i.u, !4022, !DIExpression(), !23720)
    #dbg_value(ptr %i.u, !4030, !DIExpression(), !23724)
    #dbg_value(i64 %i.p, !4023, !DIExpression(), !23720)
    #dbg_value(i64 0, !4024, !DIExpression(), !23725)
  %i.x = icmp eq i64 %i.p, 0, !dbg !23997
  br i1 %i.x, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i, !dbg !23997

bb.i:                                             ; preds = %_RNvYNtNtCs3JBf551F2Kj_4qlog6events7RawInfoNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neB6_.exit.i, %.split.i
  %i.y = add nuw i64 %.sroa.01.011.i, 1, !dbg !23998 ; 2 uses
    #dbg_value(i64 %i.y, !4024, !DIExpression(), !23725)
  %exitcond.not.i = icmp eq i64 %i.y, %i.p, !dbg !23997
  br i1 %exitcond.not.i, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %.lr.ph.i, !dbg !23997

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.sroa.01.011.i = phi i64 [ %i.y, %bb.i ], [ 0, %bb.h ] ; 3 uses
    #dbg_value(i64 %.sroa.01.011.i, !4024, !DIExpression(), !23725)
    #dbg_value(i64 %.sroa.01.011.i, !4035, !DIExpression(), !23722)
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.sroa.01.011.i, !dbg !23999 ; 5 uses
    #dbg_value(i64 %.sroa.01.011.i, !4035, !DIExpression(), !23724)
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.01.011.i, !dbg !24000 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23912), !dbg !24001
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23913), !dbg !24001
    #dbg_value(ptr %i.z, !4037, !DIExpression(), !23730)
    #dbg_value(ptr %i.aa, !4039, !DIExpression(), !23730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23914), !dbg !24002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23915), !dbg !24002
    #dbg_value(ptr %i.z, !3826, !DIExpression(), !23735)
    #dbg_value(ptr %i.aa, !3830, !DIExpression(), !23735)
    #dbg_declare(ptr poison, !3832, !DIExpression(), !23741)
    #dbg_declare(ptr poison, !3832, !DIExpression(), !23743)
    #dbg_value(ptr %i.z, !3850, !DIExpression(), !23745)
    #dbg_value(ptr %i.aa, !3851, !DIExpression(), !23746)
  %i.ab = load i64, ptr %i.z, align 8, !dbg !24003, !range !3453, !alias.scope !23916, !noalias !23917, !noundef !1210
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !24003
  %i.ad = trunc nuw i64 %i.ab to i1, !dbg !24004
  %i.ae = load i64, ptr %i.aa, align 8, !dbg !24003, !range !3453, !alias.scope !23917, !noalias !23916, !noundef !1210
  %i.af = trunc nuw i64 %i.ae to i1, !dbg !24004  ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k, !dbg !24004

bb.j:                                             ; preds = %.lr.ph.i
  br i1 %i.af, label %.split.i.i.i, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread, !dbg !24004

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %i.af, label %_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs3JBf551F2Kj_4qlog6events7RawInfoINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit.thread, label %bb.l, !dbg !24005

.split.i.i.i:                                     ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !24003
end_hunk_0
