Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_builder-34152f4bce63195d.clap_builder.9b2a128d1b545da0-cgu.03?download=true
inline.NumInlined: 545
inline.NumDeleted: 233
begin_hunk_0_@_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command11__build_self:bb.a
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [672 x i8], align 8              ; 41 uses
  %i.ae = alloca [776 x i8], align 8              ; 7 uses
  %i.af = alloca [776 x i8], align 8              ; 10 uses
  %i.ag = alloca [672 x i8], align 8              ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i232.i = alloca [16 x i8], align 8     ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [672 x i8], align 8              ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i181.i = alloca [16 x i8], align 8     ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i175.i = alloca [16 x i8], align 8     ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i167.i = alloca [16 x i8], align 8     ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i158.i = alloca [16 x i8], align 8     ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i155.i = alloca [16 x i8], align 8     ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [776 x i8], align 8              ; 5 uses
  %i.au = alloca [672 x i8], align 8              ; 5 uses
  %i.av = alloca [672 x i8], align 8              ; 8 uses
  %i.aw = alloca [672 x i8], align 8              ; 8 uses
  %i.ax = alloca [672 x i8], align 8              ; 9 uses
  %i.ay = alloca [776 x i8], align 8              ; 55 uses
  %i.az = alloca [776 x i8], align 8              ; 7 uses
  %i.ba = alloca [776 x i8], align 8              ; 15 uses
  %i.bb = alloca [776 x i8], align 8              ; 55 uses
  %i.bc = alloca [776 x i8], align 8              ; 55 uses
  %i.bd = alloca [776 x i8], align 8              ; 5 uses
  %i.be = alloca [776 x i8], align 8              ; 5 uses
  %i.bf = alloca [776 x i8], align 8              ; 63 uses
  %i.bg = alloca [672 x i8], align 8              ; 5 uses
  %i.bh = alloca [672 x i8], align 8              ; 10 uses
  %i.bi = alloca [672 x i8], align 8              ; 10 uses
  %i.bj = alloca [672 x i8], align 8              ; 4 uses
  %i.bk = alloca [672 x i8], align 8              ; 8 uses
  %i.bl = alloca [672 x i8], align 8              ; 16 uses
  %i.bm = alloca [672 x i8], align 8              ; 5 uses
  %i.bn = alloca [672 x i8], align 8              ; 10 uses
  %i.bo = alloca [24 x i8], align 8               ; 8 uses
  %i.bp = alloca [104 x i8], align 8              ; 14 uses
  %i.bq = alloca [104 x i8], align 8              ; 5 uses
  %i.br = alloca [104 x i8], align 8              ; 8 uses
  %i.bs = alloca [776 x i8], align 8              ; 4 uses
  %i.bt = alloca [776 x i8], align 8              ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 764 ; 16 uses
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !6 ; 2 uses
  %i.bw = and i32 %i.bv, 1073741824
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.b, label %bb.nr

