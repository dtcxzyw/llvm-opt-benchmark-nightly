Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive12PageLoadTaskENCNvXsD_B23_NtB23_37StructuralPrimitiveFieldSchedulingJobNtNtB29_7decoder23StructuralSchedulingJob13schedule_next0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB29_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !59509
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i, align 8, !alias.scope !59512, !noalias !59510 ; 4 uses
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !59512, !noalias !59510 ; 2 uses
  %.not.i.i2.i.i.i.i.i.i = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %i.v = select i1 %.not.i.i2.i.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i = sub nuw i64 %.val2.i.i.i.i.i.i.i, %i.v ; 4 uses
  %i.w = sub i64 %.val.i.i.i.i.i.i.i, %.sroa.04.0.i.i.i.i.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i.i.i.i = icmp ult i64 %i.w, %i.j
  br i1 %.not11.i.i.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = sub nuw nsw i64 %i.j, %i.w
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.y = add i64 %.sroa.04.0.i.i.i.i.i.i.i.i, %i.j
  br label %bb.k

bb.i:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !59509 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.aa, label %.thread4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !59509, !nonnull !75, !noundef !75
  %i.ab = shl nuw i64 %.val.i.i.i.i.i.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 4) #63, !noalias !59509
  br label %.thread4.i.i.i.i.i

bb.k:                                             ; preds = %bb.h, %bb.g, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.04.0.i.i.i.i.i.i.i.i, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %.val.i.i.i.i.i.i.i, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.11.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.x, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !59512, !noalias !59510, !nonnull !75, !noundef !75 ; 16 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 4 uses
  %.idx8.i.i.i.i.i.i = shl i64 %.sroa.0.0.i.i.i.i.i.i.i, 2 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx8.i.i.i.i.i.i ; 11 uses
  %.idx.i.i.i.i.i.i = shl i64 %.sroa.5.0.i.i.i.i.i.i.i, 2 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i ; 3 uses
  %.idx10.i.i.i.i.i.i = shl i64 %.sroa.11.0.i.i.i.i.i.i.i, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx10.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59513)
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub nuw nsw i64 %.sroa.5.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 10 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = add nuw nsw i64 %.sroa.11.0.i.i.i.i.i.i.i, %i.aj ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59514)
  %i.am = icmp samesign ugt i64 %i.al, %.sroa.4.0.i.i.i.i.i.i.i
  br i1 %i.am, label %bb.p, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.p
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !76, !alias.scope !59515, !noalias !59509 ; 5 uses
  %.pre7.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !59515, !noalias !59509 ; 5 uses
  %.pre8.i.i.i.i.i.i.i.i = sub i64 %.sroa.4.0.i.i.i.i.i.i.i, %.pre7.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59516)
  %i.an = load i64, ptr %i.q, align 8, !alias.scope !59515, !noalias !59509, !noundef !75 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.an, %.pre8.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.m, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = sub i64 %.sroa.4.0.i.i.i.i.i.i.i, %i.an ; 4 uses
  %i.ap = sub i64 %.pre7.i.i.i.i.i.i.i.i, %i.ao   ; 3 uses
  %i.aq = icmp ule i64 %i.ao, %i.ap
  %i.ar = sub nsw i64 %.pre.i.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  %.not2.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ar, %i.ap
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.aq, i1 true, i1 %.not2.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = sub i64 %.pre.i.i.i.i.i.i.i.i, %i.ao    ; 3 uses
  %i.at = load ptr, ptr %i.s, align 8, !alias.scope !59515, !noalias !59509, !nonnull !75, !noundef !75 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.an
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  %i.aw = shl i64 %i.ao, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull align 4 %i.au, i64 %i.aw, i1 false), !noalias !59517
  store i64 %i.as, ptr %i.q, align 8, !alias.scope !59515, !noalias !59509
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.s, align 8, !alias.scope !59515, !noalias !59509, !nonnull !75, !noundef !75 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.4.0.i.i.i.i.i.i.i
  %i.az = shl i64 %i.ap, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr nonnull align 4 %i.ax, i64 %i.az, i1 false), !noalias !59517
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.al, i64 noundef 4, i64 noundef 4)
          to label %bb.l unwind label %bb.i, !noalias !59509

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %i.ba = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.o ], [ %.pre.i.i.i.i.i.i.i.i, %bb.l ], [ %.pre.i.i.i.i.i.i.i.i, %bb.n ], [ %.sroa.4.0.i.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.bb = phi i64 [ %i.an, %bb.o ], [ %i.an, %bb.l ], [ %i.as, %bb.n ], [ 0, %bb.k ] ; 3 uses
  %i.bc = phi i64 [ %.pre7.i.i.i.i.i.i.i.i, %bb.o ], [ %.pre7.i.i.i.i.i.i.i.i, %bb.l ], [ %.pre7.i.i.i.i.i.i.i.i, %bb.n ], [ 0, %bb.k ] ; 4 uses
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bd, %i.ba
  %i.be = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.ba ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bd, %i.be ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59518)
  %i.bf = sub i64 %i.ba, %.sroa.02.0.i.i.i.i.i.i.i ; 8 uses
  %.not.i.i3.i.i.i.i.i.i = icmp ult i64 %i.bf, %i.al
  br i1 %.not.i.i3.i.i.i.i.i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.s, align 8, !alias.scope !59519, !noalias !59509, !nonnull !75 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %i.bh, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 4 uses
  %i.bk = sub i64 %.idx.i.i.i.i.i.i, %.idx8.i.i.i.i.i.i
  %i.bl = lshr exact i64 %i.bk, 2
  %i.bm = add i64 %i.be, %i.ba
  %i.bn = xor i64 %i.bc, -1
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = sub i64 %i.bo, %i.bb
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bp) ; 3 uses
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check87 = icmp samesign ult i64 %i.bq, 12
  br i1 %min.iters.check87, label %scalar.ph86, label %vector.memcheck88

