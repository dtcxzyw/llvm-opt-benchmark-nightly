Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.10?download=true
inline.NumInlined: 190
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsf_NtCs3f36owOmepS_6quiche6packetNtB5_6Header10from_bytes:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10208
  store i64 1, ptr %i.ca, align 8, !dbg !10208
  store i64 -2, ptr %0, align 8, !dbg !10208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10210
  br label %bb.an, !dbg !10196

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !10211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10207
  invoke void @_RNvMs0_Cs3cD8Bj6DSIP_6octetsNtB5_6Octets6to_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.at unwind label %bb.ag, !dbg !10212

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !10202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10209
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %bb.av unwind label %bb.au, !dbg !10213

bb.au:                                            ; preds = %bb.at
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !10213
  br label %bb.af, !dbg !10213

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !10213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10210
  br label %bb.ab, !dbg !10214

._crit_edge:                                      ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs3f36owOmepS_6quiche.exit, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !10216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %bb.aw unwind label %.thread, !dbg !10217

.lr.ph:                                           ; preds = %bb.ae, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs3f36owOmepS_6quiche.exit
  %i.cc = invoke { i32, i32 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut7get_u32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ax unwind label %bb.bj, !dbg !10218 ; 2 uses

.thread:                                          ; preds = %._crit_edge
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !10217
  br label %bb.af, !dbg !10219

bb.aw:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !10217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10219
  br label %bb.ab, !dbg !10219

bb.ax:                                            ; preds = %.lr.ph
  %i.ce = extractvalue { i32, i32 } %i.cc, 0, !dbg !10049
    #dbg_value(i32 %i.ce, !10008, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !10050)
    #dbg_value(i32 poison, !10008, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10050)
  %i.cf = trunc i32 %i.ce to i1, !dbg !10221
  br i1 %i.cf, label %bb.ay, label %bb.az, !dbg !10221

bb.ay:                                            ; preds = %bb.ax
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10222
  store i64 1, ptr %i.cg, align 8, !dbg !10222
  store i64 -2, ptr %0, align 8, !dbg !10222
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
          to label %bb.bb unwind label %bb.ag, !dbg !10219

bb.az:                                            ; preds = %bb.ax
  %i.ch = extractvalue { i32, i32 } %i.cc, 1, !dbg !10049
    #dbg_value(i32 %i.ch, !10008, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !10050)
    #dbg_value(i32 %i.ch, !10051, !DIExpression(), !10058)
    #dbg_value(i32 %i.ch, !9834, !DIExpression(), !10059)
    #dbg_value(ptr %i.b, !10055, !DIExpression(), !10058)
    #dbg_value(ptr %i.b, !10060, !DIExpression(), !9764)
    #dbg_value(ptr %i.b, !10070, !DIExpression(), !9765)
    #dbg_value(i32 %i.ch, !10071, !DIExpression(), !9765)
    #dbg_value(i64 4, !10075, !DIExpression(), !9770)
  %i.ci = load i64, ptr %i.bm, align 8, !dbg !10223, !alias.scope !10084, !noundef !1030 ; 3 uses
    #dbg_value(i64 %i.ci, !10085, !DIExpression(), !9775)
    #dbg_value(i64 %i.ci, !10072, !DIExpression(), !9776)
    #dbg_value(ptr %i.b, !10082, !DIExpression(), !9777)
  %i.cj = load i64, ptr %i.b, align 8, !dbg !10224, !range !1179, !alias.scope !10084, !noundef !1030
  %i.ck = icmp eq i64 %i.ci, %i.cj, !dbg !10225
  br i1 %i.ck, label %bb.ba, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs3f36owOmepS_6quiche.exit, !dbg !10225

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2q8KY1expMp_4neli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #30
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs3f36owOmepS_6quiche.exit unwind label %bb.bj, !dbg !10226

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs3f36owOmepS_6quiche.exit: ; preds = %bb.ba, %bb.az
  %i.cl = load ptr, ptr %i.bl, align 8, !dbg !10227, !alias.scope !10084, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.cl, !10088, !DIExpression(), !9775)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ci, !dbg !10228
    #dbg_value(ptr %i.cm, !10103, !DIExpression(), !9787)
    #dbg_value(ptr %i.cm, !10073, !DIExpression(), !9788)
    #dbg_value(i32 %i.ch, !10106, !DIExpression(), !9787)
  store i32 %i.ch, ptr %i.cm, align 4, !dbg !10229
  %i.cn = add i64 %i.ci, 1, !dbg !10230
  store i64 %i.cn, ptr %i.bm, align 8, !dbg !10186
  %i.co = load i64, ptr %i.bn, align 8, !dbg !10187, !noundef !1030
  %i.cp = load i64, ptr %i.bo, align 8, !dbg !10188, !noundef !1030
  %.not63.not = icmp eq i64 %i.co, %i.cp, !dbg !10189
  br i1 %.not63.not, label %._crit_edge, label %.lr.ph, !dbg !10189

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10219
  br label %bb.an, !dbg !10196

