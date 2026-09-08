Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmJPEGTurboCodec?download=true
inline.NumInlined: 270
inline.NumDeleted: 162
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@jpeg_start_decompress
declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #1

declare i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @jpeg12_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @jpeg16_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZThn8_N4gdcm14JPEGTurboCodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef zeroext i1 @_ZN4gdcm14JPEGTurboCodec15DecodeByStreamsERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm14JPEGTurboCodec12InternalCodeEPKcmRNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.jpeg_compress_struct, align 8 ; 31 uses
  %5 = alloca %"struct.gdcm::turbo_error_mgr", align 8 ; 6 uses
  %i.a = alloca [1 x ptr], align 8                ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !95   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !95   ; 3 uses
  %i.h = sext i32 %i.e to i64
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = call noundef zeroext i8 @_ZNK4gdcm11PixelFormat12GetPixelSizeEv(ptr noundef nonnull align 2 dereferenceable(10) %i.k)
  %i.m = zext i8 %i.l to i64
  %i.n = mul i64 %i.j, %i.m
  %.not = icmp eq i64 %2, %i.n
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.o = call ptr @jpeg_std_error(ptr noundef nonnull %5)
  store ptr %i.o, ptr %4, align 8, !tbaa !112
  store ptr @_ZN4gdcmL16turbo_error_exitEP18jpeg_common_struct, ptr %5, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.q = call i32 @_setjmp(ptr noundef nonnull %i.p) #28
  %.not58 = icmp eq i32 %i.q, 0                   ; 2 uses
  br i1 %.not58, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  call void @jpeg_CreateCompress(ptr noundef nonnull %4, i32 noundef 80, i64 noundef 584)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %_ZN4gdcmL16turbo_stdio_destEP20jpeg_compress_structPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.x = call noundef ptr %i.w(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 56), !inline_history !1 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !113
  br label %_ZN4gdcmL16turbo_stdio_destEP20jpeg_compress_structPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE.exit

_ZN4gdcmL16turbo_stdio_destEP20jpeg_compress_structPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE.exit: ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %i.s, %bb.c ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @_ZN4gdcmL22turbo_init_destinationEP20jpeg_compress_struct, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_ZN4gdcmL25turbo_empty_output_bufferEP20jpeg_compress_struct, ptr %i.aa, align 8, !tbaa !119
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr @_ZN4gdcmL22turbo_term_destinationEP20jpeg_compress_struct, ptr %i.ab, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %3, ptr %i.ac, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.e, ptr %i.ad, align 8, !tbaa !170
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 10 uses
  store i32 %i.g, ptr %i.ae, align 4, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !106, !range !123, !noundef !124
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !107
  %switch.tableidx96 = add i32 %i.aj, -1          ; 5 uses
  %i.ak = icmp ult i32 %switch.tableidx96, 13
  %switch.maskindex100 = trunc i32 %switch.tableidx96 to i16
  %switch.shifted101 = lshr i16 8079, %switch.maskindex100
  %switch.lobit102 = trunc i16 %switch.shifted101 to i1
  %or.cond109 = select i1 %i.ak, i1 %switch.lobit102, i1 false ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4gdcmL16turbo_stdio_destEP20jpeg_compress_structPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE.exit
  br i1 %or.cond109, label %switch.lookup, label %bb.z

bb.f:                                             ; preds = %_ZN4gdcmL16turbo_stdio_destEP20jpeg_compress_structPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE.exit
  br i1 %or.cond109, label %switch.lookup99, label %bb.z

switch.lookup:                                    ; preds = %bb.e
  %i.al = zext nneg i32 %switch.tableidx96 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4gdcm14JPEGTurboCodec12EncodeBufferERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm, i64 %i.al
  br label %bb.g

