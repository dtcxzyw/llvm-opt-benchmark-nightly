inline.NumInlined: 1053
inline.NumDeleted: 445
begin_hunk_0_@_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseBC_ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %.thread, label %bb.i

bb.ar:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !alias.scope !31, !noalias !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.371.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.cb, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.bp, ptr %0, align 8
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %.sroa.270.0..sroa_idx, align 8
  %.sroa.270.sroa.2.0..sroa.270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val79, ptr %.sroa.270.sroa.2.0..sroa.270.0..sroa_idx.sroa_idx, align 8
  %.sroa.270.sroa.3.0..sroa.270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.270.sroa.3.0..sroa.270.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ad

bb.as:                                            ; preds = %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB6_7AppName3newNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !35
  %i.i = load i64, ptr %i.h, align 8, !range !21, !noundef !12
  %.not = icmp eq i64 %i.i, -9223372036854775808
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.p = phi ptr [ %i.ay, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.n, %bb.b ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !noalias !42, !noundef !12 ; 5 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.c, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.t = and i8 %i.r, 31
  %i.u = zext nneg i8 %i.t to i32                 ; 3 uses
  %i.v = icmp ne ptr %i.q, %i.o
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.x = load i8, ptr %i.q, align 1, !noalias !42, !noundef !12
  %i.y = shl nuw nsw i32 %i.u, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32                ; 2 uses
  %i.ab = or disjoint i32 %i.y, %i.aa
  %i.ac = icmp samesign ugt i8 %i.r, -33
  br i1 %i.ac, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i, label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = zext nneg i8 %i.r to i32
  br label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.thread.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i
  %i.ae = icmp ne ptr %i.w, %i.o
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 3 ; 3 uses
  %i.ag = load i8, ptr %i.w, align 1, !noalias !42, !noundef !12
  %i.ah = shl nuw nsw i32 %i.aa, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj            ; 2 uses
  %i.al = shl nuw nsw i32 %i.u, 12
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = icmp samesign ugt i8 %i.r, -17
  br i1 %i.an, label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i, label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.thread.i

_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i
  %i.ao = icmp ne ptr %i.af, %i.o
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.aq = load i8, ptr %i.af, align 1, !noalias !42, !noundef !12
  %i.ar = shl nuw nsw i32 %i.u, 18
  %i.as = and i32 %i.ar, 1835008
  %i.at = shl nuw nsw i32 %i.ak, 6
  %i.au = and i8 %i.aq, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = or disjoint i32 %i.aw, %i.as            ; 2 uses
  %.not.not.i = icmp eq i32 %i.ax, 1114112
  br i1 %.not.not.i, label %bb.i, label %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.thread.i

_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i
  %i.ay = phi ptr [ %i.ap, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i ], [ %i.af, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i ], [ %i.w, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i ], [ %i.q, %bb.c ] ; 2 uses
  %spec.select.i8.i = phi i32 [ %i.ax, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i ], [ %i.am, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i ], [ %i.ad, %bb.c ] ; 6 uses
  %i.az = add nsw i32 %spec.select.i8.i, -48
  %.sroa.01.0.i.i.i.i = icmp ult i32 %i.az, 10
  %i.ba = icmp samesign ugt i32 %spec.select.i8.i, 64
  %i.bb = icmp samesign ult i32 %spec.select.i8.i, 91
  %.sroa.02.0.i.i.i.i = select i1 %i.ba, i1 %i.bb, i1 %.sroa.01.0.i.i.i.i
  %i.bc = icmp samesign ugt i32 %spec.select.i8.i, 96
  %i.bd = icmp samesign ult i32 %spec.select.i8.i, 123
  %.sroa.03.0.i.i.i.i = select i1 %i.bc, i1 %i.bd, i1 %.sroa.02.0.i.i.i.i
  br i1 %.sroa.03.0.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.thread.i
  switch i32 %spec.select.i8.i, label %.loopexit [
    i32 33, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 35, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 36, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 37, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 38, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 39, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 42, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 43, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 45, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 46, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 94, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 95, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 96, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 124, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
    i32 126, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  ]

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.thread.i
  %.not.i.i = icmp eq ptr %i.ay, %i.o
  br i1 %.not.i.i, label %bb.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.d, %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.f ], [ %i.bg, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.r, %bb.y, %bb.w, %bb.v, %bb.o, %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.h) #30
          to label %common.resume unwind label %bb.aa

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkcNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB1k_7AppName3new15valid_characterE0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i
  %i.bh = icmp ugt i64 %i.k, 50
  br i1 %i.bh, label %bb.k, label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.j:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.z, %bb.x, %bb.k, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = cmpxchg ptr @_RNvNtCsjPG5xYjJYir_9aws_types8app_name40APP_NAME_LEN_RECOMMENDATION_WARN_EMITTED, i8 0, i8 1 acquire monotonic, align 1
  %i.bj = extractvalue { i8, i1 } %i.bi, 1
  br i1 %i.bj, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.bk = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bl = icmp ult i64 %i.bk, 4
  br i1 %i.bl, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB7_7AppName3new10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bm, label %bb.n [
    i8 0, label %bb.t
    i8 1, label %bb.o
    i8 2, label %bb.o
  ], !prof !49

