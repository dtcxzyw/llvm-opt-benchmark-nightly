Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.07?download=true
inline.NumInlined: 165
inline.NumDeleted: 82
begin_hunk_0_@_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB4_9DebugLineINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE7programCs8GyQQEoxZtT_7convert:bb.a
  br i1 %.not.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = ptrtoint ptr %i.bg to i64
  br label %bb.cx

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bj = add i64 %i.bf, -1
  %i.bk = load i8, ptr %i.bg, align 1, !noalias !330, !noundef !5 ; 2 uses
  store ptr %i.bi, ptr %i.s, align 8, !alias.scope !329, !noalias !316, !captures !8
  store i64 %i.bj, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !329, !noalias !316
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.cx

bb.r:                                             ; preds = %bb.l
  %.sroa.4318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.34.sroa.35.1.copyload = load i8, ptr %.sroa.4318.0..sroa_idx.i, align 1, !noalias !318
  %.sroa.34.sroa.42.1..sroa.4318.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.sroa.34.sroa.42.1.copyload = load i16, ptr %.sroa.34.sroa.42.1..sroa.4318.0..sroa_idx.i.sroa_idx, align 2, !noalias !318
  %.sroa.34.sroa.45.1..sroa.4318.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.34.sroa.45.1.copyload = load i32, ptr %.sroa.34.sroa.45.1..sroa.4318.0..sroa_idx.i.sroa_idx, align 4, !noalias !318
  %.sroa.5319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5319.0.copyload.i = load i64, ptr %.sroa.5319.0..sroa_idx.i, align 8, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !316
  br label %bb.cx

bb.s:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !316, !noundef !5 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !316
  %i.bo = load ptr, ptr %i.s, align 8, !alias.scope !331, !noalias !316, !nonnull !5, !noundef !5 ; 6 uses
  %i.bp = load i64, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !316, !noundef !5 ; 2 uses
  %.val.i479.i = load i8, ptr %.sroa.413.0..sroa_idx.i, align 8, !range !6, !alias.scope !331, !noalias !316, !noundef !5
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = ptrtoint ptr %i.bo to i64
  br label %bb.cw

bb.u:                                             ; preds = %bb.s
  %i.bs = sub nuw i64 %i.bp, %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i64 %i.bn, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !332, !noalias !316
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %.not.i483.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i483.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = ptrtoint ptr %i.bo to i64
  br label %bb.cw

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 4 uses
  %i.bw = add i64 %i.bn, -1                       ; 3 uses
  %i.bx = load i8, ptr %i.bo, align 1, !noalias !334, !noundef !5 ; 2 uses
  store ptr %i.bv, ptr %i.s, align 8, !alias.scope !333, !noalias !316, !captures !8
  store i64 %i.bw, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !333, !noalias !316
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.cw, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = icmp samesign ugt i16 %spec.select.i.i.i, 3
  br i1 %i.bz, label %bb.y, label %thread-pre-split.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %.not.i487.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i487.i, label %bb.z, label %bb.aa

thread-pre-split.i:                               ; preds = %bb.aa, %bb.x
  %i.ca = phi ptr [ %i.cd, %bb.aa ], [ %i.bv, %bb.x ] ; 3 uses
  %i.cb = phi i64 [ %i.ce, %bb.aa ], [ %i.bw, %bb.x ] ; 2 uses
  %.sroa.099.0.i = phi i8 [ %i.cf, %bb.aa ], [ 1, %bb.x ]
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %.not.i491.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i491.i, label %bb.ab, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cc = ptrtoint ptr %i.bv to i64
  br label %bb.cw

bb.aa:                                            ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 2 ; 2 uses
  %i.ce = add i64 %i.bn, -2                       ; 2 uses
  %i.cf = load i8, ptr %i.bv, align 1, !noalias !337, !noundef !5 ; 2 uses
  store ptr %i.cd, ptr %i.s, align 8, !alias.scope !335, !noalias !316, !captures !8
  store i64 %i.ce, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !335, !noalias !316
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.cw, label %thread-pre-split.i

bb.ab:                                            ; preds = %thread-pre-split.i
  %i.ch = ptrtoint ptr %i.ca to i64
  br label %bb.cw

bb.ac:                                            ; preds = %thread-pre-split.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cj = add i64 %i.cb, -1
  %i.ck = load i8, ptr %i.ca, align 1, !noalias !338, !noundef !5
  store ptr %i.ci, ptr %i.s, align 8, !alias.scope !336, !noalias !316, !captures !8
  store i64 %i.cj, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !336, !noalias !316
  %i.cl = icmp ne i8 %i.ck, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !316
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader7read_i8Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #23, !noalias !317
  %i.cm = load i8, ptr %i.p, align 8, !range !10, !noalias !316, !noundef !5 ; 2 uses
  %.not462.i = icmp eq i8 %i.cm, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !noalias !316 ; 2 uses
  br i1 %.not462.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.5355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.34.sroa.42.2.copyload = load i16, ptr %.sroa.5355.0..sroa_idx.i, align 2, !noalias !318
  %.sroa.34.sroa.45.2..sroa.5355.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.34.sroa.45.2.copyload = load i32, ptr %.sroa.34.sroa.45.2..sroa.5355.0..sroa_idx.i.sroa_idx, align 4, !noalias !318
  %.sroa.77.10..sroa.5355.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.77.10.copyload = load i64, ptr %.sroa.77.10..sroa.5355.0..sroa_idx.i.sroa_idx, align 8, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !316
  br label %bb.cw

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !316
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.cp = load i64, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !339, !noalias !316, !noundef !5 ; 3 uses
  %.not.i495.i = icmp eq i64 %i.cp, 0
  %i.cq = load ptr, ptr %i.s, align 8, !alias.scope !339, !noalias !316, !nonnull !5, !noundef !5 ; 4 uses
  br i1 %.not.i495.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cr = ptrtoint ptr %i.cq to i64
  br label %bb.cw

bb.ag:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  %i.ct = add i64 %i.cp, -1                       ; 2 uses
  %i.cu = load i8, ptr %i.cq, align 1, !noalias !340, !noundef !5 ; 2 uses
  store ptr %i.cs, ptr %i.s, align 8, !alias.scope !339, !noalias !316, !captures !8
  store i64 %i.ct, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !339, !noalias !316
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.cw, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = zext i1 %i.cl to i8
  %.not.i499.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i499.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cx = ptrtoint ptr %i.cs to i64
  br label %bb.cw

