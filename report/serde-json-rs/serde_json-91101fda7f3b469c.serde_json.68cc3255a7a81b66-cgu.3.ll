Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.3?download=true
inline.NumInlined: 160
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalB7_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !539, !noalias !540, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !539, !noalias !540, !nonnull !5, !noundef !5
  %i.m = trunc i64 %i.f to i32
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = trunc i64 %i.i to i32                    ; 2 uses
  %i.p = sub i32 %i.n, %i.o
  br label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.060 = phi i64 [ %3, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.059 = phi i32 [ 0, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !543, !noundef !5 ; 2 uses
  %i.t = add i8 %i.s, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.059, 0
  br i1 %i.u, label %bb.d, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

.thread:                                          ; preds = %bb.o
  %i.v = icmp eq i32 %i.n, %i.o
  br i1 %i.v, label %.thread.thread, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %.thread
  %i.w = add i32 %i.p, %4
  br label %bb.e

bb.c:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.x = zext nneg i8 %i.t to i64
  %i.y = icmp ugt i64 %.sroa.0.060, 1844674407370955160
  br i1 %i.y, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

.thread.thread:                                   ; preds = %bb.a, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 5, ptr %i.c, align 8
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.b
  %i.ad = add i32 %.sroa.07.059, %4               ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.e:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %.sroa.0.056 = phi i64 [ %i.be, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread ], [ %.sroa.0.060, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ]
  %i.ae = phi i32 [ %i.w, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread ], [ %i.ad, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.af = uitofp i64 %.sroa.0.056 to double       ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 false) ; 2 uses
  %i.ag = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.022.i = phi i32 [ %i.ao, %bb.g ], [ %i.ae, %bb.e ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.an, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ah = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.ah, label %.loopexit.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.sroa.04.0.lcssa.i = phi double [ %i.af, %bb.e ], [ %i.an, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.ae, %bb.e ], [ %i.ao, %bb.g ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.e ], [ %.sroa.012.0.i, %bb.g ]
  %i.ai = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json2de5POW10, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !noalias !545, !noundef !5 ; 2 uses
  %i.al = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.al, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.am = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.am, label %bb.h, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.an = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.ao = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true) ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.ap, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !545
  store i64 14, ptr %i.a, align 8, !noalias !545
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !545
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !544, !noalias !546
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.sroa.04.1.i = phi double [ %i.av, %bb.j ], [ %i.au, %bb.i ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.as = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.at, align 8, !alias.scope !544, !noalias !546
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.au = fdiv double %.sroa.04.0.lcssa.i, %i.ak
  br label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.av = fmul double %.sroa.04.0.lcssa.i, %i.ak  ; 2 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp oeq double %i.aw, +inf
  br i1 %i.ax, label %bb.k, label %.loopexit.i, !prof !19

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !545
  store i64 14, ptr %i.b, align 8, !noalias !545
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !545
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !544, !noalias !546
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit: ; preds = %bb.h, %.loopexit.i, %bb.k
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !544, !noalias !546
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  tail call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.060, i32 noundef %i.ad)
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %.thread.thread, %bb.p, %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit, %bb.l
  ret void

bb.n:                                             ; preds = %bb.c
  %i.ba = icmp ne i64 %.sroa.0.060, 1844674407370955161
  %i.bb = icmp samesign ugt i8 %i.t, 5
  %or.cond1 = or i1 %i.ba, %i.bb
  br i1 %or.cond1, label %bb.p, label %bb.o, !prof !20

bb.o:                                             ; preds = %bb.n, %bb.c
  %i.bc = add i64 %i.q, 1                         ; 3 uses
  store i64 %i.bc, ptr %i.e, align 8, !alias.scope !547
  %i.bd = mul nuw i64 %.sroa.0.060, 10
  %i.be = add i64 %i.bd, %i.x                     ; 2 uses
  %i.bf = add i32 %.sroa.07.059, -1
  %exitcond.not = icmp eq i64 %i.bc, %i.i
  br i1 %exitcond.not, label %.thread, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

bb.p:                                             ; preds = %bb.n
  %i.bg = add i32 %.sroa.07.059, %4
  tail call void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.060, i32 noundef %i.bg) #19
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !588, !noalias !589, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !588, !noalias !589, !noundef !5 ; 5 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !588, !noalias !589, !nonnull !5, !noundef !5 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  %i.q = load i8, ptr %i.p, align 1, !noalias !590, !noundef !5 ; 3 uses
  %i.r = add nuw i64 %i.j, 1                      ; 6 uses
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !588, !noalias !589
  %i.s = icmp eq i8 %i.q, 48
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 5, ptr %i.h, align 8
  %i.t = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp ult i64 %i.r, %i.l
  br i1 %i.v, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.w = add i8 %i.q, -49
  %or.cond1 = icmp ult i8 %i.w, 9
  br i1 %or.cond1, label %bb.o, label %bb.n, !prof !15

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.y = load i8, ptr %i.x, align 1, !noalias !591, !noundef !5
  %i.z = add i8 %i.y, -48
  %i.aa = icmp ult i8 %i.z, 10
  br i1 %i.aa, label %bb.m, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i, !prof !16

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  br label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !593, !noundef !5
  switch i8 %i.ac, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i [
    i8 46, label %bb.f
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %spec.select = select i1 %2, i64 0, i64 -9223372036854775808
  %spec.select58 = zext i1 %2 to i64
  br label %bb.j

bb.f:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !594
  call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef 0, i32 noundef 0), !noalias !592
  %i.ad = load i64, ptr %i.d, align 8, !range !4, !noalias !594, !noundef !5
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !594
  call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef 0, i32 noundef 0), !noalias !592
  %i.ag = load i64, ptr %i.c, align 8, !range !4, !noalias !594, !noundef !5
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.af, align 8, !noalias !594, !nonnull !5, !align !11, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !592, !noalias !595
  store i64 -1, ptr %0, align 8, !alias.scope !592, !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !594
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.i:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.af, align 8, !noalias !594, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !594
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i, %bb.l, %bb.i
  %.sroa.9.0.i = phi i64 [ %i.ao, %bb.l ], [ %i.al, %bb.i ], [ %spec.select, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.l ], [ 0, %bb.i ], [ %spec.select58, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !592, !noalias !595
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !592, !noalias !595
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.k:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ai, align 8, !noalias !594, !nonnull !5, !align !11, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !592, !noalias !595
  store i64 -1, ptr %0, align 8, !alias.scope !592, !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !594
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.l:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %i.ai, align 8, !noalias !594, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !594
  br label %bb.j

bb.m:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 13, ptr %i.g, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store i64 -1, ptr %0, align 8
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.o:                                             ; preds = %bb.e
  %i.at = add nsw i8 %i.q, -48
  %i.au = zext nneg i8 %i.at to i64               ; 2 uses
  %i.av = icmp ult i64 %i.r, %i.l
  br i1 %i.av, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit: ; preds = %bb.u, %bb.t, %bb.r, %bb.k, %bb.j, %bb.h, %bb.ae, %bb.m, %bb.c, %bb.n
  ret void

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30: ; preds = %bb.o, %bb.aa
  %.sroa.07.060 = phi i64 [ %i.ca, %bb.aa ], [ %i.au, %bb.o ] ; 8 uses
  %i.aw = phi i64 [ %i.by, %bb.aa ], [ %i.r, %bb.o ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !596, !noundef !5
  %i.az = add i8 %i.ay, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.az, 10
  br i1 %or.cond2, label %bb.y, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.ba = icmp ult i64 %i.aw, %i.l
  br i1 %i.ba, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i35, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i35: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aw
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !598, !noundef !5
  switch i8 %i.bc, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31 [
    i8 46, label %bb.p
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31: ; preds = %bb.aa, %bb.o, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i35, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread
  %.sroa.07.0.lcssa71 = phi i64 [ %.sroa.07.060, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread ], [ %.sroa.07.060, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i35 ], [ %i.au, %bb.o ], [ %i.ca, %bb.aa ] ; 3 uses
  br i1 %2, label %bb.t, label %bb.w

bb.p:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !599
  call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.060, i32 noundef 0), !noalias !597
  %i.bd = load i64, ptr %i.b, align 8, !range !4, !noalias !599, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.be, label %bb.r, label %bb.s

bb.q:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i35, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !599
  call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.060, i32 noundef 0), !noalias !597
  %i.bg = load i64, ptr %i.a, align 8, !range !4, !noalias !599, !noundef !5
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.u, label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.bf, align 8, !noalias !599, !nonnull !5, !align !11, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !alias.scope !597, !noalias !600
  store i64 -1, ptr %0, align 8, !alias.scope !597, !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !599
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.s:                                             ; preds = %bb.p
  %i.bl = load i64, ptr %i.bf, align 8, !noalias !599, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !599
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.s, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31
  %.sroa.9.0.i32 = phi i64 [ %i.bo, %bb.v ], [ %i.bt, %bb.x ], [ %.sroa.07.0.lcssa71, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31 ], [ %i.bl, %bb.s ], [ %i.bp, %bb.w ]
  %.sroa.0.0.i33 = phi i64 [ 0, %bb.v ], [ 0, %bb.x ], [ 1, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31 ], [ 0, %bb.s ], [ 2, %bb.w ]
  store i64 %.sroa.0.0.i33, ptr %0, align 8, !alias.scope !597, !noalias !600
  %.sroa.9.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.i32, ptr %.sroa.9.0..sroa_idx.i34, align 8, !alias.scope !597, !noalias !600
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.u:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %i.bi, align 8, !noalias !599, !nonnull !5, !align !11, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !597, !noalias !600
  store i64 -1, ptr %0, align 8, !alias.scope !597, !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !599
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit

bb.v:                                             ; preds = %bb.q
  %i.bo = load i64, ptr %i.bi, align 8, !noalias !599, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !599
  br label %bb.t

bb.w:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31
  %i.bp = sub i64 0, %.sroa.07.0.lcssa71          ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  br i1 %i.bq, label %bb.x, label %bb.t

bb.x:                                             ; preds = %bb.w
  %i.br = uitofp i64 %.sroa.07.0.lcssa71 to double
  %i.bs = fneg double %i.br
  %i.bt = bitcast double %i.bs to i64
  br label %bb.t

bb.y:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  %i.bu = zext nneg i8 %i.az to i64
  %i.bv = icmp ugt i64 %.sroa.07.060, 1844674407370955160
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bw = icmp ne i64 %.sroa.07.060, 1844674407370955161
  %i.bx = icmp samesign ugt i8 %i.az, 5
  %or.cond3 = or i1 %i.bw, %i.bx
  br i1 %or.cond3, label %bb.ab, label %bb.aa, !prof !20

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.by = add i64 %i.aw, 1                        ; 3 uses
  store i64 %i.by, ptr %i.i, align 8, !alias.scope !601
  %i.bz = mul nuw i64 %.sroa.07.060, 10
  %i.ca = add i64 %i.bz, %i.bu                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.l
  br i1 %exitcond.not, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i31, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.060) #19
  %i.cb = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.cc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cf = load ptr, ptr %i.cd, align 8, !nonnull !5, !align !11, !noundef !5
  store ptr %i.cf, ptr %i.ce, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cg = load double, ptr %i.cd, align 8, !noundef !5
  store double %i.cg, ptr %i.ce, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink = phi i64 [ -1, %bb.ac ], [ 0, %bb.ad ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberB7_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !627, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 4 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !627
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !630, !noalias !631, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %bb.d

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !630, !noalias !631, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !noalias !632, !noundef !5
  switch i8 %i.n, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8
  br label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %5 = phi i64 [ %i.h, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.o, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %.sroa.0.0.ph, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.p = icmp ult i64 %5, %i.j
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.q = load ptr, ptr %i.e, align 8, !alias.scope !635, !noalias !636, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %5
  %i.s = load i8, ptr %i.r, align 1, !noalias !637, !noundef !5
  %i.t = add nuw i64 %5, 1                        ; 3 uses
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !635, !noalias !636
  %i.u = add i8 %i.s, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.u, 10
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.a, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.v = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.z = zext nneg i8 %i.u to i32                 ; 2 uses
  %i.aa = icmp ult i64 %i.t, %i.j
  br i1 %i.aa, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bi, %bb.s ], [ %i.z, %bb.f ] ; 4 uses
  %i.ab = phi i64 [ %i.af, %bb.s ], [ %i.t, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !638, !noundef !5
  %i.ae = add i8 %i.ad, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.ae, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.z, %bb.f ], [ %i.bi, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.af = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !639
  %i.ag = zext nneg i8 %i.ae to i32
  %i.ah = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ah, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ai = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.aj, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.ak = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.al = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.at, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.as, %bb.l ], [ %i.ak, %bb.j ] ; 3 uses
  %i.am = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.am, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.ak, %bb.j ], [ %i.as, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.at, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.an = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json2de5POW10, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !noalias !641, !noundef !5 ; 2 uses
  %i.aq = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.aq, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.ar = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.ar, label %bb.m, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.as = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.at = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 2 uses
  %i.au = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !641
  store i64 14, ptr %i.a, align 8, !noalias !641
  %i.av = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !640, !noalias !642
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.ba, %bb.o ], [ %i.az, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ax = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.ay, align 8, !alias.scope !640, !noalias !642
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.az = fdiv double %.sroa.04.0.lcssa.i, %i.ap
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.ba = fmul double %.sroa.04.0.lcssa.i, %i.ap  ; 2 uses
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp oeq double %i.bb, +inf
  br i1 %i.bc, label %bb.p, label %.loopexit.i, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !641
  store i64 14, ptr %i.b, align 8, !noalias !641
  %i.bd = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !641
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !640, !noalias !642
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !640, !noalias !642
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsB7_.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bf = icmp ne i32 %.sroa.08.054, 214748364
  %i.bg = icmp samesign ugt i8 %i.ae, 7
  %or.cond2 = or i1 %i.bf, %i.bg
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bh = mul i32 %.sroa.08.054, 10
  %i.bi = add i32 %i.bh, %i.ag                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bj = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bj, i1 noundef zeroext %.sroa.0.0) #19
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !702, !noalias !703, !noundef !5 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !702, !noalias !703, !noundef !5 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread26

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !702, !noalias !703, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !704, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !705

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread26, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !706
end_hunk_0