bb.n:                                             ; preds = %bb.m
  %i.bn = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB7_7AppName3new10___CALLSITE)
          to label %bb.p unwind label %bb.h       ; 2 uses

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.p
  %.sroa.013.0 = phi i8 [ %i.bn, %bb.p ], [ %i.bm, %bb.m ], [ %i.bm, %bb.m ]
  %i.bo = load ptr, ptr @_RNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB7_7AppName3new10___CALLSITE, align 8, !nonnull !12, !align !50, !noundef !12
  %i.bp = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, i8 noundef %.sroa.013.0)
          to label %bb.q unwind label %bb.h

bb.p:                                             ; preds = %bb.n
  %i.bq = icmp eq i8 %i.bn, 0
  br i1 %i.bq, label %bb.t, label %bb.o

bb.q:                                             ; preds = %bb.o
  br i1 %i.bp, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.br = load ptr, ptr @_RNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB7_7AppName3new10___CALLSITE, align 8, !nonnull !12, !align !50, !noundef !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @4, ptr %i.e, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 203 to ptr), ptr %i.bt, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @5, ptr %i.bu, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.015.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.015.sroa.4.0..sroa_idx, align 8
  %.sroa.015.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.015.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx, align 8
  invoke fastcc void @_RNCINvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB8_7AppName3newNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.t:                                             ; preds = %bb.p, %bb.m, %bb.l, %bb.q
  %i.bv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.u, label %bb.j

bb.u:                                             ; preds = %bb.t
  %i.bx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = icmp samesign ugt i64 %i.bx, 1
  br i1 %i.bz, label %bb.v, label %bb.j

bb.v:                                             ; preds = %bb.u
  %i.ca = load ptr, ptr @_RNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB7_7AppName3new10___CALLSITE, align 8, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !12, !noundef !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !12
  store i64 2, ptr %i.d, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cc, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ce, ptr %.sroa.524.0..sroa_idx, align 8
  %i.cf = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.w unwind label %bb.h       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cg = extractvalue { ptr, ptr } %i.cf, 0      ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cf, 1      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !12, !nonnull !12
  %i.ck = invoke noundef zeroext i1 %i.cj(ptr noundef %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.x unwind label %bb.h

bb.x:                                             ; preds = %bb.w
  br i1 %i.ck, label %bb.y, label %bb.j

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cl = load ptr, ptr @_RNvNvMs1_NtCsjPG5xYjJYir_9aws_types8app_nameNtB7_7AppName3new10___CALLSITE, align 8, !nonnull !12, !align !50, !noundef !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @4, ptr %i.a, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 203 to ptr), ptr %i.cn, align 8
  store ptr %i.a, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @5, ptr %i.co, align 8
  store i64 1, ptr %i.c, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.527.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cm, ptr %i.cp, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ca, ptr noundef nonnull %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.z unwind label %bb.h

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.aa:                                            ; preds = %bb.h
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue26validate_and_return_originNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueNvB2c_9parse_urlECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue4load(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body27

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !range !51, !noundef !12
  %.not = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.l = load i64, ptr %i.k, align 8, !range !51, !noundef !12
  %.not19 = icmp ne i64 %i.l, -9223372036854775807
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = load i64, ptr %i.m, align 8, !range !51, !noundef !12
  %.not20 = icmp eq i64 %i.n, -9223372036854775807
  %.26 = select i1 %.not20, i8 2, i8 1
  %. = zext i1 %.not19 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCsaB04DkjCm5a_10aws_config11environment9parse_url(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment9parse_urlINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 4, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.x, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.n unwind label %bb.t

_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment9parse_urlINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d
  %i.u = load i64, ptr %i.d, align 8, !range !16, !noundef !12
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment9parse_urlINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_0
begin_hunk_1_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.n:                                             ; preds = %.lr.ph
  %i.bk = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.bl = load i64, ptr %i.s, align 8, !alias.scope !235, !noalias !233, !noundef !12 ; 2 uses
  %.neg.i = sub i64 %i.bh, %i.bl
  %i.bm = load i64, ptr %i.u, align 8, !alias.scope !233, !noalias !235, !noundef !12
  %i.bn = add i64 %.neg.i, %i.bm
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bo = load i64, ptr %i.t, align 8, !alias.scope !235, !noalias !233, !noundef !12 ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %i.bh
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bf)
  %i.bq = load ptr, ptr %i.b, align 8, !alias.scope !235, !noalias !233, !nonnull !12, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !237
  store ptr %i.br, ptr %i.a, align 8, !noalias !237
  store i64 %i.bf, ptr %i.w, align 8, !noalias !237
  store i64 0, ptr %i.x, align 8, !noalias !237
  store i64 %.sroa.0.0.i.i, ptr %i.y, align 8, !noalias !237
  %i.bs = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !235
  %i.bt = load i64, ptr %i.x, align 8, !noalias !237, !noundef !12 ; 2 uses
  %i.bu = load i64, ptr %i.y, align 8, !noalias !237, !noundef !12
  %i.bv = add i64 %i.bt, %i.bh                    ; 3 uses
  store i64 %i.bv, ptr %i.s, align 8, !alias.scope !235, !noalias !233
  %.sroa.0.0.i4.i = call noundef i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bo)
  %i.bw = add i64 %i.bu, %i.bh
  %.sroa.0.0.i5.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %.sroa.0.0.i4.i)
  store i64 %.sroa.0.0.i5.i, ptr %i.t, align 8, !alias.scope !235, !noalias !233
  %i.bx = load i64, ptr %i.u, align 8, !alias.scope !233, !noalias !235, !noundef !12
  %i.by = sub i64 %i.bx, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.n, %bb.o
  %.pre159164 = phi i64 [ %i.bv, %bb.o ], [ %i.bl, %bb.n ]
  %.sink = phi i64 [ %i.by, %bb.o ], [ %i.bn, %bb.n ] ; 4 uses
  %.sroa.0.0.i65 = phi ptr [ %i.bs, %bb.o ], [ %i.bk, %bb.n ] ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !alias.scope !233, !noalias !235
  %.not60 = icmp eq ptr %.sroa.0.0.i65, null      ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit, label %bb.p