switch.lookup99:                                  ; preds = %bb.f
  %i.am = zext nneg i32 %switch.tableidx96 to i64
  %switch.gep103 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4gdcm14JPEGTurboCodec12EncodeBufferERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm, i64 %i.am
  %i.an = zext nneg i32 %switch.tableidx96 to i64
  %switch.gep106 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4gdcm14JPEGTurboCodec12EncodeBufferERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm.3, i64 %i.an
  %switch.load107 = load i8, ptr %switch.gep106, align 1
  %switch.ext108 = zext i8 %switch.load107 to i32
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup99, %switch.lookup
  %.sink92.in.in = phi ptr [ %switch.gep, %switch.lookup ], [ %switch.gep103, %switch.lookup99 ]
  %.sink90 = phi i32 [ 0, %switch.lookup ], [ %switch.ext108, %switch.lookup99 ]
  %.sink92.in = load i8, ptr %.sink92.in.in, align 1
  %.sink92 = zext i8 %.sink92.in to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %.sink92, ptr %i.ao, align 8, !tbaa !125
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 %.sink90, ptr %i.ap, align 4, !tbaa !126
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !98 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.at = load i16, ptr %i.as, align 2, !tbaa !97
  %.not.i = icmp ugt i16 %i.ar, %i.at
  br i1 %.not.i, label %bb.h, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit

bb.h:                                             ; preds = %bb.g
  %i.au = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.av, %bb.j ], [ %.pn, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.au) #26
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit:     ; preds = %bb.g
  %i.aw = zext i16 %i.ar to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !127
  call void @jpeg_set_defaults(ptr noundef nonnull %4)
  %i.ay = load i8, ptr %i.af, align 8, !tbaa !106, !range !123, !noundef !124
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %._crit_edge78, label %bb.k

bb.k:                                             ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit
  call void @jpeg_enable_lossless(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0)
  %.pre = load i8, ptr %i.af, align 8, !tbaa !106, !range !123
  %i.ba = trunc nuw i8 %.pre to i1
  br i1 %i.ba, label %._crit_edge78, label %bb.l

._crit_edge78:                                    ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit, %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre79 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !128
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !128
  %i.bd = icmp eq i32 %i.bc, 100
  br i1 %i.bd, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 695, ptr noundef nonnull @.str.2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.be) #26
  br label %bb.aa

bb.p:                                             ; preds = %._crit_edge78, %bb.l
  %i.bg = phi i32 [ %.pre79, %._crit_edge78 ], [ 100, %bb.l ]
  call void @jpeg_set_quality(ptr noundef nonnull %4, i32 noundef %i.bg, i32 noundef 1)
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 324
  store i32 0, ptr %i.bh, align 4, !tbaa !129
  call void @jpeg_start_compress(ptr noundef nonnull %4, i32 noundef 1)
  %i.bi = load i32, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !125
  %i.bl = mul i32 %i.bk, %i.e                     ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 8 uses
  %i.bn = icmp slt i32 %i.bi, 9
  br i1 %i.bn, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !99
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 340 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !130 ; 2 uses
  %i.bt = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.bu = icmp ult i32 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph74, label %.loopexit

