Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.00?download=true
inline.NumInlined: 2699
inline.NumDeleted: 496
begin_hunk_0_@_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderRShEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtB2o_10PackHeaderNtB1n_11Deserialize11deserialize9___VisitorEB2s_:bb.a
  store i8 %i.kn, ptr %i.ko, align 8, !alias.scope !9011
  store <2 x i64> %i.kp, ptr %.sroa.541.0..sroa_idx.i, align 8, !alias.scope !9011
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.19.16.copyload.i, ptr %.sroa.743.0..sroa_idx.i, align 8, !alias.scope !9011
  br label %_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit

bb.ch:                                            ; preds = %bb.cf
  %i.kq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !9012, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9012
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9016
  %.not.i.i60.i = icmp eq i32 %.sroa.9201.0, 1
  br i1 %.not.i.i60.i, label %.thread1127, label %bb.ci

.thread1127:                                      ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9016
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  br label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  call void @_RINvXsh_NtNtCs6LlcditsbhK_5serde2de5implsINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameENtB8_11Deserialize11deserializeQINtNtCs974quTetXso_9rmp_serde6decode12DeserializerINtB2y_10ReadReaderRShEEEB1g_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !9017
  %i.ks = load i8, ptr %i.q, align 8, !range !13, !noalias !9018, !noundef !7 ; 2 uses
  %.not13.i.i.i = icmp eq i8 %i.ks, -1
  br i1 %.not13.i.i.i, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.ce
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RNvYNtNtCs974quTetXso_9rmp_serde6decode5ErrorNtNtCs6LlcditsbhK_5serde2de5Error14invalid_lengthCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.kt, i64 noundef 0, ptr noundef nonnull @27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17), !noalias !9014
  br label %_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit

bb.ck:                                            ; preds = %bb.ci
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.455.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !9014
  %.sroa.870.1..sroa.410.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.870.1.copyload.i = load i64, ptr %.sroa.870.1..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !9019
  %.sroa.12.1..sroa.410.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.1..sroa.410.0..sroa_idx.i.i.sroa_idx.i, i64 16, i1 false), !noalias !9019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, i64 16, i1 false), !noalias !9020
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %.sroa.657.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.657.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.sroa.7.i, i64 16, i1 false), !noalias !9014
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ks, ptr %i.ku, align 8, !alias.scope !9011
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.870.1.copyload.i, ptr %.sroa.556.0..sroa_idx.i, align 8, !alias.scope !9011
  br label %_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit

bb.cl:                                            ; preds = %bb.ci
  %i.kv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.870.8.copyload.i = load i64, ptr %i.kv, align 8, !noalias !9019 ; 2 uses
  %.sroa.12.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.8..sroa_idx.i, i64 16, i1 false), !noalias !9019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, i64 16, i1 false), !noalias !9020
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %.not59.i = icmp eq i64 %.sroa.870.8.copyload.i, -1
  br i1 %.not59.i, label %bb.cn, label %bb.cm, !prof !17

bb.cm:                                            ; preds = %bb.cl
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.sroa.7.i, i64 16, i1 false), !noalias !9014
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.870.8.copyload.i, ptr %i.kw, align 8, !alias.scope !9011
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.kr, ptr %.sroa.528.0..sroa_idx.i, align 8, !alias.scope !9011
  br label %_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit

bb.cn:                                            ; preds = %.thread1127, %bb.cl
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RNvYNtNtCs974quTetXso_9rmp_serde6decode5ErrorNtNtCs6LlcditsbhK_5serde2de5Error14invalid_lengthCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.kx, i64 noundef 1, ptr noundef nonnull @27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  br label %_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit

_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit: ; preds = %bb.ck, %bb.cn, %bb.cg, %bb.cj, %bb.cm
  %.sink = phi i64 [ 1, %bb.cg ], [ 0, %bb.cm ], [ 1, %bb.cj ], [ 1, %bb.cn ], [ 1, %bb.ck ]
  store i64 %.sink, ptr %0, align 8, !alias.scope !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.sroa.7.i)
  %i.ky = load i64, ptr %i.jy, align 8, !noundef !7
  %i.kz = add i64 %i.ky, 1
  store i64 %i.kz, ptr %i.jy, align 8
  br label %bb.x