bb.p:                                             ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bz = ptrtoint ptr %.sroa.0.0.i65 to i64      ; 3 uses
  %i.ca = and i64 %i.bz, 3
  switch i64 %i.ca, label %default.unreachable [
    i64 2, label %bb.q
    i64 3, label %bb.t
    i64 0, label %bb.r
    i64 1, label %bb.s
  ], !prof !238

default.unreachable:                              ; preds = %bb.p
  unreachable

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit, %bb.t, %bb.q, %bb.s, %bb.r
  %i.cb = ptrtoint ptr %.sroa.0.0.i65 to i64
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit
  %.pre159 = phi i64 [ %.pre159.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexit_crit_edge ], [ %.pre159164, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit ] ; 5 uses
  %.not6083.ph = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6582.ph = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexit_crit_edge ], [ %i.cb, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit ]
  %.pre160 = load i64, ptr %i.t, align 8          ; 2 uses
  %.pre161 = load i64, ptr %i.c, align 8          ; 2 uses
  %i.cc = sub nuw i64 %.pre160, %.pre159
  %i.cd = icmp ne i64 %.pre160, %.sroa.0.0.i
  %i.ce = icmp sgt i64 %.pre161, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add i64 %.pre161, %.pre159              ; 3 uses
  store i64 %i.cf, ptr %i.c, align 8
  br i1 %.not6083.ph, label %bb.aa, label %.loopexit176

bb.q:                                             ; preds = %bb.p
  %.mask127 = and i64 %i.bz, -4294967296
  %i.cg = icmp eq i64 %.mask127, 17179869184
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit

bb.r:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !range !239, !noundef !12
  %i.cj = icmp eq i8 %i.ci, 35
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit

bb.s:                                             ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i65, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr i8, ptr %.sroa.0.0.i65, i64 15
  %i.cm = load i8, ptr %i.cl, align 8, !range !239, !noundef !12
  %i.cn = icmp eq i8 %i.cm, 35
  br i1 %i.cn, label %bb.u, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit

bb.t:                                             ; preds = %bb.p
  %i.co = icmp ult ptr %.sroa.0.0.i65, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.co)
  %.mask = and i64 %i.bz, -4294967296
  %i.cp = icmp eq i64 %.mask, 150323855360
  br i1 %i.cp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexitsplit

