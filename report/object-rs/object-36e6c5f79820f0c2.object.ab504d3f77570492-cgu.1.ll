Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.1?download=true
inline.NumInlined: 141
inline.NumDeleted: 83
begin_hunk_0_@_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable5parse:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 31, ptr %i.be, align 8
  store ptr null, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.o, %bb.q, %bb.m, %bb.j, %bb.i, %bb.k, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable7exports(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i16, ptr %i.e, align 4, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !97, !noalias !98, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !97, !noalias !98, !noundef !5 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  br label %bb.b

.loopexit:                                        ; preds = %bb.n, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.u, %bb.d, %bb.c
  %lpad.loopexit104 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge, %bb.h
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit104, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %common.resume unwind label %bb.w

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.0.0115 = phi ptr [ %i.h, %.lr.ph ], [ %i.s, %bb.v ] ; 2 uses
  %.sroa.8.0114 = phi i16 [ 0, %.lr.ph ], [ %i.t, %bb.v ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0115, i64 4 ; 2 uses
  %i.t = add i16 %.sroa.8.0114, 1
  %i.u = add i16 %.sroa.8.0114, %i.f
  %.sroa.034.0.copyload = load i32, ptr %.sroa.0.0115, align 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.v = sub i32 %.sroa.034.0.copyload, %i.n
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = icmp ugt i64 %i.p, %i.w
  br i1 %i.x, label %bb.c, label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable19target_from_address.exit

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 8 uses
  %i.z = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !101, !nonnull !5, !noundef !5
  %i.aa = invoke { i64, ptr } %i.z(i8 noundef 0, ptr noundef nonnull readonly %i.y, ptr noundef nonnull readonly %i.r)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit, !inline_history !102 ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %.loopexit102

bb.d:                                             ; preds = %.noexc
  %i.ad = extractvalue { i64, ptr } %i.aa, 1
  %i.ae = invoke noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.ad, ptr noundef nonnull readonly %i.y)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit ; 10 uses

.noexc43:                                         ; preds = %bb.d
  %i.af = sub nuw i64 %i.p, %i.w
  %.not.i.i.i.i = icmp ult i64 %i.ae, %i.af
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.ae   ; 2 uses
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %.loopexit102, label %.lr.ph161

bb.e:                                             ; preds = %.lr.ph161
  %i.ai = icmp eq ptr %i.y, %i.ak
  br i1 %i.ai, label %.loopexit102, label %.lr.ph161

.lr.ph161:                                        ; preds = %.noexc43, %bb.e
  %.sroa.03.0.i.i160 = phi i64 [ %i.al, %bb.e ], [ %i.ae, %.noexc43 ] ; 6 uses
  %i.aj = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %.noexc43 ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 3 uses
  %i.al = add i64 %.sroa.03.0.i.i160, -1          ; 5 uses
  %.val.i.i = load i8, ptr %i.ak, align 1, !noalias !103, !noundef !5
  %i.am = icmp eq i8 %.val.i.i, 46
  br i1 %i.am, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph161
  %i.an = icmp ult i64 %i.al, %i.ae
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp ugt i64 %.sroa.03.0.i.i160, %i.ae
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nuw i64 %i.ae, %.sroa.03.0.i.i160   ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.03.0.i.i160 ; 3 uses
  %.not29.i = icmp eq i64 %i.ap, 0
  br i1 %.not29.i, label %.loopexit102, label %bb.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.03.0.i.i160, i64 noundef %i.ae, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #15
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !104, !noundef !5
  %i.as = icmp eq i8 %i.ar, 35
  br i1 %i.as, label %bb.j, label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable19target_from_address.exit

bb.j:                                             ; preds = %bb.i
  %i.at = icmp eq i64 %i.ap, 1
  br i1 %i.at, label %.loopexit102, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.au = add nuw nsw i64 %.sroa.03.0.i.i160, 1
  %i.av = icmp eq i64 %i.au, %i.ae
  br i1 %i.av, label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable19target_from_address.exit, label %.lr.ph165

.lr.ph165:                                        ; preds = %.preheader.preheader
  %.sroa.01.0.i.i162 = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  br label %bb.k

.preheader:                                       ; preds = %bb.l
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i164, i64 1 ; 2 uses
  %i.aw = icmp eq ptr %.sroa.01.0.i.i, %i.ag
  br i1 %i.aw, label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable19target_from_address.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph165, %.preheader
  %.sroa.01.0.i.i164 = phi ptr [ %.sroa.01.0.i.i162, %.lr.ph165 ], [ %.sroa.01.0.i.i, %.preheader ] ; 2 uses
  %.sroa.014.0.i.i163 = phi i16 [ 0, %.lr.ph165 ], [ %i.bf, %.preheader ]
  %i.ax = load i8, ptr %.sroa.01.0.i.i164, align 1, !alias.scope !105, !noalias !104, !noundef !5
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ult i32 %i.az, 10
  br i1 %i.ba, label %bb.l, label %.loopexit102

bb.l:                                             ; preds = %bb.k
  %i.bb = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.014.0.i.i163, i16 10) ; 2 uses
  %i.bc = extractvalue { i16, i1 } %i.bb, 1
  %i.bd = extractvalue { i16, i1 } %i.bb, 0       ; 2 uses
  %i.be = trunc nuw nsw i32 %i.az to i16
  %i.bf = add i16 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp ult i16 %i.bf, %i.bd
  %or.cond.i.i = select i1 %i.bc, i1 true, i1 %i.bg, !prof !7
  br i1 %or.cond.i.i, label %.loopexit102, label %.preheader, !prof !7