bb.co:                                            ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9021)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9022
  store i32 0, ptr %i.p, align 4, !noalias !9022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9023)
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9024)
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.lc = load i64, ptr %i.lb, align 8, !alias.scope !9025, !noundef !7 ; 3 uses
  %i.ld = icmp ult i64 %i.lc, 4
  %i.le = load ptr, ptr %i.la, align 8, !alias.scope !9025, !nonnull !7, !noundef !7 ; 3 uses
  br i1 %i.ld, label %bb.cv, label %bb.cw

bb.cp:                                            ; preds = %.thread1035, %bb.h
  %.sroa.8810.0.ph1038 = phi i8 [ %i.bc, %.thread1035 ], [ %.sroa.8810.0.ph, %bb.h ]
  %i.lf = zext i8 %.sroa.8810.0.ph1038 to i32
  br label %bb.cr

bb.cq:                                            ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9027
  store i16 0, ptr %i.o, align 2, !noalias !9027
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9028)
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9029)
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.li = load i64, ptr %i.lh, align 8, !alias.scope !9030, !noundef !7 ; 3 uses
  %i.lj = icmp ult i64 %i.li, 2
  %i.lk = load ptr, ptr %i.lg, align 8, !alias.scope !9030, !nonnull !7, !noundef !7 ; 3 uses
  br i1 %i.lj, label %bb.cs, label %bb.ct

bb.cr:                                            ; preds = %bb.cw, %bb.ct, %bb.cp
  %.sroa.9248.0 = phi i32 [ %i.ly, %bb.cw ], [ %i.lf, %bb.cp ], [ %i.lt, %bb.ct ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.lm = load i64, ptr %i.ll, align 8, !noundef !7
  %i.ln = add i64 %i.lm, -1                       ; 2 uses
  store i64 %i.ln, ptr %i.ll, align 8
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %bb.cx, label %bb.cy

bb.cs:                                            ; preds = %bb.cq
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9027
  store ptr %i.lp, ptr %i.lg, align 8, !alias.scope !9030
  store i64 0, ptr %i.lh, align 8, !alias.scope !9030
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %i.lr = add nsw i64 %i.li, -2
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.o, i64 noundef range(i64 0, -9223372036854775808) 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lk, i64 noundef range(i64 0, -9223372036854775808) 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !9031
  %.val.i800 = load i16, ptr %i.o, align 2, !noalias !9027
  %i.ls = call noundef i16 @llvm.bswap.i16(i16 %.val.i800)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9027
  store ptr %i.lq, ptr %i.lg, align 8, !alias.scope !9030
  store i64 %i.lr, ptr %i.lh, align 8, !alias.scope !9030
  %i.lt = zext i16 %i.ls to i32
  br label %bb.cr

bb.cu:                                            ; preds = %bb.cv, %bb.cs
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.lu, align 8
  %.sroa.7599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @32, ptr %.sroa.7599.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.x

bb.cv:                                            ; preds = %bb.co
  %i.lv = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9022
  store ptr %i.lv, ptr %i.la, align 8, !alias.scope !9025
  store i64 0, ptr %i.lb, align 8, !alias.scope !9025
  br label %bb.cu

bb.cw:                                            ; preds = %bb.co
  %i.lw = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lx = add nsw i64 %i.lc, -4
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.p, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.le, i64 noundef range(i64 0, -9223372036854775808) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !9032
  %.val.i795 = load i32, ptr %i.p, align 4, !noalias !9022
  %i.ly = call noundef i32 @llvm.bswap.i32(i32 %.val.i795)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9022
  store ptr %i.lw, ptr %i.la, align 8, !alias.scope !9025
  store i64 %i.lx, ptr %i.lb, align 8, !alias.scope !9025
  br label %bb.cr

bb.cx:                                            ; preds = %bb.cr
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.lz, align 8
  store i64 1, ptr %0, align 8
  br label %bb.x

bb.cy:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !9033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9034
  store i64 -1, ptr %i.n, align 8, !noalias !9034
  %.not.i.i218.i = icmp eq i32 %.sroa.9248.0, 0
  br i1 %.not.i.i218.i, label %.loopexit169.i.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cy
  %i.ma = zext i32 %.sroa.9248.0 to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6143.8..sroa_idx144.i = getelementptr inbounds nuw i8, ptr %.sroa.6143.i, i64 7 ; 2 uses
  %.sroa.629.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.629.i, i64 7 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.dl, %.lr.ph.i
  %.sroa.011.0221.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.dl ] ; 4 uses
  %.sroa.413.0220.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.413.1.i, %bb.dl ] ; 3 uses
  %.sroa.5131.0219.i = phi i64 [ %i.ma, %.lr.ph.i ], [ %i.me, %bb.dl ]
  %i.me = add nsw i64 %.sroa.5131.0219.i, -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9035
  invoke void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderRShEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtB2o_10PackHeaderNtB1n_11Deserialize11deserialize14___FieldVisitorEB2s_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !9033