vector.memcheck88:                                ; preds = %bb.r
  %i.bs = shl i64 %.sroa.02.0.i.i.i.i.i.i.i, 2
  %i.bt = add i64 %i.bs, %i.bi
  %i.bu = add i64 %.idx8.i.i.i.i.i.i, %i.ae
  %i.bv = sub i64 %i.bu, %i.bt
  %diff.check89 = icmp ugt i64 %i.bv, -32
  br i1 %diff.check89, label %scalar.ph86, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck88
  %i.bw = and i64 %i.br, 7                        ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = select i1 %i.bx, i64 8, i64 %i.bw
  %n.vec91 = sub nsw i64 %i.br, %i.by             ; 4 uses
  %i.bz = sub i64 %i.bf, %n.vec91
  %i.ca = shl i64 %n.vec91, 2
  %i.cb = getelementptr i8, ptr %i.af, i64 %i.ca
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.cc = shl i64 %index93, 2
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load94 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !59520, !noalias !59521
  %wide.load95 = load <4 x i32>, ptr %i.cd, align 4, !alias.scope !59520, !noalias !59521
  %i.ce = getelementptr [4 x i8], ptr %i.bj, i64 %index93 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  store <4 x i32> %wide.load94, ptr %i.ce, align 4, !noalias !59522
  store <4 x i32> %wide.load95, ptr %i.cf, align 4, !noalias !59522
  %index.next96 = add nuw i64 %index93, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.cg, label %scalar.ph86, label %vector.body92, !llvm.loop !59406

scalar.ph86:                                      ; preds = %vector.body92, %vector.memcheck88, %bb.r
  %bc.resume.val98 = phi i64 [ 0, %vector.memcheck88 ], [ 0, %bb.r ], [ %n.vec91, %vector.body92 ] ; 2 uses
  %bc.resume.val99 = phi i64 [ %i.bf, %vector.memcheck88 ], [ %i.bf, %bb.r ], [ %i.bz, %vector.body92 ]
  %bc.resume.val100 = phi ptr [ %i.af, %vector.memcheck88 ], [ %i.af, %bb.r ], [ %i.cb, %vector.body92 ]
  br label %bb.s