bb.bc:                                            ; preds = %bb.bd, %bb.af
  %.pn67 = phi { ptr, i32 } [ %i.cq, %bb.bd ], [ %.pn65, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #27
          to label %bb.bf unwind label %bb.bk, !dbg !10176

bb.bd:                                            ; preds = %bb.an
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10175
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %bb.bh unwind label %bb.bg, !dbg !10176

bb.bf:                                            ; preds = %bb.bg, %bb.bc
  %.pn69 = phi { ptr, i32 } [ %i.cr, %bb.bg ], [ %.pn67, %bb.bc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #27
          to label %bb.q unwind label %bb.bk, !dbg !10177

bb.bg:                                            ; preds = %bb.be
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10176
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
          to label %bb.bi unwind label %bb.r, !dbg !10177

bb.bi:                                            ; preds = %bb.bh, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10177
  br label %bb.bm, !dbg !10155

bb.bj:                                            ; preds = %bb.ba, %.lr.ph
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %bb.af unwind label %bb.bk, !dbg !10219

bb.bk:                                            ; preds = %bb.bj, %bb.bf, %bb.bc, %bb.af, %bb.q
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !10231
  unreachable, !dbg !10231

bb.bl:                                            ; preds = %bb.i, %bb.k, %bb.n, %bb.bn, %bb.b, %bb.h, %bb.ab
  ret void, !dbg !10178

bb.bm:                                            ; preds = %bb.bi, %bb.w, %bb.t
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r), !dbg !10147
  br label %bb.bn, !dbg !10147

bb.bn:                                            ; preds = %bb.bm, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10147
  br label %bb.bl, !dbg !10140

bb.bo:                                            ; preds = %bb.q
  resume { ptr, i32 } %.pn71, !dbg !10231
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMsf_NtCs3f36owOmepS_6quiche6packetNtB5_6Header8to_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !10259 {
bb.a:
    #dbg_value(ptr %0, !10319, !DIExpression(), !10349)
    #dbg_value(ptr %1, !10320, !DIExpression(), !10349)
    #dbg_value(i64 1, !10350, !DIExpression(), !10354)
    #dbg_value(ptr poison, !10355, !DIExpression(), !10361)
    #dbg_value(i8 0, !10321, !DIExpression(), !10362)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !10503
  %i.b = load i64, ptr %i.a, align 8, !dbg !10503, !noundef !1030
    #dbg_value(i64 %i.b, !10351, !DIExpression(), !10354)
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 1), !dbg !10504
  %i.d = trunc i64 %i.c to i8, !dbg !10503        ; 2 uses
    #dbg_value(i8 %i.d, !10321, !DIExpression(), !10362)
    #dbg_value(ptr %0, !10356, !DIExpression(DW_OP_plus_uconst, 117, DW_OP_stack_value), !10363)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 117, !dbg !10363
  %i.f = load i8, ptr %i.e, align 1, !dbg !10363, !range !3830, !noundef !1030 ; 2 uses
  switch i8 %i.f, label %bb.t [
    i8 5, label %bb.b
    i8 0, label %bb.f
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ], !dbg !10360

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 %i.d, !10321, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_stack_value), !10362)
    #dbg_value(i8 %i.d, !10321, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_constu, 64, DW_OP_or, DW_OP_stack_value), !10362)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116, !dbg !10505
  %i.h = load i8, ptr %i.g, align 4, !dbg !10505, !range !2117, !noundef !1030
  %2 = trunc nuw i8 %i.h to i1, !dbg !10505
  %3 = and i8 %i.d, 59, !dbg !10505
  %.sroa.01.0.v = select i1 %2, i8 68, i8 64, !dbg !10505
  %.sroa.01.0 = or disjoint i8 %.sroa.01.0.v, %3, !dbg !10505
    #dbg_value(i8 %.sroa.01.0, !10321, !DIExpression(), !10362)
  %i.i = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut6put_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %.sroa.01.0), !dbg !10506
  %i.j = extractvalue { ptr, i64 } %i.i, 0, !dbg !10506
    #dbg_value(ptr %i.j, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10383)
    #dbg_value(i64 poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10383)
  %i.k = icmp eq ptr %i.j, null, !dbg !10507
  br i1 %i.k, label %bb.t, label %bb.u, !dbg !10508