bb.b:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !noundef !6 ; 2 uses
  store ptr null, ptr %i.by, align 8
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.bs, ptr noundef nonnull align 8 dereferenceable(776) %0, i64 776, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.028.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 2, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 2, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 2, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 2, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 2, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -1, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.16.sroa.4.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.sroa.4.0..sroa.16.0..sroa_idx.sroa_idx, align 8
  %.sroa.16.sroa.5.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.17.sroa.4.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.sroa.5.0..sroa.16.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.17.sroa.4.0..sroa.17.0..sroa_idx.sroa_idx, align 8
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.18.sroa.4.0..sroa.18.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18.sroa.4.0..sroa.18.0..sroa_idx.sroa_idx, align 8
  %.sroa.18.sroa.5.0..sroa.18.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.19.sroa.4.0..sroa.19.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.5.0..sroa.18.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19.sroa.4.0..sroa.19.0..sroa_idx.sroa_idx, align 8
  %.sroa.19.sroa.5.0..sroa.19.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.19.sroa.6.sroa.4.0..sroa.19.sroa.6.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.sroa.5.0..sroa.19.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19.sroa.6.sroa.4.0..sroa.19.sroa.6.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.19.sroa.6.sroa.5.0..sroa.19.sroa.6.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.20.sroa.4.0..sroa.20.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.sroa.6.sroa.5.0..sroa.19.sroa.6.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.20.sroa.4.0..sroa.20.0..sroa_idx.sroa_idx, align 8
  %.sroa.20.sroa.5.0..sroa.20.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.21.sroa.4.0..sroa.21.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.5.0..sroa.20.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.21.sroa.4.0..sroa.21.0..sroa_idx.sroa_idx, align 8
  %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.22.sroa.4.0..sroa.22.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.sroa.4.0..sroa.22.0..sroa_idx.sroa_idx, align 8
  %.sroa.22.sroa.5.0..sroa.22.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.sroa.22.sroa.6.sroa.4.0..sroa.22.sroa.6.0..sroa.22.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.0..sroa.22.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.sroa.6.sroa.4.0..sroa.22.sroa.6.0..sroa.22.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.22.sroa.6.sroa.5.0..sroa.22.sroa.6.0..sroa.22.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 0, ptr %.sroa.22.sroa.6.sroa.5.0..sroa.22.sroa.6.0..sroa.22.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 -1, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 -1, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 -1, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 -1, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i64 -1, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 -1, ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 -1, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 -1, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i64 -1, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 -1, ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 -1, ptr %.sroa.34.0..sroa_idx, align 8
  store ptr null, ptr %i.by, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i32 -1, ptr %.sroa.36.0..sroa_idx, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bu, i8 0, i64 9, i1 false)
  call void %i.bz(ptr noalias noundef nonnull sret([776 x i8]) align 8 captures(address) dereferenceable(776) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(776) %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandEBH_(ptr noalias noundef align 8 dereferenceable(776) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(776) %i.bt, i64 776, i1 false)
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(776) %i.bt, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %.pre = load i32, ptr %i.bu, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.cb = phi i32 [ %i.bv, %bb.b ], [ %.pre, %bb.e ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 11 uses
  %i.cd = load i32, ptr %i.cc, align 8, !noundef !6
  %i.ce = or i32 %i.cd, %i.cb                     ; 3 uses
  %i.cf = and i32 %i.ce, 2048
  %or.cond229 = icmp eq i32 %i.cf, 0
  %i.cg = or i32 %i.ce, 2621952
  %spec.select = select i1 %or.cond229, i32 %i.ce, i32 %i.cg ; 2 uses
  %i.ch = lshr i32 %spec.select, 1
  %i.ci = and i32 %i.ch, 4096
  %storemerge233 = or i32 %spec.select, %i.ci     ; 3 uses
  store i32 %storemerge233, ptr %i.bu, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ck = load i64, ptr %i.cj, align 8, !range !15, !noundef !6
  %.not149 = icmp eq i64 %i.ck, -1
  br i1 %.not149, label %bb.h, label %bb.g

common.resume:                                    ; preds = %bb.mb, %bb.ma, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_.exit63.i, %bb.gp, %bb.af, %bb.ai, %bb.as, %bb.bd, %bb.bn, %bb.cb, %bb.cj, %bb.du, %bb.eh, %bb.ej, %.body.i.i.i, %bb.fd, %.critedge126.i, %.thread.i, %bb.y, %bb.d, %bb.mq, %bb.mn
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEEB13_.exit63.i ], [ %i.agt, %bb.mn ], [ %i.ee, %bb.y ], [ %i.ql, %.body.i.i.i ], [ %eh.lpad-body.ph, %bb.mq ], [ %i.ca, %bb.d ], [ %eh.lpad-body.i, %.thread.i ], [ %.pn.i182.i, %bb.cj ], [ %i.fo, %bb.af ], [ %i.fw, %bb.ai ], [ %.pn.i.i, %bb.as ], [ %.pn.i159.i, %bb.bd ], [ %.pn.i168.i, %bb.bn ], [ %i.hy, %bb.cb ], [ %i.qs, %.critedge126.i ], [ %i.rp, %bb.fd ], [ %i.mv, %bb.ej ], [ %i.lp, %bb.du ], [ %eh.lpad-body.ph.i, %bb.eh ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.gp ], [ %i.afx, %bb.ma ], [ %i.afx, %bb.mb ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.cl = or i32 %storemerge233, 1024             ; 2 uses
  store i32 %i.cl, ptr %i.bu, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cm = phi i32 [ %storemerge233, %bb.f ], [ %i.cl, %bb.g ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 6 uses
  %i.co = load i64, ptr %i.cn, align 8, !noundef !6 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 11885788707287083
  call void @llvm.assume(i1 %i.cp)
  %.not150 = icmp eq i64 %i.co, 0
  br i1 %.not150, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cq = or i32 %i.cm, 1048576
  store i32 %i.cq, ptr %i.bu, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !1016
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  store i64 0, ptr %i.cr, align 8, !alias.scope !1016
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1016
  store i64 0, ptr %i.cn, align 8, !alias.scope !1016
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !1016, !nonnull !6, !noundef !6 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !1016, !noundef !6 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.cv, 776
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i
  %.not10.i = icmp eq i64 %i.cv, 0
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command21__propagate_subcommand.exit.i, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %i.ec, %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command21__propagate_subcommand.exit.i ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.dc = load i32, ptr %i.bu, align 4, !alias.scope !1019, !noundef !6
  %i.dd = and i32 %i.dc, 4194304
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = load i64, ptr %i.cx, align 8, !range !11, !alias.scope !1019, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.df, 2
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit.i.i, label %bb.m

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit.i.i: ; preds = %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command21__propagate_subcommands_0Bb_.exit.i.i.i, %bb.q, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit.i.i, %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 764 ; 2 uses
  %i.dh = load i32, ptr %i.cc, align 8, !alias.scope !1019, !noundef !6
  %i.di = load <2 x i32>, ptr %i.dg, align 4, !alias.scope !1018
  %i.dj = insertelement <2 x i32> poison, i32 %i.dh, i64 0
  %i.dk = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dl = or <2 x i32> %i.di, %i.dk
  store <2 x i32> %i.dl, ptr %i.dg, align 4, !alias.scope !1018
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 416
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder3extNtB2_10Extensions6update(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.db)
          to label %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command21__propagate_subcommand.exit.i unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.do = load i64, ptr %i.dn, align 8, !range !11, !alias.scope !1022, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.do, 2
  br i1 %.not.i.i.i, label %bb.n, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.dp = trunc nuw i64 %i.df to i1
  br i1 %i.dp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dq = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy)
          to label %.noexc6.i unwind label %bb.y  ; 2 uses

.noexc6.i:                                        ; preds = %bb.o
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1
  br label %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command21__propagate_subcommand0Bb_.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !1023
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1023
  br label %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command21__propagate_subcommand0Bb_.exit.i.i.i

_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command21__propagate_subcommand0Bb_.exit.i.i.i: ; preds = %bb.p, %.noexc6.i
  %.sroa.6.0.i.i.i.i = phi i64 [ %i.ds, %.noexc6.i ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.p ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.dr, %.noexc6.i ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.p ]
  %.sroa.0.0.i.i.i.i = phi i64 [ 1, %.noexc6.i ], [ 0, %bb.p ]
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.dn, align 8, !alias.scope !1022
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 112
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !alias.scope !1022
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 120
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !1022
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit.i.i: ; preds = %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command21__propagate_subcommand0Bb_.exit.i.i.i, %bb.m, %bb.l
  %i.dt = load i64, ptr %i.cz, align 8, !range !11, !alias.scope !1019, !noundef !6 ; 2 uses
  %.not6.i.i = icmp eq i64 %i.dt, 2
  br i1 %.not6.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.dv = load i64, ptr %i.du, align 8, !range !11, !alias.scope !1026, !noundef !6
  %.not.i7.i.i = icmp eq i64 %i.dv, 2
  br i1 %.not.i7.i.i, label %bb.r, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dw = trunc nuw i64 %i.dt to i1
  br i1 %i.dw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dx = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.da)
          to label %.noexc7.i unwind label %bb.y  ; 2 uses

.noexc7.i:                                        ; preds = %bb.s
  %i.dy = extractvalue { ptr, i64 } %i.dx, 0
  %i.dz = extractvalue { ptr, i64 } %i.dx, 1
  br label %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command21__propagate_subcommands_0Bb_.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %.sroa.5.0.copyload.i.i8.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1027
  %.sroa.6.0.copyload.i.i10.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i9.i.i, align 8, !alias.scope !1027
  br label %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command21__propagate_subcommands_0Bb_.exit.i.i.i

_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command21__propagate_subcommands_0Bb_.exit.i.i.i: ; preds = %bb.t, %.noexc7.i
  %.sroa.6.0.i.i11.i.i = phi i64 [ %i.dz, %.noexc7.i ], [ %.sroa.6.0.copyload.i.i10.i.i, %bb.t ]
  %.sroa.5.0.i.i12.i.i = phi ptr [ %i.dy, %.noexc7.i ], [ %.sroa.5.0.copyload.i.i8.i.i, %bb.t ]
  %.sroa.0.0.i.i13.i.i = phi i64 [ 1, %.noexc7.i ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i.i13.i.i, ptr %i.du, align 8, !alias.scope !1026
  %.sroa.49.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 136
  store ptr %.sroa.5.0.i.i12.i.i, ptr %.sroa.49.0..sroa_idx.i14.i.i, align 8, !alias.scope !1026
  %.sroa.510.0..sroa_idx.i15.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 144
  store i64 %.sroa.6.0.i.i11.i.i, ptr %.sroa.510.0..sroa_idx.i15.i.i, align 8, !alias.scope !1026
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit.i.i

._crit_edge.i:                                    ; preds = %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command21__propagate_subcommand.exit.i, %bb.j
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.thread.i unwind label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10__propagate.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command21__propagate_subcommand.exit.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 776 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, %i.cw
  br i1 %.not.i, label %._crit_edge.i, label %bb.k

bb.x:                                             ; preds = %bb.v
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command11__build_self:bb.a
    i64 2, label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtB7_5clone5Clone5cloneBQ_.exit.i.i
  ]

bb.la:                                            ; preds = %bb.kv
  %i.act = getelementptr inbounds nuw i8, ptr %i.wt, i64 160
  %i.acu = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.act)
          to label %bb.ld unwind label %bb.lc, !noalias !1199 ; 2 uses