bb.s:                                             ; preds = %scalar.ph86, %bb.t
  %indvar = phi i64 [ 0, %scalar.ph86 ], [ %indvar.next, %bb.t ] ; 2 uses
  %.sroa.8.1.i.i.i.i.i.i.i.i = phi i64 [ %bc.resume.val98, %scalar.ph86 ], [ %i.do, %bb.t ] ; 6 uses
  %i.ch = phi i64 [ %bc.resume.val99, %scalar.ph86 ], [ %i.dm, %bb.t ] ; 4 uses
  %i.ci = phi ptr [ %bc.resume.val100, %scalar.ph86 ], [ %i.dl, %bb.t ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.ag
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %bb.t

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.s
  %i.cj = and i64 %.sroa.11.0.i.i.i.i.i.i.i, 4611686018427387903
  %i.ck = add i64 %i.be, %i.ba
  %i.cl = xor i64 %i.bc, -1
  %i.cm = add i64 %i.ck, %i.cl
  %i.cn = add i64 %i.bb, %i.bq
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.co) ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check104 = icmp samesign ult i64 %i.cp, 16
  br i1 %min.iters.check104, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader152, label %vector.memcheck101

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader152: ; preds = %vector.body107, %vector.memcheck101, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.9.1.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck101 ], [ %i.ad, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dc, %vector.body107 ]
  %.sroa.8.2.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.8.1.i.i.i.i.i.i.i.i, %vector.memcheck101 ], [ %.sroa.8.1.i.i.i.i.i.i.i.i, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dd, %vector.body107 ]
  %.ph153.a = phi i64 [ %i.ch, %vector.memcheck101 ], [ %i.ch, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.de, %vector.body107 ]
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

vector.memcheck101:                               ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.cr = add i64 %bc.resume.val98, %.sroa.02.0.i.i.i.i.i.i.i
  %i.cs = shl i64 %i.cr, 2
  %i.ct = add i64 %i.cs, %i.bi
  %i.cu = sub i64 %i.ct, %i.ae
  %i.cv = shl i64 %indvar, 2
  %i.cw = add i64 %i.cv, %i.cu
  %i.cx = add i64 %i.cw, -1
  %diff.check102 = icmp ult i64 %i.cx, 31
  br i1 %diff.check102, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader152, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck101
  %i.cy = and i64 %i.cq, 7                        ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = select i1 %i.cz, i64 8, i64 %i.cy
  %n.vec106 = sub nsw i64 %i.cq, %i.da            ; 4 uses
  %i.db = shl i64 %n.vec106, 2
  %i.dc = getelementptr i8, ptr %i.ad, i64 %i.db
  %i.dd = add i64 %.sroa.8.1.i.i.i.i.i.i.i.i, %n.vec106
  %i.de = sub i64 %i.ch, %n.vec106
  %i.df = getelementptr [4 x i8], ptr %i.bj, i64 %.sroa.8.1.i.i.i.i.i.i.i.i
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph105
  %index108 = phi i64 [ 0, %vector.ph105 ], [ %index.next112, %vector.body107 ] ; 3 uses
  %i.dg = shl i64 %index108, 2
  %next.gep109 = getelementptr i8, ptr %i.ad, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load110 = load <4 x i32>, ptr %next.gep109, align 4, !alias.scope !59523, !noalias !59524
  %wide.load111 = load <4 x i32>, ptr %i.dh, align 4, !alias.scope !59523, !noalias !59524
  %i.di = getelementptr [4 x i8], ptr %i.df, i64 %index108 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store <4 x i32> %wide.load110, ptr %i.di, align 4, !noalias !59525
  store <4 x i32> %wide.load111, ptr %i.dj, align 4, !noalias !59525
  %index.next112 = add nuw i64 %index108, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next112, %n.vec106
  br i1 %i.dk, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader152, label %vector.body107, !llvm.loop !59424

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ci, align 4, !alias.scope !59520, !noalias !59521, !noundef !75
  %i.dm = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %i.bj, i64 %.sroa.8.1.i.i.i.i.i.i.i.i
  store i32 %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dn, align 4, !noalias !59522
  %i.do = add nuw nsw i64 %.sroa.8.1.i.i.i.i.i.i.i.i, 1
  %i.dp = icmp eq i64 %i.dm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dp, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.s, !llvm.loop !59425

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader152, %bb.u
  %.sroa.9.1.i.i.i.i.i.i.i = phi ptr [ %i.dr, %bb.u ], [ %.sroa.9.1.i.i.i.i.i.i.i.ph, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader152 ] ; 3 uses
  %.sroa.8.2.i.i.i.i.i.i.i.i = phi i64 [ %i.du, %bb.u ], [ %.sroa.8.2.i.i.i.i.i.i.i.i.ph, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader152 ] ; 3 uses
  %i.dq = phi i64 [ %i.ds, %bb.u ], [ %.ph153.a, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader152 ]
  %.not.not.not.i5.not.not.i.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.9.1.i.i.i.i.i.i.i, %i.ah
  br i1 %.not.not.not.i5.not.not.i.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.val6.i6.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.9.1.i.i.i.i.i.i.i, align 4, !alias.scope !59523, !noalias !59524, !noundef !75
  %i.ds = add nsw i64 %i.dq, -1                   ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.bj, i64 %.sroa.8.2.i.i.i.i.i.i.i.i
  store i32 %.val6.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dt, align 4, !noalias !59525
  %i.du = add nuw nsw i64 %.sroa.8.2.i.i.i.i.i.i.i.i, 1
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !59426

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.t, %bb.q
  %.sroa.062.0.copyload.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.q ], [ %i.dl, %bb.t ] ; 8 uses
  %i.dw = icmp eq ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, %i.ag
  br i1 %i.dw, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.dx = ptrtoint ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.dy = sub nuw i64 %i.ai, %i.dx                ; 2 uses
  %i.dz = lshr i64 %i.dy, 2                       ; 7 uses
  %i.ea = load ptr, ptr %i.s, align 8, !alias.scope !59519, !noalias !59526, !nonnull !75, !noundef !75 ; 7 uses
  %min.iters.check120 = icmp ult i64 %i.dy, 32
  %i.eb = ptrtoaddr ptr %i.ea to i64
  %i.ec = sub i64 %i.dx, %i.eb
  %diff.check122 = icmp ugt i64 %i.ec, -32
  %or.cond = or i1 %min.iters.check120, %diff.check122
  br i1 %or.cond, label %scalar.ph119.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %bb.v
  %n.vec124 = and i64 %i.dz, 4611686018427387896  ; 3 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next129, %vector.body125 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %index126 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load127 = load <4 x i32>, ptr %i.ed, align 4, !alias.scope !59527, !noalias !59528
  %wide.load128 = load <4 x i32>, ptr %i.ee, align 4, !alias.scope !59527, !noalias !59528
  %i.ef = getelementptr [4 x i8], ptr %i.ea, i64 %index126 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  store <4 x i32> %wide.load127, ptr %i.ef, align 4, !noalias !59529
  store <4 x i32> %wide.load128, ptr %i.eg, align 4, !noalias !59529
  %index.next129 = add nuw i64 %index126, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.eh, label %middle.block130, label %vector.body125, !llvm.loop !59445

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %i.dz, %n.vec124
  br i1 %cmp.n131, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %bb.v, %middle.block130
  %.ph151 = phi i64 [ 0, %bb.v ], [ %n.vec124, %middle.block130 ] ; 3 uses
  %xtraiter165 = and i64 %i.dz, 3                 ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %scalar.ph119.prol.loopexit, label %scalar.ph119.prol

