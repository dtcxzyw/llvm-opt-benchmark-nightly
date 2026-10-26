Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.01?download=true
inline.NumInlined: 274
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB4_9DebugLineINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE7programB2y_:bb.a
  %.sroa.90.10.copyload = load i64, ptr %.sroa.90.10..sroa.5327.0..sroa_idx.i.sroa_idx, align 8, !noalias !716 ; 2 uses
  %.sroa.90.sroa.0.0.extract.trunc75 = trunc i64 %.sroa.90.10.copyload to i8
  %.sroa.90.sroa.30.0.extract.shift109 = lshr i64 %.sroa.90.10.copyload, 8
  %.sroa.90.sroa.30.0.extract.trunc110 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift109 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !714
  br label %bb.cx

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !714
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.cx, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = icmp samesign ugt i16 %spec.select.i.i.i, 3
  br i1 %i.ck, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !714
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader7read_u8B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.t, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y) #28, !noalias !715
  %i.cl = load i8, ptr %i.t, align 8, !range !9, !noalias !714, !noundef !5 ; 2 uses
  %.not459.i = icmp eq i8 %i.cl, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !714 ; 3 uses
  br i1 %.not459.i, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.ab, %bb.x
  %.sroa.099.0.i = phi i8 [ %i.cn, %bb.ab ], [ 1, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !714
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader7read_u8B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y) #28, !noalias !715
  %i.co = load i8, ptr %i.s, align 8, !range !9, !noalias !714, !noundef !5 ; 2 uses
  %.not460.i = icmp eq i8 %i.co, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !714 ; 2 uses
  br i1 %.not460.i, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.sroa.5336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.sroa.35.sroa.48.2.copyload209 = load i16, ptr %.sroa.5336.0..sroa_idx.i, align 2, !noalias !716
  %.sroa.35.sroa.57.2..sroa.5336.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.35.sroa.57.2.copyload242 = load i32, ptr %.sroa.35.sroa.57.2..sroa.5336.0..sroa_idx.i.sroa_idx, align 4, !noalias !716
  %.sroa.90.10..sroa.5336.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.90.10.copyload59 = load i64, ptr %.sroa.90.10..sroa.5336.0..sroa_idx.i.sroa_idx, align 8, !noalias !716 ; 2 uses
  %.sroa.90.sroa.0.0.extract.trunc80 = trunc i64 %.sroa.90.10.copyload59 to i8
  %.sroa.90.sroa.30.0.extract.shift119 = lshr i64 %.sroa.90.10.copyload59, 8
  %.sroa.90.sroa.30.0.extract.trunc120 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift119 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !714
  br label %bb.cx

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !714
  %i.cr = icmp eq i8 %i.cn, 0
  br i1 %i.cr, label %bb.cx, label %bb.z

bb.ac:                                            ; preds = %bb.z
  %.sroa.5345.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.sroa.35.sroa.48.2.copyload205 = load i16, ptr %.sroa.5345.0..sroa_idx.i, align 2, !noalias !716
  %.sroa.35.sroa.57.2..sroa.5345.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.35.sroa.57.2.copyload238 = load i32, ptr %.sroa.35.sroa.57.2..sroa.5345.0..sroa_idx.i.sroa_idx, align 4, !noalias !716
  %.sroa.90.10..sroa.5345.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.90.10.copyload55 = load i64, ptr %.sroa.90.10..sroa.5345.0..sroa_idx.i.sroa_idx, align 8, !noalias !716 ; 2 uses
  %.sroa.90.sroa.0.0.extract.trunc76 = trunc i64 %.sroa.90.10.copyload55 to i8
  %.sroa.90.sroa.30.0.extract.shift111 = lshr i64 %.sroa.90.10.copyload55, 8
  %.sroa.90.sroa.30.0.extract.trunc112 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift111 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !714
  br label %bb.cx

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !714
  %i.cs = icmp ne i8 %i.cq, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !714
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader7read_i8B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.r, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y) #28, !noalias !715
  %i.ct = load i8, ptr %i.r, align 8, !range !9, !noalias !714, !noundef !5 ; 2 uses
  %.not461.i = icmp eq i8 %i.ct, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !714 ; 2 uses
  br i1 %.not461.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.5354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.sroa.35.sroa.48.2.copyload206 = load i16, ptr %.sroa.5354.0..sroa_idx.i, align 2, !noalias !716
  %.sroa.35.sroa.57.2..sroa.5354.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.35.sroa.57.2.copyload239 = load i32, ptr %.sroa.35.sroa.57.2..sroa.5354.0..sroa_idx.i.sroa_idx, align 4, !noalias !716
  %.sroa.90.10..sroa.5354.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.90.10.copyload56 = load i64, ptr %.sroa.90.10..sroa.5354.0..sroa_idx.i.sroa_idx, align 8, !noalias !716 ; 2 uses
  %.sroa.90.sroa.0.0.extract.trunc77 = trunc i64 %.sroa.90.10.copyload56 to i8
  %.sroa.90.sroa.30.0.extract.shift113 = lshr i64 %.sroa.90.10.copyload56, 8
  %.sroa.90.sroa.30.0.extract.trunc114 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift113 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !714
  br label %bb.cx

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !714
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader7read_u8B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y) #28, !noalias !715
  %i.cw = load i8, ptr %i.q, align 8, !range !9, !noalias !714, !noundef !5 ; 2 uses
  %.not462.i = icmp eq i8 %i.cw, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !714 ; 3 uses
  br i1 %.not462.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.5363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.sroa.35.sroa.48.2.copyload207 = load i16, ptr %.sroa.5363.0..sroa_idx.i, align 2, !noalias !716
  %.sroa.35.sroa.57.2..sroa.5363.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.35.sroa.57.2.copyload240 = load i32, ptr %.sroa.35.sroa.57.2..sroa.5363.0..sroa_idx.i.sroa_idx, align 4, !noalias !716
  %.sroa.90.10..sroa.5363.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.90.10.copyload57 = load i64, ptr %.sroa.90.10..sroa.5363.0..sroa_idx.i.sroa_idx, align 8, !noalias !716 ; 2 uses
  %.sroa.90.sroa.0.0.extract.trunc78 = trunc i64 %.sroa.90.10.copyload57 to i8
  %.sroa.90.sroa.30.0.extract.shift115 = lshr i64 %.sroa.90.10.copyload57, 8
  %.sroa.90.sroa.30.0.extract.trunc116 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift115 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !714
  br label %bb.cx

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !714
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.cx, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = zext i1 %i.cs to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !714
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader7read_u8B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y) #28, !noalias !715
  %i.db = load i8, ptr %i.p, align 8, !range !9, !noalias !714, !noundef !5 ; 2 uses
  %.not463.i = icmp eq i8 %i.db, -1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !714 ; 4 uses
  br i1 %.not463.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.5372.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.35.sroa.48.2.copyload208 = load i16, ptr %.sroa.5372.0..sroa_idx.i, align 2, !noalias !716
  %.sroa.35.sroa.57.2..sroa.5372.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.35.sroa.57.2.copyload241 = load i32, ptr %.sroa.35.sroa.57.2..sroa.5372.0..sroa_idx.i.sroa_idx, align 4, !noalias !716
  %.sroa.90.10..sroa.5372.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.90.10.copyload58 = load i64, ptr %.sroa.90.10..sroa.5372.0..sroa_idx.i.sroa_idx, align 8, !noalias !716 ; 2 uses
  %.sroa.90.sroa.0.0.extract.trunc79 = trunc i64 %.sroa.90.10.copyload58 to i8
  %.sroa.90.sroa.30.0.extract.shift117 = lshr i64 %.sroa.90.10.copyload58, 8
  %.sroa.90.sroa.30.0.extract.trunc118 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift117 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !714
  br label %bb.cx

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !714
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.cx, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = add i8 %i.dd, -1
  %i.dg = zext i8 %i.df to i64                    ; 4 uses
  %i.dh = load ptr, ptr %.sroa.012.sroa.8.0..sroa_idx.i, align 16, !alias.scope !733, !noalias !714, !nonnull !5, !noundef !5 ; 3 uses
  %i.di = load i64, ptr %.sroa.012.sroa.9.0..sroa_idx.i, align 8, !alias.scope !733, !noalias !714, !noundef !5 ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dg
  br i1 %i.dj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dk = ptrtoint ptr %i.dh to i64               ; 2 uses
  %.sroa.90.sroa.0.0.extract.trunc87 = trunc i64 %i.dk to i8
  %.sroa.90.sroa.30.0.extract.shift133 = lshr i64 %i.dk, 8
  %.sroa.90.sroa.30.0.extract.trunc134 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift133 to i56
  br label %bb.cx