._crit_edge:                                      ; preds = %bb.v, %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !106, !noalias !107, !nonnull !5, !noundef !5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !106, !noalias !107, !noundef !5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !106, !noalias !107, !nonnull !5, !noundef !5 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !106, !noalias !107, !noundef !5
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bp
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1F_12LittleEndianEENCNvMs5_NtNtNtB1H_4read2pe6exportNtB2H_11ExportTable9name_iter0EIBX_IB1d_INtB1F_3U16B2d_NtB2H_18ExportAddressIndexEENCB2B_s_0EEINtB5_7ZipImplBW_B3B_E3newB1H_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bq)
          to label %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable9name_iter.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable9name_iter.exit: ; preds = %._crit_edge
  %.sroa.062.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.564.0.copyload = load ptr, ptr %.sroa.564.0..sroa_idx, align 8 ; 2 uses
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.666.0.copyload = load i64, ptr %.sroa.666.0..sroa_idx, align 8 ; 2 uses
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.867.0.copyload = load i64, ptr %.sroa.867.0..sroa_idx, align 8 ; 2 uses
  %i.br = icmp ult i64 %.sroa.666.0.copyload, %.sroa.867.0.copyload
  br i1 %i.br, label %.lr.ph117, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1F_12LittleEndianEENCNvMs5_NtNtNtB1H_4read2pe6exportNtB2H_11ExportTable9name_iter0EIBX_IB1d_INtB1F_3U16B2d_NtB2H_18ExportAddressIndexEENCB2B_s_0EEINtB5_7ZipImplBW_B3B_E4nextB1H_.exit