bb.c:                                             ; preds = %bb.a
    #dbg_value(i8 3, !10326, !DIExpression(), !10384)
  br label %bb.f, !dbg !10509

bb.d:                                             ; preds = %bb.a
    #dbg_value(i8 2, !10326, !DIExpression(), !10384)
  br label %bb.f, !dbg !10510

bb.e:                                             ; preds = %bb.a
    #dbg_value(i8 1, !10326, !DIExpression(), !10384)
  br label %bb.f, !dbg !10511

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.sroa.014.0 = phi i8 [ -48, %bb.e ], [ -16, %bb.c ], [ -32, %bb.d ], [ -64, %bb.a ], !dbg !10362
    #dbg_value(i8 %.sroa.014.0, !10326, !DIExpression(), !10384)
  %i.l = or i8 %.sroa.014.0, %i.d, !dbg !10512
    #dbg_value(i8 %i.l, !10321, !DIExpression(), !10362)
  %i.m = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut6put_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.l), !dbg !10513
  %i.n = extractvalue { ptr, i64 } %i.m, 0, !dbg !10513
    #dbg_value(ptr %i.n, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10386)
    #dbg_value(i64 poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10386)
  %i.o = icmp eq ptr %i.n, null, !dbg !10514
  br i1 %i.o, label %bb.t, label %bb.g, !dbg !10515

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !10516
  %i.q = load i32, ptr %i.p, align 8, !dbg !10516, !noundef !1030
  %i.r = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut7put_u32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.q), !dbg !10517
  %i.s = extractvalue { ptr, i64 } %i.r, 0, !dbg !10517
    #dbg_value(ptr %i.s, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10388)
    #dbg_value(i64 poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10388)
  %i.t = icmp eq ptr %i.s, null, !dbg !10518
  br i1 %i.t, label %bb.t, label %bb.h, !dbg !10519

bb.h:                                             ; preds = %bb.g
  %.sroa.334.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10520
  %.sroa.334.0 = load i64, ptr %.sroa.334.0.in, align 8, !dbg !10520, !noundef !1030 ; 2 uses
  %i.u = trunc i64 %.sroa.334.0 to i8, !dbg !10402
  %i.v = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut6put_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.u), !dbg !10521
  %i.w = extractvalue { ptr, i64 } %i.v, 0, !dbg !10521
    #dbg_value(ptr %i.w, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10404)
    #dbg_value(i64 poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10404)
  %i.x = icmp eq ptr %i.w, null, !dbg !10522
  br i1 %i.x, label %bb.t, label %bb.i, !dbg !10523