.noexc.i:                                         ; preds = %bb.cz
  %i.mf = load i8, ptr %i.h, align 8, !range !13, !noalias !9035, !noundef !7 ; 2 uses
  %.not15.i.i.i = icmp eq i8 %i.mf, -1
  %i.mg = load i8, ptr %i.mb, align 1, !noalias !9035 ; 2 uses
  br i1 %.not15.i.i.i, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %.loopexit.split-lp.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.mh = load i64, ptr %i.n, align 8, !range !6, !noalias !9034, !noundef !7
  %.not116.i = icmp eq i64 %i.mh, -1
  br i1 %.not116.i, label %common.resume.i, label %bb.el

.loopexit.split-lp.i:                             ; preds = %bb.dn, %bb.dh, %bb.dg, %bb.cz, %bb.ec, %.loopexit169.i.thread, %bb.do, %bb.di
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.db:                                            ; preds = %.noexc.i
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.567.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.511.0..sroa_idx.i.i.i, i64 30, i1 false), !noalias !9036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9035
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.mf, ptr %i.mi, align 8, !alias.scope !9033
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.mg, ptr %.sroa.466.0..sroa_idx.i, align 1, !alias.scope !9033
  store i64 1, ptr %0, align 8, !alias.scope !9033
  br label %bb.eh

bb.dc:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9035
  switch i8 %i.mg, label %bb.dd [
    i8 -1, label %.loopexit169.i
    i8 0, label %bb.de
    i8 1, label %bb.df
    i8 2, label %bb.dg
  ]

.loopexit169.i:                                   ; preds = %bb.dl, %bb.dc
  %.sroa.413.0196.i = phi i64 [ %.sroa.413.0220.i, %bb.dc ], [ %.sroa.413.1.i, %bb.dl ]
  %.sroa.011.0184.i = phi i64 [ %.sroa.011.0221.i, %bb.dc ], [ %.sroa.011.1.i, %bb.dl ]
  %i.mj = trunc nuw i64 %.sroa.011.0184.i to i1
  br i1 %i.mj, label %bb.eb, label %.loopexit169.i.thread

bb.dd:                                            ; preds = %bb.dc
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.mk = icmp eq i64 %.sroa.011.0221.i, 1
  br i1 %i.mk, label %bb.di, label %bb.dh, !prof !11

bb.df:                                            ; preds = %bb.dc
  %i.ml = load i64, ptr %i.n, align 8, !range !6, !noalias !9034, !noundef !7
  %.not112.i = icmp eq i64 %i.ml, -1
  br i1 %.not112.i, label %bb.dn, label %bb.do, !prof !16

bb.dg:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9037
  invoke void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderRShEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNtB1n_11ignored_any10IgnoredAnyECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %.noexc121.i unwind label %.loopexit.split-lp.i, !noalias !9033

