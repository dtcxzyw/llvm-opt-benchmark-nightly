Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.14?download=true
inline.NumInlined: 221
inline.NumDeleted: 119
begin_hunk_0_@_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_string:bb.a
  %spec.select.i.ph.i = phi i32 [ %i.ai, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit14.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit16.i.i.i ], [ %i.x, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjRvGck33osM_6diesel.exit12.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.av = icmp samesign ult i32 %spec.select.i.ph.i, 32
  %i.aw = add nsw i32 %spec.select.i.ph.i, -127
  %spec.select.i.i.i = icmp ult i32 %i.aw, 33
  %.sroa.0.0.i.i.i = select i1 %i.av, i1 true, i1 %spec.select.i.i.i
  br i1 %.sroa.0.0.i.i.i, label %bb.g, label %bb.b

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.j, ptr noalias noundef align 8 dereferenceable(24) %3, i8 noundef 7, i64 noundef %2)
  %i.ax = load ptr, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %bb.ba, label %bb.az

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !369
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !369
  %i.ay = load i64, ptr %i.f, align 8, !range !3, !noalias !369, !noundef !4
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !5, !noalias !369, !noundef !4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.az, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !369
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bd) #18, !noalias !369
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.bc, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 3 uses
  %i.bf = icmp ule i64 %2, %i.bb
  tail call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !369
  %.not.i2 = icmp eq i64 %2, 0
  br i1 %.not.i2, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.s, %bb.i
  store i64 %i.bb, ptr %i.h, align 8, !noalias !369
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.be, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !369
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %2, ptr %.sroa.627.0..sroa_idx.i, align 8, !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !370
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.t, !noalias !369

.noexc.i:                                         ; preds = %bb.j
  %i.bg = load i64, ptr %i.b, align 8, !range !3, !noalias !370, !noundef !4
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !5, !noalias !370, !noundef !4 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bh, label %bb.k, label %bb.l, !prof !6

bb.k:                                             ; preds = %.noexc.i
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !370
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ar, %bb.k
  %i.bm = phi i64 [ %i.bj, %bb.k ], [ %i.dk, %bb.ar ]
  %i.bn = phi i64 [ %i.bl, %bb.k ], [ %i.dm, %bb.ar ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bn) #18
          to label %.cont.i unwind label %bb.t, !noalias !369

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.l:                                             ; preds = %.noexc.i
  %i.bo = load ptr, ptr %i.bk, align 8, !noalias !370, !nonnull !4, !noundef !4
  %i.bp = icmp samesign ugt i64 %i.bj, 127
  tail call void @llvm.assume(i1 %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !370
  store i64 %i.bj, ptr %i.c, align 8, !noalias !370
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bo, ptr %i.bq, align 8, !noalias !370
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.br, align 8, !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !371
  store ptr %i.c, ptr %i.a, align 8, !noalias !371
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bt = invoke noundef ptr @_RINvNtCsc61CYD6Y1ak_10serde_json3ser18format_escaped_strQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %2)
          to label %.noexc.i.i unwind label %bb.n, !noalias !370 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.l
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.m, !prof !11

bb.m:                                             ; preds = %.noexc.i.i
  %i.bu = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.bt)
          to label %bb.o unwind label %bb.n, !noalias !370

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.c) #19
          to label %.body.i unwind label %bb.r, !noalias !370

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !371
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.i unwind label %bb.p, !noalias !370

bb.p:                                             ; preds = %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.q, !noalias !370

bb.q:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !370
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread.i unwind label %bb.t, !noalias !369

.thread.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !370
  br label %bb.v

bb.r:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !370
  unreachable

bb.s:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !372
  br label %bb.j