bb.i:                                             ; preds = %bb.h
  %.sroa.035.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10524
  %.sroa.035.0 = load ptr, ptr %.sroa.035.0.in, align 8, !dbg !10524, !nonnull !1030, !noundef !1030
  %i.y = tail call noundef zeroext i1 @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut9put_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.035.0, i64 noundef %.sroa.334.0), !dbg !10525
    #dbg_value(i1 %i.y, !10406, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10419)
  br i1 %i.y, label %bb.t, label %bb.j, !dbg !10526

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %0, !10390, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10421)
  %.sroa.344.0.in = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10527
  %.sroa.344.0 = load i64, ptr %.sroa.344.0.in, align 8, !dbg !10527, !noundef !1030 ; 2 uses
  %i.z = trunc i64 %.sroa.344.0 to i8, !dbg !10420
  %i.aa = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut6put_u8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %i.z), !dbg !10528
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0, !dbg !10528
    #dbg_value(ptr %i.ab, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10423)
    #dbg_value(i64 poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10423)
  %i.ac = icmp eq ptr %i.ab, null, !dbg !10529
  br i1 %i.ac, label %bb.t, label %bb.k, !dbg !10530

bb.k:                                             ; preds = %bb.j
  %.sroa.045.0.in = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10531
  %.sroa.045.0 = load ptr, ptr %.sroa.045.0.in, align 8, !dbg !10531, !nonnull !1030, !noundef !1030
  %i.ad = tail call noundef zeroext i1 @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut9put_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.045.0, i64 noundef %.sroa.344.0), !dbg !10532
    #dbg_value(i1 %i.ad, !10406, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10426)
  br i1 %i.ad, label %bb.t, label %bb.l, !dbg !10533

bb.l:                                             ; preds = %bb.k
  switch i8 %i.f, label %bb.t [
    i8 0, label %bb.m
    i8 1, label %bb.n
  ], !dbg !10534

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10535
  %i.af = load i64, ptr %i.ae, align 8, !dbg !10535, !range !1173, !noundef !1030
  %.not101 = icmp eq i64 %i.af, -1, !dbg !10535
  br i1 %.not101, label %bb.p, label %bb.o, !dbg !10536

bb.n:                                             ; preds = %bb.l
    #dbg_value(ptr %0, !10428, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10444)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10537
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !10537, !range !1173, !noundef !1030
  %.not = icmp eq i64 %i.ah, -1, !dbg !10537
  br i1 %.not, label %bb.s, label %bb.r, !dbg !10538, !prof !1885

bb.o:                                             ; preds = %bb.m
    #dbg_value(ptr %0, !10339, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10445)
    #dbg_value(ptr %0, !10446, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10449)
    #dbg_value(ptr %0, !10450, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10453)
    #dbg_value(ptr %0, !10454, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10458)
    #dbg_value(ptr %0, !10459, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !10463)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !10539
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !10539, !noundef !1030 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1, !dbg !10540
  tail call void @llvm.assume(i1 %i.ak), !dbg !10541
  %i.al = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut10put_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aj), !dbg !10542
  %i.am = extractvalue { ptr, i64 } %i.al, 0, !dbg !10542
    #dbg_value(ptr %i.am, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10465)
    #dbg_value(i64 poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10465)
  %i.an = icmp eq ptr %i.am, null, !dbg !10543
  br i1 %i.an, label %bb.t, label %bb.q, !dbg !10544

bb.p:                                             ; preds = %bb.m
  %i.ao = tail call { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut10put_varint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0), !dbg !10545
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0, !dbg !10545
    #dbg_value(ptr %i.ap, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10467)
    #dbg_value(i64 poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10467)
  %i.aq = icmp eq ptr %i.ap, null, !dbg !10546
  %. = select i1 %i.aq, i64 1, i64 -1, !dbg !10547
  br label %bb.t, !dbg !10547

bb.q:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10548
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !10548, !nonnull !1030, !noundef !1030
  %i.at = tail call noundef zeroext i1 @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut9put_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.aj), !dbg !10549
    #dbg_value(i1 %i.at, !10406, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10475)
  %spec.select = select i1 %i.at, i64 1, i64 -1, !dbg !10550
  br label %bb.t, !dbg !10550