bb.aj:                                            ; preds = %bb.ah
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 2 ; 3 uses
  %i.cz = add i64 %i.cp, -2                       ; 2 uses
  %i.da = load i8, ptr %i.cs, align 1, !noalias !341, !noundef !5 ; 3 uses
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.cw, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dc = add i8 %i.da, -1
  %i.dd = zext i8 %i.dc to i64                    ; 4 uses
  %i.de = icmp ult i64 %i.cz, %i.dd
  br i1 %i.de, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.df = ptrtoint ptr %i.cy to i64
  br label %bb.cw

bb.am:                                            ; preds = %bb.ak
  %i.dg = sub nuw i64 %i.cz, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dd
  store ptr %i.dh, ptr %i.s, align 8, !alias.scope !342, !noalias !316, !captures !8
  store i64 %i.dg, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !342, !noalias !316
  %i.di = load i8, ptr %.sroa.413.0..sroa_idx.i, align 8, !range !6, !alias.scope !343, !noalias !316, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !316
  store i64 0, ptr %i.n, align 8, !noalias !316
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.dj, align 8, !noalias !316
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  store i64 0, ptr %i.dk, align 8, !noalias !316
  %i.dl = icmp samesign ult i16 %spec.select.i.i.i, 5 ; 2 uses
  br i1 %i.dl, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !316
  invoke fastcc void @_RINvMse_NtNtCsi68uqYEhoRA_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s)
          to label %bb.ap unwind label %.loopexit.split-lp743.loopexit.split-lp.i, !noalias !317

bb.ao:                                            ; preds = %bb.am
  store i64 0, ptr %i.o, align 8, !noalias !316
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4165.0..sroa_idx.i, align 8, !noalias !316
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5166.0..sroa_idx.i, align 8, !noalias !316
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.0380.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5382.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  br label %bb.be

.loopexit.split-lp743.i:                          ; preds = %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cu, %bb.ca, %bb.bz, %.loopexit.split-lp743.loopexit.split-lp.i
  %.sroa.0266.0.i = phi i1 [ true, %bb.ca ], [ true, %bb.cu ], [ true, %bb.bz ], [ %.sroa.0266.1.ph.ph.i, %.loopexit.split-lp743.loopexit.split-lp.i ], [ true, %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn471.i = phi { ptr, i32 } [ %i.fn, %bb.ca ], [ %.pn469798.i, %bb.cu ], [ %.pn.i, %bb.bz ], [ %lpad.loopexit.split-lp754.i, %.loopexit.split-lp743.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #21
          to label %bb.bb unwind label %bb.ct, !noalias !317

.loopexit.split-lp743.loopexit.split-lp.i:        ; preds = %bb.au, %bb.ar, %bb.an
  %.sroa.0266.1.ph.ph.i = phi i1 [ true, %bb.ar ], [ true, %bb.au ], [ false, %bb.an ]
  %lpad.loopexit.split-lp754.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743.i

bb.ap:                                            ; preds = %bb.an
  %i.dn = load i64, ptr %i.l, align 8, !range !344, !noalias !316, !noundef !5 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6180.i.sroa.0.0.copyload165 = load i64, ptr %i.dp, align 8, !noalias !316 ; 5 uses
  %.sroa.6180.i.sroa.7.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6180.i.sroa.7.0.copyload168 = load i64, ptr %.sroa.6180.i.sroa.7.0..sroa_idx167, align 8, !noalias !316 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !316
  br i1 %i.do, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.34.sroa.0.0.extract.trunc51 = trunc i64 %.sroa.6180.i.sroa.0.0.copyload165 to i8
  %.sroa.34.sroa.35.0.extract.shift74 = lshr i64 %.sroa.6180.i.sroa.0.0.copyload165, 8
  %.sroa.34.sroa.35.0.extract.trunc75 = trunc i64 %.sroa.34.sroa.35.0.extract.shift74 to i8
  %.sroa.34.sroa.42.0.extract.shift100 = lshr i64 %.sroa.6180.i.sroa.0.0.copyload165, 16
  %.sroa.34.sroa.42.0.extract.trunc101 = trunc i64 %.sroa.34.sroa.42.0.extract.shift100 to i16
  %.sroa.34.sroa.45.0.extract.shift127 = lshr i64 %.sroa.6180.i.sroa.0.0.copyload165, 32
  %.sroa.34.sroa.45.0.extract.trunc128 = trunc nuw i64 %.sroa.34.sroa.45.0.extract.shift127 to i32
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !316
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ap
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %.sroa.6180.i.sroa.0.0.copyload165, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !316
  %.sroa.6180.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %.sroa.6180.i.sroa.7.0.copyload168, ptr %.sroa.6180.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8, !noalias !316
  store i64 %i.dn, ptr %i.o, align 8, !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !316
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader12read_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.as unwind label %.loopexit.split-lp743.loopexit.split-lp.i, !noalias !317

bb.as:                                            ; preds = %bb.ar
  %i.dq = load i8, ptr %i.k, align 8, !range !10, !noalias !316, !noundef !5 ; 2 uses
  %.not465.i = icmp eq i8 %i.dq, -1
  br i1 %.not465.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.4389.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.34.sroa.35.1.copyload76 = load i8, ptr %.sroa.4389.0..sroa_idx.i, align 1, !noalias !318
  %.sroa.34.sroa.42.1..sroa.4389.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %.sroa.34.sroa.42.1.copyload102 = load i16, ptr %.sroa.34.sroa.42.1..sroa.4389.0..sroa_idx.i.sroa_idx, align 2, !noalias !318
  %.sroa.34.sroa.45.1..sroa.4389.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.34.sroa.45.1.copyload129 = load i32, ptr %.sroa.34.sroa.45.1..sroa.4389.0..sroa_idx.i.sroa_idx, align 4, !noalias !318
  %.sroa.5390.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5390.0.copyload.i = load i64, ptr %.sroa.5390.0..sroa_idx.i, align 8, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !316
  br label %.invoke.i

bb.au:                                            ; preds = %bb.as
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !316, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !316
  %.val475.i = load i64, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !noalias !316, !noundef !5
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val475.i, i64 %i.ds)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianEjEE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %..i.i)
          to label %.preheader751.i unwind label %.loopexit.split-lp743.loopexit.split-lp.i, !noalias !317

.preheader751.i:                                  ; preds = %bb.au
  %.not.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i, label %.loopexit752.thread.i, label %.lr.ph.i

.loopexit752.thread.i:                            ; preds = %.preheader751.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !316
  store i64 0, ptr %i.h, align 8, !noalias !316
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.dt, align 8, !noalias !316
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.du, align 8, !noalias !316
  br label %bb.bl