bb.lb:                                            ; preds = %bb.kv
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 160
  %.sroa.521.0.copyload.i.i = load ptr, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !alias.scope !1198, !noalias !1163
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 168
  %.sroa.624.0.copyload.i.i = load i64, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !alias.scope !1198, !noalias !1163
  br label %bb.kz

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit74.i.i: ; preds = %bb.lm, %bb.ll, %bb.lc
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.acv, %bb.lc ], [ %.pn.i.i203, %bb.ll ], [ %.pn.i.i203, %bb.lm ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrIBC_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEEEB14_(ptr noalias noundef align 8 dereferenceable(48) %i.l) #20
          to label %.body.i.i202 unwind label %bb.lp, !noalias !1199

bb.lc:                                            ; preds = %bb.la
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit74.i.i

bb.ld:                                            ; preds = %bb.la
  %i.acw = extractvalue { ptr, i64 } %i.acu, 0
  %i.acx = extractvalue { ptr, i64 } %i.acu, 1
  br label %bb.kz

bb.le:                                            ; preds = %bb.kz
  %i.acy = trunc nuw i64 %i.acs to i1
  %i.acz = getelementptr inbounds nuw i8, ptr %i.wt, i64 184 ; 2 uses
  br i1 %i.acy, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.ada = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.acz)
          to label %.noexc68.i.i unwind label %bb.ln, !noalias !1199 ; 2 uses