bb.an:                                            ; preds = %bb.al
  %i.dl = load ptr, ptr %i.y, align 16, !alias.scope !734, !noalias !714, !nonnull !5, !align !17, !noundef !5
  %.val.i1.i.i480.i = load i8, ptr %.sroa.413.0..sroa_idx.i, align 16, !range !16, !alias.scope !733, !noalias !714, !noundef !5
  %.val.i.i.i481.i = load i8, ptr %.sroa.012.sroa.6.0..sroa_idx.i, align 8, !range !16, !alias.scope !735, !noalias !714, !noundef !5
  %i.dm = load i64, ptr %.sroa.012.sroa.5.0..sroa_idx.i, align 16, !alias.scope !735, !noalias !714, !noundef !5
  %i.dn = load ptr, ptr %.sroa.012.sroa.4.0..sroa_idx.i, align 8, !alias.scope !735, !noalias !714, !nonnull !5, !noundef !5
  %i.do = sub nuw i64 %i.di, %i.dg
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store ptr %i.dp, ptr %.sroa.012.sroa.8.0..sroa_idx.i, align 16, !alias.scope !736, !noalias !714, !captures !10
  store i64 %i.do, ptr %.sroa.012.sroa.9.0..sroa_idx.i, align 8, !alias.scope !736, !noalias !714
  %i.dq = ptrtoint ptr %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !714
  store i64 0, ptr %i.n, align 8, !noalias !714
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.dr, align 8, !noalias !714
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  store i64 0, ptr %i.ds, align 8, !noalias !714
  %i.dt = icmp samesign ult i16 %spec.select.i.i.i, 5 ; 2 uses
  br i1 %i.dt, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !714
  invoke fastcc void @_RINvMse_NtNtCsi68uqYEhoRA_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y)
          to label %bb.aq unwind label %.loopexit.split-lp657.loopexit.split-lp.i, !noalias !715

bb.ap:                                            ; preds = %bb.an
  store i64 0, ptr %i.o, align 8, !noalias !714
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4165.0..sroa_idx.i, align 8, !noalias !714
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5166.0..sroa_idx.i, align 8, !noalias !714
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.0379.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.5381.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 49
  %.sroa.0167.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0167.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.bf

.loopexit.split-lp657.i:                          ; preds = %.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cv, %bb.cb, %bb.ca, %.loopexit.split-lp657.loopexit.split-lp.i
  %.sroa.0265.0.i = phi i1 [ true, %bb.cb ], [ true, %bb.cv ], [ true, %bb.ca ], [ %.sroa.0265.1.ph.ph.i, %.loopexit.split-lp657.loopexit.split-lp.i ], [ true, %.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn470.i = phi { ptr, i32 } [ %i.fx, %bb.cb ], [ %.pn468713.i, %bb.cv ], [ %.pn.i, %bb.ca ], [ %lpad.loopexit.split-lp668.i, %.loopexit.split-lp657.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp432, %.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEB3I_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #22
          to label %bb.bc unwind label %bb.cu, !noalias !715

.loopexit.split-lp657.loopexit.split-lp.i:        ; preds = %bb.av, %bb.as, %bb.ao
  %.sroa.0265.1.ph.ph.i = phi i1 [ true, %bb.as ], [ true, %bb.av ], [ false, %bb.ao ]
  %lpad.loopexit.split-lp668.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp657.i

bb.aq:                                            ; preds = %bb.ao
  %i.dv = load i64, ptr %i.l, align 8, !range !737, !noalias !714, !noundef !5 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, -1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6180.i.sroa.0.0.copyload283 = load i64, ptr %i.dx, align 8, !noalias !714 ; 5 uses
  %.sroa.6180.i.sroa.7.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6180.i.sroa.7.0.copyload286 = load i64, ptr %.sroa.6180.i.sroa.7.0..sroa_idx285, align 8, !noalias !714 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !714
  br i1 %i.dw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.sroa.35.sroa.0.0.extract.trunc151 = trunc i64 %.sroa.6180.i.sroa.0.0.copyload283 to i8
  %.sroa.35.sroa.35.0.extract.shift173 = lshr i64 %.sroa.6180.i.sroa.0.0.copyload283, 8
  %.sroa.35.sroa.35.0.extract.trunc174 = trunc i64 %.sroa.35.sroa.35.0.extract.shift173 to i8
  %.sroa.35.sroa.48.0.extract.shift199 = lshr i64 %.sroa.6180.i.sroa.0.0.copyload283, 16
  %.sroa.35.sroa.48.0.extract.trunc200 = trunc i64 %.sroa.35.sroa.48.0.extract.shift199 to i16
  %.sroa.35.sroa.57.0.extract.shift232 = lshr i64 %.sroa.6180.i.sroa.0.0.copyload283, 32
  %.sroa.35.sroa.57.0.extract.trunc233 = trunc nuw i64 %.sroa.35.sroa.57.0.extract.shift232 to i32
  %.sroa.90.sroa.0.0.extract.trunc73 = trunc i64 %.sroa.6180.i.sroa.7.0.copyload286 to i8
  %.sroa.90.sroa.30.0.extract.shift105 = lshr i64 %.sroa.6180.i.sroa.7.0.copyload286, 8
  %.sroa.90.sroa.30.0.extract.trunc106 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift105 to i56
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEB3I_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n), !noalias !715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !714
  br label %bb.be

bb.as:                                            ; preds = %bb.aq
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %.sroa.6180.i.sroa.0.0.copyload283, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !714
  %.sroa.6180.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %.sroa.6180.i.sroa.7.0.copyload286, ptr %.sroa.6180.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8, !noalias !714
  store i64 %i.dv, ptr %i.o, align 8, !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !714
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_uleb128B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.at unwind label %.loopexit.split-lp657.loopexit.split-lp.i, !noalias !715

bb.at:                                            ; preds = %bb.as
  %i.dy = load i8, ptr %i.k, align 8, !range !9, !noalias !714, !noundef !5 ; 2 uses
  %.not464.i = icmp eq i8 %i.dy, -1
  br i1 %.not464.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.4388.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.35.sroa.35.1.copyload177 = load i8, ptr %.sroa.4388.0..sroa_idx.i, align 1, !noalias !716
  %.sroa.35.sroa.48.1..sroa.4388.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %.sroa.35.sroa.48.1.copyload203 = load i16, ptr %.sroa.35.sroa.48.1..sroa.4388.0..sroa_idx.i.sroa_idx, align 2, !noalias !716
  %.sroa.35.sroa.57.1..sroa.4388.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.35.sroa.57.1.copyload236 = load i32, ptr %.sroa.35.sroa.57.1..sroa.4388.0..sroa_idx.i.sroa_idx, align 4, !noalias !716
  %.sroa.5389.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5389.0.copyload.i = load i64, ptr %.sroa.5389.0..sroa_idx.i, align 8, !noalias !714 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !714
  %.sroa.90.sroa.0.0.extract.trunc85 = trunc i64 %.sroa.5389.0.copyload.i to i8
  %.sroa.90.sroa.30.0.extract.shift129 = lshr i64 %.sroa.5389.0.copyload.i, 8
  %.sroa.90.sroa.30.0.extract.trunc130 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift129 to i56
  br label %.invoke.i

bb.av:                                            ; preds = %bb.at
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !714, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !714
  %.val474.i = load i64, ptr %.sroa.012.sroa.9.0..sroa_idx.i, align 8, !noalias !714, !noundef !5
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val474.i, i64 %i.ea)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBJ_8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEE7reserveB3b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %..i.i)
          to label %.preheader665.i unwind label %.loopexit.split-lp657.loopexit.split-lp.i, !noalias !715

