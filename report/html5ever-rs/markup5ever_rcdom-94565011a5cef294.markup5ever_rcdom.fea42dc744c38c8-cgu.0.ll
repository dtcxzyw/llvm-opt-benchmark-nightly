Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.0?download=true
inline.NumInlined: 238
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1l_:bb.a

bb.h:                                             ; preds = %.lr.ph12.i.i.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.am) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i unwind label %bb.i, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i: ; preds = %bb.h, %.lr.ph12.i.i.i
  %i.as = icmp eq i64 %i.an, %.sroa.11.0
  br i1 %i.as, label %common.resume, label %.lr.ph12.i.i.i

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i, %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.t, %.body ], [ %i.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !241
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtBI_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1N_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i.i.i, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit
  ret void

bb.j:                                             ; preds = %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 136, i64 noundef 8) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_4cell7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBW_3fmt4UTF8EENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !254
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 7)
  %i.e = load i64, ptr %i.d, align 8, !noalias !254, !noundef !5 ; 2 uses
  %i.f = icmp ult i64 %i.e, 9223372036854775807
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !254
  store ptr @30, ptr %i.a, align 8, !noalias !254
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 21 to ptr), ptr %i.g, align 8, !noalias !254
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  br label %_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBU_3fmt4UTF8EENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.c:                                             ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.e, 1
  store i64 %i.i, ptr %i.d, align 8, !noalias !254
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !254
  store ptr %i.j, ptr %i.b, align 8, !noalias !254
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !254
  %i.l = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.val.i3.i = load ptr, ptr %i.k, align 8, !alias.scope !255, !noalias !254, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.m = load i64, ptr %.val.i3.i, align 8, !noalias !255, !noundef !5
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %.val.i3.i, align 8, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !254
  br label %_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBU_3fmt4UTF8EENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !256, !noalias !254, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.p = load i64, ptr %.val.i.i, align 8, !noalias !256, !noundef !5
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %.val.i.i, align 8, !noalias !256
  resume { ptr, i32 } %i.o

_RNvXsv_NtCskKLDkoKarTP_4core3fmtINtNtB7_4cell7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBU_3fmt4UTF8EENtB5_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.b, %bb.d
  %i.r = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !254
  ret i1 %i.r
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtB6_5Debug3fmtB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs0_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_4NodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !259
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !259
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !259
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !271, !noalias !272, !noundef !5
  %i.c = add i64 %i.b, 8
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !271, !noalias !272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !271, !noalias !272, !noundef !5 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef range(i64 0, 9) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 8) ; 2 uses
  %i.h = icmp ugt i64 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !273, !noalias !271
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !273, !noalias !271
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !273, !noalias !271, !noundef !5
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !271, !noalias !272, !noundef !5
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !271, !noalias !272
  %i.ae = icmp ugt i64 %i.e, 8
  br i1 %i.ae, label %22, label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %._crit_edge.i ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i         ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !271, !noalias !272
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !271, !noalias !272
  %.promoted20.i = load i64, ptr %2, align 8, !alias.scope !274, !noalias !272 ; 3 uses
  %i.al = load i64, ptr %3, align 8, !alias.scope !274, !noalias !272
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i
  %.sroa.07.0.copyload.i = load i64, ptr %4, align 1, !alias.scope !272, !noalias !271 ; 2 uses
  %5 = xor i64 %.sroa.07.0.copyload.i, %i.ak      ; 3 uses
  %6 = add i64 %.promoted20.i, %.promoted.i       ; 3 uses
  %i.am = add i64 %5, %i.al                       ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted20.i, i64 %.promoted20.i, i64 13)
  %i.ao = xor i64 %i.an, %6                       ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 16)
  %i.aq = xor i64 %i.am, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 32)
  %i.as = add i64 %i.am, %i.ao                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.av = xor i64 %i.as, %i.au
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 21)
  %8 = xor i64 %7, %i.at
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.ax = xor i64 %i.at, %.sroa.07.0.copyload.i
  %9 = add nuw nsw i64 %.sroa.0.0.i, 8
  store i64 %8, ptr %i.aj, align 8, !alias.scope !271, !noalias !272
  store i64 %i.av, ptr %2, align 8, !alias.scope !274, !noalias !272
  store i64 %i.aw, ptr %3, align 8, !alias.scope !274, !noalias !272
  store i64 %i.ax, ptr %0, align 8, !alias.scope !271, !noalias !272
  br label %bb.j

._crit_edge.i:                                    ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %10 = load i64, ptr %i.ay, align 8, !alias.scope !271, !noalias !272, !noundef !5
  %11 = xor i64 %10, %i.ad                        ; 3 uses
  %12 = load i64, ptr %0, align 8, !alias.scope !275, !noalias !272, !noundef !5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted19.i = load i64, ptr %13, align 8, !alias.scope !275, !noalias !272, !noundef !5 ; 3 uses
  %14 = add i64 %.promoted19.i, %12               ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %16 = load i64, ptr %15, align 8, !alias.scope !275, !noalias !272, !noundef !5
  %i.az = add i64 %16, %11                        ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted19.i, i64 %.promoted19.i, i64 13)
  %i.bb = xor i64 %i.ba, %14                      ; 3 uses
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 16)
  %18 = xor i64 %i.az, %17                        ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 32)
  %i.bd = add i64 %i.az, %i.bb                    ; 3 uses
  %19 = add i64 %18, %i.bc                        ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bf = xor i64 %i.bd, %i.be
  store i64 %i.bf, ptr %13, align 8, !alias.scope !275, !noalias !272
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 21)
  %i.bh = xor i64 %i.bg, %19
  store i64 %i.bh, ptr %i.ay, align 8, !alias.scope !275, !noalias !272
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 32)
  store i64 %20, ptr %15, align 8, !alias.scope !275, !noalias !272
  %21 = xor i64 %19, %i.ad
  store i64 %21, ptr %0, align 8, !alias.scope !271, !noalias !272
  br label %bb.h

