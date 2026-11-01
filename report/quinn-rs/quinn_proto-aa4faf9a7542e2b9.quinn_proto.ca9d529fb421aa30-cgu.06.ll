Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.06?download=true
inline.NumInlined: 731
inline.NumDeleted: 244
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsj_NtCsjx2R6KBUtVL_6rustls5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !28151
  br label %_RNvXsE_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16PeerIncompatibleNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28152

_RNvXsE_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16PeerIncompatibleNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0 = phi i64 [ -1, %bb.k ], [ %.sroa.0.0.copyload.i, %bb.l ], [ %i.am, %bb.j ], !dbg !28147
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28153
  store i64 %.sroa.0.0, ptr %i.ao, align 8, !dbg !28153
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !dbg !28153
  store i8 8, ptr %0, align 8, !dbg !28153
  br label %bb.ca, !dbg !28140

bb.m:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !27885, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !27977)
    #dbg_value(ptr %1, !27978, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !27983)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !27983
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !27983, !range !27984, !noundef !2834
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !28154
  store i8 %i.aq, ptr %i.ar, align 1, !dbg !28154
  store i8 9, ptr %0, align 8, !dbg !28154
  br label %bb.ca, !dbg !28140

bb.n:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !27887, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !27985)
    #dbg_value(ptr %1, !27986, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !27991)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !27991
  %i.at = load i8, ptr %i.as, align 1, !dbg !27991, !range !27992, !noundef !2834
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !27991
  %i.av = load i8, ptr %i.au, align 2, !dbg !27991
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !28155
  store i8 %i.at, ptr %i.aw, align 1, !dbg !28155
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !28155
  store i8 %i.av, ptr %i.ax, align 2, !dbg !28155
  store i8 10, ptr %0, align 8, !dbg !28155
  br label %bb.ca, !dbg !28140

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28156 ; 2 uses
    #dbg_value(ptr %i.ay, !27889, !DIExpression(), !27993)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.sroa.7), !dbg !28157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27994), !dbg !28157
    #dbg_value(ptr %i.ay, !27995, !DIExpression(), !27756)
    #dbg_value(i64 1, !28021, !DIExpression(), !27764)
    #dbg_value(i8 0, !28023, !DIExpression(), !27764)
    #dbg_value(i64 1, !28030, !DIExpression(), !27767)
    #dbg_value(i8 0, !28032, !DIExpression(), !27767)
  %i.az = load i64, ptr %i.ay, align 8, !dbg !28158, !range !28034, !alias.scope !27994, !noundef !2834 ; 3 uses
  %i.ba = icmp ne i64 %i.az, -9223372036854775792, !dbg !28158
  tail call void @llvm.assume(i1 %i.ba), !dbg !28158
  %i.bb = xor i64 %i.az, -9223372036854775808, !dbg !28158
  %i.bc = icmp slt i64 %i.az, 0, !dbg !28158
  %i.bd = select i1 %i.bc, i64 %i.bb, i64 16, !dbg !28158
  switch i64 %i.bd, label %bb.p [
    i64 0, label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 4, label %bb.t
    i64 5, label %bb.u
    i64 6, label %bb.v
    i64 7, label %bb.w
    i64 8, label %bb.x
    i64 9, label %bb.y
    i64 10, label %bb.z
    i64 11, label %bb.aa
    i64 12, label %bb.ab
    i64 13, label %bb.ac
    i64 14, label %bb.ad
    i64 15, label %bb.ae
    i64 16, label %bb.af
    i64 17, label %bb.ag
    i64 18, label %bb.ah
    i64 19, label %bb.ai
    i64 20, label %bb.aj
    i64 21, label %bb.ak
  ], !dbg !28158

bb.p:                                             ; preds = %bb.ah, %bb.o
  unreachable, !dbg !28159

bb.q:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.r:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ay, !28000, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27768)
    #dbg_value(ptr %i.ay, !28037, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27771)
    #dbg_value(ptr %i.ay, !28001, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !27772)
    #dbg_value(ptr %i.ay, !28037, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !27774)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28160
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !dbg !28160, !alias.scope !27994
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28161