.noexc68.i.i:                                     ; preds = %bb.lf
  %i.adb = extractvalue { ptr, i64 } %i.ada, 0
  %i.adc = extractvalue { ptr, i64 } %i.ada, 1
  br label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtB7_5clone5Clone5cloneBQ_.exit.i.i

bb.lg:                                            ; preds = %bb.le
  %.sroa.5.0.copyload.i.i.i.i204 = load ptr, ptr %i.acz, align 8, !alias.scope !1226, !noalias !1163
  %.sroa.6.0..sroa_idx.i.i64.i.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 192
  %.sroa.6.0.copyload.i.i.i.i205 = load i64, ptr %.sroa.6.0..sroa_idx.i.i64.i.i, align 8, !alias.scope !1226, !noalias !1163
  br label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtB7_5clone5Clone5cloneBQ_.exit.i.i

bb.lh:                                            ; preds = %bb.kz
  store i64 -1, ptr %i.k, align 8, !noalias !1200
  br label %bb.li

bb.li:                                            ; preds = %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtB7_5clone5Clone5cloneBQ_.exit.i.i, %bb.lh
  %i.add = getelementptr inbounds nuw i8, ptr %i.wt, i64 560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1227
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value10AnyValueIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.add)
          to label %.noexc69.i.i unwind label %bb.lo, !noalias !1199