scalar.ph119.prol:                                ; preds = %scalar.ph119.preheader, %scalar.ph119.prol
  %i.ei = phi i64 [ %i.el, %scalar.ph119.prol ], [ %.ph151, %scalar.ph119.preheader ] ; 3 uses
  %prol.iter167 = phi i64 [ %prol.iter167.next, %scalar.ph119.prol ], [ 0, %scalar.ph119.preheader ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.ei
  %.val10.i.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.ej, align 4, !alias.scope !59527, !noalias !59528, !noundef !75
  %i.ek = getelementptr [4 x i8], ptr %i.ea, i64 %i.ei
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.ek, align 4, !noalias !59529
  %i.el = add nuw i64 %i.ei, 1                    ; 2 uses
  %prol.iter167.next = add i64 %prol.iter167, 1   ; 2 uses
  %prol.iter167.cmp.not = icmp eq i64 %prol.iter167.next, %xtraiter165
  br i1 %prol.iter167.cmp.not, label %scalar.ph119.prol.loopexit, label %scalar.ph119.prol, !llvm.loop !59446

scalar.ph119.prol.loopexit:                       ; preds = %scalar.ph119.prol, %scalar.ph119.preheader
  %.unr168 = phi i64 [ %.ph151, %scalar.ph119.preheader ], [ %i.el, %scalar.ph119.prol ]
  %i.em = sub nsw i64 %.ph151, %i.dz
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph119

scalar.ph119:                                     ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119
  %i.eo = phi i64 [ %i.fa, %scalar.ph119 ], [ %.unr168, %scalar.ph119.prol.loopexit ] ; 6 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.eo
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ep, align 4, !alias.scope !59527, !noalias !59528, !noundef !75
  %i.eq = getelementptr [4 x i8], ptr %i.ea, i64 %i.eo
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eq, align 4, !noalias !59529
  %i.er = add nuw i64 %i.eo, 1                    ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.er
  %.val10.i.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.es, align 4, !alias.scope !59527, !noalias !59528, !noundef !75
  %i.et = getelementptr [4 x i8], ptr %i.ea, i64 %i.er
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.et, align 4, !noalias !59529
  %i.eu = add nuw i64 %i.eo, 2                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.eu
  %.val10.i.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.ev, align 4, !alias.scope !59527, !noalias !59528, !noundef !75
  %i.ew = getelementptr [4 x i8], ptr %i.ea, i64 %i.eu
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.ew, align 4, !noalias !59529
  %i.ex = add nuw i64 %i.eo, 3                    ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.ex
  %.val10.i.i.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.ey, align 4, !alias.scope !59527, !noalias !59528, !noundef !75
  %i.ez = getelementptr [4 x i8], ptr %i.ea, i64 %i.ex
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.ez, align 4, !noalias !59529
  %i.fa = add nuw i64 %i.eo, 4                    ; 2 uses
  %i.fb = icmp eq i64 %i.fa, %i.dz
  br i1 %i.fb, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph119, !llvm.loop !59447

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i: ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119, %middle.block130
  %i.fc = add i64 %i.dz, %i.bf
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.9.0.i45.i.i.i.i.i.i = phi ptr [ %i.ad, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.ad, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i ], [ %i.dr, %bb.u ] ; 8 uses
  %.sroa.8.5.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.fc, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.u ] ; 2 uses
  %.sroa.9.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.dz, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 5 uses
  %i.fd = icmp eq ptr %.sroa.9.0.i45.i.i.i.i.i.i, %i.ah
  br i1 %i.fd, label %.loopexit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i
  %i.fe = ptrtoint ptr %.sroa.9.0.i45.i.i.i.i.i.i to i64 ; 2 uses
  %i.ff = sub nuw i64 %i.ak, %i.fe                ; 2 uses
  %i.fg = lshr i64 %i.ff, 2                       ; 6 uses
  %i.fh = load ptr, ptr %i.s, align 8, !alias.scope !59519, !noalias !59530, !nonnull !75, !noundef !75 ; 7 uses
  %min.iters.check136 = icmp ult i64 %i.ff, 48
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.memcheck137