.preheader665.i:                                  ; preds = %bb.av
  %.not.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i, label %.loopexit666.thread.i, label %.lr.ph.i

.loopexit666.thread.i:                            ; preds = %.preheader665.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !714
  store i64 0, ptr %i.h, align 8, !noalias !714
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.eb, align 8, !noalias !714
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.ec, align 8, !noalias !714
  br label %bb.bm

.lr.ph.i:                                         ; preds = %.preheader665.i
  %.sroa.4443.0.insert.ext.i = zext nneg i8 %.sroa.4275.0.copyload.i to i32
  %.sroa.4443.0.insert.shift.i = shl nuw nsw i32 %.sroa.4443.0.insert.ext.i, 8
  %.sroa.0442.0.insert.ext.i = zext i8 %.sroa.0.0.i to i32
  %.sroa.4443.0.insert.insert.i = or disjoint i32 %.sroa.4443.0.insert.shift.i, %.sroa.0442.0.insert.ext.i
  %.sroa.0442.0.insert.insert.i = or disjoint i32 %.sroa.4443.0.insert.insert.i, 327680
  %.sroa.4394.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6195.i.sroa.6.0..sroa.4394.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bb, %.lr.ph.i
  %.sroa.0436.0670.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ed, %bb.bb ]
  %i.ed = add nuw i64 %.sroa.0436.0670.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !714
  %i.ee = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !714, !nonnull !5, !noundef !5
  %i.ef = load i64, ptr %.sroa.6180.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx, align 8, !noalias !714, !noundef !5
  invoke fastcc void @_RINvNtNtCsi68uqYEhoRA_5gimli4read4line18parse_directory_v5INtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2A_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y, i32 noundef %.sroa.0442.0.insert.insert.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.ee, i64 noundef %i.ef)
          to label %bb.ax unwind label %.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

.loopexit666.i:                                   ; preds = %bb.bb, %bb.bi
  %.sroa.4246.0 = phi i8 [ %.sroa.4246.0.copyload, %bb.bi ], [ 2, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !714
  store i64 0, ptr %i.h, align 8, !noalias !714
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.eg, align 8, !noalias !714
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store i64 0, ptr %i.eh, align 8, !noalias !714
  br i1 %i.dt, label %bb.bn, label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  %i.ei = load i64, ptr %i.j, align 16, !range !13, !noalias !714, !noundef !5 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, -1
  %.sroa.6195.i.sroa.0.0.copyload288 = load i64, ptr %.sroa.4394.0..sroa_idx.i, align 8, !noalias !714 ; 5 uses
  %.sroa.6195.i.sroa.6.0.copyload291 = load i64, ptr %.sroa.6195.i.sroa.6.0..sroa.4394.0..sroa_idx.i.sroa_idx, align 16, !noalias !714 ; 3 uses
  br i1 %i.ej, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !714
  %.sroa.35.sroa.0.0.extract.trunc150 = trunc i64 %.sroa.6195.i.sroa.0.0.copyload288 to i8
  %.sroa.35.sroa.35.0.extract.shift171 = lshr i64 %.sroa.6195.i.sroa.0.0.copyload288, 8
  %.sroa.35.sroa.35.0.extract.trunc172 = trunc i64 %.sroa.35.sroa.35.0.extract.shift171 to i8
  %.sroa.35.sroa.48.0.extract.shift197 = lshr i64 %.sroa.6195.i.sroa.0.0.copyload288, 16
  %.sroa.35.sroa.48.0.extract.trunc198 = trunc i64 %.sroa.35.sroa.48.0.extract.shift197 to i16
  %.sroa.35.sroa.57.0.extract.shift230 = lshr i64 %.sroa.6195.i.sroa.0.0.copyload288, 32
  %.sroa.35.sroa.57.0.extract.trunc231 = trunc nuw i64 %.sroa.35.sroa.57.0.extract.shift230 to i32
  %.sroa.90.sroa.0.0.extract.trunc72 = trunc i64 %.sroa.6195.i.sroa.6.0.copyload291 to i8
  %.sroa.90.sroa.30.0.extract.shift103 = lshr i64 %.sroa.6195.i.sroa.6.0.copyload291, 8
  %.sroa.90.sroa.30.0.extract.trunc104 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift103 to i56
  br label %.invoke.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5395.0..sroa_idx.i, i64 40, i1 false), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !714
  %i.ek = load i64, ptr %i.ds, align 8, !alias.scope !738, !noalias !714, !noundef !5 ; 3 uses
  %i.el = load i64, ptr %i.n, align 8, !range !12, !alias.scope !738, !noalias !714, !noundef !5
  %i.em = icmp eq i64 %i.ek, %i.el
  br i1 %i.em, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEE8grow_oneB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #23
          to label %bb.bb unwind label %.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.en = load ptr, ptr %i.dr, align 8, !alias.scope !738, !noalias !714, !nonnull !5, !noundef !5
  %i.eo = getelementptr inbounds nuw [64 x i8], ptr %i.en, i64 %i.ek ; 4 uses
  store i64 %i.ei, ptr %i.eo, align 16, !noalias !715
  %.sroa.2544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.6195.i.sroa.0.0.copyload288, ptr %.sroa.2544.0..sroa_idx.i, align 8, !noalias !715
  %.sroa.6195.i.sroa.6.0..sroa.2544.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.6195.i.sroa.6.0.copyload291, ptr %.sroa.6195.i.sroa.6.0..sroa.2544.0..sroa_idx.i.sroa_idx, align 16, !noalias !715
  %.sroa.3.0..sroa_idx545.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx545.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.i, i64 40, i1 false), !noalias !715
  %i.ep = add i64 %i.ek, 1
  store i64 %i.ep, ptr %i.ds, align 8, !alias.scope !738, !noalias !714
  %exitcond.not.i = icmp eq i64 %i.ed, %i.ea
  br i1 %exitcond.not.i, label %.loopexit666.i, label %bb.aw

.invoke.i:                                        ; preds = %bb.ct, %bb.bh, %bb.ay, %bb.au
  %.sroa.35.sroa.57.2 = phi i32 [ %.sroa.35.sroa.57.0.extract.trunc235, %bb.bh ], [ %.sroa.35.sroa.57.5, %bb.ct ], [ %.sroa.35.sroa.57.0.extract.trunc231, %bb.ay ], [ %.sroa.35.sroa.57.1.copyload236, %bb.au ]
  %.sroa.35.sroa.48.2 = phi i16 [ %.sroa.35.sroa.48.0.extract.trunc202, %bb.bh ], [ %.sroa.35.sroa.48.5, %bb.ct ], [ %.sroa.35.sroa.48.0.extract.trunc198, %bb.ay ], [ %.sroa.35.sroa.48.1.copyload203, %bb.au ]
  %.sroa.35.sroa.35.2 = phi i8 [ %.sroa.35.sroa.35.0.extract.trunc176, %bb.bh ], [ %.sroa.35.sroa.35.5, %bb.ct ], [ %.sroa.35.sroa.35.0.extract.trunc172, %bb.ay ], [ %.sroa.35.sroa.35.1.copyload177, %bb.au ]
  %.sroa.35.sroa.0.2 = phi i8 [ %.sroa.35.sroa.0.0.extract.trunc152, %bb.bh ], [ %.sroa.35.sroa.0.5, %bb.ct ], [ %.sroa.35.sroa.0.0.extract.trunc150, %bb.ay ], [ %i.dy, %bb.au ]
  %.sroa.90.sroa.30.sroa.0.2 = phi i56 [ %.sroa.90.sroa.30.0.extract.trunc108, %bb.bh ], [ %.sroa.90.sroa.30.sroa.0.5, %bb.ct ], [ %.sroa.90.sroa.30.0.extract.trunc104, %bb.ay ], [ %.sroa.90.sroa.30.0.extract.trunc130, %bb.au ]
  %.sroa.90.sroa.0.2 = phi i8 [ %.sroa.90.sroa.0.0.extract.trunc74, %bb.bh ], [ %.sroa.90.sroa.0.5, %bb.ct ], [ %.sroa.90.sroa.0.0.extract.trunc72, %bb.ay ], [ %.sroa.90.sroa.0.0.extract.trunc85, %bb.au ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEB3I_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n)
          to label %bb.bd unwind label %.split.thread.i, !noalias !715