bb.s:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.t:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ay, !28002, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27775)
    #dbg_value(ptr %i.ay, !28037, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27777)
    #dbg_value(ptr %i.ay, !28003, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !27778)
    #dbg_value(ptr %i.ay, !28037, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !27780)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28162
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !dbg !28162, !alias.scope !27994
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28161

bb.u:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.v:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.w:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.x:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.y:                                             ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.z:                                             ; preds = %bb.o
    #dbg_value(ptr %i.ay, !28004, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27781)
    #dbg_value(ptr %i.ay, !28037, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27783)
    #dbg_value(ptr %i.ay, !28005, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !27784)
    #dbg_value(ptr %i.ay, !28037, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !27786)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28163
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !dbg !28163, !alias.scope !27994
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28161

bb.aa:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.ab:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.ac:                                            ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28164
    #dbg_value(ptr %i.bk, !28006, !DIExpression(), !27787)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28165
    #dbg_value(ptr %i.bl, !28008, !DIExpression(), !27787)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !28166, !noalias !28042
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk), !dbg !28166, !noalias !28043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !28167, !noalias !28042
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCseEeXhZwqjpo_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
          to label %bb.am unwind label %bb.al, !dbg !28167, !noalias !28043

bb.ad:                                            ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28168
    #dbg_value(ptr %i.bm, !28009, !DIExpression(), !27789)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28169
    #dbg_value(ptr %i.bn, !28010, !DIExpression(), !27789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !28170, !noalias !28042
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm), !dbg !28170, !noalias !28043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !28171, !noalias !28042
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.ap unwind label %bb.ao, !dbg !28171, !noalias !28043

bb.ae:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.af:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ay, !28012, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !27790)
    #dbg_value(ptr %i.ay, !28044, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !27795)
    #dbg_value(ptr %i.ay, !28014, !DIExpression(), !27796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !28172, !noalias !28042
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !28173
  %i.bp = load i8, ptr %i.bo, align 8, !dbg !28173, !range !3657, !alias.scope !27994, !noundef !2834
  %i.bq = trunc nuw i8 %i.bp to i1, !dbg !28173
  br i1 %i.bq, label %bb.aq, label %bb.ar, !dbg !28173

bb.ag:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.ah:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ay, !28016, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27797)
    #dbg_value(ptr %i.ay, !28052, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27801)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28174
    #dbg_value(ptr %i.br, !28018, !DIExpression(), !27802)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !28175, !noalias !28042
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28176 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !28176, !range !6974, !alias.scope !27994, !noundef !2834 ; 2 uses
  %i.bu = xor i64 %i.bt, -9223372036854775808, !dbg !28176
  %i.bv = icmp slt i64 %i.bt, 0, !dbg !28176
  %i.bw = select i1 %i.bv, i64 %i.bu, i64 2, !dbg !28176
  switch i64 %i.bw, label %bb.p [
    i64 0, label %bb.ay
    i64 1, label %bb.az
    i64 2, label %bb.ba
  ], !dbg !28176

bb.ai:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.aj:                                            ; preds = %bb.o
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28158

bb.ak:                                            ; preds = %bb.o
    #dbg_value(ptr %i.ay, !28019, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27803)
    #dbg_value(ptr %i.ay, !28028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27804)
    #dbg_value(ptr %i.ay, !28025, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27805)
    #dbg_value(ptr %i.ay, !28059, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27809)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28177
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !28177, !alias.scope !27994, !nonnull !2834, !noundef !2834 ; 2 uses
    #dbg_value(ptr %i.by, !28022, !DIExpression(), !27812)
    #dbg_value(ptr %i.by, !28031, !DIExpression(), !27767)
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !dbg !28178, !noalias !28042
    #dbg_value(i64 %i.bz, !28026, !DIExpression(), !27813)
  %i.ca = icmp slt i64 %i.bz, 0, !dbg !28179
  br i1 %i.ca, label %bb.bf, label %bb.be, !dbg !28179

