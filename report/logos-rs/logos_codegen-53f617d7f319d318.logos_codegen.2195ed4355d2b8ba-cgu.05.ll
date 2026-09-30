Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.05?download=true
inline.NumInlined: 76
inline.NumDeleted: 17
begin_hunk_0_@_RNvXs2_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateDataNtNtCskKLDkoKarTP_4core3fmt7Display3fmt:bb.a
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.as = call { ptr, ptr } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments8from_strCs2SM5xCHwwDm_13logos_codegen(ptr nonnull @44, i64 1) #19 ; 2 uses
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %i.au = extractvalue { ptr, ptr } %i.as, 1
  %i.av = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.at, ptr %i.au) #19
  %i.aw = call zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.av) #19
  br i1 %i.aw, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ax = call zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 @43) #19
  br label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.ay = call zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 @53) #19
  br label %bb.g

bb.l:                                             ; preds = %bb.i
  %i.az = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9alternateCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1)
  br i1 %i.az, label %bb.m, label %bb.g

bb.m:                                             ; preds = %bb.l
  %i.ba = call { ptr, ptr } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments8from_strCs2SM5xCHwwDm_13logos_codegen(ptr nonnull @45, i64 3) #19 ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1
  %i.bd = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.bb, ptr %i.bc) #19
  %i.be = call zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.bd) #19
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = call zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 @52) #19
  br label %bb.g

bb.o:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = call { ptr, ptr } @_RNvXsh_NtCsexYYUdYSQU6_5alloc3vecRINtB5_3VecTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBJ_5StateEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBL_(ptr nonnull align 8 %i.bg) ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1
  store ptr %i.bi, ptr %i.l, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBS_5StateEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr nonnull align 8 %i.l) #19 ; 2 uses
  %.not5 = icmp eq ptr %i.bl, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ae
  %i.bp = phi ptr [ %i.bl, %.lr.ph ], [ %i.cq, %bb.ae ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.bq, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  store i64 1610612768, ptr %i.bm, align 8
  store ptr %i.b, ptr %i.a, align 8
  store ptr @61, ptr %i.bn, align 8
  %i.br = invoke zeroext i1 @_RNvXs4_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9ByteClassNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %i.a)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.b) #22
          to label %common.resume unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.br, ptr nonnull @62, i64 55, ptr nonnull align 8 @64)
          to label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB5_8ToString9to_stringBC_.exit unwind label %bb.q

bb.s:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %lpad.phi, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB5_8ToString9to_stringBC_.exit: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.j, align 8
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull sret([16 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.y unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.ae, %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bx, ptr %i.e, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEB13_(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.e) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.by = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKje_Kj1_ECslwMQK6fH7Hb_12aho_corasick(ptr nonnull @46, ptr nonnull align 8 %i.d) #19 ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.by, 0
  %i.ca = extractvalue { ptr, ptr } %i.by, 1
  %i.cb = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.bz, ptr %i.ca) #19
  %i.cc = call zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.cb) #19
  br i1 %i.cc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.cd = call { ptr, ptr } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments8from_strCs2SM5xCHwwDm_13logos_codegen(ptr nonnull @48, i64 1) #19 ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0
  %i.cf = extractvalue { ptr, ptr } %i.cd, 1
  %i.cg = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.ce, ptr %i.cf) #19
  %i.ch = call zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.cg) #19
  br i1 %i.ch, label %bb.w, label %bb.g

bb.v:                                             ; preds = %bb.t
  %i.ci = call zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 @47) #19
  br label %bb.g

bb.w:                                             ; preds = %bb.u
  %i.cj = call zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 @49) #19
  br label %bb.g

.loopexit:                                        ; preds = %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB5_8ToString9to_stringBC_.exit, %bb.y, %bb.z, %bb.aa, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.i) #22
          to label %common.resume unwind label %bb.ag