bb.bc:                                            ; preds = %.loopexit.split-lp657.i
  br i1 %.sroa.0265.0.i, label %bb.cw, label %bb.cz

.split.thread.i:                                  ; preds = %.invoke.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.bd:                                            ; preds = %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !714
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o), !noalias !715
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ar
  %.sroa.35.sroa.57.3 = phi i32 [ %.sroa.35.sroa.57.2, %bb.bd ], [ %.sroa.35.sroa.57.0.extract.trunc233, %bb.ar ]
  %.sroa.35.sroa.48.3 = phi i16 [ %.sroa.35.sroa.48.2, %bb.bd ], [ %.sroa.35.sroa.48.0.extract.trunc200, %bb.ar ]
  %.sroa.35.sroa.35.3 = phi i8 [ %.sroa.35.sroa.35.2, %bb.bd ], [ %.sroa.35.sroa.35.0.extract.trunc174, %bb.ar ]
  %.sroa.35.sroa.0.3 = phi i8 [ %.sroa.35.sroa.0.2, %bb.bd ], [ %.sroa.35.sroa.0.0.extract.trunc151, %bb.ar ]
  %.sroa.90.sroa.30.sroa.0.3 = phi i56 [ %.sroa.90.sroa.30.sroa.0.2, %bb.bd ], [ %.sroa.90.sroa.30.0.extract.trunc106, %bb.ar ]
  %.sroa.90.sroa.0.3 = phi i8 [ %.sroa.90.sroa.0.2, %bb.bd ], [ %.sroa.90.sroa.0.0.extract.trunc73, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !714
  br label %bb.cx

bb.bf:                                            ; preds = %bb.bl, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !714
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader26read_null_terminated_sliceB26_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.bg unwind label %.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.bg:                                            ; preds = %bb.bf
  %i.eq = load i8, ptr %i.du, align 8, !range !15, !noalias !714, !noundef !5 ; 2 uses
  %i.er = icmp eq i8 %i.eq, 2
  %.sroa.0167.sroa.0.i.sroa.0.0.copyload278 = load i64, ptr %i.m, align 8, !noalias !714 ; 5 uses
  %.sroa.0167.sroa.0.i.sroa.7.0.copyload281 = load i64, ptr %.sroa.0167.sroa.0.i.sroa.7.0..sroa_idx, align 8, !noalias !714 ; 3 uses
  br i1 %i.er, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !714
  %.sroa.35.sroa.0.0.extract.trunc152 = trunc i64 %.sroa.0167.sroa.0.i.sroa.0.0.copyload278 to i8
  %.sroa.35.sroa.35.0.extract.shift175 = lshr i64 %.sroa.0167.sroa.0.i.sroa.0.0.copyload278, 8
  %.sroa.35.sroa.35.0.extract.trunc176 = trunc i64 %.sroa.35.sroa.35.0.extract.shift175 to i8
  %.sroa.35.sroa.48.0.extract.shift201 = lshr i64 %.sroa.0167.sroa.0.i.sroa.0.0.copyload278, 16
  %.sroa.35.sroa.48.0.extract.trunc202 = trunc i64 %.sroa.35.sroa.48.0.extract.shift201 to i16
  %.sroa.35.sroa.57.0.extract.shift234 = lshr i64 %.sroa.0167.sroa.0.i.sroa.0.0.copyload278, 32
  %.sroa.35.sroa.57.0.extract.trunc235 = trunc nuw i64 %.sroa.35.sroa.57.0.extract.shift234 to i32
  %.sroa.90.sroa.0.0.extract.trunc74 = trunc i64 %.sroa.0167.sroa.0.i.sroa.7.0.copyload281 to i8
  %.sroa.90.sroa.30.0.extract.shift107 = lshr i64 %.sroa.0167.sroa.0.i.sroa.7.0.copyload281, 8
  %.sroa.90.sroa.30.0.extract.trunc108 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift107 to i56
  br label %.invoke.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0533.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0167.sroa.0.i.sroa.8.0..sroa_idx, i64 24, i1 false), !noalias !714
  %.sroa.0379.sroa.4.0.copyload.i = load i64, ptr %.sroa.0379.sroa.4.0..sroa_idx.i, align 8, !noalias !714 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8537.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5381.0..sroa_idx.i, i64 7, i1 false), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !714
  %i.es = icmp eq i64 %.sroa.0379.sroa.4.0.copyload.i, 0
  br i1 %i.es, label %.loopexit666.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.et = load i64, ptr %i.ds, align 8, !alias.scope !739, !noalias !714, !noundef !5 ; 3 uses
  %i.eu = load i64, ptr %i.n, align 8, !range !12, !alias.scope !739, !noalias !714, !noundef !5
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4unit14AttributeValueINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEE8grow_oneB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #23
          to label %bb.bl unwind label %.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ew = load ptr, ptr %i.dr, align 8, !alias.scope !739, !noalias !714, !nonnull !5, !noundef !5
  %i.ex = getelementptr inbounds nuw [64 x i8], ptr %i.ew, i64 %i.et ; 7 uses
  store i64 32, ptr %i.ex, align 16, !noalias !715
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %.sroa.0167.sroa.0.i.sroa.0.0.copyload278, ptr %.sroa.4.0..sroa_idx.i11, align 8, !noalias !715
  %.sroa.0533.i.sroa.4.0..sroa.4.0..sroa_idx.i11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %.sroa.0167.sroa.0.i.sroa.7.0.copyload281, ptr %.sroa.0533.i.sroa.4.0..sroa.4.0..sroa_idx.i11.sroa_idx, align 16, !noalias !715
  %.sroa.0533.i.sroa.5.0..sroa.4.0..sroa_idx.i11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0533.i.sroa.5.0..sroa.4.0..sroa_idx.i11.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0533.i.sroa.5, i64 24, i1 false), !noalias !715
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  store i64 %.sroa.0379.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 16, !noalias !715
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  store i8 %i.eq, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !715
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8537.i, i64 7, i1 false), !noalias !715
  %i.ey = add i64 %i.et, 1
  store i64 %i.ey, ptr %i.ds, align 8, !alias.scope !739, !noalias !714
  br label %bb.bf