.lr.ph117:                                        ; preds = %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable9name_iter.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.062.0.copyload), "nonnull"(ptr %.sroa.564.0.copyload) ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bt = load i32, ptr %i.bs, align 8, !alias.scope !108, !noalias !109, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !108, !noalias !109, !noundef !5 ; 3 uses
  %i.bw = load ptr, ptr %1, align 8, !nonnull !5  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph117, %bb.r
  %.sroa.666.0116 = phi i64 [ %.sroa.666.0.copyload, %.lr.ph117 ], [ %i.by, %bb.r ] ; 3 uses
  %i.by = add i64 %.sroa.666.0116, 1              ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload, i64 %.sroa.666.0116
  %.val1.i.i = load i32, ptr %i.bz, align 1, !noalias !110
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.sroa.564.0.copyload, i64 %.sroa.666.0116
  %.val1.i2.i = load i16, ptr %i.ca, align 1, !noalias !110
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.cb = sub i32 %.val1.i.i, %i.bt
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  %i.cd = icmp ult i64 %i.bv, %i.cc
  br i1 %i.cd, label %.loopexit102, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cc ; 3 uses
  %i.cf = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !111, !nonnull !5, !noundef !5
  %i.cg = invoke { i64, ptr } %i.cf(i8 noundef 0, ptr noundef nonnull readonly %i.ce, ptr noundef nonnull readonly %i.bx)
          to label %.noexc47 unwind label %.loopexit, !inline_history !112 ; 2 uses

.noexc47:                                         ; preds = %bb.n
  %i.ch = extractvalue { i64, ptr } %i.cg, 0
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %bb.o, label %.loopexit102

bb.o:                                             ; preds = %.noexc47
  %i.cj = extractvalue { i64, ptr } %i.cg, 1
  %i.ck = invoke noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCseHTIzroA4w0_6object(ptr noundef %i.cj, ptr noundef nonnull readonly %i.ce)
          to label %bb.q unwind label %.loopexit  ; 2 uses

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1F_12LittleEndianEENCNvMs5_NtNtNtB1H_4read2pe6exportNtB2H_11ExportTable9name_iter0EIBX_IB1d_INtB1F_3U16B2d_NtB2H_18ExportAddressIndexEENCB2B_s_0EEINtB5_7ZipImplBW_B3B_E4nextB1H_.exit: ; preds = %bb.r, %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable9name_iter.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportEEB1g_.exit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1F_12LittleEndianEENCNvMs5_NtNtNtB1H_4read2pe6exportNtB2H_11ExportTable9name_iter0EIBX_IB1d_INtB1F_3U16B2d_NtB2H_18ExportAddressIndexEENCB2B_s_0EEINtB5_7ZipImplBW_B3B_E4nextB1H_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.q:                                             ; preds = %bb.o
  %i.cl = sub nuw i64 %i.bv, %i.cc
  %.not.i.i.i = icmp ult i64 %i.ck, %i.cl
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cm = load i64, ptr %i.d, align 8, !noundef !5
  %i.cn = zext i16 %.val1.i2.i to i64             ; 2 uses
  %i.co = icmp ugt i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.r, label %.loopexit102

bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %i.cp, i64 %i.cn ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store ptr %i.ce, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store i64 %i.ck, ptr %i.cs, align 8
  %exitcond.not = icmp eq i64 %i.by, %.sroa.867.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1F_12LittleEndianEENCNvMs5_NtNtNtB1H_4read2pe6exportNtB2H_11ExportTable9name_iter0EIBX_IB1d_INtB1F_3U16B2d_NtB2H_18ExportAddressIndexEENCB2B_s_0EEINtB5_7ZipImplBW_B3B_E4nextB1H_.exit, label %bb.m