.lr.ph.i:                                         ; preds = %.preheader751.i
  %.sroa.4444.0.insert.ext.i = zext nneg i8 %i.aj to i32
  %.sroa.4444.0.insert.shift.i = shl nuw nsw i32 %.sroa.4444.0.insert.ext.i, 8
  %.sroa.0443.0.insert.ext.i = zext i8 %.sroa.0.0.i to i32
  %.sroa.4444.0.insert.insert.i = or disjoint i32 %.sroa.4444.0.insert.shift.i, %.sroa.0443.0.insert.ext.i
  %.sroa.0443.0.insert.insert.i = or disjoint i32 %.sroa.4444.0.insert.insert.i, 327680
  %.sroa.4395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5396.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6195.i.sroa.6.0..sroa.4395.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.av

bb.av:                                            ; preds = %bb.ba, %.lr.ph.i
  %.sroa.0437.0756.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dv, %bb.ba ]
  %i.dv = add nuw i64 %.sroa.0437.0756.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !316
  %i.dw = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !316, !nonnull !5, !noundef !5
  %i.dx = load i64, ptr %.sroa.6180.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8, !noalias !316, !noundef !5
  invoke fastcc void @_RINvNtNtCsi68uqYEhoRA_5gimli4read4line18parse_directory_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, i32 noundef %.sroa.0443.0.insert.insert.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.dw, i64 noundef %i.dx)
          to label %bb.aw unwind label %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

.loopexit752.i:                                   ; preds = %bb.ba, %bb.bh
  %.sroa.4133.0 = phi i8 [ %.sroa.4133.0.copyload, %bb.bh ], [ 2, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !316
  store i64 0, ptr %i.h, align 8, !noalias !316
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.dy, align 8, !noalias !316
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store i64 0, ptr %i.dz, align 8, !noalias !316
  br i1 %i.dl, label %bb.bm, label %bb.bl

bb.aw:                                            ; preds = %bb.av
  %i.ea = load i64, ptr %i.j, align 16, !range !12, !noalias !316, !noundef !5 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, -1
  %.sroa.6195.i.sroa.0.0.copyload170 = load i64, ptr %.sroa.4395.0..sroa_idx.i, align 8, !noalias !316 ; 5 uses
  %.sroa.6195.i.sroa.6.0.copyload173 = load i64, ptr %.sroa.6195.i.sroa.6.0..sroa.4395.0..sroa_idx.i.sroa_idx, align 16, !noalias !316 ; 2 uses
  br i1 %i.eb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !316
  %.sroa.34.sroa.0.0.extract.trunc50 = trunc i64 %.sroa.6195.i.sroa.0.0.copyload170 to i8
  %.sroa.34.sroa.35.0.extract.shift72 = lshr i64 %.sroa.6195.i.sroa.0.0.copyload170, 8
  %.sroa.34.sroa.35.0.extract.trunc73 = trunc i64 %.sroa.34.sroa.35.0.extract.shift72 to i8
  %.sroa.34.sroa.42.0.extract.shift98 = lshr i64 %.sroa.6195.i.sroa.0.0.copyload170, 16
  %.sroa.34.sroa.42.0.extract.trunc99 = trunc i64 %.sroa.34.sroa.42.0.extract.shift98 to i16
  %.sroa.34.sroa.45.0.extract.shift125 = lshr i64 %.sroa.6195.i.sroa.0.0.copyload170, 32
  %.sroa.34.sroa.45.0.extract.trunc126 = trunc nuw i64 %.sroa.34.sroa.45.0.extract.shift125 to i32
  br label %.invoke.i

bb.ay:                                            ; preds = %bb.aw
  %.sroa.5396.0.copyload.i = load i64, ptr %.sroa.5396.0..sroa_idx.i, align 8, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !316
  %i.ec = load i64, ptr %i.dk, align 8, !alias.scope !345, !noalias !316, !noundef !5 ; 3 uses
  %i.ed = load i64, ptr %i.n, align 8, !range !11, !alias.scope !345, !noalias !316, !noundef !5
  %i.ee = icmp eq i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianEjEE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #22
          to label %bb.ba unwind label %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ef = load ptr, ptr %i.dj, align 8, !alias.scope !345, !noalias !316, !nonnull !5, !noundef !5
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.ec ; 4 uses
  store i64 %i.ea, ptr %i.eg, align 16, !noalias !317
  %.sroa.2589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %.sroa.6195.i.sroa.0.0.copyload170, ptr %.sroa.2589.0..sroa_idx.i, align 8, !noalias !317
  %.sroa.6195.i.sroa.6.0..sroa.2589.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %.sroa.6195.i.sroa.6.0.copyload173, ptr %.sroa.6195.i.sroa.6.0..sroa.2589.0..sroa_idx.i.sroa_idx, align 16, !noalias !317
  %.sroa.3.0..sroa_idx590.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i64 %.sroa.5396.0.copyload.i, ptr %.sroa.3.0..sroa_idx590.i, align 8, !noalias !317
  %i.eh = add i64 %i.ec, 1
  store i64 %i.eh, ptr %i.dk, align 8, !alias.scope !345, !noalias !316
  %exitcond.not.i = icmp eq i64 %i.dv, %i.ds
  br i1 %exitcond.not.i, label %.loopexit752.i, label %bb.av

.invoke.i:                                        ; preds = %bb.cs, %bb.bg, %bb.ax, %bb.at
  %.sroa.34.sroa.45.2 = phi i32 [ %.sroa.34.sroa.45.0.extract.trunc110, %bb.bg ], [ %.sroa.34.sroa.45.5, %bb.cs ], [ %.sroa.34.sroa.45.0.extract.trunc126, %bb.ax ], [ %.sroa.34.sroa.45.1.copyload129, %bb.at ]
  %.sroa.34.sroa.42.2 = phi i16 [ %.sroa.34.sroa.42.0.extract.trunc83, %bb.bg ], [ %.sroa.34.sroa.42.5, %bb.cs ], [ %.sroa.34.sroa.42.0.extract.trunc99, %bb.ax ], [ %.sroa.34.sroa.42.1.copyload102, %bb.at ]
  %.sroa.34.sroa.35.2 = phi i8 [ %.sroa.34.sroa.35.0.extract.trunc57, %bb.bg ], [ %.sroa.34.sroa.35.5, %bb.cs ], [ %.sroa.34.sroa.35.0.extract.trunc73, %bb.ax ], [ %.sroa.34.sroa.35.1.copyload76, %bb.at ]
  %.sroa.34.sroa.0.2 = phi i8 [ %.sroa.34.sroa.0.0.extract.trunc41, %bb.bg ], [ %.sroa.34.sroa.0.5, %bb.cs ], [ %.sroa.34.sroa.0.0.extract.trunc50, %bb.ax ], [ %i.dq, %bb.at ]
  %.sroa.77.2 = phi i64 [ %.sroa.4673.0.copyload.i, %bb.bg ], [ %.sroa.77.5, %bb.cs ], [ %.sroa.6195.i.sroa.6.0.copyload173, %bb.ax ], [ %.sroa.5390.0.copyload.i, %bb.at ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n)
          to label %bb.bc unwind label %.split.thread.i, !noalias !317

bb.bb:                                            ; preds = %.loopexit.split-lp743.i
  br i1 %.sroa.0266.0.i, label %bb.cv, label %bb.cy

.split.thread.i:                                  ; preds = %.invoke.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bc:                                            ; preds = %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !316
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o), !noalias !317
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.aq
  %.sroa.34.sroa.45.3 = phi i32 [ %.sroa.34.sroa.45.2, %bb.bc ], [ %.sroa.34.sroa.45.0.extract.trunc128, %bb.aq ]
  %.sroa.34.sroa.42.3 = phi i16 [ %.sroa.34.sroa.42.2, %bb.bc ], [ %.sroa.34.sroa.42.0.extract.trunc101, %bb.aq ]
  %.sroa.34.sroa.35.3 = phi i8 [ %.sroa.34.sroa.35.2, %bb.bc ], [ %.sroa.34.sroa.35.0.extract.trunc75, %bb.aq ]
  %.sroa.34.sroa.0.3 = phi i8 [ %.sroa.34.sroa.0.2, %bb.bc ], [ %.sroa.34.sroa.0.0.extract.trunc51, %bb.aq ]
  %.sroa.77.3 = phi i64 [ %.sroa.77.2, %bb.bc ], [ %.sroa.6180.i.sroa.7.0.copyload168, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !316
  br label %bb.cw

bb.be:                                            ; preds = %bb.bk, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !316
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader26read_null_terminated_sliceCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bf unwind label %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.bf:                                            ; preds = %bb.be
  %i.ei = load i8, ptr %i.dm, align 8, !range !14, !noalias !316, !noundef !5 ; 2 uses
  %i.ej = icmp eq i8 %i.ei, 2
  %.sroa.0672.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !316 ; 5 uses
  %.sroa.4673.0.copyload.i = load i64, ptr %.sroa.0380.sroa.4.0..sroa_idx.i, align 8, !noalias !316 ; 3 uses
  br i1 %i.ej, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !316
  %.sroa.34.sroa.0.0.extract.trunc41 = trunc i64 %.sroa.0672.0.copyload.i to i8
  %.sroa.34.sroa.35.0.extract.shift56 = lshr i64 %.sroa.0672.0.copyload.i, 8
  %.sroa.34.sroa.35.0.extract.trunc57 = trunc i64 %.sroa.34.sroa.35.0.extract.shift56 to i8
  %.sroa.34.sroa.42.0.extract.shift82 = lshr i64 %.sroa.0672.0.copyload.i, 16
  %.sroa.34.sroa.42.0.extract.trunc83 = trunc i64 %.sroa.34.sroa.42.0.extract.shift82 to i16
  %.sroa.34.sroa.45.0.extract.shift109 = lshr i64 %.sroa.0672.0.copyload.i, 32
  %.sroa.34.sroa.45.0.extract.trunc110 = trunc nuw i64 %.sroa.34.sroa.45.0.extract.shift109 to i32
  br label %.invoke.i

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8576.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5382.0..sroa_idx.i, i64 7, i1 false), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !316
  %i.ek = icmp eq i64 %.sroa.4673.0.copyload.i, 0
  br i1 %i.ek, label %.loopexit752.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.el = load i64, ptr %i.dk, align 8, !alias.scope !346, !noalias !316, !noundef !5 ; 3 uses
  %i.em = load i64, ptr %i.n, align 8, !range !11, !alias.scope !346, !noalias !316, !noundef !5
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianEjEE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #22
          to label %bb.bk unwind label %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.eo = load ptr, ptr %i.dj, align 8, !alias.scope !346, !noalias !316, !nonnull !5, !noundef !5
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.el ; 5 uses
  store i64 32, ptr %i.ep, align 16, !noalias !317
  %.sroa.4584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %.sroa.0672.0.copyload.i, ptr %.sroa.4584.0..sroa_idx.i, align 8, !noalias !317
  %.sroa.4584.sroa.4.0..sroa.4584.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %.sroa.4673.0.copyload.i, ptr %.sroa.4584.sroa.4.0..sroa.4584.0..sroa_idx.sroa_idx.i, align 16, !noalias !317
  %.sroa.4584.sroa.5.0..sroa.4584.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i8 %i.ei, ptr %.sroa.4584.sroa.5.0..sroa.4584.0..sroa_idx.sroa_idx.i, align 8, !noalias !317
  %.sroa.4584.sroa.6.0..sroa.4584.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4584.sroa.6.0..sroa.4584.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8576.i, i64 7, i1 false), !noalias !317
  %i.eq = add i64 %i.el, 1
  store i64 %i.eq, ptr %i.dk, align 8, !alias.scope !346, !noalias !316
  br label %bb.be