bb.u:                                             ; preds = %bb.s
  %.val.i.i.i.i.i = load ptr, ptr %i.ck, align 8  ; 5 uses
  %i.cq = getelementptr i8, ptr %.sroa.0.0.i65, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !nonnull !12, !align !50, !noundef !12 ; 5 uses
  %i.cr = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cr(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !227, !invariant.load !12 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !240, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !227, !invariant.load !12 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !240, !invariant.load !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #35
  br label %.body

.body:                                            ; preds = %bb.z, %bb.y
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #35
  resume { ptr, i32 } %i.cx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #35
  %.pre158 = load i64, ptr %i.u, align 8, !alias.scope !241, !noalias !243
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.t, %bb.q, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.dd = phi i64 [ %.sink, %bb.t ], [ %.sink, %bb.q ], [ %.sink, %bb.r ], [ %.pre158, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ] ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexit_crit_edge, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit
  %.pre159.pre = load i64, ptr %i.s, align 8
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread

bb.aa:                                            ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread
  %i.df = icmp eq i64 %.pre159, 0
  br i1 %i.df, label %.loopexit177, label %bb.ab

.loopexit177:                                     ; preds = %bb.aa, %.thread
  %i.dg = phi i64 [ %i.ay, %.thread ], [ %i.cf, %bb.aa ]
  %i.dh = sub nsw i64 %i.dg, %i.d
  br label %.loopexit176

bb.ab:                                            ; preds = %bb.aa
  %i.di = icmp ult i64 %.pre159, %.sroa.0.0.i
  %i.dj = add i32 %.sroa.019.0, 1
  %.sroa.019.1 = select i1 %i.di, i32 %i.dj, i32 0 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ad, label %bb.ac

.loopexit176:                                     ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread, %.loopexit177
  %.sroa.8.0 = phi i64 [ %i.dh, %.loopexit177 ], [ %.sroa.0.0.i6582.ph, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread ]
  %.sroa.010.0 = phi i64 [ 0, %.loopexit177 ], [ 1, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs9rVkZwOUgsI_13deltalake_aws.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.sroa.050.4 = phi i64 [ -1, %bb.af ], [ %i.dn, %bb.ae ], [ %spec.select, %bb.ad ], [ %.sroa.050.3, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.ad:                                            ; preds = %bb.ab
  %i.dk = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.cd, i1 %i.dk, i1 false
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3 ; 4 uses
  %i.dl = icmp uge i64 %.sroa.0.0.i, %spec.select
  %i.dm = icmp eq i64 %.pre159, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dm, %i.dl
  br i1 %or.cond2, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.dn = shl nuw i64 %spec.select, 1
  %i.do = icmp slt i64 %spec.select, 0
  br i1 %i.do, label %bb.af, label %bb.ac, !prof !22

bb.af:                                            ; preds = %bb.ae
  br label %bb.ac

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit176
  %.sroa.8.1 = phi i64 [ %i.ar, %bb.i ], [ %i.au, %bb.k ], [ %.sroa.8.0, %.loopexit176 ], [ 163208757251, %bb.l ]
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit176 ], [ 1, %bb.l ]
  %i.dp = inttoptr i64 %.sroa.8.1 to ptr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dp, %.loopexit ], [ %i.ab, %bb.d ], [ null, %bb.e ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ]
  %i.dq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0
  %i.dr = insertvalue { i64, ptr } %i.dq, ptr %.sroa.8.2, 1
  ret { i64, ptr } %i.dr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std3env3varReECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtCs2pqxYH9ZEk8_3std3env4__var(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std3env6var_osReECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtCs2pqxYH9ZEk8_3std3env7__var_os(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.d, align 8, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.val5, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val6, ptr %i.f, align 8
  %i.g = invoke noundef ptr @_RNvNtNtNtCs2pqxYH9ZEk8_3std3sys3env4unix6setenv(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val5, i64 noundef %.val6)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #30
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNCINvNtCs2pqxYH9ZEk8_3std3env7set_varReNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull %i.g)
          to label %.unreachable unwind label %bb.b

.unreachable:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !227, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2u_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !240, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2u_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !227, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !240, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2u_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !227, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !240, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !227, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !240, !invariant.load !12
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
end_hunk_1
begin_hunk_2_@_RNCNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB7_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0Bb_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ev, %bb.bd
  %i.ft = phi ptr [ %i.fk, %bb.bd ], [ %i.fz, %bb.ev ] ; 2 uses
  %i.fu = phi ptr [ %i.fl, %bb.bd ], [ %i.ga, %bb.ev ] ; 2 uses
  %.sroa.061.0.i = phi i64 [ %i.fo, %bb.bd ], [ %.sroa.066.0.i72.i, %bb.ev ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.3.0.copyload.i, %bb.bd ], [ %.sroa.367.0.i73.i, %bb.ev ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 225
  store i8 0, ptr %i.fv, align 1, !noalias !1195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1195
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 8, !range !17, !noalias !1195, !noundef !12
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ex, label %bb.fd

bb.bg:                                            ; preds = %bb.at, %bb.o
  %i.fz = phi ptr [ %i.cj, %bb.at ], [ %i.ci, %bb.o ] ; 4 uses
  %i.ga = phi ptr [ %i.ck, %bb.at ], [ %i.ch, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1195
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 5 uses
  %i.gd = load i8, ptr %i.gc, align 8, !range !334, !noalias !1217, !noundef !12
  switch i8 %i.gd, label %default.unreachable114 [
    i8 0, label %bb.bh
    i8 1, label %bb.bn
    i8 2, label %bb.bo
    i8 3, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  %i.ge = load ptr, ptr %i.gb, align 8, !noalias !1217, !nonnull !12, !noundef !12
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !1217, !nonnull !12, !align !50, !noundef !12
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1217, !nonnull !12, !align !50, !noundef !12
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !1217, !noundef !12
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gl, i64 noundef %i.gk)
          to label %bb.bk unwind label %bb.bj, !noalias !1221

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  br label %.body32.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 184
  %i.go = load ptr, ptr %i.gn, align 8, !invariant.load !12, !noalias !1221, !nonnull !12
  %i.gp = invoke { ptr, ptr } %i.go(ptr noundef nonnull %i.ge, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl)
          to label %bb.bm unwind label %bb.bl, !noalias !1221 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.gr = extractvalue { ptr, ptr } %i.gp, 0
  %i.gs = extractvalue { ptr, ptr } %i.gp, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.gr, ptr %i.gt, align 8, !noalias !1217
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.gs, ptr %i.gu, align 8, !noalias !1217
  br label %bb.bq

.body.i.i:                                        ; preds = %bb.dm, %bb.bz, %bb.bx, %bb.bw, %bb.bp, %bb.bl
  %.pn11.i.i = phi { ptr, i32 } [ %i.gq, %bb.bl ], [ %i.gw, %bb.bp ], [ %i.hi, %bb.bw ], [ %i.hs, %bb.bz ], [ %i.hi, %bb.bx ], [ %i.lm, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.gv) #30
          to label %.body32.i.i unwind label %bb.er, !noalias !1221

bb.bn:                                            ; preds = %bb.bg
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #34
          to label %.noexc48.i unwind label %bb.es, !noalias !1199

.noexc48.i:                                       ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bg
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #34
          to label %.noexc49.i unwind label %bb.es, !noalias !1199

.noexc49.i:                                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bq
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1217
  %.val17.i.i = load ptr, ptr %i.gy, align 8, !noalias !1217
  %i.gx = getelementptr i8, ptr %1, i64 296
  %.val18.i.i = load ptr, ptr %i.gx, align 8, !noalias !1217, !nonnull !12, !align !50, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val17.i.i, ptr nonnull %.val18.i.i) #30
          to label %.body.i.i unwind label %bb.er, !noalias !1221

bb.bq:                                            ; preds = %bb.bm, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1217
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.br unwind label %bb.bp, !noalias !1221

bb.br:                                            ; preds = %bb.bq
  %i.gz = load i64, ptr %i.ab, align 8, !range !488, !noalias !1217, !noundef !12 ; 5 uses
  %i.ha = icmp eq i64 %i.gz, -9223372036854775789
  br i1 %i.ha, label %.thread.i, label %bb.bs

.thread.i:                                        ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  store i8 3, ptr %i.gc, align 8, !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1195
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  br label %bb.eu

bb.bs:                                            ; preds = %bb.br
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1217
  %.val.i.i = load ptr, ptr %i.gy, align 8, !noalias !1217 ; 5 uses
  %i.hb = getelementptr i8, ptr %1, i64 296
  %.val16.i.i = load ptr, ptr %i.hb, align 8, !noalias !1217, !nonnull !12, !align !50, !noundef !12 ; 5 uses
  %i.hc = load ptr, ptr %.val16.i.i, align 8, !invariant.load !12, !noalias !1221 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.hc(ptr noundef nonnull %.val.i.i)
          to label %bb.bu unwind label %bb.bw, !noalias !1221

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.hd = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !range !227, !invariant.load !12, !noalias !1221 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hg = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !range !240, !invariant.load !12, !noalias !1221
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.he, i64 noundef range(i64 1, 536870913) %i.hh) #35, !noalias !1221
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.bw:                                            ; preds = %bb.bt
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !range !227, !invariant.load !12, !noalias !1221 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %.body.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hm = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !range !240, !invariant.load !12, !noalias !1221
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.hk, i64 noundef range(i64 1, 536870913) %i.hn) #35, !noalias !1221
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.bv, %bb.bu
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val26.i.i = load i64, ptr %i.ho, align 8, !noalias !1217
  %.not.i27.i.i = icmp eq i64 %i.gz, -9223372036854775790
  br i1 %.not.i27.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i, label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1222
  store i64 %i.gz, ptr %i.t, align 8, !noalias !1226
  %.sroa.3.0..sroa_idx54.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx54.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, i64 64, i1 false), !noalias !1226
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1222
  %i.hp = icmp ne i64 %i.gz, -9223372036854775800
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp eq i64 %i.gz, -9223372036854775797
  %i.hr = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1232 ; 2 uses
  br i1 %i.hq, label %bb.ca, label %bb.ct