.loopexit102:                                     ; preds = %bb.j, %bb.g, %.noexc, %.noexc43, %bb.e, %bb.k, %bb.l, %bb.q, %bb.m, %.noexc47
  %.sink147 = phi ptr [ @3, %bb.m ], [ @5, %bb.e ], [ @7, %bb.k ], [ @3, %.noexc47 ], [ @4, %bb.q ], [ @7, %bb.l ], [ @0, %.noexc ], [ @7, %bb.j ], [ @6, %bb.g ], [ @5, %.noexc43 ]
  %.sink = phi i64 [ 30, %bb.m ], [ 37, %bb.e ], [ 35, %bb.k ], [ 30, %.noexc47 ], [ 25, %bb.q ], [ 35, %bb.l ], [ 35, %.noexc ], [ 35, %bb.j ], [ 32, %bb.g ], [ 37, %.noexc43 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink147, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.cu, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportEEB1g_.exit unwind label %bb.s

bb.s:                                             ; preds = %.loopexit102
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.cv, %bb.s ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportEEB1g_.exit: ; preds = %.loopexit102
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.p

_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable19target_from_address.exit: ; preds = %.preheader, %.preheader.preheader, %bb.b, %bb.i
  %.sroa.29.0 = phi i64 [ undef, %bb.b ], [ %i.ap, %bb.i ], [ %i.ap, %.preheader.preheader ], [ %i.ap, %.preheader ]
  %.sroa.27.0 = phi ptr [ undef, %bb.b ], [ %i.aq, %bb.i ], [ undef, %.preheader.preheader ], [ undef, %.preheader ]
  %.sroa.20.0 = phi i64 [ undef, %bb.b ], [ %i.al, %bb.i ], [ %i.al, %.preheader.preheader ], [ %i.al, %.preheader ]
  %.sroa.1354.0 = phi ptr [ null, %bb.b ], [ %i.y, %bb.i ], [ %i.y, %.preheader.preheader ], [ %i.y, %.preheader ]
  %.sroa.1053.0 = phi i16 [ undef, %bb.b ], [ undef, %bb.i ], [ 0, %.preheader.preheader ], [ %i.bf, %.preheader ]
  %.sroa.051.0 = phi i16 [ 0, %bb.b ], [ 2, %bb.i ], [ 1, %.preheader.preheader ], [ 1, %.preheader ]
  %i.cx = load i64, ptr %i.d, align 8, !alias.scope !113, !noalias !114, !noundef !5 ; 3 uses
  %i.cy = load i64, ptr %i.b, align 8, !range !115, !alias.scope !113, !noalias !114, !noundef !5
  %i.cz = icmp eq i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable19target_from_address.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCseHTIzroA4w0_6object4read2pe6export6ExportE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #16
          to label %bb.v unwind label %.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable19target_from_address.exit, %bb.u
  %i.da = load ptr, ptr %i.c, align 8, !alias.scope !113, !noalias !114, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.cx ; 9 uses
  store i16 %.sroa.051.0, ptr %i.db, align 8
  %.sroa.4.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i16 %.sroa.1053.0, ptr %.sroa.4.0..sroa_idx57, align 2
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %.sroa.034.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx57.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %.sroa.1354.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 %.sroa.20.0, ptr %.sroa.658.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %.sroa.27.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store i64 %.sroa.29.0, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store ptr null, ptr %.sroa.859.0..sroa_idx, align 8
  %.sroa.960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store i16 %i.u, ptr %.sroa.960.0..sroa_idx, align 8
  %i.dc = add i64 %i.cx, 1
  store i64 %i.dc, ptr %i.d, align 8, !alias.scope !113, !noalias !114
  %i.dd = icmp eq ptr %i.s, %i.k
  br i1 %i.dd, label %._crit_edge, label %bb.b

bb.w:                                             ; preds = %.loopexit.split-lp
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtNtCseHTIzroA4w0_6object4read2pe6exportNtB5_11ExportTable9name_iter(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.i
  tail call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCseHTIzroA4w0_6object6endian3U32NtB1F_12LittleEndianEENCNvMs5_NtNtNtB1H_4read2pe6exportNtB2H_11ExportTable9name_iter0EIBX_IB1d_INtB1F_3U16B2d_NtB2H_18ExportAddressIndexEENCB2B_s_0EEINtB5_7ZipImplBW_B3B_E3newB1H_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMsn_NtCseHTIzroA4w0_6object4readNtB5_13RelocationMap8relocate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !128, !noalias !129, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCseHTIzroA4w0_6object4read18RelocationMapEntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !132, !noalias !133, !noundef !5 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !132, !noalias !133, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !134 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
end_hunk_0
begin_hunk_1_@_RNvMsp_NtCseHTIzroA4w0_6object4readNtB5_14CompressedData10decompress:bb.a
default.unreachable56:                            ; preds = %bb.bz, %bb.bw, %bb.bt, %bb.bf, %bb.ba, %bb.ap, %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.w, align 8
  %i.x = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef 0, i64 noundef %i.u, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %i.z, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.cg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseHTIzroA4w0_6object.exit, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.n, %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ao, %bb.n ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #14
          to label %common.resume unwind label %bb.v

bb.g:                                             ; preds = %bb.cd, %bb.cc, %bb.k, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.c
  %i.ab = extractvalue { i64, i64 } %i.x, 0
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @19, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 35, ptr %i.ad, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp eq i8 %i.p, 2
  br i1 %i.ae, label %bb.k, label %bb.l, !prof !175

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs0_NtCs7C5dXsyCePi_6flate23memNtB5_10Decompress3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.g

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -1, ptr %i.l, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 768
  store ptr null, ptr %i.af, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 784
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 792
  store i64 104857600, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ah = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  invoke void @_RNvMs0_NtNtCskEQmjas7MZ9_6ruzstd8decoding13frame_decoderNtB5_12FrameDecoder17decode_all_to_vec(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(800) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.x unwind label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !5
  %i.an = invoke i64 @_RNvMs0_NtCs7C5dXsyCePi_6flate23memNtB5_10Decompress14decompress_vec(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef 4)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %.val39 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef 43296, i64 noundef 8) #17
  br label %bb.f

bb.o:                                             ; preds = %bb.m
  %i.ap = and i64 %i.an, 4294967295
  %.not35 = icmp eq i64 %i.ap, 2
  br i1 %.not35, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.val = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 43296, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.q

bb.q:                                             ; preds = %bb.cf, %bb.p
  %i.aq = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ar)
  %.not36 = icmp eq i64 %i.u, %i.aq
  br i1 %.not36, label %bb.cg, label %bb.ch

bb.r:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @16, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %i.at, align 8
  store i64 -2, ptr %0, align 8
  %.val38 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38, i64 noundef 43296, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.s

bb.s:                                             ; preds = %bb.ch, %bb.ce, %bb.r, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseHTIzroA4w0_6object.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.t ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseHTIzroA4w0_6object.exit: ; preds = %bb.s
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.e

bb.v:                                             ; preds = %.body, %bb.f
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VeclEECseHTIzroA4w0_6object.exit.i.i.i.i.i.i.invoke, %bb.cb, %bb.by, %bb.bv, %bb.bh, %bb.bc, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.at, %bb.ax, %bb.bm, %bb.br, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.w ], [ %i.cy, %bb.ax ], [ %i.cs, %bb.at ], [ %i.ef, %bb.bm ], [ %i.en, %bb.br ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd8decoding13frame_decoder12FrameDecoderECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(800) %i.l) #14
          to label %bb.f unwind label %bb.v