bb.bl:                                            ; preds = %.loopexit752.i, %.loopexit752.thread.i
  %.sroa.4133.1 = phi i8 [ %.sroa.4133.0, %.loopexit752.i ], [ 2, %.loopexit752.thread.i ] ; 2 uses
  %i.er = phi ptr [ %i.dz, %.loopexit752.i ], [ %i.du, %.loopexit752.thread.i ] ; 2 uses
  %i.es = phi ptr [ %i.dy, %.loopexit752.i ], [ %i.dt, %.loopexit752.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !316
  invoke fastcc void @_RINvMse_NtNtCsi68uqYEhoRA_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !317

bb.bm:                                            ; preds = %.loopexit752.i
  %.sroa.4209.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4209.0.copyload.i = load i8, ptr %.sroa.4209.0..sroa_idx.i, align 8, !alias.scope !315 ; 2 uses
  %.not467.i = icmp eq i8 %.sroa.4209.0.copyload.i, 2
  br i1 %.not467.i, label %bb.ce, label %bb.cd

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i
  %.sroa.0264.0.i = phi i1 [ %.sroa.0264.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp740.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp303, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %bb.bz unwind label %bb.ct, !noalias !317

.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cn, %bb.cj, %bb.cf, %bb.bw, %bb.bs
  %lpad.loopexit.split-lp303 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.br, %bb.bo, %bb.bl
  %.sroa.0264.1.ph.ph.i = phi i1 [ true, %bb.bo ], [ true, %bb.br ], [ false, %bb.bl ]
  %lpad.loopexit.split-lp740.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bn:                                            ; preds = %bb.bl
  %i.et = load i64, ptr %i.d, align 8, !range !344, !noalias !316, !noundef !5 ; 2 uses
  %i.eu = icmp eq i64 %i.et, -1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6236.i.sroa.0.0.copyload180 = load i64, ptr %i.ev, align 8, !noalias !316 ; 2 uses
  %.sroa.6236.i.sroa.7.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6236.i.sroa.7.0.copyload183 = load i64, ptr %.sroa.6236.i.sroa.7.0..sroa_idx182, align 8, !noalias !316 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !316
  br i1 %i.eu, label %bb.by, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.2239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %.sroa.6236.i.sroa.0.0.copyload180, ptr %.sroa.2239.0..sroa_idx.i, align 8, !noalias !316
  %.sroa.6236.i.sroa.7.0..sroa.2239.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %.sroa.6236.i.sroa.7.0.copyload183, ptr %.sroa.6236.i.sroa.7.0..sroa.2239.0..sroa_idx.i.sroa_idx, align 8, !noalias !316
  store i64 %i.et, ptr %i.i, align 8, !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !316
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader12read_uleb128Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !317

bb.bp:                                            ; preds = %bb.bo
  %i.ew = load i8, ptr %i.c, align 8, !range !10, !noalias !316, !noundef !5 ; 2 uses
  %.not466.i = icmp eq i8 %i.ew, -1
  br i1 %.not466.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.sroa.4429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.34.sroa.35.1.copyload77 = load i8, ptr %.sroa.4429.0..sroa_idx.i, align 1, !noalias !318
  %.sroa.34.sroa.42.1..sroa.4429.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.34.sroa.42.1.copyload103 = load i16, ptr %.sroa.34.sroa.42.1..sroa.4429.0..sroa_idx.i.sroa_idx, align 2, !noalias !318
  %.sroa.34.sroa.45.1..sroa.4429.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.34.sroa.45.1.copyload130 = load i32, ptr %.sroa.34.sroa.45.1..sroa.4429.0..sroa_idx.i.sroa_idx, align 4, !noalias !318
  %.sroa.5430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5430.0.copyload.i = load i64, ptr %.sroa.5430.0..sroa_idx.i, align 8, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.cb unwind label %.split.thread799.i, !noalias !317

.split.thread799.i:                               ; preds = %bb.bq
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.br:                                            ; preds = %bb.bp
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !316, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  %.val.i11 = load i64, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !noalias !316, !noundef !5
  %..i509.i = call noundef i64 @llvm.umin.i64(i64 %.val.i11, i64 %i.ey)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianEjEE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i509.i)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !317

.preheader.i:                                     ; preds = %bb.br
  %.not759.i = icmp eq i64 %i.ey, 0
  br i1 %.not759.i, label %.loopexit, label %.lr.ph758.i

.lr.ph758.i:                                      ; preds = %.preheader.i
  %.sroa.4447.0.insert.ext.i = zext nneg i8 %i.aj to i32
  %.sroa.4447.0.insert.shift.i = shl nuw nsw i32 %.sroa.4447.0.insert.ext.i, 8
  %.sroa.0446.0.insert.ext.i = zext i8 %.sroa.0.0.i to i32
  %.sroa.4447.0.insert.insert.i = or disjoint i32 %.sroa.4447.0.insert.shift.i, %.sroa.0446.0.insert.ext.i
  %.sroa.0446.0.insert.insert.i = or disjoint i32 %.sroa.4447.0.insert.insert.i, 327680
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bx, %.lr.ph758.i
  %.sroa.0439.0757.i = phi i64 [ 0, %.lr.ph758.i ], [ %i.ez, %bb.bx ]
  %i.ez = add nuw i64 %.sroa.0439.0757.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !316
  %i.fa = load ptr, ptr %.sroa.2239.0..sroa_idx.i, align 8, !noalias !316, !nonnull !5, !noundef !5
  %i.fb = load i64, ptr %.sroa.6236.i.sroa.7.0..sroa.2239.0..sroa_idx.i.sroa_idx, align 8, !noalias !316, !noundef !5
  invoke fastcc void @_RINvNtNtCsi68uqYEhoRA_5gimli4read4line13parse_file_v5INtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, i32 noundef %.sroa.0446.0.insert.insert.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.fa, i64 noundef %i.fb)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.bt:                                            ; preds = %bb.bs
  %i.fc = load i64, ptr %i.b, align 16, !range !12, !noalias !316, !noundef !5 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, -1
  %i.fe = load <2 x i64>, ptr %.sroa.4435.0..sroa_idx.i, align 8, !noalias !316 ; 3 uses
  br i1 %i.fd, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !316
  %i.ff = extractelement <2 x i64> %i.fe, i64 0
  %i.fg = extractelement <2 x i64> %i.fe, i64 1
  br label %bb.by

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3609.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5436.0..sroa_idx.i, i64 88, i1 false), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !316
  %i.fh = load i64, ptr %i.er, align 8, !alias.scope !347, !noalias !316, !noundef !5 ; 3 uses
  %i.fi = load i64, ptr %i.h, align 8, !range !11, !alias.scope !347, !noalias !316, !noundef !5
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianEjEE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.fk = load ptr, ptr %i.es, align 8, !alias.scope !347, !noalias !316, !nonnull !5, !noundef !5
  %i.fl = getelementptr inbounds nuw [112 x i8], ptr %i.fk, i64 %i.fh ; 3 uses
  store i64 %i.fc, ptr %i.fl, align 16, !noalias !317
  %.sroa.2608.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store <2 x i64> %i.fe, ptr %.sroa.2608.0..sroa_idx.i, align 8, !noalias !317
  %.sroa.3609.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3609.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3609.i, i64 88, i1 false), !noalias !317
  %i.fm = add i64 %i.fh, 1
  store i64 %i.fm, ptr %i.er, align 8, !alias.scope !347, !noalias !316
  %exitcond766.not.i = icmp eq i64 %i.ez, %i.ey
  br i1 %exitcond766.not.i, label %.loopexit, label %bb.bs