bb.bm:                                            ; preds = %.loopexit666.i, %.loopexit666.thread.i
  %.sroa.4246.1 = phi i8 [ %.sroa.4246.0, %.loopexit666.i ], [ 2, %.loopexit666.thread.i ] ; 2 uses
  %i.ez = phi ptr [ %i.eh, %.loopexit666.i ], [ %i.ec, %.loopexit666.thread.i ] ; 2 uses
  %i.fa = phi ptr [ %i.eg, %.loopexit666.i ], [ %i.eb, %.loopexit666.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !714
  invoke fastcc void @_RINvMse_NtNtCsi68uqYEhoRA_5gimli4read4lineNtB6_15FileEntryFormat5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !715

bb.bn:                                            ; preds = %.loopexit666.i
  %.sroa.4208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.4208.0.copyload.i = load i8, ptr %.sroa.4208.0..sroa_idx.i, align 8, !alias.scope !713 ; 2 uses
  %.not466.i = icmp eq i8 %.sroa.4208.0.copyload.i, 2
  br i1 %.not466.i, label %bb.cf, label %bb.ce

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i
  %.sroa.0263.0.i = phi i1 [ %.sroa.0263.1.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp654.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp421, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEB3C_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #22
          to label %bb.ca unwind label %bb.cu, !noalias !715

.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %bb.ck, %bb.cg, %bb.bx, %bb.bt
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.bs, %bb.bp, %bb.bm
  %.sroa.0263.1.ph.ph.i = phi i1 [ true, %bb.bp ], [ true, %bb.bs ], [ false, %bb.bm ]
  %lpad.loopexit.split-lp654.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bo:                                            ; preds = %bb.bm
  %i.fb = load i64, ptr %i.d, align 8, !range !737, !noalias !714, !noundef !5 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, -1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fe = load <2 x i64>, ptr %i.fd, align 8, !noalias !714 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !714
  br i1 %i.fc, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.sroa.2238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ff = extractelement <2 x i64> %i.fe, i64 0
  store i64 %i.ff, ptr %.sroa.2238.0..sroa_idx.i, align 8, !noalias !714
  %.sroa.6235.i.sroa.7.0..sroa.2238.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.fg = extractelement <2 x i64> %i.fe, i64 1
  store i64 %i.fg, ptr %.sroa.6235.i.sroa.7.0..sroa.2238.0..sroa_idx.i.sroa_idx, align 8, !noalias !714
  store i64 %i.fb, ptr %i.i, align 8, !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !714
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_uleb128B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !715

bb.bq:                                            ; preds = %bb.bp
  %i.fh = load i8, ptr %i.c, align 8, !range !9, !noalias !714, !noundef !5 ; 2 uses
  %.not465.i = icmp eq i8 %i.fh, -1
  br i1 %.not465.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.sroa.4428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.35.sroa.35.1.copyload178 = load i8, ptr %.sroa.4428.0..sroa_idx.i, align 1, !noalias !716
  %.sroa.35.sroa.48.1..sroa.4428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.35.sroa.48.1.copyload204 = load i16, ptr %.sroa.35.sroa.48.1..sroa.4428.0..sroa_idx.i.sroa_idx, align 2, !noalias !716
  %.sroa.35.sroa.57.1..sroa.4428.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.35.sroa.57.1.copyload237 = load i32, ptr %.sroa.35.sroa.57.1..sroa.4428.0..sroa_idx.i.sroa_idx, align 4, !noalias !716
  %.sroa.5429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5429.0.copyload.i = load i64, ptr %.sroa.5429.0..sroa_idx.i, align 8, !noalias !714 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !714
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEB3C_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.cc unwind label %.split.thread714.i, !noalias !715

.split.thread714.i:                               ; preds = %bb.br
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bs:                                            ; preds = %bb.bq
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !noalias !714, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !714
  %.val.i = load i64, ptr %.sroa.012.sroa.9.0..sroa_idx.i, align 8, !noalias !714, !noundef !5
  %..i493.i = call noundef i64 @llvm.umin.i64(i64 %.val.i, i64 %i.fj)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBJ_8relocate14RelocateReaderINtNtBJ_12endian_slice11EndianSliceNtNtBL_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEE7reserveB35_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i493.i)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !715

.preheader.i:                                     ; preds = %bb.bs
  %.not673.i = icmp eq i64 %i.fj, 0
  br i1 %.not673.i, label %.loopexit, label %.lr.ph672.i

.lr.ph672.i:                                      ; preds = %.preheader.i
  %.sroa.4446.0.insert.ext.i = zext nneg i8 %.sroa.4275.0.copyload.i to i32
  %.sroa.4446.0.insert.shift.i = shl nuw nsw i32 %.sroa.4446.0.insert.ext.i, 8
  %.sroa.0445.0.insert.ext.i = zext i8 %.sroa.0.0.i to i32
  %.sroa.4446.0.insert.insert.i = or disjoint i32 %.sroa.4446.0.insert.shift.i, %.sroa.0445.0.insert.ext.i
  %.sroa.0445.0.insert.insert.i = or disjoint i32 %.sroa.4446.0.insert.insert.i, 327680
  %.sroa.4434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.by, %.lr.ph672.i
  %.sroa.0438.0671.i = phi i64 [ 0, %.lr.ph672.i ], [ %i.fk, %bb.by ]
  %i.fk = add nuw i64 %.sroa.0438.0671.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !714
  %i.fl = load ptr, ptr %.sroa.2238.0..sroa_idx.i, align 8, !noalias !714, !nonnull !5, !noundef !5
  %i.fm = load i64, ptr %.sroa.6235.i.sroa.7.0..sroa.2238.0..sroa_idx.i.sroa_idx, align 8, !noalias !714, !noundef !5
  invoke fastcc void @_RINvNtNtCsi68uqYEhoRA_5gimli4read4line13parse_file_v5INtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2v_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(176) %i.b, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y, i32 noundef %.sroa.0445.0.insert.insert.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.fl, i64 noundef %i.fm)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.bu:                                            ; preds = %bb.bt
  %i.fn = load i64, ptr %i.b, align 16, !range !13, !noalias !714, !noundef !5 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, -1
  %i.fp = load <2 x i64>, ptr %.sroa.4434.0..sroa_idx.i, align 8, !noalias !714 ; 2 uses
  br i1 %i.fo, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !714
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.3556.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.5435.0..sroa_idx.i, i64 152, i1 false), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !714
  %i.fq = load i64, ptr %i.ez, align 8, !alias.scope !740, !noalias !714, !noundef !5 ; 3 uses
  %i.fr = load i64, ptr %i.h, align 8, !range !12, !alias.scope !740, !noalias !714, !noundef !5
  %i.fs = icmp eq i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEE8grow_oneB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #23
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ft = load ptr, ptr %i.fa, align 8, !alias.scope !740, !noalias !714, !nonnull !5, !noundef !5
  %i.fu = getelementptr inbounds nuw [176 x i8], ptr %i.ft, i64 %i.fq ; 3 uses
  store i64 %i.fn, ptr %i.fu, align 16, !noalias !715
  %.sroa.2555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store <2 x i64> %i.fp, ptr %.sroa.2555.0..sroa_idx.i, align 8, !noalias !715
  %.sroa.3556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.3556.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.3556.i, i64 152, i1 false), !noalias !715
  %i.fv = add i64 %i.fq, 1
  store i64 %i.fv, ptr %i.ez, align 8, !alias.scope !740, !noalias !714
  %exitcond680.not.i = icmp eq i64 %i.fk, %i.fj
  br i1 %exitcond680.not.i, label %.loopexit, label %bb.bt

bb.bz:                                            ; preds = %bb.bo, %bb.cq, %bb.bv
  %7 = phi i1 [ true, %bb.cq ], [ true, %bb.bv ], [ false, %bb.bo ] ; 2 uses
  %i.fw = phi <2 x i64> [ %i.gm, %bb.cq ], [ %i.fp, %bb.bv ], [ %i.fe, %bb.bo ] ; 5 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEEEB3C_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.cs unwind label %bb.cb, !noalias !715

bb.ca:                                            ; preds = %.loopexit.split-lp.i
  br i1 %.sroa.0263.0.i, label %bb.cv, label %.loopexit.split-lp657.i

bb.cb:                                            ; preds = %bb.bz
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %7, label %bb.cv, label %.loopexit.split-lp657.i