.noexc69.i.i:                                     ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1227
  %i.ade = getelementptr inbounds nuw i8, ptr %i.wt, i64 584
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value8AnyValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ade)
          to label %_RNvXsc_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB5_3ArgNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i unwind label %bb.lj, !noalias !1228

bb.lj:                                            ; preds = %.noexc69.i.i
  %i.adf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util9any_value10AnyValueIdEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #20
          to label %.body70.i.i unwind label %bb.lk, !noalias !1228

bb.lk:                                            ; preds = %bb.lj
  %i.adg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !1228
  unreachable

bb.ll:                                            ; preds = %.body70.i.i, %bb.ln
  %.pn.i.i203 = phi { ptr, i32 } [ %eh.lpad-body71.i.i, %.body70.i.i ], [ %i.adi, %bb.ln ] ; 2 uses
  %i.adh = icmp eq i64 %.sroa.882.0.i.i, 0
  %or.cond90.i.i = select i1 %i.aco, i1 true, i1 %i.adh
  br i1 %or.cond90.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit74.i.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.681.0.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.681.0.i.i, i64 noundef range(i64 1, 0) %.sroa.882.0.i.i, i64 noundef 1) #22, !noalias !1229
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit74.i.i

bb.ln:                                            ; preds = %bb.lf
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrENtNtB7_5clone5Clone5cloneBQ_.exit.i.i: ; preds = %bb.lg, %.noexc68.i.i, %bb.kz
  %.sroa.685.0.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i205, %bb.lg ], [ %i.adc, %.noexc68.i.i ], [ undef, %bb.kz ]
  %.sroa.584.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i204, %bb.lg ], [ %i.adb, %.noexc68.i.i ], [ undef, %bb.kz ]
  %.sroa.083.0.i.i = phi i64 [ 0, %bb.lg ], [ 1, %.noexc68.i.i ], [ %i.acs, %bb.kz ]
  store i64 %.sroa.083.0.i.i, ptr %i.k, align 8, !noalias !1200
  store ptr %.sroa.584.0.i.i, ptr %.sroa.584.0..sroa_idx.i.i, align 8, !noalias !1200
  store i64 %.sroa.685.0.i.i, ptr %.sroa.685.0..sroa_idx.i.i, align 8, !noalias !1200
  br label %bb.li

bb.lo:                                            ; preds = %bb.li
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %.body70.i.i