bb.bz:                                            ; preds = %bb.dj, %bb.dh, %bb.dg, %bb.dc, %.noexc48.i.i.i.i, %bb.db, %bb.cz, %bb.cw, %bb.cv, %bb.cr, %bb.cp, %bb.co, %bb.cj, %.noexc42.i.i.i.i, %bb.ci, %bb.cg, %bb.cd, %bb.cc
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t) #30
          to label %.body.i.i unwind label %bb.dl, !noalias !1233

bb.ca:                                            ; preds = %bb.by
  %i.ht = icmp ult i64 %i.hr, 4
  br i1 %i.ht, label %bb.cb, label %bb.cm

bb.cb:                                            ; preds = %bb.ca
  %i.hu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, i64 16) monotonic, align 8, !noalias !1232 ; 3 uses
  switch i8 %i.hu, label %bb.cc [
    i8 0, label %bb.cm
    i8 1, label %bb.cd
    i8 2, label %bb.cd
  ], !prof !49

bb.cc:                                            ; preds = %bb.cb
  %i.hv = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE)
          to label %bb.ce unwind label %bb.bz, !noalias !1234 ; 2 uses

bb.cd:                                            ; preds = %bb.cb, %bb.ce, %bb.cb
  %.sroa.06.0.i.i.i.i = phi i8 [ %i.hv, %bb.ce ], [ %i.hu, %bb.cb ], [ %i.hu, %bb.cb ]
  %i.hw = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1232, !nonnull !12, !align !50, !noundef !12
  %i.hx = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hw, i8 noundef %.sroa.06.0.i.i.i.i)
          to label %bb.cf unwind label %bb.bz, !noalias !1234