bb.x:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.k, align 8, !range !176, !noundef !5 ; 2 uses
  %.not33 = icmp eq i32 %i.ay, -1
  br i1 %.not33, label %bb.cc, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  switch i32 %i.ay, label %bb.cd [
    i32 0, label %bb.z
    i32 3, label %bb.ap
    i32 4, label %bb.az
    i32 5, label %bb.bd
    i32 6, label %bb.bw
    i32 9, label %bb.bz
  ]

bb.z:                                             ; preds = %bb.y
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val2.i.i = load i8, ptr %i.az, align 8, !range !179, !alias.scope !180, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val3.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !180 ; 20 uses
  switch i8 %.val2.i.i, label %bb.cd [
    i8 0, label %bb.aa
    i8 2, label %bb.ad
    i8 4, label %bb.ag
    i8 5, label %bb.aj
    i8 6, label %bb.am
  ]

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !180
  %i.bb = ptrtoint ptr %.val3.i.i to i64          ; 2 uses
  %i.bc = and i64 %i.bb, 3
  switch i64 %i.bc, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i
    i64 3, label %bb.ab
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i
    i64 1, label %bb.ac
  ], !prof !181

bb.ab:                                            ; preds = %bb.aa
  %i.bd = icmp ult ptr %.val3.i.i, inttoptr (i64 188978561024 to ptr)
  %i.be = and i64 %i.bb, 1095216660480
  %i.bf = icmp ne i64 %i.be, 1095216660480
  call void @llvm.assume(i1 %i.bd)
  call void @llvm.assume(i1 %i.bf)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bg = getelementptr i8, ptr %.val3.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !alias.scope !182, !noalias !180
  store i8 3, ptr %i.j, align 8, !alias.scope !182, !noalias !180
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !180
  br label %bb.cd