.body70.i.i:                                      ; preds = %bb.lo, %bb.lj
  %eh.lpad-body71.i.i = phi { ptr, i32 } [ %i.adj, %bb.lo ], [ %i.adf, %bb.lj ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEEB17_(ptr noalias noundef align 8 dereferenceable(24) %i.k) #20, !noalias !1199
  br label %bb.ll

bb.lp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEEB13_.exit74.i.i, %bb.kx, %bb.ke, %bb.jz, %bb.ju, %bb.jp, %bb.jk, %bb.jc, %bb.iu, %bb.ip, %bb.ik, %bb.if, %bb.ia, %bb.hv, %bb.hq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEBH_.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEBH_.exit.i59.i
  %i.adk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.lp, %bb.kw, %bb.kd, %bb.jy, %bb.jt, %bb.jo, %bb.jj, %bb.jb, %bb.it, %bb.io, %bb.ij, %bb.ie, %bb.hz, %bb.hu, %bb.hp, %bb.hm, %bb.hl, %bb.hd, %bb.gw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !1199
  unreachable

_RNvXsc_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB5_3ArgNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i: ; preds = %.noexc69.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ve, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1227
  store i64 %.sroa.0.0.i10.i, ptr %i.ad, align 8, !alias.scope !1197, !noalias !1163
  store ptr %.sroa.5.0.i.i196, ptr %.sroa.5.0..sroa_idx75.i.i, align 8, !alias.scope !1197, !noalias !1163
  store i64 %.sroa.6.0.i.i195, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1197, !noalias !1163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vf, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vg, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !1230
  store i8 %i.xw, ptr %i.vh, align 4, !alias.scope !1197, !noalias !1163
  store i64 %.sroa.064.0.i, ptr %i.vi, align 8, !noalias !1230
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx66.i, align 8, !noalias !1230
  store ptr %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx68.i, align 8, !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vj, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !1230
  store i32 %i.yx, ptr %i.vk, align 8, !alias.scope !1197, !noalias !1163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vl, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vm, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vn, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vo, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vp, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vr, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1230
  store i32 %i.aab, ptr %i.vs, align 8, !alias.scope !1197, !noalias !1163
  store i64 %.sroa.077.0.i.i, ptr %i.vt, align 8, !alias.scope !1197, !noalias !1163
  store ptr %.sroa.6.086.i.i, ptr %.sroa.6.0..sroa_idx78.i.i, align 8, !alias.scope !1197, !noalias !1163
  store i64 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !1197, !noalias !1163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vu, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vv, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !1230
  store <2 x i64> %i.aau, ptr %i.vw, align 8, !alias.scope !1197, !noalias !1163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vy, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !1230
  store i32 %i.abb, ptr %i.vz, align 4, !alias.scope !1197, !noalias !1163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wa, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wb, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wc, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.wd, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !1230
  store i64 %.sroa.080.0.i.i, ptr %i.we, align 8, !alias.scope !1197, !noalias !1163
  store ptr %.sroa.681.0.i.i, ptr %.sroa.681.0..sroa_idx.i.i, align 8, !alias.scope !1197, !noalias !1163
  store i64 %.sroa.882.0.i.i, ptr %.sroa.882.0..sroa_idx.i.i, align 8, !alias.scope !1197, !noalias !1163
  store <2 x i64> %i.acq, ptr %i.wf, align 8, !alias.scope !1197, !noalias !1163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wg, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.wh, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !1230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvMs4_NtCsdjW2DEjcQy2_12clap_builder7mkeymapNtB5_7MKeyMap4push(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ws, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(672) %i.ad), !noalias !1163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1163
  br label %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit.i.backedge

_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit.loopexit: ; preds = %.backedge.i
  %.pre893 = load i32, ptr %i.bu, align 4
  br label %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit

_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit: ; preds = %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit.loopexit, %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command23__check_help_and_version.exit
  %i.adl = phi i32 [ %.pre893, %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit.loopexit ], [ %i.up, %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command23__check_help_and_version.exit ]
  %i.adm = and i32 %i.adl, 16777216
  %i.adn = icmp eq i32 %i.adm, 0
  br i1 %i.adn, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit
  %2 = load i32, ptr %i.cc, align 8, !noundef !6
  %3 = and i32 %2, 16777216
  %4 = icmp ne i32 %3, 0
  br label %bb.lr

bb.lr:                                            ; preds = %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit, %bb.lq
  %.sroa.08.0 = phi i1 [ %4, %bb.lq ], [ true, %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22__propagate_global_args.exit ]
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.adq = load ptr, ptr %i.adp, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ads = load i64, ptr %i.adr, align 8, !noundef !6 ; 2 uses
  %.idx571 = mul nuw nsw i64 %i.ads, 672
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 %.idx571
  %i.adu = icmp eq i64 %i.ads, 0
  br i1 %i.adu, label %._crit_edge566, label %.lr.ph565

.lr.ph565:                                        ; preds = %bb.lr
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.ady = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.adz = getelementptr inbounds nuw i8, ptr %i.bp, i64 97
  %i.aea = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  br label %bb.ls

bb.ls:                                            ; preds = %.lr.ph565, %bb.mx
  %.sroa.06.0563 = phi i64 [ 1, %.lr.ph565 ], [ %.sroa.06.1, %bb.mx ] ; 5 uses
  %.sroa.09.0562 = phi ptr [ %i.adq, %.lr.ph565 ], [ %i.aed, %bb.mx ] ; 15 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.09.0562, i64 672 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.sroa.09.0562, i64 280
  %i.aef = load ptr, ptr %i.aee, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.09.0562, i64 288
  %i.aeh = load i64, ptr %i.aeg, align 8, !noundef !6 ; 2 uses
  %.idx572 = mul nuw nsw i64 %i.aeh, 24
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 %.idx572
  %i.aej = icmp eq i64 %i.aeh, 0
  br i1 %i.aej, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ls
  %.sroa.5101.0..sroa.010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.09.0562, i64 8 ; 4 uses
  %.sroa.6103.0..sroa.010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.09.0562, i64 16 ; 2 uses
  br label %bb.lu

._crit_edge566:                                   ; preds = %bb.mx, %bb.lr
  call void @_RNvMs4_NtCsdjW2DEjcQy2_12clap_builder7mkeymapNtB5_7MKeyMap6__build(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ado)
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ael = load ptr, ptr %i.aek, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aen = load i64, ptr %i.aem, align 8, !noundef !6
  %i.aeo = getelementptr inbounds nuw [32 x i8], ptr %i.ael, i64 %i.aen
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ael, ptr %i.a, align 8
  %i.aep = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aeo, ptr %i.aep, align 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aer = call { i64, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENCNvMs4_B1p_NtB1p_7MKeyMap4keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2D_8find_map5checkRNtB1p_7KeyTypejQNCNvMs3_NtNtB1r_7builder7commandNtB4a_7Command11__build_selfs_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB1r_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull %i.aeq) ; 2 uses
  %i.aes = extractvalue { i64, i64 } %i.aer, 0
  %i.aet = trunc nuw i64 %i.aes to i1
  br i1 %i.aet, label %bb.lt, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB43_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1P_.exit

bb.lt:                                            ; preds = %._crit_edge566
  %i.aeu = extractvalue { i64, i64 } %i.aer, 1
  %i.aev = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.aew = load ptr, ptr %i.aep, align 8, !noundef !6
  %i.aex = call noundef i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENCNvMs4_B1p_NtB1p_7MKeyMap4keys0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_10filter_map15filter_map_foldRNtB1p_7KeyTypejjNCNvMs3_NtNtB1r_7builder7commandNtB4j_7Command11__build_selfs_0NCINvNvB2D_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0E0EB1r_(ptr noundef nonnull %i.aev, ptr noundef %i.aew, i64 noundef %i.aeu)
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB43_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1P_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB43_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1P_.exit: ; preds = %._crit_edge566, %bb.lt
  %.sroa.016.0 = phi i64 [ %i.aex, %bb.lt ], [ 0, %._crit_edge566 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aey = load i32, ptr %i.bu, align 4, !noundef !6 ; 4 uses
  %i.aez = and i32 %i.aey, 32
  %i.afa = icmp eq i32 %i.aez, 0
  br i1 %i.afa, label %bb.na, label %bb.nb

bb.lu:                                            ; preds = %.lr.ph, %bb.mc
  %.sroa.011.0561 = phi ptr [ %i.aef, %.lr.ph ], [ %i.afb, %bb.mc ] ; 4 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.011.0561, i64 24 ; 2 uses
  %i.afc = load ptr, ptr %i.adw, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.afd = load i64, ptr %i.adx, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.afd, 104
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afc, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.aff = icmp eq i64 %i.afd, 0
  br i1 %i.aff, label %.loopexit, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %bb.lu
  %.sroa.53.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0561, i64 16
  %.sroa.53.0.i.i = load i64, ptr %.sroa.53.0.in.i.i, align 8, !alias.scope !1231, !noundef !6 ; 2 uses
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0561, i64 8
  %.sroa.02.0.i.i = load ptr, ptr %.sroa.02.0.in.i.i, align 8, !alias.scope !1231, !nonnull !6
  br label %bb.lv

bb.lv:                                            ; preds = %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i, %.lr.ph.i207
  %i.afg = phi ptr [ %i.afc, %.lr.ph.i207 ], [ %i.afh, %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i ] ; 6 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 104 ; 2 uses
  %.sroa.5.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  %.sroa.5.0.i.i208 = load i64, ptr %.sroa.5.0.in.i.i, align 8, !noalias !1232, !noundef !6
  %i.afi = icmp eq i64 %.sroa.5.0.i.i208, %.sroa.53.0.i.i
  br i1 %i.afi, label %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i, label %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i

_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i: ; preds = %bb.lv
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.0.in.i.i, align 8, !noalias !1232, !nonnull !6, !noundef !6
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i, ptr nonnull %.sroa.02.0.i.i, i64 %.sroa.53.0.i.i), !noalias !1232
  %i.afj = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.afj, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs3_NtBX_7commandNtB2L_7Command11__build_self0EBZ_.exit, label %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i

_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i: ; preds = %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i, %bb.lv
  %i.afk = icmp eq ptr %i.afh, %i.afe
  br i1 %i.afk, label %.loopexit, label %bb.lv

._crit_edge:                                      ; preds = %bb.mc, %bb.ls
  call void @_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB5_3Arg6__build(ptr noalias noundef nonnull align 8 dereferenceable(672) %.sroa.09.0562)
  br i1 %.sroa.08.0, label %bb.mt, label %bb.ms

_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs3_NtBX_7commandNtB2L_7Command11__build_self0EBZ_.exit: ; preds = %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afg, i64 24 ; 2 uses
  %i.afm = load i64, ptr %.sroa.09.0562, align 8, !range !5, !noundef !6
  %i.afn = trunc nuw i64 %i.afm to i1             ; 2 uses
  br i1 %i.afn, label %bb.lw, label %bb.lx

.loopexit:                                        ; preds = %_RNCNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i, %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 0, ptr %i.bp, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4124.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5125.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4109.0..sroa_idx, align 8
  store i8 0, ptr %i.ady, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5110.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4112.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5113.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4115.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5116.0..sroa_idx, align 8
  store i8 0, ptr %i.adz, align 1
  call void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_groupNtB3_8ArgGroup2idRNtNtNtB7_4util2id2IdEB7_(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.br, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.011.0561)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.afo = load i64, ptr %.sroa.09.0562, align 8, !range !5, !noundef !6
  %i.afp = trunc nuw i64 %i.afo to i1             ; 2 uses
  br i1 %i.afp, label %bb.md, label %bb.me

bb.lw:                                            ; preds = %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs3_NtBX_7commandNtB2L_7Command11__build_self0EBZ_.exit
  %i.afq = call { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5101.0..sroa.010.0..sroa_idx) ; 2 uses
  %i.afr = extractvalue { ptr, i64 } %i.afq, 0
  %i.afs = extractvalue { ptr, i64 } %i.afq, 1
  br label %bb.ly

bb.lx:                                            ; preds = %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs3_NtBX_7commandNtB2L_7Command11__build_self0EBZ_.exit
  %.sroa.5101.0.copyload = load ptr, ptr %.sroa.5101.0..sroa.010.0..sroa_idx, align 8
  %.sroa.6103.0.copyload = load i64, ptr %.sroa.6103.0..sroa.010.0..sroa_idx, align 8
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  %.sroa.099.0 = phi i64 [ 1, %bb.lw ], [ 0, %bb.lx ]
  %.sroa.5101.0 = phi ptr [ %i.afr, %bb.lw ], [ %.sroa.5101.0.copyload, %bb.lx ] ; 3 uses
  %.sroa.6103.0 = phi i64 [ %i.afs, %bb.lw ], [ %.sroa.6103.0.copyload, %bb.lx ] ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afg, i64 40 ; 2 uses
  %i.afu = load i64, ptr %i.aft, align 8, !alias.scope !1233, !noundef !6 ; 3 uses
  %i.afv = load i64, ptr %i.afl, align 8, !range !8, !alias.scope !1233, !noundef !6
  %i.afw = icmp eq i64 %i.afu, %i.afv
  br i1 %i.afw, label %bb.lz, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8push_mutBK_.exit

bb.lz:                                            ; preds = %bb.ly
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afl)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8push_mutBK_.exit unwind label %bb.ma, !noalias !1234

bb.ma:                                            ; preds = %bb.lz
  %i.afx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afy = icmp ne i64 %.sroa.6103.0, 0
  %or.cond231.not = select i1 %i.afn, i1 %i.afy, i1 false
  br i1 %or.cond231.not, label %bb.mb, label %common.resume

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5101.0) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5101.0, i64 noundef range(i64 1, 0) %.sroa.6103.0, i64 noundef 1) #22, !noalias !1235
  br label %common.resume

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE8push_mutBK_.exit: ; preds = %bb.ly, %bb.lz
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afg, i64 32
  %i.aga = load ptr, ptr %i.afz, align 8, !alias.scope !1233, !nonnull !6, !noundef !6
  %i.agb = getelementptr inbounds nuw [24 x i8], ptr %i.aga, i64 %i.afu ; 3 uses
  store i64 %.sroa.099.0, ptr %i.agb, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  store ptr %.sroa.5101.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  store i64 %.sroa.6103.0, ptr %.sroa.7.0..sroa_idx220, align 8
  %i.agc = add i64 %i.afu, 1
  store i64 %i.agc, ptr %i.aft, align 8, !alias.scope !1233
  br label %bb.mc

end_hunk_1