22:                                               ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %23 = add i64 %i.e, 8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %9, %bb.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bi = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bj, align 1, !alias.scope !276, !noalias !271
  %i.bk = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.k ], [ 0, %bb.j ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bk, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bl = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bm = icmp samesign ult i64 %i.bl, %i.ag
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bo, align 1, !alias.scope !276, !noalias !271
  %i.bp = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bq = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.br = shl nuw nsw i64 %i.bp, %i.bq
  %i.bs = or i64 %i.br, %.sroa.0.0.i11.i
  %i.bt = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.1.i12.i = phi i64 [ %i.bt, %bb.m ], [ %.sroa.03.0.i10.i, %bb.l ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bs, %bb.m ], [ %.sroa.0.0.i11.i, %bb.l ] ; 2 uses
  %i.bu = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bu, label %bb.o, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.o:                                             ; preds = %bb.n
  %i.bv = add nsw i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 8
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !276, !noalias !271, !noundef !5
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cb = shl nuw nsw i64 %i.bz, %i.ca
  %i.cc = or i64 %i.cb, %.sroa.0.1.i13.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.o, %bb.n
  %.sroa.0.2.i14.i = phi i64 [ %i.cc, %bb.o ], [ %.sroa.0.1.i13.i, %bb.n ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cd, align 8, !alias.scope !271, !noalias !272
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %22, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %23, %22 ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !271, !noalias !272
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  %i.e = and i64 %i.d, 3
  %i.f = and i64 %i.d, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.60, i64 %i.e
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %switch.ext = zext i8 %switch.load21 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !captures !11
  store i64 %switch.ext, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @8, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB4_10SpecExtendB1j_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterB1j_EEE11spec_extendB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr i64 %i.c, 3                         ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !333, !noundef !5 ; 5 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !333, !noundef !5 ; 7 uses
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !noalias !333
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = sub i64 %i.i, %i.f                       ; 2 uses
  %i.l = icmp ugt i64 %i.d, %i.k
  br i1 %i.l, label %bb.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.i, %bb.d
  %.pre-phi.i = phi i64 [ %.pre8.i, %bb.i ], [ %i.k, %bb.d ]
  %i.m = phi i64 [ %.pre7.i, %bb.i ], [ %i.f, %bb.d ]
  %i.n = phi i64 [ %.pre.i, %bb.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !335, !noundef !5 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.p, %.pre-phi.i
  br i1 %.not.i.i, label %bb.f, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = sub i64 %i.i, %i.p                       ; 4 uses
  %i.r = sub i64 %i.m, %i.q                       ; 3 uses
  %i.s = icmp ule i64 %i.q, %i.r
  %i.t = sub nsw i64 %i.n, %i.i
  %.not2.i.i = icmp ult i64 %i.t, %i.r
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not2.i.i
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = sub i64 %i.n, %i.q                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !335, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.z = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, i64 %i.z, i1 false), !noalias !334
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !335
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !335, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.i
  %i.ad = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ab, i64 %i.ad, i1 false), !noalias !334
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.i:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 8)
  %.pre.i = load i64, ptr %0, align 8, !range !10, !alias.scope !335
  %.pre7.i = load i64, ptr %i.e, align 8, !alias.scope !335 ; 2 uses
  %.pre8.i = sub i64 %i.i, %.pre7.i
  br label %bb.e

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit: ; preds = %bb.b, %bb.e, %bb.g, %bb.h
  %i.ae = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !range !10, !noundef !5 ; 3 uses
  %.not = icmp ult i64 %i.ah, %i.ai
  %i.aj = select i1 %.not, i64 0, i64 %i.ai
  %.sroa.02.0 = sub nuw i64 %i.ah, %i.aj          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ak = sub i64 %i.ai, %.sroa.02.0              ; 4 uses
  %.not.i = icmp ult i64 %i.ak, %i.d
  br i1 %.not.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !336, !nonnull !5
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.sroa.02.0
  br label %bb.l

bb.l:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i, %bb.k
  %.sroa.8.1.i = phi i64 [ 0, %bb.k ], [ %i.aw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %1, %bb.k ], [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ap = phi i64 [ %i.ak, %bb.k ], [ %i.au, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %.sroa.0.0.i, %2
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i, label %.loopexit.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !337, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i, align 8, !noalias !338, !noundef !5 ; 2 uses
  %i.aq = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add i64 %.val.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.ar, ptr %.val.i.i.i.i.i.i, align 8, !noalias !338
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.au = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ao, i64 %.sroa.8.1.i
  store ptr %.val.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !339
  %i.aw = add nuw nsw i64 %.sroa.8.1.i, 1
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %.loopexit.i.loopexit, label %bb.l

.loopexit.i.loopexit:                             ; preds = %bb.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i
  %.sroa.8.2.i.ph = phi i64 [ %.sroa.8.1.i, %bb.l ], [ %i.ak, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.ph = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %i.ay = freeze ptr %.sroa.0.1.i.ph
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.j
  %.sroa.8.2.i = phi i64 [ 0, %bb.j ], [ %.sroa.8.2.i.ph, %.loopexit.i.loopexit ] ; 2 uses
end_hunk_0