bb.ce:                                            ; preds = %bb.cc
  %i.hy = icmp eq i8 %i.hv, 0
  br i1 %i.hy, label %bb.cm, label %bb.cd

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.hx, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1232
  %i.hz = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1232, !nonnull !12, !align !50, !noundef !12 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1232
  store ptr @25, ptr %i.q, align 8, !noalias !1232
  %i.ib = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.ib, align 8, !noalias !1232
  store ptr %i.q, ptr %i.r, align 8, !noalias !1232
  %i.ic = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @5, ptr %i.ic, align 8, !noalias !1232
  store i64 1, ptr %i.s, align 8, !noalias !1232
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.ia, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1232
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc.i.i.i.i unwind label %bb.bz, !noalias !1234

.noexc.i.i.i.i:                                   ; preds = %bb.cg
  %i.id = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1235
  %i.ie = icmp eq i8 %i.id, 0
  br i1 %i.ie, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %.noexc.i.i.i.i
  %i.if = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1235 ; 2 uses
  %i.ig = icmp ult i64 %i.if, 6
  call void @llvm.assume(i1 %i.ig)
  %i.ih = icmp samesign ugt i64 %i.if, 1
  br i1 %i.ih, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.ii = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1235, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !1234, !nonnull !12, !noundef !12
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.im = load i64, ptr %i.il, align 8, !noalias !1234, !noundef !12
  store i64 2, ptr %i.c, align 8, !noalias !1235
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ik, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1235
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.im, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1235
  %i.in = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc42.i.i.i.i unwind label %bb.bz, !noalias !1234 ; 2 uses

.noexc42.i.i.i.i:                                 ; preds = %bb.ci
  %i.io = extractvalue { ptr, ptr } %i.in, 0      ; 2 uses
  %i.ip = extractvalue { ptr, ptr } %i.in, 1      ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !invariant.load !12, !noalias !1234, !nonnull !12
  %i.is = invoke noundef zeroext i1 %i.ir(ptr noundef %i.io, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #32
          to label %.noexc43.i.i.i.i unwind label %bb.bz, !noalias !1234, !inline_history !1238

.noexc43.i.i.i.i:                                 ; preds = %.noexc42.i.i.i.i
  br i1 %i.is, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.noexc43.i.i.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ii, ptr noundef nonnull %i.io, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ip, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %bb.ck unwind label %bb.bz, !noalias !1234

bb.ck:                                            ; preds = %bb.cj, %.noexc43.i.i.i.i, %bb.ch, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1232
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cs, %bb.cq, %bb.cn, %bb.cm, %bb.ck
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread71.i.i unwind label %bb.dm, !noalias !1221

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread71.i.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i, i64 56, i1 false), !noalias !1239
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %bb.eo

bb.cm:                                            ; preds = %bb.cf, %bb.ce, %bb.cb, %bb.ca
  %i.it = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1232
  %i.iu = icmp eq i8 %i.it, 0
  br i1 %i.iu, label %bb.cn, label %bb.cl

bb.cn:                                            ; preds = %bb.cm
  %i.iv = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1232 ; 2 uses
  %i.iw = icmp ult i64 %i.iv, 6
  call void @llvm.assume(i1 %i.iw)
  %i.ix = icmp samesign ugt i64 %i.iv, 1
  br i1 %i.ix, label %bb.co, label %bb.cl

bb.co:                                            ; preds = %bb.cn
  %i.iy = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1232, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !1234, !nonnull !12, !noundef !12
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !1234, !noundef !12
  store i64 2, ptr %i.p, align 8, !noalias !1232
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ja, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.jc, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %i.jd = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cp unwind label %bb.bz, !noalias !1234 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.je = extractvalue { ptr, ptr } %i.jd, 0      ; 2 uses
  %i.jf = extractvalue { ptr, ptr } %i.jd, 1      ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !invariant.load !12, !noalias !1234, !nonnull !12
  %i.ji = invoke noundef zeroext i1 %i.jh(ptr noundef %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.cq unwind label %bb.bz, !noalias !1234

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.ji, label %bb.cr, label %bb.cl

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1232
  %i.jj = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1232, !nonnull !12, !align !50, !noundef !12
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1232
  store ptr @25, ptr %i.m, align 8, !noalias !1232
  %i.jl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.jl, align 8, !noalias !1232
  store ptr %i.m, ptr %i.n, align 8, !noalias !1232
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @5, ptr %i.jm, align 8, !noalias !1232
  store i64 1, ptr %i.o, align 8, !noalias !1232
  %.sroa.425.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %.sroa.526.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %.sroa.526.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %i.jn = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.jk, ptr %i.jn, align 8, !noalias !1232
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iy, ptr noundef nonnull %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.cs unwind label %bb.bz, !noalias !1234

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1232
  br label %bb.cl

bb.ct:                                            ; preds = %bb.by
  %i.jo = icmp ult i64 %i.hr, 5
  br i1 %i.jo, label %bb.cu, label %bb.de

bb.cu:                                            ; preds = %bb.ct
  %i.jp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !1232 ; 3 uses
  switch i8 %i.jp, label %bb.cv [
    i8 0, label %bb.de
    i8 1, label %bb.cw
    i8 2, label %bb.cw
  ], !prof !49

bb.cv:                                            ; preds = %bb.cu
  %i.jq = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE)
          to label %bb.cx unwind label %bb.bz, !noalias !1234 ; 2 uses