bb.ad:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !180
  %i.bi = ptrtoint ptr %.val3.i.i to i64          ; 2 uses
  %i.bj = and i64 %i.bi, 3
  switch i64 %i.bj, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit6.i.i.i
    i64 3, label %bb.ae
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit6.i.i.i
    i64 1, label %bb.af
  ], !prof !181

bb.ae:                                            ; preds = %bb.ad
  %i.bk = icmp ult ptr %.val3.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bl = and i64 %i.bi, 1095216660480
  %i.bm = icmp ne i64 %i.bl, 1095216660480
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.assume(i1 %i.bm)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit6.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.bn = getelementptr i8, ptr %.val3.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !183, !noalias !180
  store i8 3, ptr %i.i, align 8, !alias.scope !183, !noalias !180
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit6.i.i.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit6.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !180
  br label %bb.cd

bb.ag:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !180
  %i.bp = ptrtoint ptr %.val3.i.i to i64          ; 2 uses
  %i.bq = and i64 %i.bp, 3
  switch i64 %i.bq, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit8.i.i.i
    i64 3, label %bb.ah
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit8.i.i.i
    i64 1, label %bb.ai
  ], !prof !181

bb.ah:                                            ; preds = %bb.ag
  %i.br = icmp ult ptr %.val3.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bs = and i64 %i.bp, 1095216660480
  %i.bt = icmp ne i64 %i.bs, 1095216660480
  call void @llvm.assume(i1 %i.br)
  call void @llvm.assume(i1 %i.bt)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit8.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.bu = getelementptr i8, ptr %.val3.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.bv, align 8, !alias.scope !184, !noalias !180
  store i8 3, ptr %i.h, align 8, !alias.scope !184, !noalias !180
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit8.i.i.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit8.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !180
  br label %bb.cd

bb.aj:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !180
  %i.bw = ptrtoint ptr %.val3.i.i to i64          ; 2 uses
  %i.bx = and i64 %i.bw, 3
  switch i64 %i.bx, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit10.i.i.i
    i64 3, label %bb.ak
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit10.i.i.i
    i64 1, label %bb.al
  ], !prof !181

bb.ak:                                            ; preds = %bb.aj
  %i.by = icmp ult ptr %.val3.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bz = and i64 %i.bw, 1095216660480
  %i.ca = icmp ne i64 %i.bz, 1095216660480
  call void @llvm.assume(i1 %i.by)
  call void @llvm.assume(i1 %i.ca)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit10.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.cb = getelementptr i8, ptr %.val3.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !185, !noalias !180
  store i8 3, ptr %i.g, align 8, !alias.scope !185, !noalias !180
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit10.i.i.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit10.i.i.i: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !180
  br label %bb.cd

bb.am:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !180
  %i.cd = ptrtoint ptr %.val3.i.i to i64          ; 2 uses
  %i.ce = and i64 %i.cd, 3
  switch i64 %i.ce, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit12.i.i.i
    i64 3, label %bb.an
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit12.i.i.i
    i64 1, label %bb.ao
  ], !prof !181

bb.an:                                            ; preds = %bb.am
  %i.cf = icmp ult ptr %.val3.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cg = and i64 %i.cd, 1095216660480
  %i.ch = icmp ne i64 %i.cg, 1095216660480
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.assume(i1 %i.ch)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit12.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ci = getelementptr i8, ptr %.val3.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !186, !noalias !180
  store i8 3, ptr %i.f, align 8, !alias.scope !186, !noalias !180
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit12.i.i.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit12.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !180
  br label %bb.cd

