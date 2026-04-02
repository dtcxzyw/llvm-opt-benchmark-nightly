begin_hunk_0
@_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { { { i64, { { i64, [1 x i64] } } }, i64 }, i64, ptr, i64, { { { i32, [2 x i32] } } }, { { { { i8, [1 x i8] } } } }, i8, [1 x i8] } }, i8, [7 x i8] }
@4 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/delta_kernel-0.19.2/src/path.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"d\00\00\00\00\00\00\00w\00\00\00\0E\00\00\00" }>, align 8
@6 = private unnamed_addr constant [15 x i8] c"_staged_commits", align 1
@7 = private unnamed_addr constant [10 x i8] c"_delta_log", align 1
@8 = private unnamed_addr constant [4 x i8] c"json", align 1
@9 = private unnamed_addr constant [3 x i8] c"crc", align 1
@10 = private unnamed_addr constant [10 x i8] c"checkpoint", align 1
@11 = private unnamed_addr constant [7 x i8] c"parquet", align 1
@12 = private unnamed_addr constant [9 x i8] c"compacted", align 1
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRReNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@14 = private unnamed_addr constant [6 x i8] c"Domain", align 1
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv4AddrNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@16 = private unnamed_addr constant [4 x i8] c"Ipv4", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv6AddrNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@18 = private unnamed_addr constant [4 x i8] c"Ipv6", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00i\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterhEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0, i1 noundef zeroext %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1
  br label %.thread188

bb.o:                                             ; preds = %bb.m
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = load i64, ptr %.sroa.675.0..sroa_idx, align 8, !noundef !6 ; 11 uses
  %i.ai = icmp sgt i64 %i.ah, -1
end_hunk_1
begin_hunk_2
  ]

bb.ay:                                            ; preds = %bb.ax
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %i.af, ptr noundef nonnull dereferenceable(15) @6, i64 15)
  %i.gz = icmp eq i32 %bcmp, 0
  br i1 %i.gz, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
end_hunk_2
begin_hunk_3
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit164 unwind label %bb.cs

bb.bb:                                            ; preds = %bb.az
  %i.hc = extractvalue { ptr, i64 } %i.ha, 0      ; 2 uses
  %.not128 = icmp ne ptr %i.hc, null
  %i.hd = extractvalue { ptr, i64 } %i.ha, 1
  %i.he = icmp eq i64 %i.hd, 10
end_hunk_3
begin_hunk_4
  br i1 %or.cond149, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %bcmp129 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.hc, ptr noundef nonnull dereferenceable(10) @7, i64 10)
  %i.hf = icmp eq i32 %bcmp129, 0
  br i1 %i.hf, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
end_hunk_4
begin_hunk_5
  ]

bb.bg:                                            ; preds = %bb.ax
  %bcmp127 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.af, ptr noundef nonnull dereferenceable(10) @7, i64 10)
  %i.hj = icmp eq i32 %bcmp127, 0
  br i1 %i.hj, label %bb.bh, label %bb.bf

bb.bh:                                            ; preds = %bb.bg
end_hunk_5
begin_hunk_6

bb.bk:                                            ; preds = %bb.bj
  %i.ho = load ptr, ptr %i.hh, align 8, !nonnull !6, !noundef !6
  %bcmp142 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.ho, ptr noundef nonnull dereferenceable(4) @8, i64 4)
  %i.hp = icmp eq i32 %bcmp142, 0
  %i.hq = and i1 %.sroa.035.0, %i.hp
  %spec.select202 = select i1 %i.hq, i32 0, i32 7
  br label %.thread197

bb.bl:                                            ; preds = %bb.bj
  %i.hr = load ptr, ptr %i.hh, align 8, !nonnull !6, !noundef !6
  %bcmp143 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.hr, ptr noundef nonnull dereferenceable(3) @9, i64 3)
  %i.hs = icmp eq i32 %bcmp143, 0
  %or.cond = and i1 %.sroa.035.0, %i.hs
  %spec.select151 = select i1 %or.cond, i32 6, i32 7
  br label %.thread197
end_hunk_6
begin_hunk_7

bb.bn:                                            ; preds = %bb.bm
  %i.hx = load ptr, ptr %i.ht, align 8, !nonnull !6, !noundef !6
  %bcmp138 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.hx, ptr noundef nonnull dereferenceable(4) @8, i64 4)
  %i.hy = icmp eq i32 %bcmp138, 0
  br i1 %i.hy, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
end_hunk_7
begin_hunk_8
  br i1 %.sroa.085.0, label %bb.bs, label %.thread197

bb.bq:                                            ; preds = %bb.bo
  %i.ic = load ptr, ptr %i.hh, align 8, !nonnull !6, !noundef !6
  %bcmp139 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.ic, ptr noundef nonnull dereferenceable(10) @10, i64 10)
  %i.id = icmp eq i32 %bcmp139, 0
  %i.ie = icmp eq i64 %i.hv, 7
  %or.cond203 = and i1 %i.ie, %i.id
  br i1 %or.cond203, label %bb.br, label %.thread197