bb.t:                                             ; preds = %bb.ap, %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.i, %.invoke.i, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.au, %bb.t, %bb.p, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bz, %bb.t ], [ %i.bw, %bb.p ], [ %i.dr, %bb.au ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #19
          to label %common.resume.i unwind label %bb.ao, !noalias !369

bb.u:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !371
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !369 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %i.bq, align 8, !noalias !369 ; 2 uses
  %.sroa.9.0.copyload.i = load i64, ptr %i.br, align 8, !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !370
  %i.ca = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.thread.i
  %.sroa.6.082.i = phi ptr [ %i.bu, %.thread.i ], [ %.sroa.6.0.copyload.i, %bb.u ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.082.i) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsjRvGck33osM_6diesel(ptr nonnull %.sroa.6.082.i)
          to label %bb.ap unwind label %bb.t, !noalias !369

bb.w:                                             ; preds = %bb.u
  store i64 %.sroa.0.0.copyload.i, ptr %i.i, align 8, !noalias !369
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !369
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %.sroa.9.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !369
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i62.i unwind label %bb.x, !noalias !369

bb.x:                                             ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body63.i unwind label %bb.y, !noalias !369

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !369
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i62.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit.i unwind label %bb.z, !noalias !369

bb.z:                                             ; preds = %bb.aj, %bb.ad, %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i62.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i

.body63.i:                                        ; preds = %bb.z, %bb.x
  %eh.lpad-body64.i = phi { ptr, i32 } [ %i.cd, %bb.z ], [ %i.cb, %bb.x ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #19
          to label %common.resume.i unwind label %bb.ao, !noalias !373

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !369
  %i.ce = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !369, !noundef !4 ; 5 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nsw i64 %i.ce, -1                   ; 2 uses
  %i.ch = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 3 uses
  %or.cond.i = icmp samesign ult i64 %i.ce, 2
  br i1 %or.cond.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !374, !noalias !369, !noundef !4
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !374, !noalias !369, !noundef !4
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.co = add nsw i64 %i.ce, -2                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !369
  invoke fastcc void @_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb18write_jsonb_header(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i8 noundef 8, i64 noundef %i.co)
          to label %bb.af unwind label %bb.z, !noalias !373

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.ce, i64 noundef 1, i64 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #18
          to label %bb.ae unwind label %bb.z, !noalias !369

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.cp = load ptr, ptr %i.g, align 8, !noalias !369, !noundef !4 ; 2 uses
  %.not54.i = icmp eq ptr %i.cp, null
  br i1 %.not54.i, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !369, !nonnull !4, !align !7, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !369
  store ptr %i.cp, ptr %0, align 8, !alias.scope !367, !noalias !375
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !alias.scope !367, !noalias !375
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit68.i unwind label %bb.ah, !noalias !373

bb.ah:                                            ; preds = %bb.ag
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.ai, !noalias !373

bb.ai:                                            ; preds = %bb.ah
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !373
  unreachable

common.resume.i:                                  ; preds = %bb.ax, %bb.am, %bb.ah, %.body63.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body64.i, %.body63.i ], [ %i.ct, %bb.ah ], [ %i.de, %bb.am ], [ %eh.lpad-body.i, %.body.i ], [ %i.du, %bb.ax ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit68.i: ; preds = %bb.ag
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !373
  br label %_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb17write_jsonb_textj.exit

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !369
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.co)
          to label %.noexc70.i unwind label %bb.z, !noalias !373

.noexc70.i:                                       ; preds = %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !376, !noalias !373, !noundef !4 ; 3 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  call void @llvm.assume(i1 %i.cx)
  %.not.i69.i = icmp eq i64 %i.co, 0
  br i1 %.not.i69.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.noexc70.i
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !376, !noalias !373, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull readonly align 1 %i.ci, i64 %i.co, i1 false), !noalias !373
  %.pre.i.i = load i64, ptr %i.cv, align 8, !alias.scope !376, !noalias !373
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.noexc70.i
  %i.db = phi i64 [ %.pre.i.i, %bb.ak ], [ %i.cw, %.noexc70.i ]
  %i.dc = add i64 %i.db, %i.co
  store i64 %i.dc, ptr %i.cv, align 8, !alias.scope !376, !noalias !373
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dd, align 8, !alias.scope !367, !noalias !375
  store ptr null, ptr %0, align 8, !alias.scope !367, !noalias !375
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit73.i unwind label %bb.am, !noalias !373

bb.am:                                            ; preds = %bb.al
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.an, !noalias !373

bb.an:                                            ; preds = %bb.am
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !373
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit73.i: ; preds = %bb.al
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !373
  br label %_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb17write_jsonb_textj.exit

bb.ao:                                            ; preds = %.body63.i, %.body.i
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !373
  unreachable

bb.ap:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !369
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aq unwind label %bb.t, !noalias !369

bb.aq:                                            ; preds = %bb.ap
  %i.dh = load i64, ptr %i.d, align 8, !range !3, !noalias !369, !noundef !4
  %i.di = trunc nuw i64 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !5, !noalias !369, !noundef !4 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.di, label %bb.ar, label %bb.as, !prof !6

bb.ar:                                            ; preds = %bb.aq
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !369
  br label %.invoke.i

bb.as:                                            ; preds = %bb.aq
  %i.dn = load ptr, ptr %i.dl, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 2 uses
  %i.do = icmp samesign ugt i64 %i.dk, 35
  call void @llvm.assume(i1 %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.dn, ptr noundef nonnull align 1 dereferenceable(36) @36, i64 36, i1 false), !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !369
  store i64 %i.dk, ptr %i.e, align 8, !noalias !369
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.dn, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !369
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 36, ptr %.sroa.545.0..sroa_idx.i, align 8, !noalias !369
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !377
  %i.dp = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #21, !noalias !377 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.at, label %bb.aw, !prof !6

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #18
          to label %.noexc74.i unwind label %bb.au, !noalias !369

.noexc74.i:                                       ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #19
          to label %.body.i unwind label %bb.av, !noalias !369

bb.av:                                            ; preds = %bb.au
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !369
  unreachable

bb.aw:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !369
  store ptr %i.dp, ptr %0, align 8, !alias.scope !367, !noalias !375
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.dt, align 8, !alias.scope !367, !noalias !375
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit77.i unwind label %bb.ax, !noalias !369

bb.ax:                                            ; preds = %bb.aw
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.ay, !noalias !369

bb.ay:                                            ; preds = %bb.ax
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20, !noalias !369
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit77.i: ; preds = %bb.aw
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !369
  br label %_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb17write_jsonb_textj.exit

_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb17write_jsonb_textj.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit68.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit73.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !369
  br label %bb.bc

bb.az:                                            ; preds = %bb.f
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !4, !align !7, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.ax, ptr %0, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.dy, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %2)
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !378, !noundef !4 ; 3 uses
  %i.eb = icmp sgt i64 %i.ea, -1
  tail call void @llvm.assume(i1 %i.eb)
  %.not.i3 = icmp eq i64 %2, 0
  br i1 %.not.i3, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !378, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i = load i64, ptr %i.dz, align 8, !alias.scope !378
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel.exit: ; preds = %bb.ba, %bb.bb
  %i.ef = phi i64 [ %.pre.i, %bb.bb ], [ %i.ea, %bb.ba ]
  %i.eg = add i64 %i.ef, %2
  store i64 %i.eg, ptr %i.dz, align 8, !alias.scope !378
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.eh, align 8
  store ptr null, ptr %0, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvNtNtNtNtCsjRvGck33osM_6diesel6sqlite5types4json5jsonb17write_jsonb_textj.exit, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjRvGck33osM_6diesel.exit, %bb.az
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCscI6d9CVNmLh_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !381, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !381, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

end_hunk_0