bb.cw:                                            ; preds = %bb.cu, %bb.cx, %bb.cu
  %.sroa.015.0.i.i.i.i = phi i8 [ %i.jq, %bb.cx ], [ %i.jp, %bb.cu ], [ %i.jp, %bb.cu ]
  %i.jr = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1232, !nonnull !12, !align !50, !noundef !12
  %i.js = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jr, i8 noundef %.sroa.015.0.i.i.i.i)
          to label %bb.cy unwind label %bb.bz, !noalias !1234

bb.cx:                                            ; preds = %bb.cv
  %i.jt = icmp eq i8 %i.jq, 0
  br i1 %i.jt, label %bb.de, label %bb.cw

bb.cy:                                            ; preds = %bb.cw
  br i1 %i.js, label %bb.cz, label %bb.de

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1232
  %i.ju = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1232, !nonnull !12, !align !50, !noundef !12 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1232
  store ptr @26, ptr %i.j, align 8, !noalias !1232
  %i.jw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 57 to ptr), ptr %i.jw, align 8, !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1232
  store ptr %i.t, ptr %i.i, align 8, !noalias !1232
  store ptr %i.j, ptr %i.k, align 8, !noalias !1232
  %i.jx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @5, ptr %i.jx, align 8, !noalias !1232
  %i.jy = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.jy, align 8, !noalias !1232
  %i.jz = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @27, ptr %i.jz, align 8, !noalias !1232
  store i64 1, ptr %i.l, align 8, !noalias !1232
  %.sroa.017.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.017.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %.sroa.017.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 2, ptr %.sroa.017.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.jv, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1232
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ju, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc47.i.i.i.i unwind label %bb.bz, !noalias !1233

.noexc47.i.i.i.i:                                 ; preds = %bb.cz
  %i.ka = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1240
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %.noexc47.i.i.i.i
  %i.kc = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1240 ; 2 uses
  %i.kd = icmp ult i64 %i.kc, 6
  call void @llvm.assume(i1 %i.kd)
  %.not.i.i.i.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not.i.i.i.i.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ke = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1240, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !1233, !nonnull !12, !noundef !12
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.ki = load i64, ptr %i.kh, align 8, !noalias !1233, !noundef !12
  store i64 1, ptr %i.b, align 8, !noalias !1240
  %.sroa.3.0..sroa_idx.i45.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.kg, ptr %.sroa.3.0..sroa_idx.i45.i.i.i.i, align 8, !noalias !1240
  %.sroa.5.0..sroa_idx.i46.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ki, ptr %.sroa.5.0..sroa_idx.i46.i.i.i.i, align 8, !noalias !1240
  %i.kj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc48.i.i.i.i unwind label %bb.bz, !noalias !1233 ; 2 uses