.noexc121.i:                                      ; preds = %bb.dg
  %i.mm = load i8, ptr %i.g, align 8, !range !13, !noalias !9037, !noundef !7 ; 2 uses
  %.not.i.i120.i = icmp eq i8 %i.mm, -1
  br i1 %.not.i.i120.i, label %bb.dx, label %bb.dw

bb.dh:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9038
  invoke void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderRShEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXs19_NtB1n_5implsyNtB1n_11Deserialize11deserialize16PrimitiveVisitorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %.noexc123.i unwind label %.loopexit.split-lp.i, !noalias !9033

.noexc123.i:                                      ; preds = %bb.dh
  %i.mn = load i8, ptr %i.f, align 8, !range !13, !noalias !9038, !noundef !7 ; 2 uses
  %.not.i.i122.i = icmp eq i8 %i.mn, -1
  br i1 %.not.i.i122.i, label %bb.dk, label %bb.dj

bb.di:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9034
  store ptr @10, ptr %i.e, align 8, !noalias !9039
  %i.mo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 5, ptr %i.mo, align 8, !noalias !9039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9039
  store ptr %i.e, ptr %i.d, align 8, !noalias !9039
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCskuiImRAV2ip_9elfshaker, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !9039
  invoke fastcc void @_RINvXs_NtCs974quTetXso_9rmp_serde6decodeNtB5_5ErrorNtNtCs6LlcditsbhK_5serde2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.m, ptr noundef nonnull @51, ptr noundef nonnull %i.d)
          to label %bb.dm unwind label %.loopexit.split-lp.i, !noalias !9033

bb.dj:                                            ; preds = %.noexc123.i
  %.sroa.414.0..sroa_idx.i.i.i806 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.477.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx.i.i.i806, i64 7, i1 false), !noalias !9036
  %.sroa.515.0.copyload.i.i.i807 = load i64, ptr %i.md, align 8, !noalias !9038
  %.sroa.616.0..sroa_idx.i.i.i808 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.679.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.0..sroa_idx.i.i.i808, i64 16, i1 false), !noalias !9036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9038
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.mn, ptr %i.mp, align 8, !alias.scope !9033
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.515.0.copyload.i.i.i807, ptr %.sroa.578.0..sroa_idx.i, align 8, !alias.scope !9033
  store i64 1, ptr %0, align 8, !alias.scope !9033
  br label %bb.eh

bb.dk:                                            ; preds = %.noexc123.i
  %i.mq = load i64, ptr %i.md, align 8, !noalias !9038, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9038
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEEB1A_.exit.i, %bb.dk
  %.sroa.413.1.i = phi i64 [ %i.mq, %bb.dk ], [ %.sroa.413.0220.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEEB1A_.exit.i ], [ %.sroa.413.0220.i, %bb.dx ] ; 2 uses
  %.sroa.011.1.i = phi i64 [ 1, %bb.dk ], [ %.sroa.011.0221.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEEB1A_.exit.i ], [ %.sroa.011.0221.i, %bb.dx ] ; 2 uses
  %.not.i.i.i805 = icmp eq i64 %i.me, 0
  br i1 %.not.i.i.i805, label %.loopexit169.i, label %bb.cz

bb.dm:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9034
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !9036
  store i64 1, ptr %0, align 8, !alias.scope !9033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9034
  br label %bb.eh

bb.dn:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6143.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9040
  invoke void @_RINvXsh_NtNtCs6LlcditsbhK_5serde2de5implsINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameENtB8_11Deserialize11deserializeQINtNtCs974quTetXso_9rmp_serde6decode12DeserializerINtB2y_10ReadReaderRShEEEB1g_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc126.i unwind label %.loopexit.split-lp.i, !noalias !9033

.noexc126.i:                                      ; preds = %bb.dn
  %i.ms = load i8, ptr %i.c, align 8, !range !13, !noalias !9041, !noundef !7 ; 2 uses
  %.not.i.i125.i = icmp eq i8 %i.ms, -1
  br i1 %.not.i.i125.i, label %bb.dq, label %bb.dp