bb.by:                                            ; preds = %bb.bn, %bb.cp, %bb.bu
  %.sroa.34.sroa.45.6.in.in = phi i64 [ %.sroa.34.sroa.45.7.in.in, %bb.cp ], [ %i.ff, %bb.bu ], [ %.sroa.6236.i.sroa.0.0.copyload180, %bb.bn ] ; 4 uses
  %.sroa.77.6 = phi i64 [ %.sroa.77.7, %bb.cp ], [ %i.fg, %bb.bu ], [ %.sroa.6236.i.sroa.7.0.copyload183, %bb.bn ] ; 2 uses
  %7 = phi i1 [ true, %bb.cp ], [ true, %bb.bu ], [ false, %bb.bn ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.cr unwind label %bb.ca, !noalias !317

bb.bz:                                            ; preds = %.loopexit.split-lp.i
  br i1 %.sroa.0264.0.i, label %bb.cu, label %.loopexit.split-lp743.i

bb.ca:                                            ; preds = %bb.by
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %7, label %bb.cu, label %.loopexit.split-lp743.i

bb.cb:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !316
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cr, %bb.cb
  %.sroa.34.sroa.45.4 = phi i32 [ %.sroa.34.sroa.45.6, %bb.cr ], [ %.sroa.34.sroa.45.1.copyload130, %bb.cb ]
  %.sroa.34.sroa.42.4 = phi i16 [ %.sroa.34.sroa.42.6, %bb.cr ], [ %.sroa.34.sroa.42.1.copyload103, %bb.cb ]
  %.sroa.34.sroa.35.4 = phi i8 [ %.sroa.34.sroa.35.6, %bb.cr ], [ %.sroa.34.sroa.35.1.copyload77, %bb.cb ]
  %.sroa.34.sroa.0.4 = phi i8 [ %.sroa.34.sroa.0.6, %bb.cr ], [ %i.ew, %bb.cb ]
  %.sroa.77.4 = phi i64 [ %.sroa.77.6, %bb.cr ], [ %.sroa.5430.0.copyload.i, %bb.cb ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.cs unwind label %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.cd:                                            ; preds = %bb.bm
  %.sroa.5212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5202.sroa.0.sroa.5.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.5212.0..sroa_idx.i, i64 7, i1 false), !noalias !348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5202.sroa.0.sroa.7.i, i8 0, i64 16, i1 false), !noalias !316
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bm
  %.sroa.0200.0.i = phi i64 [ 32, %bb.cd ], [ -1, %bb.bm ]
  store i64 0, ptr %i.i, align 8, !noalias !316
  %.sroa.4215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4215.0..sroa_idx.i, align 8, !noalias !316
  %.sroa.5216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5216.0..sroa_idx.i, align 8, !noalias !316
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0417.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %.sroa.6593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8596.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.4421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.cf