bb.cc:                                            ; preds = %bb.br
  %.sroa.90.sroa.30.0.extract.shift131 = lshr i64 %.sroa.5429.0.copyload.i, 8
  %.sroa.90.sroa.30.0.extract.trunc132 = trunc nuw i64 %.sroa.90.sroa.30.0.extract.shift131 to i56
  %.sroa.90.sroa.0.0.extract.trunc86 = trunc i64 %.sroa.5429.0.copyload.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !714
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cs, %bb.cc
  %.sroa.35.sroa.57.4 = phi i32 [ %.sroa.35.sroa.57.6, %bb.cs ], [ %.sroa.35.sroa.57.1.copyload237, %bb.cc ]
  %.sroa.35.sroa.48.4 = phi i16 [ %.sroa.35.sroa.48.6, %bb.cs ], [ %.sroa.35.sroa.48.1.copyload204, %bb.cc ]
  %.sroa.35.sroa.35.4 = phi i8 [ %.sroa.35.sroa.35.6, %bb.cs ], [ %.sroa.35.sroa.35.1.copyload178, %bb.cc ]
  %.sroa.35.sroa.0.4 = phi i8 [ %.sroa.35.sroa.0.6, %bb.cs ], [ %i.fh, %bb.cc ]
  %.sroa.90.sroa.30.sroa.0.4 = phi i56 [ %.sroa.90.sroa.30.sroa.0.6, %bb.cs ], [ %.sroa.90.sroa.30.0.extract.trunc132, %bb.cc ]
  %.sroa.90.sroa.0.4 = phi i8 [ %.sroa.90.sroa.0.6, %bb.cs ], [ %.sroa.90.sroa.0.0.extract.trunc86, %bb.cc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ct unwind label %.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.ce:                                            ; preds = %bb.bn
  %.sroa.5211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5201.sroa.0.sroa.5.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.5211.0..sroa_idx.i, i64 7, i1 false), !noalias !741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5201.sroa.0.sroa.7.i, i8 0, i64 16, i1 false), !noalias !714
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bn
  %.sroa.0199.0.i = phi i64 [ 32, %bb.ce ], [ -1, %bb.bn ]
  store i64 0, ptr %i.i, align 8, !noalias !714
  %.sroa.4214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4214.0..sroa_idx.i, align 8, !noalias !714
  %.sroa.5215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5215.0..sroa_idx.i, align 8, !noalias !714
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0416.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  %.sroa.6547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.7549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.8550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 49
  %.sroa.4420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0216.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0546.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cp, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0546.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8550.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !714
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader26read_null_terminated_sliceB26_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.ch:                                            ; preds = %bb.cg
  %i.fz = load i8, ptr %i.fy, align 16, !range !15, !noalias !714, !noundef !5 ; 2 uses
  %i.ga = icmp eq i8 %i.fz, 2
  %i.gb = load <2 x i64>, ptr %i.g, align 16, !noalias !714 ; 2 uses
  br i1 %i.ga, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !714
  br label %bb.cq

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0546.i.sroa.7, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0216.sroa.0.i.sroa.8.0..sroa_idx, i64 24, i1 false), !noalias !714
  %.sroa.0416.sroa.4.0.copyload.i = load i64, ptr %.sroa.0416.sroa.4.0..sroa_idx.i, align 8, !noalias !714 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8550.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5418.0..sroa_idx.i, i64 7, i1 false), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !714
  %i.gc = icmp eq i64 %.sroa.0416.sroa.4.0.copyload.i, 0
  br i1 %i.gc, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !714
  store <2 x i64> %i.gb, ptr %i.e, align 16, !noalias !714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0546.i.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0546.i.sroa.7, i64 24, i1 false), !noalias !714
  store i64 %.sroa.0416.sroa.4.0.copyload.i, ptr %.sroa.6547.0..sroa_idx.i, align 8, !noalias !714
  store i8 %i.fz, ptr %.sroa.7549.0..sroa_idx.i, align 16, !noalias !714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8550.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8550.i, i64 7, i1 false), !noalias !714
  invoke fastcc void @_RNvMsd_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_9FileEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2z_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(176) %i.f, ptr noalias nofree noundef align 8 dereferenceable(56) %i.y, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %i.e)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !714
  %i.gd = load i64, ptr %i.f, align 16, !range !13, !noalias !714, !noundef !5 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, -1
  %i.gf = load <2 x i64>, ptr %.sroa.4420.0..sroa_idx.i, align 8, !noalias !714 ; 2 uses
  br i1 %i.ge, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !714
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.3553.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.5421.0..sroa_idx.i, i64 152, i1 false), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !714
  %i.gg = load i64, ptr %i.eh, align 8, !alias.scope !742, !noalias !714, !noundef !5 ; 3 uses
  %i.gh = load i64, ptr %i.h, align 8, !range !12, !alias.scope !742, !noalias !714, !noundef !5
  %i.gi = icmp eq i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read4line9FileEntryINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjEE8grow_oneB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #23
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.gj = load ptr, ptr %i.eg, align 8, !alias.scope !742, !noalias !714, !nonnull !5, !noundef !5
  %i.gk = getelementptr inbounds nuw [176 x i8], ptr %i.gj, i64 %i.gg ; 3 uses
  store i64 %i.gd, ptr %i.gk, align 16, !noalias !715
  %.sroa.2552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store <2 x i64> %i.gf, ptr %.sroa.2552.0..sroa_idx.i, align 8, !noalias !715
  %.sroa.3553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.3553.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.3553.i, i64 152, i1 false), !noalias !715
  %i.gl = add i64 %i.gg, 1
  store i64 %i.gl, ptr %i.eh, align 8, !alias.scope !742, !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0546.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8550.i)
  br label %bb.cg

bb.cq:                                            ; preds = %bb.cm, %bb.ci
  %i.gm = phi <2 x i64> [ %i.gb, %bb.ci ], [ %i.gf, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0546.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8550.i)
  br label %bb.bz

bb.cr:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0546.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8550.i)
  br label %.loopexit

