Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/all_about_inserts_sqlite-9421b6281ebfe520.all_about_inserts_sqlite.d4075c7161359f8f-cgu.2?download=true
inline.NumInlined: 179
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsicCGYGrxCr3_24all_about_inserts_sqlite:bb.a

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !15

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !696, !noundef !5
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !16

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  tail call fastcc void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = add nsw i8 %i.m, -48
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i64 %i.n, %i.h
  br i1 %i.ad, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

bb.i:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, %bb.p, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.f, %bb.c, %bb.g
  ret void

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30: ; preds = %bb.h, %bb.l
  %.sroa.07.053 = phi i64 [ %i.ao, %bb.l ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ae = phi i64 [ %i.am, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !697, !noundef !5
  %i.ah = add i8 %i.ag, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ah, 10
  br i1 %or.cond2, label %bb.j, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, %bb.l, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %.sroa.07.053, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30 ]
  tail call fastcc void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i64 %.sroa.07.053, 1844674407370955160
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne i64 %.sroa.07.053, 1844674407370955161
  %i.al = icmp samesign ugt i8 %i.ah, 5
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !698
  %i.an = mul nuw i64 %.sroa.07.053, 10
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.053)
  %i.ap = load i64, ptr %i.b, align 8, !range !13, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.ar, align 8, !nonnull !5, !align !6, !noundef !5
  store ptr %i.at, ptr %i.as, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.au = load double, ptr %i.ar, align 8, !noundef !5
  store double %i.au, ptr %i.as, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ -1, %bb.n ], [ 0, %bb.o ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 !guid !792 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !795, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !795, !noundef !5 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !795, !nonnull !5, !noundef !5 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !796, !noundef !5 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !795
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.c, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %bb.b
  %i.q = add i8 %i.n, -49
  %or.cond2 = icmp ult i8 %i.q, 9
  br i1 %or.cond2, label %.preheader, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, !prof !16

.preheader:                                       ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  %i.r = icmp ult i64 %i.o, %i.i
  br i1 %i.r, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !797, !noundef !5
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.d, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !16

bb.d:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, %.preheader, %bb.c, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.y = phi i64 [ %i.o, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.o, %.preheader ], [ %i.o, %bb.c ], [ %i.ab, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43 ] ; 5 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43: ; preds = %.preheader, %bb.e
  %i.ab = phi i64 [ %i.ag, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !798, !noundef !5
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %bb.e, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43
  %i.ag = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !799
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !800, !noundef !5
  switch i8 %i.ai, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %storemerge.peel.i = add nuw i64 %i.y, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !801
  %i.aj = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.aj, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, label %.thread.thread.i

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !802, !noundef !5
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i
  %i.ao = add i64 %i.i, -1                        ; 2 uses
  %exitcond80.not107 = icmp eq i64 %storemerge.peel.i, %i.ao
  br i1 %exitcond80.not107, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.loopexit73, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

.peel.next.i:                                     ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %exitcond80.not = icmp eq i64 %storemerge.i, %i.ao
  br i1 %exitcond80.not, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.loopexit73, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i, !llvm.loop !733

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in.i108 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in.i108, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !804, !noundef !5 ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %.peel.next.i, label %.loopexit.i, !llvm.loop !733

.loopexit.i:                                      ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !801
  switch i8 %i.aq, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !801
  store i64 13, ptr %i.c, align 8, !noalias !801
  %i.at = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !801
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.au = add nuw i64 %storemerge.in.i108, 2      ; 5 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !806
  %i.av = icmp ult i64 %i.au, %i.i
  br i1 %i.av, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i: ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !807, !noundef !5
  switch i8 %i.ax, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i: ; preds = %bb.h, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.az = icmp ult i64 %i.ay, %i.i
  br i1 %i.az, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i

bb.h:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i
  %i.ba = add nuw i64 %storemerge.in.i108, 3      ; 2 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !810
  br label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !811, !noundef !5
  %i.bd = add nuw i64 %i.ay, 1                    ; 3 uses
  store i64 %i.bd, ptr %i.f, align 8, !alias.scope !812
  %i.be = add i8 %i.bc, -48
  %i.bf = icmp ult i8 %i.be, 10
  br i1 %i.bf, label %.preheader.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, !prof !16

.preheader.i.i:                                   ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %i.bg = icmp ult i64 %i.bd, %i.i
  br i1 %i.bg, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !813
  store i64 13, ptr %i.b, align 8, !noalias !813
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !813
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i: ; preds = %.preheader.i.i, %bb.i
  %i.bi = phi i64 [ %i.bn, %bb.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !814, !noundef !5
  %i.bl = add i8 %i.bk, -48
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.i:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i
  %i.bn = add nuw i64 %i.bi, 1                    ; 3 uses
  store i64 %i.bn, ptr %i.f, align 8, !alias.scope !815
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.i
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i

bb.j:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.bo = add nuw i64 %i.y, 1                     ; 5 uses
  store i64 %i.bo, ptr %i.f, align 8, !alias.scope !817
  %i.bp = icmp ult i64 %i.bo, %i.i
  br i1 %i.bp, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !noalias !818, !noundef !5
  switch i8 %i.br, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i: ; preds = %bb.k, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %bb.j
  %i.bs = phi i64 [ %i.bo, %bb.j ], [ %i.bu, %bb.k ], [ %i.bo, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.bt = icmp ult i64 %i.bs, %i.i
  br i1 %i.bt, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i

bb.k:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45
  %i.bu = add nuw i64 %i.y, 2                     ; 2 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !821
  br label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !822, !noundef !5
  %i.bx = add nuw i64 %i.bs, 1                    ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !823
  %i.by = add i8 %i.bw, -48
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.preheader.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, !prof !16

.preheader.i:                                     ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %i.ca = icmp ult i64 %i.bx, %i.i
  br i1 %i.ca, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !816
  store i64 13, ptr %i.a, align 8, !noalias !816
  %i.cb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !816
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !824, !noundef !5
  %i.cf = add i8 %i.ce, -48
  %i.cg = icmp ult i8 %i.cf, 10
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.l:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i
  %i.ch = add nuw i64 %i.cc, 1                    ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !alias.scope !825
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.loopexit73: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !801
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.e, %bb.l, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, %bb.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.loopexit73, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40 ], [ %i.aa, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.loopexit73 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i ], [ null, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i ], [ null, %bb.e ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !guid !851 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !852, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !855, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !855, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !noalias !856, !noundef !5
  switch i8 %i.n, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8
  br label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !859, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1, !noalias !860, !noundef !5
  %i.u = add nuw i64 %i.p, 1                      ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !alias.scope !859
  %i.v = add i8 %i.t, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !15

bb.d:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !861, !noundef !5
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !862
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsc61CYD6Y1ak_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !864, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !864
  store i64 14, ptr %i.a, align 8, !noalias !864
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !864
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !863
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !863
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !864
  store i64 14, ptr %i.b, align 8, !noalias !864
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !864
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !863
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !863
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !17

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
end_hunk_0