bb.ap:                                            ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cl = load i8, ptr %i.ck, align 8, !range !9, !alias.scope !187, !noundef !5
  switch i8 %i.cl, label %default.unreachable56 [
    i8 0, label %bb.cd
    i8 1, label %bb.cd
    i8 2, label %bb.av
    i8 3, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 8, !range !188, !alias.scope !189, !noundef !5 ; 4 uses
  %i.co = icmp ne i64 %i.cn, -9223372036854775801
  call void @llvm.assume(i1 %i.co)
  %i.cp = icmp ult i64 %i.cn, -9223372036854775803
  br i1 %i.cp, label %bb.ar, label %bb.cd

bb.ar:                                            ; preds = %bb.aq
  %i.cq = icmp ne i64 %i.cn, -9223372036854775805
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp sgt i64 %i.cn, -1
  br i1 %i.cr, label %bb.as, label %bb.cd

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VeclEECseHTIzroA4w0_6object.exit.i.i.i.i.i.i.invoke unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %.body unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.av:                                            ; preds = %bb.ap
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !190, !alias.scope !191, !noundef !5 ; 2 uses
  %i.cw = icmp ne i64 %i.cv, -9223372036854775805
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp sgt i64 %i.cv, -1
  br i1 %i.cx, label %bb.aw, label %bb.cd

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VeclEECseHTIzroA4w0_6object.exit.i.i.i.i.i.i.invoke unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %.body unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.az:                                            ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val4.i.i = load i8, ptr %i.da, align 8, !range !9, !alias.scope !180, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val5.i.i = load ptr, ptr %i.db, align 8, !alias.scope !180 ; 4 uses
  %i.dc = icmp eq i8 %.val4.i.i, 0
  br i1 %i.dc, label %bb.ba, label %bb.cd

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !180
  %i.dd = ptrtoint ptr %.val5.i.i to i64          ; 2 uses
  %i.de = and i64 %i.dd, 3
  switch i64 %i.de, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i6.i.i
    i64 3, label %bb.bb
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i6.i.i
    i64 1, label %bb.bc
  ], !prof !181

bb.bb:                                            ; preds = %bb.ba
  %i.df = icmp ult ptr %.val5.i.i, inttoptr (i64 188978561024 to ptr)
  %i.dg = and i64 %i.dd, 1095216660480
  %i.dh = icmp ne i64 %i.dg, 1095216660480
  call void @llvm.assume(i1 %i.df)
  call void @llvm.assume(i1 %i.dh)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i6.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.di = getelementptr i8, ptr %.val5.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !alias.scope !192, !noalias !180
  store i8 3, ptr %i.e, align 8, !alias.scope !192, !noalias !180
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i6.i.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i6.i.i: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !180
  br label %bb.cd

bb.bd:                                            ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.dl = load i64, ptr %i.dk, align 8, !range !194, !alias.scope !195, !noundef !5 ; 3 uses
  %i.dm = add nsw i64 %i.dl, -7
  %i.dn = icmp samesign ugt i64 %i.dl, 6
  %i.do = select i1 %i.dn, i64 %i.dm, i64 3
  switch i64 %i.do, label %bb.be [
    i64 0, label %bb.cd
    i64 1, label %bb.cd
    i64 2, label %bb.bt
  ]

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  switch i64 %i.dl, label %bb.cd [
    i64 0, label %bb.bf
    i64 2, label %bb.bi
    i64 5, label %bb.bo
  ]

bb.bf:                                            ; preds = %bb.be
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !197, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !197
  %i.dq = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.dr = and i64 %i.dq, 3
  switch i64 %i.dr, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i.i
    i64 3, label %bb.bg
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i.i
    i64 1, label %bb.bh
  ], !prof !181