bb.al:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #28
          to label %common.resume unwind label %bb.an, !dbg !28180, !noalias !28043

bb.am:                                            ; preds = %bb.ac
  %i.cc = load <2 x i64>, ptr %i.m, align 16, !dbg !28181, !noalias !27994
  %.sroa.36.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !28181
  %i.cd = load i64, ptr %.sroa.36.8..sroa_idx32, align 16, !dbg !28181, !noalias !27994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !28181, !noalias !27994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !28180, !noalias !28042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !28180, !noalias !28042
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28161

bb.an:                                            ; preds = %bb.bc, %bb.aw, %bb.ao, %bb.al
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !dbg !28158, !noalias !28043
  unreachable, !dbg !28158

common.resume:                                    ; preds = %bb.bk, %bb.bn, %bb.al, %bb.ao, %bb.aw, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %i.ct, %bb.bc ], [ %i.cb, %bb.al ], [ %i.cf, %bb.ao ], [ %i.cr, %bb.aw ], [ %i.dj, %bb.bk ], [ %i.dn, %bb.bn ]
  resume { ptr, i32 } %common.resume.op, !dbg !27898

bb.ao:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #28
          to label %common.resume unwind label %bb.an, !dbg !28182, !noalias !28043

bb.ap:                                            ; preds = %bb.ad
  %i.cg = load <2 x i64>, ptr %i.k, align 16, !dbg !28183, !noalias !27994
  %.sroa.36.8..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !28183
  %i.ch = load i64, ptr %.sroa.36.8..sroa_idx31, align 16, !dbg !28183, !noalias !27994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !28183, !noalias !27994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !28182, !noalias !28042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !28182, !noalias !28042
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28161

bb.aq:                                            ; preds = %bb.af
    #dbg_value(ptr %i.ay, !28050, !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value), !27814)
    #dbg_value(ptr %i.ay, !28072, !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value), !27817)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 33, !dbg !28184
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !28185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cj, ptr noundef nonnull readonly align 1 dereferenceable(17) %i.ci, i64 17, i1 false), !dbg !28184, !noalias !28043
  br label %bb.av, !dbg !28173

bb.ar:                                            ; preds = %bb.af
    #dbg_value(ptr %i.ay, !28048, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27818)
    #dbg_value(ptr %i.ay, !28077, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27821)
    #dbg_value(ptr %i.ay, !28083, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27826)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28186 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !28186, !range !5215, !alias.scope !27994, !noundef !2834
  %.not.i14 = icmp eq i64 %i.cl, -1, !dbg !28186
  br i1 %.not.i14, label %bb.at, label %bb.as, !dbg !28186

bb.as:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.ck, !28088, !DIExpression(), !27827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !28187, !noalias !28042
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck), !dbg !28187, !noalias !28043
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.e, align 8, !dbg !28187, !noalias !28042
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !28187
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !28187, !noalias !28042
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !28187
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !28187, !noalias !28042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !28187, !noalias !28042
  br label %bb.au, !dbg !28186

bb.at:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.ay, !28087, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !27828)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !28188
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !28188, !alias.scope !27994, !nonnull !2834, !noundef !2834
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !28188
  %i.cp = load i64, ptr %i.co, align 8, !dbg !28188, !alias.scope !27994, !noundef !2834
  br label %bb.au, !dbg !28186

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.as ], [ %i.cp, %bb.at ], !dbg !28186
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.as ], [ %i.cn, %bb.at ], !dbg !28186
  %.sroa.0.0.i16 = phi i64 [ %.sroa.0.0.copyload.i15, %bb.as ], [ -1, %bb.at ], !dbg !28186
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !28189
  store i64 %.sroa.0.0.i16, ptr %i.cq, align 8, !dbg !28189, !noalias !28042
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !28189
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !28189, !noalias !28042
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !28189
  store i64 %.sroa.6.0.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !dbg !28189, !noalias !28042
  br label %bb.av, !dbg !28173