bb.r:                                             ; preds = %bb.n
    #dbg_value(ptr %i.ag, !10476, !DIExpression(), !10483)
    #dbg_value(ptr %i.ag, !10459, !DIExpression(), !10489)
    #dbg_value(ptr %i.ag, !10450, !DIExpression(), !10490)
    #dbg_value(ptr %i.ag, !10454, !DIExpression(), !10491)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10551
  %i.av = load ptr, ptr %i.au, align 8, !dbg !10551, !nonnull !1030, !noundef !1030
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !10552
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !10552, !noundef !1030
  %i.ay = tail call noundef zeroext i1 @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut9put_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax), !dbg !10553
    #dbg_value(i1 %i.ay, !10406, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10499)
  %spec.select102 = select i1 %i.ay, i64 1, i64 -1, !dbg !10554
  br label %bb.t, !dbg !10554

bb.s:                                             ; preds = %bb.n
    #dbg_value(ptr null, !10476, !DIExpression(), !10483)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !10555
  unreachable, !dbg !10555

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.u, %bb.b, %bb.o, %bb.p, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a
  %.sroa.0.0 = phi i64 [ %spec.select102, %bb.r ], [ %.103, %bb.u ], [ 1, %bb.b ], [ %spec.select, %bb.q ], [ 4, %bb.a ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ -1, %bb.l ], [ 1, %bb.o ], [ %., %bb.p ], !dbg !10362
  %i.az = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !10556
  %i.ba = insertvalue { i64, i64 } %i.az, i64 undef, 1, !dbg !10556
  ret { i64, i64 } %i.ba, !dbg !10556

bb.u:                                             ; preds = %bb.b
  %.sroa.013.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10557
  %.sroa.013.0 = load ptr, ptr %.sroa.013.0.in, align 8, !dbg !10557, !nonnull !1030, !noundef !1030
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10557
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !dbg !10557, !noundef !1030
  %i.bb = tail call noundef zeroext i1 @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut9put_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.013.0, i64 noundef %.sroa.3.0), !dbg !10558
    #dbg_value(i1 %i.bb, !10406, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10502)
  %.103 = select i1 %i.bb, i64 1, i64 -1, !dbg !10559
  br label %bb.t, !dbg !10559
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMsh_NtCs3f36owOmepS_6quiche6packetNtB5_11PktNumSpace14on_packet_sent(ptr noalias nofree noundef align 16 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !10560 {
bb.a:
    #dbg_value(ptr %0, !10575, !DIExpression(), !10578)
    #dbg_value(ptr %1, !10576, !DIExpression(), !10578)
  %i.a = load i64, ptr %0, align 16, !dbg !10602, !range !1608, !noundef !1030 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10602 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !10602 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !10603
  %i.e = load i64, ptr %i.d, align 8, !dbg !10603, !noundef !1030 ; 2 uses
    #dbg_value(i64 %i.a, !10579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10563)
    #dbg_value(i64 %i.c, !10579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10563)
    #dbg_value(i64 1, !10582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10563)
    #dbg_value(i64 %i.e, !10582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10563)
    #dbg_value(ptr poison, !10586, !DIExpression(), !10566)
    #dbg_value(ptr poison, !10590, !DIExpression(), !10566)
    #dbg_value(ptr poison, !10594, !DIExpression(), !10570)
    #dbg_value(ptr poison, !10598, !DIExpression(), !10570)
  %i.f = trunc nuw i64 %i.a to i1, !dbg !10604
  %i.g = icmp ult i64 %i.e, %i.c, !dbg !10604
  %spec.select.i.i = select i1 %i.f, i1 %i.g, i1 false, !dbg !10604 ; 2 uses
  %..i = select i1 %spec.select.i.i, i64 %i.c, i64 %i.e, !dbg !10605
  %.2.i = select i1 %spec.select.i.i, i64 %i.a, i64 1, !dbg !10605
  store i64 %.2.i, ptr %0, align 16, !dbg !10606
  store i64 %..i, ptr %i.b, align 8, !dbg !10606
  ret void, !dbg !10607
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsh_NtCs3f36owOmepS_6quiche6packetNtB5_11PktNumSpace3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 16 captures(none) dereferenceable(176) initializes((0, 8), (16, 28), (32, 56), (64, 72), (136, 169)) %0) unnamed_addr #0 !dbg !10608 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !dbg !10612 ; 2 uses
end_hunk_0