.lr.ph74:                                         ; preds = %.preheader, %.lr.ph74
  %i.bv = phi i32 [ %i.ca, %.lr.ph74 ], [ %i.bs, %.preheader ]
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.bm
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  store ptr %i.by, ptr %i.a, align 8, !tbaa !108
  %i.bz = call i32 @jpeg_write_scanlines(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.ca = load i32, ptr %i.br, align 4, !tbaa !130 ; 2 uses
  %i.cb = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.cc = icmp ult i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph74, label %.loopexit, !llvm.loop !165

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !114
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !81
  %i.cg = call noundef ptr %i.cf(ptr noundef nonnull %4, i32 noundef 1, i64 noundef %i.bm) ; 3 uses
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !108
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 340 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !130 ; 2 uses
  %i.cj = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.ck = icmp ult i32 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %bb.r
  %i.cl = mul nsw i32 %i.g, %i.e
  %i.cm = urem i64 %i.bm, 3
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = sext i32 %i.cl to i64                   ; 2 uses
  %i.cp = udiv i64 %i.bm, 3                       ; 3 uses
  br i1 %i.cn, label %.lr.ph73.split, label %bb.s

.lr.ph73.split:                                   ; preds = %.lr.ph73
  %.not75 = icmp ult i32 %i.bl, 3
  br i1 %.not75, label %.lr.ph73.split.split, label %.lr.ph70.us.preheader

.lr.ph70.us.preheader:                            ; preds = %.lr.ph73.split
  %xtraiter = and i64 %i.cp, 1
  %.off = add nsw i64 %i.bm, -3
  %i.cq = icmp ult i64 %.off, 3
  %unroll_iter = and i64 %i.cp, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod112 = trunc i64 %i.cp to i1
  br label %.lr.ph70.us

.lr.ph70.us:                                      ; preds = %.lr.ph70.us.preheader, %._crit_edge71.us
  %i.cr = phi i32 [ %i.dw, %._crit_edge71.us ], [ %i.ci, %.lr.ph70.us.preheader ]
  %i.cs = zext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.cs, %i.bm
  %i.cu = udiv i64 %i.ct, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.co ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph70.us.new

.lr.ph70.us.new:                                  ; preds = %.lr.ph70.us, %.lr.ph70.us.new
  %.04667.us = phi ptr [ %i.dn, %.lr.ph70.us.new ], [ %i.cx, %.lr.ph70.us ] ; 3 uses
  %.04766.us = phi ptr [ %i.dk, %.lr.ph70.us.new ], [ %i.cw, %.lr.ph70.us ] ; 3 uses
  %.04865.us = phi ptr [ %i.dh, %.lr.ph70.us.new ], [ %i.cv, %.lr.ph70.us ] ; 3 uses
  %.04964.us = phi ptr [ %i.dp, %.lr.ph70.us.new ], [ %i.cg, %.lr.ph70.us ] ; 7 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph70.us.new ], [ 0, %.lr.ph70.us ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.04865.us, i64 1
  %i.cz = load i8, ptr %.04865.us, align 1, !tbaa !76
  %i.da = getelementptr inbounds nuw i8, ptr %.04964.us, i64 1
  store i8 %i.cz, ptr %.04964.us, align 1, !tbaa !76
  %i.db = getelementptr inbounds nuw i8, ptr %.04766.us, i64 1
  %i.dc = load i8, ptr %.04766.us, align 1, !tbaa !76
  %i.dd = getelementptr inbounds nuw i8, ptr %.04964.us, i64 2
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !76
  %i.de = getelementptr inbounds nuw i8, ptr %.04667.us, i64 1
  %i.df = load i8, ptr %.04667.us, align 1, !tbaa !76
  %i.dg = getelementptr inbounds nuw i8, ptr %.04964.us, i64 3
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !76
  %i.dh = getelementptr inbounds nuw i8, ptr %.04865.us, i64 2 ; 2 uses
  %i.di = load i8, ptr %i.cy, align 1, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %.04964.us, i64 4
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %.04766.us, i64 2 ; 2 uses
  %i.dl = load i8, ptr %i.db, align 1, !tbaa !76
  %i.dm = getelementptr inbounds nuw i8, ptr %.04964.us, i64 5
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !76
  %i.dn = getelementptr inbounds nuw i8, ptr %.04667.us, i64 2 ; 2 uses
  %i.do = load i8, ptr %i.de, align 1, !tbaa !76
  %i.dp = getelementptr inbounds nuw i8, ptr %.04964.us, i64 6 ; 2 uses
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !76
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge71.us.unr-lcssa, label %.lr.ph70.us.new, !llvm.loop !166

._crit_edge71.us.unr-lcssa:                       ; preds = %.lr.ph70.us.new
  br i1 %lcmp.mod.not, label %._crit_edge71.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge71.us.unr-lcssa, %.lr.ph70.us
  %.04667.us.epil.init = phi ptr [ %i.cx, %.lr.ph70.us ], [ %i.dn, %._crit_edge71.us.unr-lcssa ]
  %.04766.us.epil.init = phi ptr [ %i.cw, %.lr.ph70.us ], [ %i.dk, %._crit_edge71.us.unr-lcssa ]
  %.04865.us.epil.init = phi ptr [ %i.cv, %.lr.ph70.us ], [ %i.dh, %._crit_edge71.us.unr-lcssa ]
  %.04964.us.epil.init = phi ptr [ %i.cg, %.lr.ph70.us ], [ %i.dp, %._crit_edge71.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod112)
  %i.dq = load i8, ptr %.04865.us.epil.init, align 1, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %.04964.us.epil.init, i64 1
  store i8 %i.dq, ptr %.04964.us.epil.init, align 1, !tbaa !76
  %i.ds = load i8, ptr %.04766.us.epil.init, align 1, !tbaa !76
  %i.dt = getelementptr inbounds nuw i8, ptr %.04964.us.epil.init, i64 2
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !76
  %i.du = load i8, ptr %.04667.us.epil.init, align 1, !tbaa !76
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !76
  br label %._crit_edge71.us

._crit_edge71.us:                                 ; preds = %._crit_edge71.us.unr-lcssa, %.epil.preheader
  %i.dv = call i32 @jpeg_write_scanlines(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.dw = load i32, ptr %i.ch, align 4, !tbaa !130 ; 2 uses
  %i.dx = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.dy = icmp ult i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph70.us, label %.loopexit, !llvm.loop !167

.lr.ph73.split.split:                             ; preds = %.lr.ph73.split, %.lr.ph73.split.split
  %i.dz = call i32 @jpeg_write_scanlines(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.ea = load i32, ptr %i.ch, align 4, !tbaa !130
  %i.eb = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.ec = icmp ult i32 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph73.split.split, label %.loopexit, !llvm.loop !167

bb.s:                                             ; preds = %.lr.ph73
  %i.ed = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 720, ptr noundef nonnull @.str.2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_throw(ptr nonnull %i.ed, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #29
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ed) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.aa

.loopexit:                                        ; preds = %._crit_edge71.us, %.lr.ph73.split.split, %.lr.ph74, %bb.r, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.y

bb.v:                                             ; preds = %bb.p
  %i.ef = icmp samesign ult i32 %i.bi, 13
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 340 ; 4 uses
  br i1 %i.ef, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !130 ; 2 uses
  %i.ei = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.ej = icmp ult i32 %i.eh, %i.ei
  br i1 %i.ej, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %bb.w, %.lr.ph62
  %i.ek = phi i32 [ %i.ep, %.lr.ph62 ], [ %i.eh, %bb.w ]
  %i.el = zext i32 %i.ek to i64
  %i.em = mul nsw i64 %i.el, %i.bm
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.em
  store ptr %i.en, ptr %i.b, align 8, !tbaa !111
  %i.eo = call i32 @jpeg12_write_scanlines(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i32 noundef 1) ; 0 uses
  %i.ep = load i32, ptr %i.eg, align 4, !tbaa !130 ; 2 uses
  %i.eq = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.er = icmp ult i32 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph62, label %._crit_edge63, !llvm.loop !168

._crit_edge63:                                    ; preds = %.lr.ph62, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.es = load i32, ptr %i.eg, align 4, !tbaa !130 ; 2 uses
  %i.et = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.eu = icmp ult i32 %i.es, %i.et
  br i1 %i.eu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.x, %.lr.ph
  %i.ev = phi i32 [ %i.fa, %.lr.ph ], [ %i.es, %bb.x ]
  %i.ew = zext i32 %i.ev to i64
  %i.ex = mul nsw i64 %i.ew, %i.bm
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ex
  store ptr %i.ey, ptr %i.c, align 8, !tbaa !111
  %i.ez = call i32 @jpeg16_write_scanlines(ptr noundef nonnull %4, ptr noundef nonnull %i.c, i32 noundef 1) ; 0 uses
  %i.fa = load i32, ptr %i.eg, align 4, !tbaa !130 ; 2 uses
  %i.fb = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.fc = icmp ult i32 %i.fa, %i.fb
  br i1 %i.fc, label %.lr.ph, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %.lr.ph, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge63, %._crit_edge, %.loopexit
  call void @jpeg_finish_compress(ptr noundef nonnull %4)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.y
  call void @jpeg_destroy_compress(ptr noundef nonnull %4)
  br label %bb.z

bb.z:                                             ; preds = %bb.f, %bb.e, %.sink.split
  %.052 = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ %.not58, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ab

bb.aa:                                            ; preds = %bb.u, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.u ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

bb.ab:                                            ; preds = %bb.a, %bb.z
  %.1 = phi i1 [ %.052, %bb.z ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef zeroext i8 @_ZNK4gdcm11PixelFormat12GetPixelSizeEv(ptr noundef nonnull align 2 dereferenceable(10)) local_unnamed_addr #1

declare void @jpeg_destroy_compress(ptr noundef) local_unnamed_addr #1

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #1

declare void @jpeg_enable_lossless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @jpeg12_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @jpeg16_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm14JPEGTurboCodec12EncodeBufferERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEEPKcm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:bb.a
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 0, ptr %i.e, align 8, !tbaa !205
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.c, %bb.k, %bb.a
  %.sroa.034.2 = phi ptr [ null, %bb.a ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ null, %bb.c ], [ %0, %bb.l ], [ null, %bb.k ]
  ret ptr %.sroa.034.2
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.15) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt11logic_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN4gdcmL22turbo_init_destinationEP20jpeg_compress_struct(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = tail call noundef ptr %i.e(ptr noundef %0, i32 noundef 1, i64 noundef 4096) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.g, align 8, !tbaa !141
  store ptr %i.f, ptr %i.b, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4096, ptr %i.h, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN4gdcmL25turbo_empty_output_bufferEP20jpeg_compress_struct(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.f, i64 noundef 4096) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !134
  %i.n = and i32 %i.m, 5
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 38, ptr %i.p, align 8, !tbaa !135
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !136
  tail call void %i.q(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !141
  store ptr %i.r, ptr %i.b, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4096, ptr %i.s, align 8, !tbaa !143
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4gdcmL22turbo_term_destinationEP20jpeg_compress_struct(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %.not = icmp eq i64 %i.d, 4096
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 4096, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.e) ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !134
  %i.q = and i32 %i.p, 5
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 38, ptr %i.s, align 8, !tbaa !135
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !136
  tail call void %i.t(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 0 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !121  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !134
  %i.ae = and i32 %i.ad, 5
  %.not14 = icmp eq i32 %i.ae, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %0, align 8, !tbaa !112   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i32 38, ptr %i.ag, align 8, !tbaa !135
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !136
  tail call void %i.ah(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind returns_twice }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTS14jpeg_error_mgr", !13, i64 0}
!15 = !{!"p1 _ZTS15jpeg_memory_mgr", !13, i64 0}
!16 = !{!"p1 _ZTS17jpeg_progress_mgr", !13, i64 0}
!17 = !{!"p1 _ZTS15jpeg_source_mgr", !13, i64 0}
!18 = !{!"_ZTS13J_COLOR_SPACE", !7, i64 0}
!19 = !{!"double", !7, i64 0}
!20 = !{!"_ZTS12J_DCT_METHOD", !7, i64 0}
!21 = !{!"_ZTS13J_DITHER_MODE", !7, i64 0}
!22 = !{!"any p2 pointer", !13, i64 0}
!23 = !{!"p2 omnipotent char", !22, i64 0}
!24 = !{!"p1 int", !13, i64 0}
!25 = !{!"short", !7, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_struct", !13, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"p1 _ZTS18jpeg_decomp_master", !13, i64 0}
!29 = !{!"p1 _ZTS22jpeg_d_main_controller", !13, i64 0}
!30 = !{!"p1 _ZTS22jpeg_d_coef_controller", !13, i64 0}
!31 = !{!"p1 _ZTS22jpeg_d_post_controller", !13, i64 0}
!32 = !{!"p1 _ZTS21jpeg_input_controller", !13, i64 0}
!33 = !{!"p1 _ZTS18jpeg_marker_reader", !13, i64 0}
!34 = !{!"p1 _ZTS20jpeg_entropy_decoder", !13, i64 0}
!35 = !{!"p1 _ZTS16jpeg_inverse_dct", !13, i64 0}
!36 = !{!"p1 _ZTS14jpeg_upsampler", !13, i64 0}
!37 = !{!"p1 _ZTS22jpeg_color_deconverter", !13, i64 0}
!38 = !{!"p1 _ZTS20jpeg_color_quantizer", !13, i64 0}
!39 = !{!"_ZTS22jpeg_decompress_struct", !14, i64 0, !15, i64 8, !16, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !17, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !18, i64 60, !18, i64 64, !8, i64 68, !8, i64 72, !19, i64 80, !8, i64 88, !8, i64 92, !20, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !21, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !23, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !24, i64 192, !7, i64 200, !7, i64 232, !7, i64 264, !8, i64 296, !13, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !7, i64 324, !7, i64 340, !7, i64 356, !8, i64 372, !8, i64 376, !7, i64 380, !7, i64 381, !7, i64 382, !25, i64 384, !25, i64 386, !8, i64 388, !7, i64 392, !8, i64 396, !26, i64 400, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !8, i64 424, !27, i64 432, !8, i64 440, !7, i64 448, !8, i64 480, !8, i64 484, !8, i64 488, !7, i64 492, !8, i64 532, !8, i64 536, !8, i64 540, !8, i64 544, !8, i64 548, !24, i64 552, !8, i64 560, !8, i64 564, !28, i64 568, !29, i64 576, !30, i64 584, !31, i64 592, !32, i64 600, !33, i64 608, !34, i64 616, !35, i64 624, !36, i64 632, !37, i64 640, !38, i64 648}
!40 = !{!"p1 _ZTS20jpeg_destination_mgr", !13, i64 0}
!41 = !{!"p1 _ZTS16jpeg_comp_master", !13, i64 0}
!42 = !{!"p1 _ZTS22jpeg_c_main_controller", !13, i64 0}
!43 = !{!"p1 _ZTS22jpeg_c_prep_controller", !13, i64 0}
!44 = !{!"p1 _ZTS22jpeg_c_coef_controller", !13, i64 0}
!45 = !{!"p1 _ZTS18jpeg_marker_writer", !13, i64 0}
!46 = !{!"p1 _ZTS20jpeg_color_converter", !13, i64 0}
!47 = !{!"p1 _ZTS16jpeg_downsampler", !13, i64 0}
!48 = !{!"p1 _ZTS16jpeg_forward_dct", !13, i64 0}
!49 = !{!"p1 _ZTS20jpeg_entropy_encoder", !13, i64 0}
!50 = !{!"_ZTS20jpeg_compress_struct", !14, i64 0, !15, i64 8, !16, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !40, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !18, i64 60, !19, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !18, i64 96, !13, i64 104, !7, i64 112, !7, i64 144, !7, i64 160, !7, i64 192, !7, i64 224, !7, i64 240, !7, i64 256, !8, i64 272, !13, i64 280, !8, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !20, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !7, i64 328, !7, i64 329, !7, i64 330, !25, i64 332, !25, i64 334, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !7, i64 376, !8, i64 408, !8, i64 412, !8, i64 416, !7, i64 420, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !24, i64 480, !8, i64 488, !41, i64 496, !42, i64 504, !43, i64 512, !44, i64 520, !45, i64 528, !46, i64 536, !47, i64 544, !48, i64 552, !49, i64 560, !13, i64 568, !8, i64 576}
!51 = !{!"long", !7, i64 0}
!52 = !{!"_ZTS14jpeg_error_mgr", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !8, i64 40, !7, i64 44, !8, i64 124, !51, i64 128, !23, i64 136, !8, i64 144, !23, i64 152, !8, i64 160, !8, i64 164}
!53 = !{!"_ZTSN4gdcm15turbo_error_mgrE", !52, i64 0, !7, i64 168}
!54 = !{!"_ZTSN4gdcm18JPEGTurboInternalsE", !39, i64 0, !50, i64 656, !53, i64 1240, !53, i64 1608, !8, i64 1976, !13, i64 1984}
!55 = !{!54, !13, i64 1984}
!56 = !{!"_ZTSN4gdcm5CoderE"}
!57 = !{!"_ZTSN4gdcm7DecoderE"}
!58 = !{!"_ZTSN4gdcm5CodecE", !56, i64 0, !57, i64 8}
!59 = !{!"bool", !7, i64 0}
!60 = !{!"_ZTSN4gdcm25PhotometricInterpretation6PITypeE", !7, i64 0}
!61 = !{!"_ZTSN4gdcm25PhotometricInterpretationE", !60, i64 0}
!62 = !{!"_ZTSN4gdcm11PixelFormatE", !25, i64 0, !25, i64 2, !25, i64 4, !25, i64 6, !25, i64 8}
!63 = !{!"p1 _ZTSN4gdcm11LookupTableE", !13, i64 0}
!64 = !{!"_ZTSN4gdcm12SmartPointerINS_11LookupTableEEE", !63, i64 0}
!65 = !{!"_ZTSN4gdcm10ImageCodecE", !58, i64 0, !59, i64 16, !59, i64 17, !8, i64 20, !61, i64 24, !62, i64 28, !59, i64 38, !59, i64 39, !64, i64 40, !7, i64 48, !8, i64 60, !59, i64 64}
!66 = !{!"p1 _ZTSN4gdcm9JPEGCodecE", !13, i64 0}
!67 = !{!"_ZTSN4gdcm9JPEGCodecE", !65, i64 0, !8, i64 68, !8, i64 72, !66, i64 80}
!68 = !{!"p1 _ZTSN4gdcm18JPEGTurboInternalsE", !13, i64 0}
!69 = !{!"_ZTSN4gdcm14JPEGTurboCodecE", !67, i64 0, !68, i64 88}
!70 = !{!69, !68, i64 88}
!71 = !{ptr @_ZN4gdcm14JPEGTurboCodecD2Ev}
!72 = !{!54, !8, i64 1976}
!73 = !{!39, !14, i64 0}
!74 = !{!53, !13, i64 0}
!75 = !{!53, !8, i64 40}
!76 = !{!7, !7, i64 0}
!77 = !{!67, !8, i64 68}
!78 = !{!39, !17, i64 40}
!79 = !{!39, !15, i64 8}
!80 = !{!"_ZTS15jpeg_memory_mgr", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !51, i64 88, !51, i64 96}
!81 = !{!80, !13, i64 0}
!82 = !{!"_ZTS15jpeg_source_mgr", !27, i64 0, !51, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!83 = !{!"p1 _ZTSNSt3__113basic_istreamIcNS_11char_traitsIcEEEE", !13, i64 0}
!84 = !{!"_ZTSN4gdcm16turbo_source_mgrE", !82, i64 0, !83, i64 56, !27, i64 64, !8, i64 72}
!85 = !{!84, !27, i64 64}
!86 = !{!84, !13, i64 16}
!87 = !{!84, !13, i64 24}
!88 = !{!84, !13, i64 32}
!89 = !{!84, !13, i64 40}
!90 = !{!84, !13, i64 48}
!91 = !{!84, !83, i64 56}
!92 = !{!53, !51, i64 128}
!93 = !{!39, !8, i64 296}
!94 = !{!39, !8, i64 52}
!95 = !{!8, !8, i64 0}
!96 = !{!39, !8, i64 48}
!97 = !{!62, !25, i64 2}
!98 = !{!62, !25, i64 4}
!99 = !{!65, !8, i64 20}
!100 = !{!39, !18, i64 60}
!101 = !{!39, !8, i64 56}
!102 = !{!60, !60, i64 0}
!103 = !{!39, !8, i64 316}
!104 = !{!39, !8, i64 536}
!105 = !{!39, !8, i64 532}
!106 = !{!65, !59, i64 64}
!107 = !{!61, !60, i64 0}
!108 = !{!27, !27, i64 0}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"p1 short", !13, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!50, !14, i64 0}
!113 = !{!50, !40, i64 40}
!114 = !{!50, !15, i64 8}
!115 = !{!"_ZTS20jpeg_destination_mgr", !27, i64 0, !51, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!116 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !13, i64 0}
!117 = !{!"_ZTSN4gdcm21turbo_destination_mgrE", !115, i64 0, !116, i64 40, !27, i64 48}
!118 = !{!117, !13, i64 16}
!119 = !{!117, !13, i64 24}
!120 = !{!117, !13, i64 32}
!121 = !{!117, !116, i64 40}
!122 = !{!50, !8, i64 52}
!123 = !{i8 0, i8 2}
!124 = !{}
!125 = !{!50, !8, i64 56}
!126 = !{!50, !18, i64 60}
!127 = !{!50, !8, i64 88}
!128 = !{!67, !8, i64 72}
!129 = !{!50, !8, i64 324}
!130 = !{!50, !8, i64 340}
!131 = !{!84, !8, i64 72}
!132 = !{!"p1 long", !13, i64 0}
!133 = !{!"_ZTSNSt3__18ios_baseE", !8, i64 8, !51, i64 16, !51, i64 24, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 48, !22, i64 56, !24, i64 64, !51, i64 72, !51, i64 80, !132, i64 88, !51, i64 96, !51, i64 104, !22, i64 112, !51, i64 120, !51, i64 128}
!134 = !{!133, !8, i64 32}
!135 = !{!52, !8, i64 40}
!136 = !{!52, !13, i64 0}
!137 = !{!84, !27, i64 0}
!138 = !{!84, !51, i64 8}
!139 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !133, i64 0, !116, i64 136, !8, i64 144}
!140 = !{!139, !8, i64 144}
!141 = !{!117, !27, i64 48}
!142 = !{!117, !27, i64 0}
!143 = !{!117, !51, i64 8}
!144 = !{ptr @_ZN4gdcm14JPEGTurboCodecD0Ev, ptr @_ZN4gdcm14JPEGTurboCodecD2Ev}
!145 = !{ptr @_ZN4gdcm14JPEGTurboCodecD0Ev}
!146 = !{!62, !25, i64 8}
!147 = !{!25, !25, i64 0}
!148 = !{i64 0, i64 2, !147, i64 2, i64 2, !147, i64 4, i64 2, !147, i64 6, i64 2, !147, i64 8, i64 2, !147}
!149 = !{!62, !25, i64 6}
!150 = !{!62, !25, i64 0}
!151 = !{!"_ZTSN4gdcm14TransferSyntax6TSTypeE", !7, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!"_ZTS18jpeg_common_struct", !14, i64 0, !15, i64 8, !16, i64 16, !13, i64 24, !8, i64 32, !8, i64 36}
!154 = !{!153, !14, i64 0}
!155 = !{!52, !13, i64 16}
!156 = distinct !{!156, !109}
!157 = distinct !{!157, !109}
!158 = distinct !{!158, !109}
!159 = !{!39, !18, i64 64}
!160 = !{!39, !8, i64 136}
end_hunk_1