bb.av:                                            ; preds = %bb.au, %bb.aq
  %storemerge.i = phi i8 [ 0, %bb.au ], [ 1, %bb.aq ], !dbg !28173
  store i8 %storemerge.i, ptr %i.i, align 8, !dbg !28173, !noalias !28042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !28190, !noalias !28042
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay)
          to label %bb.ax unwind label %bb.aw, !dbg !28190, !noalias !28043

bb.aw:                                            ; preds = %bb.av
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCseEeXhZwqjpo_16rustls_pki_types11server_name10ServerNameECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #28
          to label %common.resume unwind label %bb.an, !dbg !28191, !noalias !28043

bb.ax:                                            ; preds = %bb.av
  %.sroa.36.sroa.0.0.copyload41 = load i64, ptr %i.i, align 8, !dbg !28192, !noalias !27994
  %.sroa.36.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !28192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7.0..sroa_idx, i64 24, i1 false), !dbg !28192, !noalias !27994
  %.sroa.018.0.copyload19 = load i64, ptr %i.h, align 8, !dbg !28192, !noalias !27994
  %.sroa.2520.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !28192
  %i.cs = load <2 x i64>, ptr %.sroa.2520.0..sroa_idx21, align 8, !dbg !28192, !noalias !27994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !28191, !noalias !28042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !28191, !noalias !28042
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28161

bb.ay:                                            ; preds = %bb.ah
  store i64 -9223372036854775808, ptr %i.g, align 8, !dbg !28176, !noalias !28042
  br label %bb.bb, !dbg !28176

bb.az:                                            ; preds = %bb.ah
  store i64 -9223372036854775807, ptr %i.g, align 8, !dbg !28176, !noalias !28042
  br label %bb.bb, !dbg !28176

bb.ba:                                            ; preds = %bb.ah
    #dbg_value(ptr %i.bs, !28057, !DIExpression(), !27829)
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs), !dbg !28193, !noalias !28043
  br label %bb.bb, !dbg !28176

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !28194, !noalias !28042
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjx2R6KBUtVL_6rustls5error18ExtendedKeyPurposeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.bd unwind label %bb.bc, !dbg !28194, !noalias !28043

bb.bc:                                            ; preds = %bb.bb
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjx2R6KBUtVL_6rustls5error18ExtendedKeyPurposeECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #28
          to label %common.resume unwind label %bb.an, !dbg !28195, !noalias !28043

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !28196, !noalias !27994
  %i.cu = load <2 x i64>, ptr %i.f, align 16, !dbg !28196, !noalias !27994
  %.sroa.36.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !28196
  %i.cv = load i64, ptr %.sroa.36.8..sroa_idx, align 16, !dbg !28196, !noalias !27994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !28195, !noalias !28042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !28195, !noalias !28042
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28161

bb.be:                                            ; preds = %bb.ak
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !28177
  %3 = load ptr, ptr %2, align 8, !dbg !28197, !alias.scope !27994, !nonnull !2834, !align !4917, !noundef !2834
  %4 = insertelement <2 x ptr> poison, ptr %i.by, i64 0, !dbg !28198
  %5 = insertelement <2 x ptr> %4, ptr %3, i64 1, !dbg !28198
  %i.cw = ptrtoint <2 x ptr> %5 to <2 x i64>, !dbg !28198
  br label %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28161

bb.bf:                                            ; preds = %bb.ak
  tail call void @llvm.trap(), !dbg !28199
  unreachable, !dbg !28199