bb.do:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9034
  store ptr @11, ptr %i.b, align 8, !noalias !9042
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 6, ptr %i.mt, align 8, !noalias !9042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9042
  store ptr %i.b, ptr %i.a, align 8, !noalias !9042
  %.sroa.42.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCskuiImRAV2ip_9elfshaker, ptr %.sroa.42.0..sroa_idx.i127.i, align 8, !noalias !9042
  invoke fastcc void @_RINvXs_NtCs974quTetXso_9rmp_serde6decodeNtB5_5ErrorNtNtCs6LlcditsbhK_5serde2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.l, ptr noundef nonnull @51, ptr noundef nonnull %i.a)
          to label %bb.dv unwind label %.loopexit.split-lp.i, !noalias !9033

bb.dp:                                            ; preds = %.noexc126.i
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6143.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48.0..sroa_idx.i.i.i, i64 31, i1 false), !noalias !9034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.629.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6143.i, i64 31, i1 false), !noalias !9034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6143.i)
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.485.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.629.i, i64 31, i1 false), !noalias !9036
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ms, ptr %i.mu, align 8, !alias.scope !9033
  store i64 1, ptr %0, align 8, !alias.scope !9033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629.i)
  br label %bb.eh

bb.dq:                                            ; preds = %.noexc126.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6143.8..sroa_idx144.i, ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i64 24, i1 false), !noalias !9034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.629.8..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6143.8..sroa_idx144.i, i64 24, i1 false), !noalias !9034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6143.i)
  %i.mv = load i64, ptr %i.n, align 8, !range !6, !alias.scope !9043, !noalias !9034, !noundef !7
  %i.mw = icmp eq i64 %i.mv, -1
  br i1 %i.mw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEEB1A_.exit.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEB1e_.exit.i.i unwind label %bb.ds, !noalias !9033

bb.ds:                                            ; preds = %bb.dr
  %i.mx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.dt, !noalias !9033

bb.dt:                                            ; preds = %bb.ds
  %i.my = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12, !noalias !9033
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEB1e_.exit.i.i: ; preds = %bb.dr
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEEB1A_.exit.i unwind label %bb.du, !noalias !9033

bb.du:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEB1e_.exit.i.i
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.du, %bb.ds
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.mz, %bb.du ], [ %i.mx, %bb.ds ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.629.8..sroa_idx.i, i64 24, i1 false), !noalias !9034
  br label %bb.da

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEEB1A_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEB1e_.exit.i.i, %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.629.8..sroa_idx.i, i64 24, i1 false), !noalias !9034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629.i)
  br label %bb.dl

bb.dv:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9034
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.na, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !9036
  store i64 1, ptr %0, align 8, !alias.scope !9033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9034
  br label %bb.eh

bb.dw:                                            ; preds = %.noexc121.i
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4155.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.47.0..sroa_idx.i.i.i, i64 31, i1 false), !noalias !9036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9037
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.mm, ptr %i.nb, align 8, !alias.scope !9033
  store i64 1, ptr %0, align 8, !alias.scope !9033
  br label %bb.eh

bb.dx:                                            ; preds = %.noexc121.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9037
  br label %bb.dl

.loopexit169.i.thread:                            ; preds = %bb.cy, %.loopexit169.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9034
  invoke void @_RINvXNvNtNtCs6LlcditsbhK_5serde9___private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs974quTetXso_9rmp_serde6decode5ErrorENtNtB9_2de12Deserializer15deserialize_anyNtNvXs19_NtB2a_5implsyNtB2a_11Deserialize11deserialize16PrimitiveVisitorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5)
          to label %bb.dy unwind label %.loopexit.split-lp.i, !noalias !9033