.noexc48.i.i.i.i:                                 ; preds = %bb.db
  %i.kk = extractvalue { ptr, ptr } %i.kj, 0      ; 2 uses
  %i.kl = extractvalue { ptr, ptr } %i.kj, 1      ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !invariant.load !12, !noalias !1233, !nonnull !12
  %i.ko = invoke noundef zeroext i1 %i.kn(ptr noundef %i.kk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #32
          to label %.noexc49.i.i.i.i unwind label %bb.bz, !noalias !1233, !inline_history !1243

.noexc49.i.i.i.i:                                 ; preds = %.noexc48.i.i.i.i
  br i1 %i.ko, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.noexc49.i.i.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ke, ptr noundef nonnull %i.kk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.dd unwind label %bb.bz, !noalias !1233

bb.dd:                                            ; preds = %bb.dc, %.noexc49.i.i.i.i, %bb.da, %.noexc47.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1232
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.de:                                            ; preds = %bb.cy, %bb.cx, %bb.cu, %bb.ct
  %i.kp = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1232
  %i.kq = icmp eq i8 %i.kp, 0
  br i1 %i.kq, label %bb.df, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.df:                                            ; preds = %bb.de
  %i.kr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1232 ; 2 uses
  %i.ks = icmp ult i64 %i.kr, 6
  call void @llvm.assume(i1 %i.ks)
  %.not.i.i28.i.i = icmp eq i64 %i.kr, 0
  br i1 %.not.i.i28.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kt = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1232, !nonnull !12, !align !50, !noundef !12 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !1234, !nonnull !12, !noundef !12
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !1234, !noundef !12
  store i64 1, ptr %i.h, align 8, !noalias !1232
  %.sroa.332.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.kv, ptr %.sroa.332.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %.sroa.533.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.kx, ptr %.sroa.533.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %i.ky = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dh unwind label %bb.bz, !noalias !1234 ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.kz = extractvalue { ptr, ptr } %i.ky, 0      ; 2 uses
  %i.la = extractvalue { ptr, ptr } %i.ky, 1      ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !invariant.load !12, !noalias !1234, !nonnull !12
  %i.ld = invoke noundef zeroext i1 %i.lc(ptr noundef %i.kz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.di unwind label %bb.bz, !noalias !1234

bb.di:                                            ; preds = %bb.dh
  br i1 %i.ld, label %bb.dj, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1232
  %i.le = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1232, !nonnull !12, !align !50, !noundef !12
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1232
  store ptr @26, ptr %i.e, align 8, !noalias !1232
  %i.lg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 57 to ptr), ptr %i.lg, align 8, !noalias !1232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1232
  store ptr %i.t, ptr %i.d, align 8, !noalias !1232
  store ptr %i.e, ptr %i.f, align 8, !noalias !1232
  %i.lh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @5, ptr %i.lh, align 8, !noalias !1232
  %i.li = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.li, align 8, !noalias !1232
  %i.lj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @27, ptr %i.lj, align 8, !noalias !1232
  store i64 1, ptr %i.g, align 8, !noalias !1232
  %.sroa.435.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.435.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %.sroa.536.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 2, ptr %.sroa.536.0..sroa_idx.i.i.i.i, align 8, !noalias !1232
  %i.lk = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.lf, ptr %i.lk, align 8, !noalias !1232
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kt, ptr noundef nonnull %i.kz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.la, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.dk unwind label %bb.bz, !noalias !1233

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1232
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dl:                                            ; preds = %bb.bz
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !1233
  unreachable

bb.dm:                                            ; preds = %bb.cl
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.dk, %bb.di, %bb.df, %bb.de, %bb.dd
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !1244, !noalias !1222 ; 2 uses
  %.sroa.5.0.copyload3.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx54.i.i, align 8, !alias.scope !1244, !noalias !1222
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx4.i.i.i, i64 56, i1 false), !alias.scope !1244, !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i, i64 56, i1 false), !noalias !1239
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.not.i31.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -9223372036854775781
  br i1 %.not.i31.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i, label %bb.eo

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
end_hunk_2
begin_hunk_3_@_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !1564
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !1564
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !1564
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !1564
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !1564
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !1564
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !1564
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCs9rVkZwOUgsI_13deltalake_aws.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @10, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1567
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry19RetryModeParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @162, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry19RetryModeParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry19RetryModeParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry19RetryModeParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @163, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs9rVkZwOUgsI_13deltalake_aws.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @116, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1568
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore15transaction_urlB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1, ptr noalias readonly align 1 captures(none) dead_on_return %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(17) %i.d, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.g = load i32, ptr %i.f, align 4, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load <4 x i32>, ptr %i.h, align 8
  store <4 x i32> %i.i, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load <2 x i16>, ptr %i.e, align 8
  store <2 x i16> %i.j, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load <4 x i32>, ptr %i.c, align 4
  store <4 x i32> %i.k, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.g, ptr %.sroa.14.0..sroa_idx, align 4
  store i64 -9223372036854775711, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore16object_store_urlB8_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore16object_store_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_locationB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.b, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !1569
  %i.c = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1073) 168, i64 noundef 8) #35, !noalias !1569 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0E3newBP_.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0EBR_(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #30
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0E3newBP_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @164, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6engineB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(344) %0, ptr noalias nofree readnone align 1 captures(none) dead_on_return %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1572, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1572, !nonnull !12, !align !50, !noundef !12
  %i.e = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !noalias !1572
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB5_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17root_object_store.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs1_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstoreNtB5_10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17root_object_store.exit: ; preds = %bb.a
  %i.g = tail call { ptr, ptr } @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore10get_engine(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.d)
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6to_uriB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore6to_uri(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore7refreshB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !1575
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1073) 16, i64 noundef 8) #35, !noalias !1575 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore7refresh0E3newBP_.exit, !prof !22

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore7refresh0E3newBP_.exit: ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @165, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef nonnull align 8 ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore8log_pathB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, i64 24) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b, !prof !1002

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore10S3LogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore8root_urlB8_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(344) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @162, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @166, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1578
  store ptr %0, ptr %i.a, align 8, !noalias !1578
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr null, ptr %i.b, align 8, !noalias !1578
  %i.c = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @10, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1581, !noalias !1578, !noundef !12 ; 2 uses
  %i.e = icmp eq ptr %.val.i.i, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noalias !1578, !noundef !12 ; 3 uses
  %.not.i5 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i5, label %bb.h, label %_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs9rVkZwOUgsI_13deltalake_aws.exit, !prof !22

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i5, label %_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %i.f)
  br label %_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #33
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i6 = phi ptr [ %i.f, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1578
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue4load(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2pqxYH9ZEk8_3std3env4__var(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2pqxYH9ZEk8_3std3env7__var_os(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtNtCs2pqxYH9ZEk8_3std3sys3env4unix6setenv(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1
end_hunk_3