_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.o, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ae, %bb.ag, %bb.ai, %bb.aj, %bb.am, %bb.ap, %bb.ax, %bb.bd, %bb.be
  %.sroa.36.sroa.0.0 = phi i64 [ undef, %bb.o ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.cd, %bb.am ], [ %i.ch, %bb.ap ], [ undef, %bb.ae ], [ %.sroa.36.sroa.0.0.copyload41, %bb.ax ], [ undef, %bb.ag ], [ %i.cv, %bb.bd ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ undef, %bb.be ], !dbg !28157
  %.sroa.018.0 = phi i64 [ -9223372036854775808, %bb.o ], [ -9223372036854775807, %bb.q ], [ -9223372036854775806, %bb.r ], [ -9223372036854775805, %bb.s ], [ -9223372036854775804, %bb.t ], [ -9223372036854775803, %bb.u ], [ -9223372036854775802, %bb.v ], [ -9223372036854775801, %bb.w ], [ -9223372036854775800, %bb.x ], [ -9223372036854775799, %bb.y ], [ -9223372036854775798, %bb.z ], [ -9223372036854775797, %bb.aa ], [ -9223372036854775796, %bb.ab ], [ -9223372036854775795, %bb.am ], [ -9223372036854775794, %bb.ap ], [ -9223372036854775793, %bb.ae ], [ %.sroa.018.0.copyload19, %bb.ax ], [ -9223372036854775791, %bb.ag ], [ -9223372036854775790, %bb.bd ], [ -9223372036854775789, %bb.ai ], [ -9223372036854775788, %bb.aj ], [ -9223372036854775787, %bb.be ], !dbg !28158
  %i.cx = phi <2 x i64> [ undef, %bb.o ], [ undef, %bb.q ], [ %i.bf, %bb.r ], [ undef, %bb.s ], [ %i.bh, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ %i.bj, %bb.z ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.cc, %bb.am ], [ %i.cg, %bb.ap ], [ undef, %bb.ae ], [ %i.cs, %bb.ax ], [ undef, %bb.ag ], [ %i.cu, %bb.bd ], [ undef, %bb.ai ], [ undef, %bb.aj ], [ %i.cw, %bb.be ], !dbg !28157
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28200
  store i64 %.sroa.018.0, ptr %i.cy, align 8, !dbg !28200
  %.sroa.2520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28200
  store <2 x i64> %i.cx, ptr %.sroa.2520.0..sroa_idx, align 8, !dbg !28200
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28200
  store i64 %.sroa.36.sroa.0.0, ptr %.sroa.36.0..sroa_idx, align 8, !dbg !28200
  %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !28200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, i64 24, i1 false), !dbg !28200
  store i8 11, ptr %0, align 8, !dbg !28200
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.7), !dbg !28201
  br label %bb.ca, !dbg !28140

bb.bg:                                            ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28202
    #dbg_value(ptr %i.cz, !27891, !DIExpression(), !28090)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.sroa.5), !dbg !28203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28091), !dbg !28203
    #dbg_value(ptr %i.cz, !28092, !DIExpression(), !27837)
    #dbg_value(i64 1, !28102, !DIExpression(), !27845)
    #dbg_value(i8 0, !28104, !DIExpression(), !27845)
    #dbg_value(i64 1, !28111, !DIExpression(), !27848)
    #dbg_value(i8 0, !28113, !DIExpression(), !27848)
  %i.da = load i64, ptr %i.cz, align 8, !dbg !28204, !range !28115, !alias.scope !28091, !noundef !2834 ; 2 uses
  switch i64 %i.da, label %default.unreachable42 [
    i64 0, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 1, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 2, label %bb.bh
    i64 3, label %bb.bi
    i64 4, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 5, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 6, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 7, label %bb.bj
    i64 8, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 9, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 10, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 11, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 12, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 13, label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ], !dbg !28204

bb.bh:                                            ; preds = %bb.bg
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28205
    #dbg_value(ptr %i.db, !28096, !DIExpression(), !27849)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28206
    #dbg_value(ptr %i.dc, !28097, !DIExpression(), !27849)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !28207, !noalias !28116
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db), !dbg !28207, !noalias !28117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !28208, !noalias !28116
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCseEeXhZwqjpo_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc)
          to label %bb.bl unwind label %bb.bk, !dbg !28208, !noalias !28117