bb.cf:                                            ; preds = %bb.co, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8596.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !316
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader26read_null_terminated_sliceCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.cg:                                            ; preds = %bb.cf
  %i.fp = load i8, ptr %i.fo, align 8, !range !14, !noalias !316, !noundef !5 ; 2 uses
  %i.fq = icmp eq i8 %i.fp, 2
  %.sroa.0678.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !316 ; 2 uses
  %.sroa.4679.0.copyload.i = load i64, ptr %.sroa.0417.sroa.4.0..sroa_idx.i, align 8, !noalias !316 ; 3 uses
  br i1 %i.fq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !316
  br label %bb.cp

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8596.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5419.0..sroa_idx.i, i64 7, i1 false), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !316
  %i.fr = icmp eq i64 %.sroa.4679.0.copyload.i, 0
  br i1 %i.fr, label %bb.cq, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !316
  store i64 %.sroa.0678.0.copyload.i, ptr %i.e, align 8, !noalias !316
  store i64 %.sroa.4679.0.copyload.i, ptr %.sroa.6593.0..sroa_idx.i, align 8, !noalias !316
  store i8 %i.fp, ptr %.sroa.7595.0..sroa_idx.i, align 8, !noalias !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8596.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8596.i, i64 7, i1 false), !noalias !316
  invoke fastcc void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_9FileEntryINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE5parseCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(112) %i.f, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !316
  %i.fs = load i64, ptr %i.f, align 16, !range !12, !noalias !316, !noundef !5 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, -1
  %i.fu = load <2 x i64>, ptr %.sroa.4421.0..sroa_idx.i, align 8, !noalias !316 ; 3 uses
  br i1 %i.ft, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !316
  %i.fv = extractelement <2 x i64> %i.fu, i64 0
  %i.fw = extractelement <2 x i64> %i.fu, i64 1
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3606.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5422.0..sroa_idx.i, i64 88, i1 false), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !316
  %i.fx = load i64, ptr %i.dz, align 8, !alias.scope !349, !noalias !316, !noundef !5 ; 3 uses
  %i.fy = load i64, ptr %i.h, align 8, !range !11, !alias.scope !349, !noalias !316, !noundef !5
  %i.fz = icmp eq i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianEjEE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !317

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ga = load ptr, ptr %i.dy, align 8, !alias.scope !349, !noalias !316, !nonnull !5, !noundef !5
  %i.gb = getelementptr inbounds nuw [112 x i8], ptr %i.ga, i64 %i.fx ; 3 uses
  store i64 %i.fs, ptr %i.gb, align 16, !noalias !317
  %.sroa.2605.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store <2 x i64> %i.fu, ptr %.sroa.2605.0..sroa_idx.i, align 8, !noalias !317
  %.sroa.3606.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3606.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3606.i, i64 88, i1 false), !noalias !317
  %i.gc = add i64 %i.fx, 1
  store i64 %i.gc, ptr %i.dz, align 8, !alias.scope !349, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8596.i)
  br label %bb.cf

bb.cp:                                            ; preds = %bb.cl, %bb.ch
  %.sroa.34.sroa.45.7.in.in = phi i64 [ %.sroa.0678.0.copyload.i, %bb.ch ], [ %i.fv, %bb.cl ]
  %.sroa.77.7 = phi i64 [ %.sroa.4679.0.copyload.i, %bb.ch ], [ %i.fw, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8596.i)
  br label %bb.by

bb.cq:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8596.i)
  br label %.loopexit