bb.y:                                             ; preds = %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB5_8ToString9to_stringBC_.exit
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEB13_(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull align 8 %i.k)
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.ck = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKjd_Kj2_ECs2SM5xCHwwDm_13logos_codegen(ptr nonnull @50, ptr nonnull align 8 %i.h)
          to label %bb.aa unwind label %.loopexit ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cl = extractvalue { ptr, ptr } %i.ck, 0
  %i.cm = extractvalue { ptr, ptr } %i.ck, 1
  %i.cn = invoke zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.cl, ptr %i.cm)
          to label %bb.ab unwind label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.co = invoke zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.cn)
          to label %bb.ac unwind label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.co, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cp = invoke zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 @51)
          to label %bb.af unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.i)
  %i.cq = call align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBS_5StateEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBU_(ptr nonnull align 8 %i.l) #19 ; 2 uses
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %._crit_edge, label %bb.p

bb.af:                                            ; preds = %bb.ad
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.i)
  br label %bb.g

bb.ag:                                            ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.not = icmp ne i64 %i.d, %i.e
  %i.f = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %2
  %or.cond.not = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.d, %i.e
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBF_5StateEINtB5_14SlicePartialEqBC_E17equal_same_lengthBH_(ptr %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.06 ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.06 ; 2 uses
  %i.e = tail call zeroext i1 @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec10partial_eqINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehEENtNtBX_3cmp9PartialEq2eqCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.c, ptr align 8 %i.d) #19
  br i1 %i.e, label %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit, label %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit.thread

_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load i64, ptr %i.f, align 8
  %i.i = load i64, ptr %i.g, align 8
  %.not = icmp eq i64 %i.h, %i.i
  br i1 %.not, label %bb.b, label %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit.thread

_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvXs8_NtCskKLDkoKarTP_4core5tupleTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBz_5StateENtNtB7_3cmp9PartialEq2neBB_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs4_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9ByteClassNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = tail call { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehEENtNtBK_5deref5Deref5derefCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #19 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  %i.q = tail call { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB4_3ops5range14RangeInclusivehE4iterCs2SM5xCHwwDm_13logos_codegen(ptr %i.o, i64 %i.p) #19 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  call void @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtNtB9_3ops5range14RangeInclusivehEENtNtNtNtB9_4iter6traits8iterator8Iterator9enumerateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr %i.r, ptr %i.s) #19
  call void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtNtB8_3ops5range14RangeInclusivehEEENtB2_12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.t = call { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range14RangeInclusivehEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.k) #19 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %.not7 = icmp eq ptr %i.u, null
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.w = phi ptr [ %i.u, %.lr.ph ], [ %i.aw, %.backedge ] ; 4 uses
  %.pn = phi { i64, ptr } [ %i.t, %.lr.ph ], [ %i.av, %.backedge ]
  %i.x = extractvalue { i64, ptr } %.pn, 0
  %i.y = call ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_14RangeInclusivehE5startCsaKDqXqZWSq0_14regex_automata(ptr nonnull %i.w) #19
  store ptr %i.y, ptr %i.j, align 8
  %i.z = call ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_14RangeInclusivehE3endCsaKDqXqZWSq0_14regex_automata(ptr nonnull %i.w) #19
  store ptr %i.z, ptr %i.i, align 8
  %i.aa = call zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRhNtB7_9PartialEq2eqCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.i) #19
  %i.ab = call ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_14RangeInclusivehE5startCsaKDqXqZWSq0_14regex_automata(ptr nonnull %i.w) #19
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = call i64 @_RNvNtCskKLDkoKarTP_4core5ascii14escape_default(i8 %i.ac) ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.c