bb.bi:                                            ; preds = %bb.bg
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28209
    #dbg_value(ptr %i.dd, !28098, !DIExpression(), !27851)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !28210
    #dbg_value(ptr %i.de, !28099, !DIExpression(), !27851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28211, !noalias !28116
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd), !dbg !28211, !noalias !28117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28212, !noalias !28116
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de)
          to label %bb.bo unwind label %bb.bn, !dbg !28212, !noalias !28117

bb.bj:                                            ; preds = %bb.bg
    #dbg_value(ptr %i.cz, !28100, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27852)
    #dbg_value(ptr %i.cz, !28109, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27853)
    #dbg_value(ptr %i.cz, !28106, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27854)
    #dbg_value(ptr %i.cz, !28118, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27857)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28213
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !28213, !alias.scope !28091, !nonnull !2834, !noundef !2834 ; 2 uses
    #dbg_value(ptr %i.dg, !28103, !DIExpression(), !27860)
    #dbg_value(ptr %i.dg, !28112, !DIExpression(), !27848)
  %i.dh = atomicrmw add ptr %i.dg, i64 1 monotonic, align 8, !dbg !28214, !noalias !28116
    #dbg_value(i64 %i.dh, !28107, !DIExpression(), !27861)
  %i.di = icmp slt i64 %i.dh, 0, !dbg !28215
  br i1 %i.di, label %bb.bq, label %bb.bp, !dbg !28215

bb.bk:                                            ; preds = %bb.bh
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.bm, !dbg !28216, !noalias !28117

bb.bl:                                            ; preds = %bb.bh
  %i.dk = load <2 x ptr>, ptr %i.d, align 16, !dbg !28217, !noalias !28091
  %.sroa.21.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !28217
  %i.dl = load i64, ptr %.sroa.21.8..sroa_idx39, align 16, !dbg !28217, !noalias !28091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !28217, !noalias !28091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28216, !noalias !28116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !28216, !noalias !28116
  br label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28218

bb.bm:                                            ; preds = %bb.bn, %bb.bk
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !dbg !28204, !noalias !28117
  unreachable, !dbg !28204

bb.bn:                                            ; preds = %bb.bi
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %common.resume unwind label %bb.bm, !dbg !28219, !noalias !28117

bb.bo:                                            ; preds = %bb.bi
  %i.do = load <2 x ptr>, ptr %i.b, align 16, !dbg !28220, !noalias !28091
  %.sroa.21.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !28220
  %i.dp = load i64, ptr %.sroa.21.8..sroa_idx, align 16, !dbg !28220, !noalias !28091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !28220, !noalias !28091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28219, !noalias !28116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28219, !noalias !28116
  br label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28218

bb.bp:                                            ; preds = %bb.bj
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !28213
  %7 = load ptr, ptr %6, align 8, !dbg !28221, !alias.scope !28091, !nonnull !2834, !align !4917, !noundef !2834
  %8 = insertelement <2 x ptr> poison, ptr %i.dg, i64 0, !dbg !28203
  %9 = insertelement <2 x ptr> %8, ptr %7, i64 1, !dbg !28203
  br label %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, !dbg !28218

bb.bq:                                            ; preds = %bb.bj
  tail call void @llvm.trap(), !dbg !28222
  unreachable, !dbg !28222

_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bl, %bb.bo, %bb.bp
  %.sroa.21.sroa.0.0 = phi i64 [ %i.dl, %bb.bl ], [ %i.dp, %bb.bo ], [ undef, %bb.bp ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], !dbg !28203
  %i.dq = phi <2 x ptr> [ %i.dk, %bb.bl ], [ %i.do, %bb.bo ], [ %9, %bb.bp ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], !dbg !28203
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28223
  store i64 %i.da, ptr %i.dr, align 8, !dbg !28223
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28223
  store <2 x ptr> %i.dq, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !28223
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28223
  store i64 %.sroa.21.sroa.0.0, ptr %.sroa.21.0..sroa_idx, align 8, !dbg !28223
  %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !28223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, i64 24, i1 false), !dbg !28223
  store i8 12, ptr %0, align 8, !dbg !28223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.5), !dbg !28224
  br label %bb.ca, !dbg !28140