bb.bg:                                            ; preds = %bb.bf
  %i.ds = icmp ult ptr %.val.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.dt = and i64 %i.dq, 1095216660480
  %i.du = icmp ne i64 %i.dt, 1095216660480
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.assume(i1 %i.du)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.dv = getelementptr i8, ptr %.val.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.dv, ptr %i.dw, align 8, !alias.scope !198, !noalias !197
  store i8 3, ptr %i.d, align 8, !alias.scope !198, !noalias !197
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !197
  br label %bb.cd

bb.bi:                                            ; preds = %bb.be
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.dy = load i64, ptr %i.dx, align 8, !range !199, !alias.scope !200, !noundef !5 ; 6 uses
  %i.dz = icmp ne i64 %i.dy, -9223372036854775786
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp ult i64 %i.dy, -9223372036854775789
  br i1 %i.ea, label %bb.bj, label %bb.cd

bb.bj:                                            ; preds = %bb.bi
  %i.eb = icmp ne i64 %i.dy, -9223372036854775801
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp ult i64 %i.dy, -9223372036854775803
  br i1 %i.ec, label %bb.bk, label %bb.cd

bb.bk:                                            ; preds = %bb.bj
  %i.ed = icmp ne i64 %i.dy, -9223372036854775805
  call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp sgt i64 %i.dy, -1
  br i1 %i.ee, label %bb.bl, label %bb.cd

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VeclEECseHTIzroA4w0_6object.exit.i.i.i.i.i.i.invoke unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dx)
          to label %.body unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bo:                                            ; preds = %bb.be
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.ei = load i64, ptr %i.eh, align 8, !range !201, !alias.scope !202, !noundef !5 ; 4 uses
  %i.ej = icmp ne i64 %i.ei, -9223372036854775801
  call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp ult i64 %i.ei, -9223372036854775803
  br i1 %i.ek, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %bb.bo
  %i.el = icmp ne i64 %i.ei, -9223372036854775805
  call void @llvm.assume(i1 %i.el)
  %i.em = icmp sgt i64 %i.ei, -1
  br i1 %i.em, label %bb.bq, label %bb.cd

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VeclEECseHTIzroA4w0_6object.exit.i.i.i.i.i.i.invoke unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eh)
          to label %.body unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VeclEECseHTIzroA4w0_6object.exit.i.i.i.i.i.i.invoke: ; preds = %bb.bq, %bb.bl, %bb.as, %bb.aw
  %i.ep = phi ptr [ %i.dx, %bb.bl ], [ %i.cm, %bb.as ], [ %i.cu, %bb.aw ], [ %i.eh, %bb.bq ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVeclENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %bb.cd unwind label %bb.w

bb.bt:                                            ; preds = %bb.bd
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !195, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !195
  %i.er = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.es = and i64 %i.er, 3
  switch i64 %i.es, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i8.i.i
    i64 3, label %bb.bu
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i8.i.i
    i64 1, label %bb.bv
  ], !prof !181

bb.bu:                                            ; preds = %bb.bt
  %i.et = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.eu = and i64 %i.er, 1095216660480
  %i.ev = icmp ne i64 %i.eu, 1095216660480
  call void @llvm.assume(i1 %i.et)
  call void @llvm.assume(i1 %i.ev)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i8.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.ew = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 8, !alias.scope !203, !noalias !195
  store i8 3, ptr %i.c, align 8, !alias.scope !203, !noalias !195
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ex)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i8.i.i unwind label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i8.i.i: ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !195
  br label %bb.cd

bb.bw:                                            ; preds = %bb.y
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i = load ptr, ptr %i.ey, align 8, !alias.scope !180, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !180
  %i.ez = ptrtoint ptr %.val1.i.i to i64          ; 2 uses
  %i.fa = and i64 %i.ez, 3
  switch i64 %i.fa, label %default.unreachable56 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i
    i64 3, label %bb.bx
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseHTIzroA4w0_6object.exit.i.i
end_hunk_1