vector.memcheck137:                               ; preds = %bb.w
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = shl nuw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, 2
  %i.fk = add i64 %i.fj, %i.fi
  %i.fl = sub i64 %i.fe, %i.fk
  %diff.check138 = icmp ugt i64 %i.fl, -32
  br i1 %diff.check138, label %scalar.ph135.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck137
  %n.vec140 = and i64 %i.fg, 4611686018427387896  ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, %n.vec140
  %i.fn = getelementptr [4 x i8], ptr %i.fh, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next145, %vector.body141 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %index142 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load143 = load <4 x i32>, ptr %i.fo, align 4, !alias.scope !59531, !noalias !59532
  %wide.load144 = load <4 x i32>, ptr %i.fp, align 4, !alias.scope !59531, !noalias !59532
  %i.fq = getelementptr [4 x i8], ptr %i.fn, i64 %index142 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store <4 x i32> %wide.load143, ptr %i.fq, align 4, !noalias !59533
  store <4 x i32> %wide.load144, ptr %i.fr, align 4, !noalias !59533
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.fs, label %middle.block146, label %vector.body141, !llvm.loop !59460

middle.block146:                                  ; preds = %vector.body141
  %cmp.n147 = icmp eq i64 %i.fg, %n.vec140
  br i1 %cmp.n147, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph135.preheader

scalar.ph135.preheader:                           ; preds = %vector.memcheck137, %bb.w, %middle.block146
  %.ph = phi i64 [ %.sroa.9.0.i.i.i.i.i.i.i.i.i, %vector.memcheck137 ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i, %bb.w ], [ %i.fm, %middle.block146 ] ; 2 uses
end_hunk_0