bb.br:                                            ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28225
    #dbg_value(ptr %i.ds, !27892, !DIExpression(), !28120)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28226
  tail call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds), !dbg !28227
  store i8 13, ptr %0, align 8, !dbg !28226
  br label %bb.ca, !dbg !28140

bb.bs:                                            ; preds = %bb.a
  store i8 14, ptr %0, align 8, !dbg !28136
  br label %bb.ca, !dbg !28136

bb.bt:                                            ; preds = %bb.a
  store i8 15, ptr %0, align 8, !dbg !28136
  br label %bb.ca, !dbg !28136

bb.bu:                                            ; preds = %bb.a
  store i8 16, ptr %0, align 8, !dbg !28136
  br label %bb.ca, !dbg !28136

bb.bv:                                            ; preds = %bb.a
  store i8 17, ptr %0, align 8, !dbg !28136
  br label %bb.ca, !dbg !28136

bb.bw:                                            ; preds = %bb.a
  store i8 18, ptr %0, align 8, !dbg !28136
  br label %bb.ca, !dbg !28136

bb.bx:                                            ; preds = %bb.a
  store i8 19, ptr %0, align 8, !dbg !28136
  br label %bb.ca, !dbg !28136

bb.by:                                            ; preds = %bb.a
    #dbg_value(ptr %1, !27894, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !28121)
    #dbg_value(ptr %1, !28122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !28127)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !28127
  %i.dv = load i8, ptr %i.du, align 1, !dbg !28127, !range !3657, !noundef !2834
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !28228
  store i8 %i.dv, ptr %i.dw, align 1, !dbg !28228
  store i8 20, ptr %0, align 8, !dbg !28228
  br label %bb.ca, !dbg !28140

bb.bz:                                            ; preds = %bb.a
    #dbg_value(ptr %1, !27896, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27904)
    #dbg_value(ptr %1, !27911, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !27905)
    #dbg_value(ptr %1, !27917, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28128)
    #dbg_value(ptr %1, !28129, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !28132)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28229
  %i.dy = load ptr, ptr %i.dx, align 8, !dbg !28229, !nonnull !2834, !noundef !2834 ; 2 uses
    #dbg_value(ptr %i.dy, !27901, !DIExpression(), !28134)
    #dbg_value(ptr %i.dy, !27921, !DIExpression(), !27925)
  %i.dz = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !dbg !28230
    #dbg_value(i64 %i.dz, !27918, !DIExpression(), !28135)
  %i.ea = icmp slt i64 %i.dz, 0, !dbg !28231
  br i1 %i.ea, label %bb.cc, label %bb.cb, !dbg !28231

bb.ca:                                            ; preds = %bb.cb, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %_RNvXsN_NtCsjx2R6KBUtVL_6rustls5errorNtB5_23CertRevocationListErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %_RNvXsG_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16CertificateErrorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.n, %bb.m, %_RNvXsE_NtCsjx2R6KBUtVL_6rustls5errorNtB5_16PeerIncompatibleNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !28232

bb.cb:                                            ; preds = %bb.bz
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28229
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !28233, !nonnull !2834, !align !4917, !noundef !2834
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28234
  store ptr %i.dy, ptr %i.ed, align 8, !dbg !28234
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28234
  store ptr %i.ec, ptr %i.ee, align 8, !dbg !28234
  store i8 21, ptr %0, align 8, !dbg !28234
  br label %bb.ca, !dbg !28140