bb.cr:                                            ; preds = %bb.by
  %.sroa.34.sroa.0.6 = trunc i64 %.sroa.34.sroa.45.6.in.in to i8 ; 2 uses
  %.sroa.34.sroa.35.6.in = lshr i64 %.sroa.34.sroa.45.6.in.in, 8
  %.sroa.34.sroa.35.6 = trunc i64 %.sroa.34.sroa.35.6.in to i8 ; 2 uses
  %.sroa.34.sroa.42.6.in = lshr i64 %.sroa.34.sroa.45.6.in.in, 16
  %.sroa.34.sroa.42.6 = trunc i64 %.sroa.34.sroa.42.6.in to i16 ; 2 uses
  %.sroa.34.sroa.45.6.in = lshr i64 %.sroa.34.sroa.45.6.in.in, 32
  %.sroa.34.sroa.45.6 = trunc nuw i64 %.sroa.34.sroa.45.6.in to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !316
  br i1 %7, label %bb.cc, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cc
  %.sroa.34.sroa.45.5 = phi i32 [ %.sroa.34.sroa.45.4, %bb.cc ], [ %.sroa.34.sroa.45.6, %bb.cr ]
  %.sroa.34.sroa.42.5 = phi i16 [ %.sroa.34.sroa.42.4, %bb.cc ], [ %.sroa.34.sroa.42.6, %bb.cr ]
  %.sroa.34.sroa.35.5 = phi i8 [ %.sroa.34.sroa.35.4, %bb.cc ], [ %.sroa.34.sroa.35.6, %bb.cr ]
  %.sroa.34.sroa.0.5 = phi i8 [ %.sroa.34.sroa.0.4, %bb.cc ], [ %.sroa.34.sroa.0.6, %bb.cr ]
  %.sroa.77.5 = phi i64 [ %.sroa.77.4, %bb.cc ], [ %.sroa.77.6, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !316
  br label %.invoke.i

.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bj, %bb.be, %bb.az, %bb.av, %bb.cc
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743.i

bb.ct:                                            ; preds = %bb.cv, %bb.cu, %.loopexit.split-lp.i, %.loopexit.split-lp743.i
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !317
  unreachable

bb.cu:                                            ; preds = %bb.ca, %bb.bz, %.split.thread799.i
  %.pn469798.i = phi { ptr, i32 } [ %i.fn, %bb.ca ], [ %.pn.i, %bb.bz ], [ %6, %.split.thread799.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #21
          to label %.loopexit.split-lp743.i unwind label %bb.ct, !noalias !317

bb.cv:                                            ; preds = %.split.thread.i, %bb.bb
  %.pn473735.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn471.i, %bb.bb ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #21
          to label %bb.cy unwind label %bb.ct, !noalias !317

bb.cw:                                            ; preds = %bb.aj, %bb.ag, %bb.aa, %bb.w, %bb.bd, %bb.al, %bb.ai, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.v, %bb.t
  %.sroa.34.sroa.45.1 = phi i32 [ undef, %bb.t ], [ undef, %bb.v ], [ %.sroa.34.sroa.45.2.copyload, %bb.ad ], [ undef, %bb.z ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.af ], [ undef, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.ag ], [ 0, %bb.al ], [ %.sroa.34.sroa.45.3, %bb.bd ], [ undef, %bb.aj ]
  %.sroa.34.sroa.42.1 = phi i16 [ undef, %bb.t ], [ undef, %bb.v ], [ %.sroa.34.sroa.42.2.copyload, %bb.ad ], [ undef, %bb.z ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.af ], [ undef, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.ag ], [ 0, %bb.al ], [ %.sroa.34.sroa.42.3, %bb.bd ], [ undef, %bb.aj ]
  %.sroa.34.sroa.35.1 = phi i8 [ undef, %bb.t ], [ undef, %bb.v ], [ %i.co, %bb.ad ], [ undef, %bb.z ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.af ], [ undef, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.ag ], [ 0, %bb.al ], [ %.sroa.34.sroa.35.3, %bb.bd ], [ undef, %bb.aj ]
  %.sroa.34.sroa.0.1 = phi i8 [ 17, %bb.t ], [ 17, %bb.v ], [ %i.cm, %bb.ad ], [ 17, %bb.z ], [ 22, %bb.w ], [ 17, %bb.ab ], [ 17, %bb.af ], [ 23, %bb.aa ], [ 17, %bb.ai ], [ 24, %bb.ag ], [ 17, %bb.al ], [ %.sroa.34.sroa.0.3, %bb.bd ], [ 25, %bb.aj ]
  %.sroa.77.1 = phi i64 [ %i.br, %bb.t ], [ %i.bu, %bb.v ], [ %.sroa.77.10.copyload, %bb.ad ], [ %i.cc, %bb.z ], [ undef, %bb.w ], [ %i.ch, %bb.ab ], [ %i.cr, %bb.af ], [ undef, %bb.aa ], [ %i.cx, %bb.ai ], [ undef, %bb.ag ], [ %i.df, %bb.al ], [ %.sroa.77.3, %bb.bd ], [ undef, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !316
  br label %bb.cz

bb.cx:                                            ; preds = %bb.q, %bb.r, %bb.p, %bb.n, %bb.j, %bb.h, %bb.f
  %.sroa.34.sroa.45.0 = phi i32 [ 0, %bb.f ], [ undef, %bb.j ], [ undef, %bb.p ], [ %.sroa.34.sroa.45.1.copyload, %bb.r ], [ 0, %bb.h ], [ %.sroa.34.sroa.45.2.copyload131, %bb.n ], [ undef, %bb.q ]
  %.sroa.34.sroa.42.0 = phi i16 [ 0, %bb.f ], [ undef, %bb.j ], [ undef, %bb.p ], [ %.sroa.34.sroa.42.1.copyload, %bb.r ], [ 0, %bb.h ], [ %.sroa.34.sroa.42.2.copyload104, %bb.n ], [ undef, %bb.q ]
  %.sroa.34.sroa.35.0 = phi i8 [ 0, %bb.f ], [ undef, %bb.j ], [ undef, %bb.p ], [ %.sroa.34.sroa.35.1.copyload, %bb.r ], [ 0, %bb.h ], [ %i.be, %bb.n ], [ %i.bk, %bb.q ]
  %.sroa.34.sroa.0.0 = phi i8 [ 17, %bb.f ], [ 15, %bb.j ], [ 17, %bb.p ], [ %i.bb, %bb.r ], [ 17, %bb.h ], [ %i.bc, %bb.n ], [ 61, %bb.q ]
  %.sroa.77.0 = phi i64 [ %i.an, %bb.f ], [ %i.az, %bb.j ], [ %i.bh, %bb.p ], [ %.sroa.5319.0.copyload.i, %bb.r ], [ %i.at, %bb.h ], [ %.sroa.77.10.copyload39, %bb.n ], [ undef, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !316
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cv, %bb.bb
  %.pn473734.i = phi { ptr, i32 } [ %.pn473735.i, %bb.cv ], [ %.pn471.i, %bb.bb ]
  resume { ptr, i32 } %.pn473734.i

bb.cz:                                            ; preds = %bb.d, %bb.cx, %bb.cw
  %.sroa.34.sroa.45.8.ph = phi i32 [ %.sroa.34.sroa.45.1, %bb.cw ], [ %.sroa.34.sroa.45.0, %bb.cx ], [ %.sroa.34.sroa.45.0.extract.trunc112, %bb.d ]
  %.sroa.34.sroa.42.8.ph = phi i16 [ %.sroa.34.sroa.42.1, %bb.cw ], [ %.sroa.34.sroa.42.0, %bb.cx ], [ %.sroa.34.sroa.42.0.extract.trunc85, %bb.d ]
  %.sroa.34.sroa.35.8.ph = phi i8 [ %.sroa.34.sroa.35.1, %bb.cw ], [ %.sroa.34.sroa.35.0, %bb.cx ], [ %.sroa.34.sroa.35.0.extract.trunc59, %bb.d ]
  %.sroa.34.sroa.0.8.ph = phi i8 [ %.sroa.34.sroa.0.1, %bb.cw ], [ %.sroa.34.sroa.0.0, %bb.cx ], [ %.sroa.34.sroa.0.0.extract.trunc42, %bb.d ]
  %.sroa.77.8.ph = phi i64 [ %.sroa.77.1, %bb.cw ], [ %.sroa.77.0, %bb.cx ], [ %.sroa.4276.0.copyload.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3609.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3606.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5202.sroa.0.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5202.sroa.0.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8576.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5135)
  %.sroa.34.sroa.45.0.insert.ext = zext i32 %.sroa.34.sroa.45.8.ph to i64
  %.sroa.34.sroa.45.0.insert.shift = shl nuw i64 %.sroa.34.sroa.45.0.insert.ext, 32
  %.sroa.34.sroa.42.0.insert.ext = zext i16 %.sroa.34.sroa.42.8.ph to i64
  %.sroa.34.sroa.42.0.insert.shift = shl nuw nsw i64 %.sroa.34.sroa.42.0.insert.ext, 16
  %.sroa.34.sroa.42.0.insert.insert = or disjoint i64 %.sroa.34.sroa.42.0.insert.shift, %.sroa.34.sroa.45.0.insert.shift
  %.sroa.34.sroa.35.0.insert.ext = zext i8 %.sroa.34.sroa.35.8.ph to i64
  %.sroa.34.sroa.35.0.insert.shift = shl nuw nsw i64 %.sroa.34.sroa.35.0.insert.ext, 8
  %.sroa.34.sroa.35.0.insert.insert = or disjoint i64 %.sroa.34.sroa.42.0.insert.insert, %.sroa.34.sroa.35.0.insert.shift
  %.sroa.34.sroa.0.0.insert.ext = zext i8 %.sroa.34.sroa.0.8.ph to i64
  %.sroa.34.sroa.0.0.insert.insert = or disjoint i64 %.sroa.34.sroa.35.0.insert.insert, %.sroa.34.sroa.0.0.insert.ext
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.34.sroa.0.0.insert.insert, ptr %i.ge, align 8
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.77.8.ph, ptr %.sroa.4163.0..sroa_idx, align 16
  store i64 -2, ptr %0, align 16
  br label %bb.da

.loopexit:                                        ; preds = %bb.bx, %bb.cq, %.preheader.i
  %.sroa.4133.2 = phi i8 [ %.sroa.4133.0, %bb.cq ], [ %.sroa.4133.1, %.preheader.i ], [ %.sroa.4133.1, %bb.bx ]
  %.sroa.0204.0.i = phi i64 [ %.sroa.0200.0.i, %bb.cq ], [ -1, %.preheader.i ], [ -1, %bb.bx ]
  %.sroa.6206.sroa.0.sroa.6.0.i = phi i8 [ %.sroa.4209.0.copyload.i, %bb.cq ], [ undef, %.preheader.i ], [ undef, %bb.bx ]
  %.sroa.101.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.101, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.101.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.111.sroa.0.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.111.sroa.0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.111.sroa.0.7..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.5.sroa.21.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.21.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5135, i64 7, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5202.sroa.0.sroa.5.i, i64 7, i1 false)
  %.sroa.99.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.99, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.99.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5202.sroa.0.sroa.7.i, i64 16, i1 false)
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3609.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3606.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5202.sroa.0.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5202.sroa.0.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8576.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5135)
  store i64 %.sroa.0204.0.i, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gf = load <2 x i64>, ptr %5, align 8, !alias.scope !350
  store <2 x i64> %i.gf, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.6206.sroa.0.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.99, i64 40, i1 false)
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.101, i64 32, i1 false)
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cy, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.dd, ptr %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.di, ptr %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.bt, ptr %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.17.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.bs, ptr %.sroa.5.sroa.17.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.18.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.val.i479.i, ptr %.sroa.5.sroa.18.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.19.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.sroa.19.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.111.sroa.0, i64 23, i1 false)
  %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.sroa.4133.2, ptr %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.22.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %2, ptr %.sroa.5.sroa.22.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.23.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.sroa.0275.0.copyload.i, ptr %.sroa.5.sroa.23.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.24.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.bn, ptr %.sroa.5.sroa.24.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.25.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 %.sroa.0.0.i, ptr %.sroa.5.sroa.25.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.26.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 %i.aj, ptr %.sroa.5.sroa.26.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.27.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 306
  store i16 %spec.select.i.i.i, ptr %.sroa.5.sroa.27.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.28.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 %i.cw, ptr %.sroa.5.sroa.28.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.29.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 %i.bx, ptr %.sroa.5.sroa.29.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.30.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 310
  store i8 %.sroa.099.0.i, ptr %.sroa.5.sroa.30.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.31.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 311
  store i8 %i.co, ptr %.sroa.5.sroa.31.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.32.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %i.cu, ptr %.sroa.5.sroa.32.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.33.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 %i.da, ptr %.sroa.5.sroa.33.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE12file_has_md5Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(320) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 16, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE12file_has_md50ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.val.i = load i16, ptr %i.f, align 2, !noalias !353, !noundef !5
  %i.g = icmp eq i16 %.val.i, 5                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.h, %i.e
  %or.cond = select i1 %i.g, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE12file_has_md50ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE12file_has_md50ECs8GyQQEoxZtT_7convert.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE13file_has_sizeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(320) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 306
  %i.b = load i16, ptr %i.a, align 2, !noundef !5
  %i.c = icmp ult i16 %i.b, 5
  br i1 %i.c, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE13file_has_size0ECs8GyQQEoxZtT_7convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load i64, ptr %i.f, align 16, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.not.not.i.not.not1 = icmp eq i64 %i.g, 0
  br i1 %.not.not.not.i.not.not1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianEjE13file_has_size0ECs8GyQQEoxZtT_7convert.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %i.i = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.val.i = load i16, ptr %i.i, align 2, !noalias !356, !noundef !5
  %i.j = icmp eq i16 %.val.i, 4                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
end_hunk_0