bb.br:                                            ; preds = %bb.bq
  %i.if = load ptr, ptr %i.ht, align 8, !nonnull !6, !noundef !6
  %bcmp140 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.if, ptr noundef nonnull dereferenceable(7) @11, i64 7)
  %i.ig = icmp eq i32 %bcmp140, 0
  %or.cond3 = and i1 %.sroa.035.0, %i.ig
  %spec.select = select i1 %or.cond3, i32 2, i32 7
  br label %.thread197
end_hunk_8
begin_hunk_9
  br i1 %i.in, label %bb.bx, label %.thread198

bb.bx:                                            ; preds = %bb.bw
  %i.io = load ptr, ptr %i.hh, align 8, !nonnull !6, !noundef !6
  %bcmp132 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.io, ptr noundef nonnull dereferenceable(10) @10, i64 10)
  %i.ip = icmp eq i32 %bcmp132, 0
  br i1 %i.ip, label %bb.by, label %.thread198

.thread198:                                       ; preds = %bb.bz, %bb.by, %bb.ca, %bb.bw, %bb.bx
end_hunk_9
begin_hunk_10

bb.bz:                                            ; preds = %bb.by
  %i.iw = load ptr, ptr %i.it, align 8, !nonnull !6, !noundef !6
  %bcmp133 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.iw, ptr noundef nonnull dereferenceable(4) @8, i64 4)
  %i.ix = icmp eq i32 %bcmp133, 0
  %brmerge206.not = and i1 %.sroa.035.0, %i.ix
  br i1 %brmerge206.not, label %bb.cb, label %.thread198

bb.ca:                                            ; preds = %bb.by
  %i.iy = load ptr, ptr %i.it, align 8, !nonnull !6, !noundef !6
  %bcmp134 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.iy, ptr noundef nonnull dereferenceable(7) @11, i64 7)
  %i.iz = icmp eq i32 %bcmp134, 0
  %brmerge.not = and i1 %.sroa.035.0, %i.iz
  br i1 %brmerge.not, label %bb.cb, label %.thread198

end_hunk_10
begin_hunk_11

bb.cc:                                            ; preds = %.thread198
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !6, !noundef !6
  %bcmp135 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.je, ptr noundef nonnull dereferenceable(9) @12, i64 9)
  %i.jf = icmp eq i32 %bcmp135, 0
  br i1 %i.jf, label %bb.cd, label %.thread197

bb.cd:                                            ; preds = %bb.cc
end_hunk_11
begin_hunk_12
bb.ce:                                            ; preds = %bb.cd
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.jk = load ptr, ptr %i.jj, align 8, !nonnull !6, !noundef !6
  %bcmp136 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.jk, ptr noundef nonnull dereferenceable(4) @8, i64 4)
  %i.jl = icmp eq i32 %bcmp136, 0
  %or.cond6 = and i1 %.sroa.035.0, %i.jl
  br i1 %or.cond6, label %bb.cf, label %.thread197

end_hunk_12
begin_hunk_13
  br i1 %i.ju, label %bb.cm, label %.thread197

bb.cm:                                            ; preds = %bb.cl
  %i.jv = load ptr, ptr %i.hh, align 8, !nonnull !6, !noundef !6
  %bcmp130 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.jv, ptr noundef nonnull dereferenceable(10) @10, i64 10)
  %i.jw = icmp eq i32 %bcmp130, 0
  br i1 %i.jw, label %bb.cn, label %.thread197

bb.cn:                                            ; preds = %bb.cm
end_hunk_13
begin_hunk_14

bb.co:                                            ; preds = %bb.cn
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.kb = load ptr, ptr %i.ka, align 8, !nonnull !6, !noundef !6
  %bcmp131 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.kb, ptr noundef nonnull dereferenceable(7) @11, i64 7)
  %i.kc = icmp eq i32 %bcmp131, 0
  %or.cond8 = and i1 %.sroa.035.0, %i.kc
  br i1 %or.cond8, label %bb.cp, label %.thread197

end_hunk_14
begin_hunk_15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !464
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.c, align 8, !noalias !464
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !464
  br label %_RNvXsc_NtCseo6ZV82fEK1_3url4hostINtB5_4HostReENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs.exit

end_hunk_15
begin_hunk_16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !464
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.b, align 8, !noalias !464
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !464
  br label %_RNvXsc_NtCseo6ZV82fEK1_3url4hostINtB5_4HostReENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs.exit

end_hunk_16
begin_hunk_17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !464
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.j, ptr %i.a, align 8, !noalias !464
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !464
  br label %_RNvXsc_NtCseo6ZV82fEK1_3url4hostINtB5_4HostReENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs.exit

end_hunk_17
begin_hunk_18
  %.lcssa12.i = phi i64 [ %.promoted.i.i, %bb.d ], [ %.promoted.i.i, %bb.e ], [ %i.bq, %bb.p ], [ %i.bq, %bb.q ]
  %i.ci = xor i8 %.lcssa15.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !497, !noalias !500
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %.lcssa12.i, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19, !noalias !513
  unreachable

.loopexit19.i:                                    ; preds = %bb.f
end_hunk_18