bb.cc:                                            ; preds = %bb.bz
  tail call void @llvm.trap(), !dbg !28235
  unreachable, !dbg !28235
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtNtB7_3ops5range5RangeyENtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28236 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28251)
    #dbg_value(ptr %0, !28252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28266)
    #dbg_value(ptr %0, !28267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28274)
    #dbg_value(i64 %1, !28248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28251)
    #dbg_value(i64 %1, !28252, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28266)
    #dbg_value(i64 %1, !28267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28274)
    #dbg_value(ptr %2, !28249, !DIExpression(), !28251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28285
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28286
    #dbg_value(i64 %1, !28269, !DIExpression(), !28275)
    #dbg_value(i64 %1, !28276, !DIExpression(), !28283)
    #dbg_value(ptr %0, !28270, !DIExpression(), !28284)
    #dbg_value(ptr %0, !28280, !DIExpression(), !28283)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !28287
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtNtBa_3ops5range5RangeyEINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28288
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28290
  ret i1 %i.d, !dbg !28291
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16EchConfigPayloadNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28293 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28312)
    #dbg_value(ptr %0, !28313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28327)
    #dbg_value(ptr %0, !28328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28335)
    #dbg_value(i64 %1, !28309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28312)
    #dbg_value(i64 %1, !28313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28327)
    #dbg_value(i64 %1, !28328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28335)
    #dbg_value(ptr %2, !28310, !DIExpression(), !28312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28346
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28347
    #dbg_value(i64 %1, !28330, !DIExpression(), !28336)
    #dbg_value(i64 %1, !28337, !DIExpression(), !28344)
    #dbg_value(ptr %0, !28331, !DIExpression(), !28345)
    #dbg_value(ptr %0, !28341, !DIExpression(), !28344)
  %i.b = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %1, !dbg !28348
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16EchConfigPayloadINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28349
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28351
  ret i1 %i.d, !dbg !28352
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake18EchConfigExtensionNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28354 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28373)
    #dbg_value(ptr %0, !28374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28388)
    #dbg_value(ptr %0, !28389, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28396)
    #dbg_value(i64 %1, !28370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28373)
    #dbg_value(i64 %1, !28374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28388)
    #dbg_value(i64 %1, !28389, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28396)
    #dbg_value(ptr %2, !28371, !DIExpression(), !28373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28407
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28408
    #dbg_value(i64 %1, !28391, !DIExpression(), !28397)
    #dbg_value(i64 %1, !28398, !DIExpression(), !28405)
    #dbg_value(ptr %0, !28392, !DIExpression(), !28406)
    #dbg_value(ptr %0, !28402, !DIExpression(), !28405)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1, !dbg !28409
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake18EchConfigExtensionINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28410
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28412
  ret i1 %i.d, !dbg !28413
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28415 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28434)
    #dbg_value(ptr %0, !28435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28449)
    #dbg_value(ptr %0, !28450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28457)
    #dbg_value(i64 %1, !28431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28434)
    #dbg_value(i64 %1, !28435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28449)
    #dbg_value(i64 %1, !28450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28457)
    #dbg_value(ptr %2, !28432, !DIExpression(), !28434)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28468
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28469
    #dbg_value(i64 %1, !28452, !DIExpression(), !28458)
    #dbg_value(i64 %1, !28459, !DIExpression(), !28466)
    #dbg_value(ptr %0, !28453, !DIExpression(), !28467)
    #dbg_value(ptr %0, !28463, !DIExpression(), !28466)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !28470
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteINtNtNtBa_5slice4iter4IterB14_EECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !28471
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !28472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28473
  ret i1 %i.d, !dbg !28474
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 !dbg !28475 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !28484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28487)
    #dbg_value(ptr %0, !28488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28493)
    #dbg_value(ptr %0, !28494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28501)
    #dbg_value(i64 %1, !28484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28487)
    #dbg_value(i64 %1, !28488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28493)
    #dbg_value(i64 %1, !28494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28501)
    #dbg_value(ptr %2, !28485, !DIExpression(), !28487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28509
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !28510
    #dbg_value(i64 %1, !28496, !DIExpression(), !28502)
    #dbg_value(i64 %1, !28503, !DIExpression(), !28507)
    #dbg_value(ptr %0, !28497, !DIExpression(), !28508)
    #dbg_value(ptr %0, !28504, !DIExpression(), !28507)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !28511
end_hunk_0