bb.dy:                                            ; preds = %.loopexit169.i.thread
  %i.nc = load i8, ptr %i.k, align 8, !range !13, !noalias !9034, !noundef !7 ; 2 uses
  %.not108.i = icmp eq i8 %i.nc, -1
  br i1 %.not108.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.sroa.491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.495.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.491.0..sroa_idx.i, i64 7, i1 false), !noalias !9036
  %.sroa.592.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.592.0.copyload.i = load i64, ptr %.sroa.592.0..sroa_idx.i, align 8, !noalias !9034
  %.sroa.693.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.697.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.697.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.693.0..sroa_idx.i, i64 16, i1 false), !noalias !9036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9034
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.nc, ptr %i.nd, align 8, !alias.scope !9033
  %.sroa.596.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.592.0.copyload.i, ptr %.sroa.596.0..sroa_idx.i, align 8, !alias.scope !9033
  store i64 1, ptr %0, align 8, !alias.scope !9033
  br label %bb.eh

bb.ea:                                            ; preds = %bb.dy
  %i.ne = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.nf = load i64, ptr %i.ne, align 8, !noalias !9034, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9034
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.loopexit169.i
  %.sroa.047.0.i = phi i64 [ %i.nf, %bb.ea ], [ %.sroa.413.0196.i, %.loopexit169.i ]
  %i.ng = load i64, ptr %i.n, align 8, !range !6, !noalias !9034, !noundef !7
  %.not109.i = icmp eq i64 %i.ng, -1
  br i1 %.not109.i, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RINvXNvNtNtCs6LlcditsbhK_5serde9___private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs974quTetXso_9rmp_serde6decode5ErrorENtNtB9_2de12Deserializer15deserialize_anyINtNvXsh_NtB2a_5implsINtNtCs1xwejQucwHj_5alloc3vec3VecpENtB2a_11Deserialize11deserialize10VecVisitorNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEB4v_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6)
          to label %bb.ed unwind label %.loopexit.split-lp.i, !noalias !9033

bb.ed:                                            ; preds = %bb.ec
  %i.nh = load i8, ptr %i.i, align 8, !range !13, !noalias !9034, !noundef !7 ; 2 uses
  %.not110.i = icmp eq i8 %i.nh, -1
  br i1 %.not110.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.sroa.4101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.4103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4103.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4101.0..sroa_idx.i, i64 31, i1 false), !noalias !9036
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.nh, ptr %i.ni, align 8, !alias.scope !9033
  store i64 1, ptr %0, align 8, !alias.scope !9033
  br label %bb.eh

bb.ef:                                            ; preds = %bb.ed
  %i.nj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eb, %bb.ef
  %.sink1266 = phi ptr [ %i.nj, %bb.ef ], [ %i.n, %bb.eb ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sink1266, i64 24, i1 false), !noalias !9034
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nk, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !9036
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.047.0.i, ptr %.sroa.456.0..sroa_idx.i, align 8, !alias.scope !9033
  store i64 0, ptr %0, align 8, !alias.scope !9033
  br label %_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit

bb.eh:                                            ; preds = %bb.db, %bb.dj, %bb.dm, %bb.dp, %bb.dv, %bb.dw, %bb.ee, %bb.dz
  %i.nl = load i64, ptr %i.n, align 8, !range !6, !noalias !9034, !noundef !7
  %.not117.i = icmp eq i64 %i.nl, -1
  br i1 %.not117.i, label %_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEB1e_.exit.i unwind label %bb.ej, !noalias !9033

bb.ej:                                            ; preds = %bb.ei
  %i.nm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume.i unwind label %bb.ek, !noalias !9033

bb.ek:                                            ; preds = %bb.ej
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12, !noalias !9033
  unreachable

common.resume.i:                                  ; preds = %bb.el, %bb.ej, %bb.da
  %common.resume.op.i = phi { ptr, i32 } [ %i.nm, %bb.ej ], [ %.pn.i, %bb.el ], [ %.pn.i, %bb.da ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameEEB1e_.exit.i: ; preds = %bb.ei
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack9PackFrameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !noalias !9033
  br label %_RINvXs0_NvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtBb_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2I_10ReadReaderRShENtNtB2K_6config13DefaultConfigEEBf_.exit

end_hunk_0