bb.cs:                                            ; preds = %bb.bz
  %i.gn = bitcast <2 x i64> %i.fw to <16 x i8>
  %.sroa.90.sroa.0.6 = extractelement <16 x i8> %i.gn, i64 8 ; 2 uses
  %i.go = lshr <2 x i64> %i.fw, splat (i64 8)     ; 2 uses
  %i.gp = extractelement <2 x i64> %i.go, i64 1
  %.sroa.90.sroa.30.sroa.0.6 = trunc nuw i64 %i.gp to i56 ; 2 uses
  %i.gq = bitcast <2 x i64> %i.fw to <16 x i8>
  %.sroa.35.sroa.0.6 = extractelement <16 x i8> %i.gq, i64 0 ; 2 uses
  %i.gr = bitcast <2 x i64> %i.go to <16 x i8>
  %.sroa.35.sroa.35.6 = extractelement <16 x i8> %i.gr, i64 0 ; 2 uses
  %i.gs = bitcast <2 x i64> %i.fw to <8 x i16>
  %.sroa.35.sroa.48.6 = extractelement <8 x i16> %i.gs, i64 1 ; 2 uses
  %i.gt = bitcast <2 x i64> %i.fw to <4 x i32>
  %.sroa.35.sroa.57.6 = extractelement <4 x i32> %i.gt, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !714
  br i1 %7, label %bb.cd, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cd
  %.sroa.35.sroa.57.5 = phi i32 [ %.sroa.35.sroa.57.4, %bb.cd ], [ %.sroa.35.sroa.57.6, %bb.cs ]
  %.sroa.35.sroa.48.5 = phi i16 [ %.sroa.35.sroa.48.4, %bb.cd ], [ %.sroa.35.sroa.48.6, %bb.cs ]
  %.sroa.35.sroa.35.5 = phi i8 [ %.sroa.35.sroa.35.4, %bb.cd ], [ %.sroa.35.sroa.35.6, %bb.cs ]
  %.sroa.35.sroa.0.5 = phi i8 [ %.sroa.35.sroa.0.4, %bb.cd ], [ %.sroa.35.sroa.0.6, %bb.cs ]
  %.sroa.90.sroa.30.sroa.0.5 = phi i56 [ %.sroa.90.sroa.30.sroa.0.4, %bb.cd ], [ %.sroa.90.sroa.30.sroa.0.6, %bb.cs ]
  %.sroa.90.sroa.0.5 = phi i8 [ %.sroa.90.sroa.0.4, %bb.cd ], [ %.sroa.90.sroa.0.6, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !714
  br label %.invoke.i

.loopexit.split-lp661.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bk, %bb.bf, %bb.ba, %bb.aw, %bb.cd
  %lpad.loopexit.split-lp432 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp657.i

bb.cu:                                            ; preds = %bb.cw, %bb.cv, %.loopexit.split-lp.i, %.loopexit.split-lp657.i
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !715
  unreachable

bb.cv:                                            ; preds = %bb.cb, %bb.ca, %.split.thread714.i
  %.pn468713.i = phi { ptr, i32 } [ %i.fx, %bb.cb ], [ %.pn.i, %bb.ca ], [ %6, %.split.thread714.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #22
          to label %.loopexit.split-lp657.i unwind label %bb.cu, !noalias !715

bb.cw:                                            ; preds = %.split.thread.i, %bb.bc
  %.pn472649.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn470.i, %bb.bc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #22
          to label %bb.cz unwind label %bb.cu, !noalias !715

bb.cx:                                            ; preds = %bb.ak, %bb.ah, %bb.ab, %bb.w, %bb.be, %bb.am, %bb.aj, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.v, %bb.t
  %.sroa.35.sroa.57.1 = phi i32 [ undef, %bb.t ], [ %.sroa.35.sroa.57.2.copyload, %bb.v ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ah ], [ 0, %bb.am ], [ %.sroa.35.sroa.57.3, %bb.be ], [ %.sroa.35.sroa.57.2.copyload241, %bb.aj ], [ %.sroa.35.sroa.57.2.copyload240, %bb.ag ], [ %.sroa.35.sroa.57.2.copyload239, %bb.ae ], [ %.sroa.35.sroa.57.2.copyload238, %bb.ac ], [ %.sroa.35.sroa.57.2.copyload242, %bb.aa ], [ undef, %bb.ak ]
  %.sroa.35.sroa.48.1 = phi i16 [ undef, %bb.t ], [ %.sroa.35.sroa.48.2.copyload, %bb.v ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ah ], [ 0, %bb.am ], [ %.sroa.35.sroa.48.3, %bb.be ], [ %.sroa.35.sroa.48.2.copyload208, %bb.aj ], [ %.sroa.35.sroa.48.2.copyload207, %bb.ag ], [ %.sroa.35.sroa.48.2.copyload206, %bb.ae ], [ %.sroa.35.sroa.48.2.copyload205, %bb.ac ], [ %.sroa.35.sroa.48.2.copyload209, %bb.aa ], [ undef, %bb.ak ]
  %.sroa.35.sroa.35.1 = phi i8 [ undef, %bb.t ], [ %i.ci, %bb.v ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ah ], [ 0, %bb.am ], [ %.sroa.35.sroa.35.3, %bb.be ], [ %i.dd, %bb.aj ], [ %i.cy, %bb.ag ], [ %i.cv, %bb.ae ], [ %i.cq, %bb.ac ], [ %i.cn, %bb.aa ], [ undef, %bb.ak ]
  %.sroa.35.sroa.0.1 = phi i8 [ 17, %bb.t ], [ %i.cg, %bb.v ], [ 22, %bb.w ], [ 23, %bb.ab ], [ 24, %bb.ah ], [ 17, %bb.am ], [ %.sroa.35.sroa.0.3, %bb.be ], [ %i.db, %bb.aj ], [ %i.cw, %bb.ag ], [ %i.ct, %bb.ae ], [ %i.co, %bb.ac ], [ %i.cl, %bb.aa ], [ 25, %bb.ak ]
  %.sroa.90.sroa.30.sroa.0.1 = phi i56 [ %.sroa.90.sroa.30.0.extract.trunc136, %bb.t ], [ %.sroa.90.sroa.30.0.extract.trunc110, %bb.v ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ah ], [ %.sroa.90.sroa.30.0.extract.trunc134, %bb.am ], [ %.sroa.90.sroa.30.sroa.0.3, %bb.be ], [ %.sroa.90.sroa.30.0.extract.trunc118, %bb.aj ], [ %.sroa.90.sroa.30.0.extract.trunc116, %bb.ag ], [ %.sroa.90.sroa.30.0.extract.trunc114, %bb.ae ], [ %.sroa.90.sroa.30.0.extract.trunc112, %bb.ac ], [ %.sroa.90.sroa.30.0.extract.trunc120, %bb.aa ], [ undef, %bb.ak ]
  %.sroa.90.sroa.0.1 = phi i8 [ %.sroa.90.sroa.0.0.extract.trunc88, %bb.t ], [ %.sroa.90.sroa.0.0.extract.trunc75, %bb.v ], [ undef, %bb.w ], [ undef, %bb.ab ], [ undef, %bb.ah ], [ %.sroa.90.sroa.0.0.extract.trunc87, %bb.am ], [ %.sroa.90.sroa.0.3, %bb.be ], [ %.sroa.90.sroa.0.0.extract.trunc79, %bb.aj ], [ %.sroa.90.sroa.0.0.extract.trunc78, %bb.ag ], [ %.sroa.90.sroa.0.0.extract.trunc77, %bb.ae ], [ %.sroa.90.sroa.0.0.extract.trunc76, %bb.ac ], [ %.sroa.90.sroa.0.0.extract.trunc80, %bb.aa ], [ undef, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !714
  br label %bb.da

bb.cy:                                            ; preds = %bb.q, %bb.r, %bb.p, %bb.n, %bb.j, %bb.h, %bb.f
  %.sroa.35.sroa.57.0 = phi i32 [ 0, %bb.f ], [ undef, %bb.j ], [ %.sroa.35.sroa.57.1.copyload, %bb.r ], [ 0, %bb.h ], [ %.sroa.35.sroa.57.2.copyload244, %bb.p ], [ %.sroa.35.sroa.57.2.copyload243, %bb.n ], [ undef, %bb.q ]
  %.sroa.35.sroa.48.0 = phi i16 [ 0, %bb.f ], [ undef, %bb.j ], [ %.sroa.35.sroa.48.1.copyload, %bb.r ], [ 0, %bb.h ], [ %.sroa.35.sroa.48.2.copyload211, %bb.p ], [ %.sroa.35.sroa.48.2.copyload210, %bb.n ], [ undef, %bb.q ]
  %.sroa.35.sroa.35.0 = phi i8 [ 0, %bb.f ], [ undef, %bb.j ], [ %.sroa.35.sroa.35.1.copyload, %bb.r ], [ 0, %bb.h ], [ %i.bu, %bb.p ], [ %i.br, %bb.n ], [ %i.bu, %bb.q ]
  %.sroa.35.sroa.0.0 = phi i8 [ 17, %bb.f ], [ 15, %bb.j ], [ %i.bo, %bb.r ], [ 17, %bb.h ], [ %i.bs, %bb.p ], [ %i.bp, %bb.n ], [ 61, %bb.q ]
  %.sroa.90.sroa.30.sroa.0.0 = phi i56 [ %.sroa.90.sroa.30.0.extract.trunc140, %bb.f ], [ %.sroa.90.sroa.30.0.extract.trunc138, %bb.j ], [ %.sroa.90.sroa.30.0.extract.trunc128, %bb.r ], [ %.sroa.90.sroa.30.0.extract.trunc126, %bb.h ], [ %.sroa.90.sroa.30.0.extract.trunc124, %bb.p ], [ %.sroa.90.sroa.30.0.extract.trunc122, %bb.n ], [ undef, %bb.q ]
  %.sroa.90.sroa.0.0 = phi i8 [ %.sroa.90.sroa.0.0.extract.trunc90, %bb.f ], [ %.sroa.90.sroa.0.0.extract.trunc89, %bb.j ], [ %.sroa.90.sroa.0.0.extract.trunc84, %bb.r ], [ %.sroa.90.sroa.0.0.extract.trunc83, %bb.h ], [ %.sroa.90.sroa.0.0.extract.trunc82, %bb.p ], [ %.sroa.90.sroa.0.0.extract.trunc81, %bb.n ], [ undef, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !714
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw, %bb.bc
  %.pn472648.i = phi { ptr, i32 } [ %.pn472649.i, %bb.cw ], [ %.pn470.i, %bb.bc ]
  resume { ptr, i32 } %.pn472648.i

bb.da:                                            ; preds = %bb.d, %bb.cy, %bb.cx
  %.sroa.35.sroa.57.8.ph = phi i32 [ %.sroa.35.sroa.57.1, %bb.cx ], [ %.sroa.35.sroa.57.0, %bb.cy ], [ %.sroa.35.sroa.57.0.extract.trunc215, %bb.d ]
  %.sroa.35.sroa.48.8.ph = phi i16 [ %.sroa.35.sroa.48.1, %bb.cx ], [ %.sroa.35.sroa.48.0, %bb.cy ], [ %.sroa.35.sroa.48.0.extract.trunc182, %bb.d ]
  %.sroa.35.sroa.35.8.ph = phi i8 [ %.sroa.35.sroa.35.1, %bb.cx ], [ %.sroa.35.sroa.35.0, %bb.cy ], [ %.sroa.35.sroa.35.0.extract.trunc156, %bb.d ]
  %.sroa.35.sroa.0.8.ph = phi i8 [ %.sroa.35.sroa.0.1, %bb.cx ], [ %.sroa.35.sroa.0.0, %bb.cy ], [ %.sroa.35.sroa.0.0.extract.trunc, %bb.d ]
  %.sroa.90.sroa.30.sroa.0.8.ph = phi i56 [ %.sroa.90.sroa.30.sroa.0.1, %bb.cx ], [ %.sroa.90.sroa.30.sroa.0.0, %bb.cy ], [ %.sroa.90.sroa.30.sroa.0.0.copyload, %bb.d ]
  %.sroa.90.sroa.0.8.ph = phi i8 [ %.sroa.90.sroa.0.1, %bb.cx ], [ %.sroa.90.sroa.0.0, %bb.cy ], [ %.sroa.4275.0.copyload.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3556.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3553.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5201.sroa.0.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5201.sroa.0.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0533.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8537.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5248)
  %.sroa.35.sroa.57.0.insert.ext = zext i32 %.sroa.35.sroa.57.8.ph to i64
  %.sroa.35.sroa.57.0.insert.shift = shl nuw i64 %.sroa.35.sroa.57.0.insert.ext, 32
  %.sroa.35.sroa.48.0.insert.ext = zext i16 %.sroa.35.sroa.48.8.ph to i64
  %.sroa.35.sroa.48.0.insert.shift = shl nuw nsw i64 %.sroa.35.sroa.48.0.insert.ext, 16
  %.sroa.35.sroa.48.0.insert.insert = or disjoint i64 %.sroa.35.sroa.48.0.insert.shift, %.sroa.35.sroa.57.0.insert.shift
  %.sroa.35.sroa.35.0.insert.ext = zext i8 %.sroa.35.sroa.35.8.ph to i64
  %.sroa.35.sroa.35.0.insert.shift = shl nuw nsw i64 %.sroa.35.sroa.35.0.insert.ext, 8
  %.sroa.35.sroa.35.0.insert.insert = or disjoint i64 %.sroa.35.sroa.48.0.insert.insert, %.sroa.35.sroa.35.0.insert.shift
  %.sroa.35.sroa.0.0.insert.ext = zext i8 %.sroa.35.sroa.0.8.ph to i64
  %.sroa.35.sroa.0.0.insert.insert = or disjoint i64 %.sroa.35.sroa.35.0.insert.insert, %.sroa.35.sroa.0.0.insert.ext
  %.sroa.90.sroa.30.0.insert.ext = zext i56 %.sroa.90.sroa.30.sroa.0.8.ph to i64
  %.sroa.90.sroa.30.0.insert.shift = shl nuw i64 %.sroa.90.sroa.30.0.insert.ext, 8
  %.sroa.90.sroa.0.0.insert.ext = zext i8 %.sroa.90.sroa.0.8.ph to i64
  %.sroa.90.sroa.0.0.insert.insert = or disjoint i64 %.sroa.90.sroa.30.0.insert.shift, %.sroa.90.sroa.0.0.insert.ext
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.35.sroa.0.0.insert.insert, ptr %i.gv, align 8
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.90.sroa.0.0.insert.insert, ptr %.sroa.4276.0..sroa_idx, align 16
  store i64 -2, ptr %0, align 16
  br label %bb.db

.loopexit:                                        ; preds = %bb.by, %bb.cr, %.preheader.i
  %.sroa.4246.2 = phi i8 [ %.sroa.4246.0, %bb.cr ], [ %.sroa.4246.1, %.preheader.i ], [ %.sroa.4246.1, %bb.by ]
  %.sroa.0203.0.i = phi i64 [ %.sroa.0199.0.i, %bb.cr ], [ -1, %.preheader.i ], [ -1, %bb.by ]
  %.sroa.6205.sroa.0.sroa.6.0.i = phi i8 [ %.sroa.4208.0.copyload.i, %bb.cr ], [ undef, %.preheader.i ], [ undef, %bb.by ]
  %.sroa.106.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.106, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.106.176..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.124.sroa.0.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.124.sroa.0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.124.sroa.0.7..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %.sroa.5.sroa.32.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.32.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5248, i64 7, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5201.sroa.0.sroa.5.i, i64 7, i1 false)
  %.sroa.104.128..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.104, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.104.128..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5201.sroa.0.sroa.7.i, i64 16, i1 false)
  %.sroa.100.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.100.8..sroa_idx, i64 32, i1 false)
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3556.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3553.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5201.sroa.0.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5201.sroa.0.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0533.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8537.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5248)
  store i64 %.sroa.0203.0.i, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gw = load <2 x i64>, ptr %5, align 8, !alias.scope !743
  store <2 x i64> %i.gw, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.6205.sroa.0.sroa.6.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.104, i64 72, i1 false)
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.106, i64 32, i1 false)
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.dl, ptr %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.dq, ptr %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.15.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.dm, ptr %.sroa.5.sroa.15.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %.val.i.i.i481.i, ptr %.sroa.5.sroa.16.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.18.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.dh, ptr %.sroa.5.sroa.18.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.19.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.dg, ptr %.sroa.5.sroa.19.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 %.val.i1.i.i480.i, ptr %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.22.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store <2 x ptr> %i.cb, ptr %.sroa.5.sroa.22.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.24.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.by, ptr %.sroa.5.sroa.24.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.25.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 %.val.i.i.i, ptr %.sroa.5.sroa.25.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.27.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.cf, ptr %.sroa.5.sroa.27.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.28.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.ce, ptr %.sroa.5.sroa.28.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.29.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 %.val.i1.i.i, ptr %.sroa.5.sroa.29.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.30.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.sroa.30.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.124.sroa.0, i64 55, i1 false)
  %.sroa.5.sroa.31.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i8 %.sroa.4246.2, ptr %.sroa.5.sroa.31.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.33.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %2, ptr %.sroa.5.sroa.33.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.34.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %.sroa.0274.0.copyload.i, ptr %.sroa.5.sroa.34.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.35.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %i.bx, ptr %.sroa.5.sroa.35.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.36.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i8 %.sroa.0.0.i, ptr %.sroa.5.sroa.36.0..sroa.5.0..sroa_idx.sroa_idx, align 16
  %.sroa.5.sroa.37.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 465
  store i8 %.sroa.4275.0.copyload.i, ptr %.sroa.5.sroa.37.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.38.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 466
  store i16 %spec.select.i.i.i, ptr %.sroa.5.sroa.38.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.39.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i8 %i.da, ptr %.sroa.5.sroa.39.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.40.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 469
  store i8 %i.ci, ptr %.sroa.5.sroa.40.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.41.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 470
  store i8 %.sroa.099.0.i, ptr %.sroa.5.sroa.41.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.42.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 471
  store i8 %i.cv, ptr %.sroa.5.sroa.42.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.43.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i8 %i.cy, ptr %.sroa.5.sroa.43.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.44.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 473
  store i8 %i.dd, ptr %.sroa.5.sroa.44.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE12file_has_md5B2I_(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(480) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i64, ptr %i.c, align 16, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_8relocate14RelocateReaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE12file_has_md50EB4H_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.val.i = load i16, ptr %i.f, align 2, !noalias !746, !noundef !5
  %i.g = icmp eq i16 %.val.i, 5                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.h, %i.e
  %or.cond = select i1 %i.g, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli4read4line15FileEntryFormatENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsa_BS_INtBS_17LineProgramHeaderINtNtBU_8relocate14RelocateReaderINtNtBU_12endian_slice11EndianSliceNtNtBW_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE12file_has_md50EB4H_.exit, label %.lr.ph

end_hunk_0