.loopexit.sink.split:                             ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  %.sink = phi ptr [ @58, %bb.g ], [ @60, %bb.d ], [ @56, %bb.c ], [ @59, %bb.h ]
  %i.ae = call zeroext i1 @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %.sink) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %.loopexit.sink.split, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.ae, %.loopexit.sink.split ], [ false, %.backedge ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  store i64 %i.ad, ptr %i.e, align 8
  %i.af = call ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3ops5rangeINtB5_14RangeInclusivehE3endCsaKDqXqZWSq0_14regex_automata(ptr nonnull %i.w) #19
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = call i64 @_RNvNtCskKLDkoKarTP_4core5ascii14escape_default(i8 %i.ag)
  store i64 %i.ah, ptr %i.d, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtB7_5ascii13EscapeDefaultECshx33xqnyVJN_3syn(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 4 %i.e) #19
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtB7_5ascii13EscapeDefaultECshx33xqnyVJN_3syn(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 4 %i.d) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ai = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj7_Kj2_ECs2SM5xCHwwDm_13logos_codegen(ptr nonnull @55, ptr nonnull align 8 %i.c) #19 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1
  %i.al = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.aj, ptr %i.ak) #19
  %i.am = call zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.al) #19
  br i1 %i.am, label %.loopexit.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 %i.ad, ptr %i.h, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtB7_5ascii13EscapeDefaultECshx33xqnyVJN_3syn(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull align 4 %i.h) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.an = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj2_Kj1_ECs8UJyeeIGyGC_12regex_syntax(ptr nonnull @17, ptr nonnull align 8 %i.g) #19 ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.an, 0
  %i.ap = extractvalue { ptr, ptr } %i.an, 1
  %i.aq = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.ao, ptr %i.ap) #19
  %i.ar = call zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.aq) #19
  br i1 %i.ar, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = call i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehEE3lenCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) #19
  %i.at = add i64 %i.as, -1
  %i.au = icmp ult i64 %i.x, %i.at
  br i1 %i.au, label %bb.f, label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.g, %bb.h
  %i.av = call { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range14RangeInclusivehEEENtNtNtB8_6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.k) #19 ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 1      ; 2 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.ax = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9alternateCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1)
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = call { ptr, ptr } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments8from_strCs2SM5xCHwwDm_13logos_codegen(ptr nonnull @57, i64 1) #19 ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  %i.bb = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.az, ptr %i.ba) #19
  %i.bc = call zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.bb) #19
  br i1 %i.bc, label %.loopexit.sink.split, label %.backedge

bb.h:                                             ; preds = %bb.f
  %i.bd = call { ptr, ptr } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments8from_strCs2SM5xCHwwDm_13logos_codegen(ptr nonnull @12, i64 1) #19 ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bd, 0
  %i.bf = extractvalue { ptr, ptr } %i.bd, 1
  %i.bg = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_fmtCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1, ptr %i.be, ptr %i.bf) #19
  %i.bh = call zeroext i1 @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs8UJyeeIGyGC_12regex_syntax(i1 zeroext %i.bg) #19
  br i1 %i.bh, label %.loopexit.sink.split, label %.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5regexINtB5_11FindMatchesINtNtB7_5dense3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_RINvMNtNtCsaKDqXqZWSq0_14regex_automata4util4iterNtB3_8Searcher7advanceNCNvXs4_NtNtB7_3dfa5regexINtB1f_11FindMatchesINtNtB1h_5dense3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0ECs2SM5xCHwwDm_13logos_codegen(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr align 16 %i.b) #19
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_5GraphNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr align 16 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.e = tail call i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataE3lenBI_(ptr nonnull align 8 %i.d) #19
  %i.f = tail call { i64, i64 } @_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNcB1u_0EB1y_(i64 0, i64 %i.e) #19 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  call void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENtNtNtBa_6traits8iterator8Iterator3mapNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvXs7_B1n_NtB1n_5GraphNtNtBc_3fmt7Display3fmt0EB1p_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.g, i64 %i.h, ptr align 16 %0) #19
  call void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB4_INtNtNtBc_3ops5range5RangejENcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0ENCNvXs7_B1r_NtB1r_5GraphNtNtBc_3fmt7Display3fmt0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB3I_6string6StringEEB1t_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a) #19
  %i.i = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.b) #22
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, i64 } %i.i, 0
  %i.l = extractvalue { ptr, i64 } %i.i, 1
  invoke void @_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtB5_6string6String4joinReECs8UJyeeIGyGC_12regex_syntax(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %i.k, i64 %i.l, ptr nonnull @12, i64 1)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.c) #22
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
end_hunk_0
