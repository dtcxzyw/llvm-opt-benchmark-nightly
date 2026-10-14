Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmJPEG2000Codec?download=true
inline.NumInlined: 1115
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4gdcm13JPEG2000Codec21DecodeByStreamsCommonEPcm:bb.a
  store i32 11, ptr %i.u, align 4, !tbaa !94
  %i.v = call ptr @opj_create_decompress(i32 noundef %.229) ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 18720
  %i.z = load i32, ptr %i.y, align 8, !tbaa !45
  %i.aa = call i32 @opj_codec_set_threads(ptr noundef %i.v, i32 noundef %i.z) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !17
  store ptr %1, ptr %4, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %indvars.iv235, ptr %i.ac, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.ad = add i32 %i.j, -100
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !76
  store ptr %i.c, ptr %i.b, align 16, !tbaa !179
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !179
  %i.af = call i32 @opj_set_error_handler(ptr noundef %i.v, ptr noundef nonnull @_ZN4gdcm19gdcm_error_callbackEPKcPv, ptr noundef nonnull %i.b) ; 0 uses
  %i.ag = call noundef ptr @_ZN4gdcm31opj_stream_create_memory_streamEPNS_6myfileEmb(ptr noundef nonnull %4, i64 noundef 1048576, i1 noundef zeroext true) ; 8 uses
  %i.ah = call i32 @opj_setup_decoder(ptr noundef %i.v, ptr noundef nonnull %3)
  %.not141 = icmp eq i32 %i.ah, 0
  br i1 %.not141, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  call void @opj_destroy_codec(ptr noundef %i.v)
  call void @opj_stream_destroy(ptr noundef %i.ag)
  br label %bb.bn

bb.d:                                             ; preds = %.critedge
  %i.ai = call i32 @opj_read_header(ptr noundef %i.ag, ptr noundef %i.v, ptr noundef nonnull %i.a)
  %.not142 = icmp eq i32 %i.ai, 0
  br i1 %.not142, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @opj_destroy_codec(ptr noundef %i.v)
  call void @opj_stream_destroy(ptr noundef %i.ag)
  br label %bb.bn

bb.f:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.ak = call i32 @opj_decode(ptr noundef %i.v, ptr noundef %i.ag, ptr noundef %i.aj)
  %.not143 = icmp eq i32 %i.ak, 0
  br i1 %.not143, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @opj_destroy_codec(ptr noundef %i.v)
  call void @opj_stream_destroy(ptr noundef %i.ag)
  br label %bb.bn

bb.h:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.a, align 8
  %.not144 = icmp eq ptr %i.al, null
  br i1 %.not144, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @opj_end_decompress(ptr noundef %i.v, ptr noundef %i.ag) ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not145 = icmp eq ptr %.pr, null
  br i1 %.not145, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call fastcc noundef zeroext i1 @_ZN4gdcmL16check_comp_validEP9opj_image(ptr noundef nonnull %.pr)
  br i1 %i.an, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.h, %bb.j, %bb.i
  call void @opj_destroy_codec(ptr noundef %i.v)
  call void @opj_stream_destroy(ptr noundef %i.ag)
  br label %bb.bn

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i8 0, ptr %i.d, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i8 0, ptr %i.e, align 1, !tbaa !95
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !93
  switch i32 %i.ao, label %.critedge157 [
    i32 1, label %.split
    i32 0, label %bb.l
  ]

.split:                                           ; preds = %bb.k
  %i.ap = call fastcc noundef zeroext i1 @_ZN4gdcmL12parsejp2_impEPKcmPbS2_(ptr noundef nonnull %1, i64 noundef %2, ptr noundef %i.d, ptr noundef %i.e)
  br i1 %i.ap, label %bb.m, label %.critedge157

bb.l:                                             ; preds = %bb.k
  %i.aq = call fastcc noundef zeroext i1 @_ZN4gdcmL12parsej2k_impEPKcmPbS2_(ptr noundef nonnull %1, i64 noundef %2, ptr noundef %i.d, ptr noundef %i.e)
  br i1 %i.aq, label %bb.m, label %.critedge157

bb.m:                                             ; preds = %.split, %bb.l
  %i.ar = load i8, ptr %i.d, align 1, !tbaa !95, !range !96, !noundef !97
  %i.as = xor i8 %i.ar, 1
  br label %.critedge157

.critedge157:                                     ; preds = %.split, %bb.k, %bb.m, %bb.l
  %.0125 = phi i8 [ %i.as, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %.split ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.0125, ptr %i.at, align 8, !tbaa !46
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ay = call noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ax)
  %i.az = zext i16 %i.ay to i32
  %i.ba = icmp eq i32 %i.aw, %i.az
  br i1 %i.ba, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.critedge157
  %i.bb = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 796, ptr noundef nonnull @.str.3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.q:                                             ; preds = %.critedge157
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !101
  %i.bg = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
  %i.bh = call noundef zeroext i16 @_ZNK4gdcm25PhotometricInterpretation18GetSamplesPerPixelEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bg)
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp eq i32 %i.bf, %i.bi
  br i1 %i.bj, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 797, ptr noundef nonnull @.str.3)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.u:                                             ; preds = %bb.q
  %i.bm = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !180
  %i.bo = icmp eq i32 %i.bn, 4
  br i1 %i.bo, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !180
  %i.br = icmp eq i32 %i.bq, 8
  br i1 %i.br, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !180
  %i.bu = icmp eq i32 %i.bt, 13
  br i1 %i.bu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4gdcm10ImageCodec28GetPhotometricInterpretationEv(ptr noundef nonnull align 8 dereferenceable(65) %0) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.v
  call void @opj_stream_destroy(ptr noundef %i.ag)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !76
  %i.ca = mul i32 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 3 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !102
  %i.cd = lshr i16 %i.cc, 3
  %i.ce = zext nneg i16 %i.cd to i32
  %i.cf = mul i32 %i.ca, %i.ce
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !101
  %i.cj = mul i32 %i.cf, %i.ci
  %i.ck = zext i32 %i.cj to i64                   ; 3 uses
  %i.cl = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #39 ; 6 uses
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !91  ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !101
  %.not153189.not = icmp eq i32 %i.co, 0
  br i1 %.not153189.not, label %.critedge161, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph191, %.loopexit
  %indvars.iv198 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next199, %.loopexit ] ; 8 uses
  %i.cs = phi ptr [ %i.cm, %.lr.ph191 ], [ %5, %.loopexit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !103
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %i.cu, i64 %indvars.iv198 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !105 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !181 ; 3 uses
  %notmask = shl nsw i32 -1, %i.cz
  %i.da = xor i32 %notmask, -1                    ; 2 uses
  %i.db = add i32 %i.cx, %i.da
  %i.dc = ashr i32 %i.db, %i.cz                   ; 17 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !106
  %i.df = add i32 %i.de, %i.da
  %i.dg = ashr i32 %i.df, %i.cz                   ; 3 uses
  %i.dh = load i32, ptr %i.bw, align 8, !tbaa !76
  %.not147 = icmp eq i32 %i.dc, %i.dh
  br i1 %.not147, label %bb.aa, label %.critedge159

bb.aa:                                            ; preds = %bb.z
  %i.di = load i32, ptr %i.by, align 4, !tbaa !76
  %.not148 = icmp eq i32 %i.dg, %i.di
  br i1 %.not148, label %bb.ab, label %.critedge159

.critedge159:                                     ; preds = %bb.aa, %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #40
  br label %.sink.split230

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !107 ; 2 uses
  %i.dl = load i16, ptr %i.cp, align 4, !tbaa !108
  %.not.i = icmp ne i16 %i.dl, 0
  %i.dm = zext i1 %.not.i to i32
  %.not149 = icmp eq i32 %i.dk, %i.dm
  br i1 %.not149, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = and i32 %i.dk, 65535
  %.not.i162 = icmp ne i32 %i.dn, 0
  %i.do = zext i1 %.not.i162 to i16
  store i16 %i.do, ptr %i.cp, align 4, !tbaa !108
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !109 ; 5 uses
  %i.dr = load i16, ptr %i.cq, align 8, !tbaa !110 ; 3 uses
  %i.ds = load i16, ptr %i.cb, align 2, !tbaa !102 ; 2 uses
  %.not.i163 = icmp ugt i16 %i.dr, %i.ds
  br i1 %.not.i163, label %bb.ae, label %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dt = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 131, ptr noundef nonnull @.str.3)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

common.resume:                                    ; preds = %bb.bm, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.du, %bb.ag ], [ %.pn.pn, %bb.bm ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.ae
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dt) #37
  br label %common.resume

_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit:     ; preds = %bb.ad
  %i.dv = zext i16 %i.dr to i32
  %.not150 = icmp eq i32 %i.dq, %i.dv
  br i1 %.not150, label %_ZN4gdcm11PixelFormat10SetHighBitEt.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit
  %i.dw = icmp ult i32 %i.dq, 9
  br i1 %i.dw, label %.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = icmp ult i32 %i.dq, 17
  br i1 %i.dx, label %.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = icmp ult i32 %i.dq, 33
  br i1 %i.dy, label %.sink.split, label %bb.ak

.sink.split:                                      ; preds = %bb.aj, %bb.ai, %bb.ah
  %.sink226 = phi i16 [ 8, %bb.ah ], [ 16, %bb.ai ], [ 32, %bb.aj ] ; 3 uses
  %i.dz = phi <2 x i16> [ <i16 8, i16 7>, %bb.ah ], [ <i16 16, i16 15>, %bb.ai ], [ <i16 32, i16 31>, %bb.aj ]
  store i16 %.sink226, ptr %i.cb, align 2, !tbaa !102
  store <2 x i16> %i.dz, ptr %i.cq, align 8, !tbaa !111
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.aj
  %i.ea = phi i16 [ %i.dr, %bb.aj ], [ %.sink226, %.sink.split ]
  %i.eb = phi i16 [ %i.ds, %bb.aj ], [ %.sink226, %.sink.split ]
  %i.ec = trunc i32 %i.dq to i16                  ; 3 uses
  switch i16 %i.ec, label %bb.ao [
    i16 -1, label %bb.al
    i16 4095, label %bb.am
    i16 255, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i = phi i16 [ %i.ec, %bb.ak ], [ 16, %bb.al ], [ 12, %bb.am ], [ 8, %bb.an ] ; 5 uses
  %i.ed = add i16 %.0.i, -1                       ; 3 uses
  %or.cond.i = icmp ult i16 %i.ed, %i.eb
  br i1 %or.cond.i, label %bb.ap, label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

bb.ap:                                            ; preds = %bb.ao
  store i16 %.0.i, ptr %i.cq, align 8, !tbaa !110
  switch i16 %i.ed, label %bb.ar [
    i16 254, label %bb.aq
    i16 4094, label %.thread.i.i
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %.thread.i.i

bb.ar:                                            ; preds = %bb.ap
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ar, %bb.aq, %bb.ap
  %.09.i.i = phi i16 [ %i.ed, %bb.ar ], [ 7, %bb.aq ], [ 11, %bb.ap ] ; 2 uses
  %i.ee = icmp ult i16 %.09.i.i, %.0.i
  br i1 %i.ee, label %.sink.split.i.i, label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

.sink.split.i.i:                                  ; preds = %.thread.i.i
  store i16 %.09.i.i, ptr %i.cr, align 2, !tbaa !112
  br label %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit

_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit:      ; preds = %bb.ao, %.thread.i.i, %.sink.split.i.i
  %i.ef = phi i16 [ %i.ea, %bb.ao ], [ %.0.i, %.thread.i.i ], [ %.0.i, %.sink.split.i.i ] ; 3 uses
  %i.eg = add i16 %i.ec, -1                       ; 3 uses
  switch i16 %i.eg, label %bb.au [
    i16 -2, label %.thread.i
    i16 4094, label %bb.as
    i16 254, label %bb.at
  ]

bb.as:                                            ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  br label %.thread.i

bb.at:                                            ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  br label %.thread.i

bb.au:                                            ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  %i.eh = icmp ugt i16 %i.ef, 1
  %i.ei = icmp eq i16 %i.eg, 0
  %or.cond.i164 = and i1 %i.ei, %i.eh
  br i1 %or.cond.i164, label %bb.av, label %.thread.i

bb.av:                                            ; preds = %bb.au
  %i.ej = add i16 %i.ef, -1
  br label %.sink.split.i

.thread.i:                                        ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit, %bb.as, %bb.at, %bb.au
  %.09.i = phi i16 [ %i.eg, %bb.au ], [ 7, %bb.at ], [ 11, %bb.as ], [ 15, %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit ] ; 2 uses
  %i.ek = icmp ult i16 %.09.i, %i.ef
  br i1 %i.ek, label %.sink.split.i, label %_ZN4gdcm11PixelFormat10SetHighBitEt.exit

.sink.split.i:                                    ; preds = %.thread.i, %bb.av
  %.09.sink.i = phi i16 [ %i.ej, %bb.av ], [ %.09.i, %.thread.i ]
  store i16 %.09.sink.i, ptr %i.cr, align 2, !tbaa !112
  br label %_ZN4gdcm11PixelFormat10SetHighBitEt.exit

_ZN4gdcm11PixelFormat10SetHighBitEt.exit:         ; preds = %.sink.split.i, %.thread.i, %_ZNK4gdcm11PixelFormat13GetBitsStoredEv.exit
  %i.el = call noundef zeroext i1 @_ZNK4gdcm11PixelFormat7IsValidEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ax)
  br i1 %i.el, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZN4gdcm11PixelFormat10SetHighBitEt.exit
  %i.em = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.em, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 860, ptr noundef nonnull @.str.3)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @__cxa_throw(ptr nonnull %i.em, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.az:                                            ; preds = %_ZN4gdcm11PixelFormat10SetHighBitEt.exit
  %i.eo = load i32, ptr %i.dp, align 8, !tbaa !109 ; 3 uses
  %i.ep = icmp ult i32 %i.eo, 33
  br i1 %i.ep, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eq = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.eq, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 861, ptr noundef nonnull @.str.3)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @__cxa_throw(ptr nonnull %i.eq, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bd:                                            ; preds = %bb.az
  %i.es = icmp samesign ult i32 %i.eo, 9
  br i1 %i.es, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.et = mul nsw i32 %i.dg, %i.dc                ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  %.pre202 = load ptr, ptr %i.a, align 8, !tbaa !91 ; 4 uses
  br i1 %i.eu, label %.lr.ph188, label %.loopexit

.lr.ph188:                                        ; preds = %bb.be
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv198
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre202, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre202, i64 16
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph188, %bb.bf
  %.0121187 = phi i32 [ 0, %.lr.ph188 ], [ %i.fn, %bb.bf ] ; 3 uses
  %.0122186 = phi ptr [ %i.ev, %.lr.ph188 ], [ %i.fm, %bb.bf ] ; 2 uses
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !103
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.ey, i64 %indvars.iv198
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !113
  %i.fc = sdiv i32 %.0121187, %i.dc
  %i.fd = mul nsw i32 %i.fc, %i.cx
  %i.fe = srem i32 %.0121187, %i.dc
  %i.ff = add nsw i32 %i.fd, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !76
  %i.fj = trunc i32 %i.fi to i8
  store i8 %i.fj, ptr %.0122186, align 1, !tbaa !55
  %i.fk = load i32, ptr %i.ex, align 8, !tbaa !101
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.0122186, i64 %i.fl
  %i.fn = add nuw nsw i32 %.0121187, 1            ; 2 uses
  %exitcond197.not = icmp eq i32 %i.fn, %i.et
  br i1 %exitcond197.not, label %.loopexit, label %bb.bf, !llvm.loop !175

bb.bg:                                            ; preds = %bb.bd
  %i.fo = icmp samesign ult i32 %i.eo, 17
  %i.fp = mul i32 %i.dg, %i.dc                    ; 9 uses
  %i.fq = icmp sgt i32 %i.fp, 0                   ; 2 uses
  %.pre201 = load ptr, ptr %i.a, align 8, !tbaa !91 ; 10 uses
  br i1 %i.fo, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.fq, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %bb.bh
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv198 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre201, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !103
  %i.fu = getelementptr inbounds nuw [64 x i8], ptr %i.ft, i64 %indvars.iv198
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !113 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre201, i64 16
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !101
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %xtraiter242 = and i32 %i.fp, 1
  %i.ga = icmp eq i32 %i.fp, 1
  br i1 %i.ga, label %.epil.preheader241, label %.lr.ph185.new

.lr.ph185.new:                                    ; preds = %.lr.ph185
  %unroll_iter245 = and i32 %i.fp, 2147483646
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph185.new
  %.0119184 = phi i32 [ 0, %.lr.ph185.new ], [ %i.gu, %bb.bi ] ; 4 uses
  %.0120183 = phi ptr [ %i.fr, %.lr.ph185.new ], [ %i.gt, %bb.bi ] ; 2 uses
  %niter246 = phi i32 [ 0, %.lr.ph185.new ], [ %niter246.next.1, %bb.bi ]
  %i.gb = sdiv i32 %.0119184, %i.dc
  %i.gc = mul nsw i32 %i.gb, %i.cx
  %i.gd = srem i32 %.0119184, %i.dc
  %i.ge = add nsw i32 %i.gc, %i.gd
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !76
  %i.gi = trunc i32 %i.gh to i16
  store i16 %i.gi, ptr %.0120183, align 2, !tbaa !111
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.0120183, i64 %i.fz ; 2 uses
  %i.gk = or disjoint i32 %.0119184, 1            ; 2 uses
  %i.gl = sdiv i32 %i.gk, %i.dc
  %i.gm = mul nsw i32 %i.gl, %i.cx
  %i.gn = srem i32 %i.gk, %i.dc
  %i.go = add nsw i32 %i.gm, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !76
  %i.gs = trunc i32 %i.gr to i16
  store i16 %i.gs, ptr %i.gj, align 2, !tbaa !111
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.fz ; 2 uses
  %i.gu = add nuw nsw i32 %.0119184, 2            ; 2 uses
  %niter246.next.1 = add i32 %niter246, 2         ; 2 uses
  %niter246.ncmp.1 = icmp eq i32 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %.loopexit.loopexit237.unr-lcssa, label %bb.bi, !llvm.loop !176

bb.bj:                                            ; preds = %bb.bg
  br i1 %i.fq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.bj
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv198 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre201, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !103
  %i.gy = getelementptr inbounds nuw [64 x i8], ptr %i.gx, i64 %indvars.iv198
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !113 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.pre201, i64 16 ; 2 uses
  %xtraiter = and i32 %i.fp, 1
  %i.hc = icmp eq i32 %i.fp, 1
  br i1 %i.hc, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.fp, 2147483646
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.new
  %.0117182 = phi i32 [ 0, %.lr.ph.new ], [ %i.hy, %bb.bk ] ; 4 uses
  %.0118181 = phi ptr [ %i.gv, %.lr.ph.new ], [ %i.hx, %bb.bk ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bk ]
  %i.hd = sdiv i32 %.0117182, %i.dc
  %i.he = mul nsw i32 %i.hd, %i.cx
  %i.hf = srem i32 %.0117182, %i.dc
  %i.hg = add nsw i32 %i.he, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !76
  store i32 %i.hj, ptr %.0118181, align 4, !tbaa !76
  %i.hk = load i32, ptr %i.hb, align 8, !tbaa !101
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.0118181, i64 %i.hl ; 2 uses
  %i.hn = or disjoint i32 %.0117182, 1            ; 2 uses
  %i.ho = sdiv i32 %i.hn, %i.dc
  %i.hp = mul nsw i32 %i.ho, %i.cx
  %i.hq = srem i32 %i.hn, %i.dc
  %i.hr = add nsw i32 %i.hp, %i.hq
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !76
  store i32 %i.hu, ptr %i.hm, align 4, !tbaa !76
  %i.hv = load i32, ptr %i.hb, align 8, !tbaa !101
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hw ; 2 uses
  %i.hy = add nuw nsw i32 %.0117182, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit238.unr-lcssa, label %bb.bk, !llvm.loop !177

.loopexit.loopexit237.unr-lcssa:                  ; preds = %bb.bi
  %lcmp.mod243.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %.loopexit, label %.epil.preheader241

.epil.preheader241:                               ; preds = %.loopexit.loopexit237.unr-lcssa, %.lr.ph185
  %.0119184.epil.init = phi i32 [ 0, %.lr.ph185 ], [ %i.gu, %.loopexit.loopexit237.unr-lcssa ] ; 2 uses
  %.0120183.epil.init = phi ptr [ %i.fr, %.lr.ph185 ], [ %i.gt, %.loopexit.loopexit237.unr-lcssa ]
  %lcmp.mod244 = trunc i32 %i.fp to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.hz = sdiv i32 %.0119184.epil.init, %i.dc
  %i.ia = mul nsw i32 %i.hz, %i.cx
  %i.ib = srem i32 %.0119184.epil.init, %i.dc
  %i.ic = add nsw i32 %i.ia, %i.ib
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !76
  %i.ig = trunc i32 %i.if to i16
  store i16 %i.ig, ptr %.0120183.epil.init, align 2, !tbaa !111
  br label %.loopexit

.loopexit.loopexit238.unr-lcssa:                  ; preds = %bb.bk
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit238.unr-lcssa, %.lr.ph
  %.0117182.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.hy, %.loopexit.loopexit238.unr-lcssa ] ; 2 uses
  %.0118181.epil.init = phi ptr [ %i.gv, %.lr.ph ], [ %i.hx, %.loopexit.loopexit238.unr-lcssa ]
  %lcmp.mod240 = trunc i32 %i.fp to i1
  call void @llvm.assume(i1 %lcmp.mod240)
  %i.ih = sdiv i32 %.0117182.epil.init, %i.dc
  %i.ii = mul nsw i32 %i.ih, %i.cx
  %i.ij = srem i32 %.0117182.epil.init, %i.dc
  %i.ik = add nsw i32 %i.ii, %i.ij
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !76
  store i32 %i.in, ptr %.0118181.epil.init, align 4, !tbaa !76
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit238.unr-lcssa, %.epil.preheader241, %.loopexit.loopexit237.unr-lcssa, %bb.bf, %bb.bj, %bb.bh, %bb.be
  %5 = phi ptr [ %.pre201, %.epil.preheader241 ], [ %.pre202, %bb.bf ], [ %.pre202, %bb.be ], [ %.pre201, %bb.bj ], [ %.pre201, %bb.bh ], [ %.pre201, %.loopexit.loopexit237.unr-lcssa ], [ %.pre201, %.loopexit.loopexit238.unr-lcssa ], [ %.pre201, %.epil.preheader ] ; 3 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !101
  %i.iq = zext i32 %i.ip to i64
  %.not153 = icmp samesign ult i64 %indvars.iv.next199, %i.iq
  br i1 %.not153, label %bb.z, label %.critedge161, !llvm.loop !178

.critedge161:                                     ; preds = %.loopexit, %bb.y
  %i.ir = phi ptr [ %i.cm, %bb.y ], [ %5, %.loopexit ]
  %.not154 = icmp eq ptr %i.v, null
  br i1 %.not154, label %bb.bl, label %.sink.split230

.sink.split230:                                   ; preds = %.critedge161, %.critedge159
  %.sroa.0176.0.ph = phi ptr [ null, %.critedge159 ], [ %i.cl, %.critedge161 ]
  %.sroa.9.0.ph = phi i64 [ 0, %.critedge159 ], [ %i.ck, %.critedge161 ]
  call void @opj_destroy_codec(ptr noundef %i.v)
  %.pre203 = load ptr, ptr %i.a, align 8, !tbaa !91
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split230, %.critedge161
  %.sink227 = phi ptr [ %i.ir, %.critedge161 ], [ %.pre203, %.sink.split230 ]
  %.sroa.0176.0 = phi ptr [ %i.cl, %.critedge161 ], [ %.sroa.0176.0.ph, %.sink.split230 ]
  %.sroa.9.0 = phi i64 [ %i.ck, %.critedge161 ], [ %.sroa.9.0.ph, %.sink.split230 ]
  call void @opj_image_destroy(ptr noundef %.sink227)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ay, %bb.bc, %bb.t, %bb.p
  %.sink228 = phi ptr [ %i.em, %bb.ay ], [ %i.eq, %bb.bc ], [ %i.bk, %bb.t ], [ %i.bb, %bb.p ]
  %.pn.pn = phi { ptr, i32 } [ %i.en, %bb.ay ], [ %i.er, %bb.bc ], [ %i.bl, %bb.t ], [ %i.bc, %bb.p ]
  call void @__cxa_free_exception(ptr nonnull %.sink228) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume

bb.bn:                                            ; preds = %bb.bl, %.thread, %bb.g, %bb.e, %bb.c
  %.sroa.0176.1 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ], [ null, %.thread ], [ %.sroa.0176.0, %bb.bl ]
  %.sroa.9.1 = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %.thread ], [ %.sroa.9.0, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.critedge155

.critedge155:                                     ; preds = %bb.b, %bb.a, %bb.bn
  %.sroa.0176.2 = phi ptr [ %.sroa.0176.1, %bb.bn ], [ null, %bb.a ], [ null, %bb.b ]
  %.sroa.9.2 = phi i64 [ %.sroa.9.1, %bb.bn ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0176.2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.2, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare hidden void @opj_set_default_decoder_parameters(ptr noundef) local_unnamed_addr #8

declare hidden ptr @opj_create_decompress(i32 noundef) local_unnamed_addr #8

declare hidden i32 @opj_codec_set_threads(ptr noundef, i32 noundef) local_unnamed_addr #8

declare hidden i32 @opj_set_error_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare hidden i32 @opj_setup_decoder(ptr noundef, ptr noundef) local_unnamed_addr #8

declare hidden void @opj_destroy_codec(ptr noundef) local_unnamed_addr #8

declare hidden void @opj_stream_destroy(ptr noundef) local_unnamed_addr #8

declare hidden i32 @opj_read_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare hidden i32 @opj_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare hidden i32 @opj_end_decompress(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4gdcmL16check_comp_validEP9opj_image(ptr nofree noundef readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  %i.e = icmp ugt i32 %i.d, 32
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !101
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !109
  %.not = icmp eq i32 %i.d, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.l = load i32, ptr %i.k, align 8, !tbaa !109
  %.not25 = icmp eq i32 %i.d, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !107
  %.not26 = icmp eq i32 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.r = load i32, ptr %i.q, align 8, !tbaa !107
  %.not27 = icmp eq i32 %i.n, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.v = load <2 x i32>, ptr %i.s, align 8, !tbaa !76
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.x = load <2 x i32>, ptr %i.t, align 8, !tbaa !76
  %i.y = load <2 x i32>, ptr %i.u, align 8, !tbaa !76
  %i.z = shufflevector <2 x i32> %i.y, <2 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aa = icmp eq <4 x i32> %i.w, %i.z
  %i.ab = freeze <4 x i1> %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp eq i4 %i.ac, -1
  %.not27.fr = freeze i1 %.not27
  %op.rdx = and i1 %i.ad, %.not27.fr
  %i.ae = freeze i1 %.not26
  %i.af = and i1 %op.rdx, %i.ae
  %.not25.fr = freeze i1 %.not25
  %op.rdx45 = and i1 %i.af, %.not25.fr
  %op.rdx46 = select i1 %op.rdx45, i1 %.not, i1 false
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.023 = phi i1 [ false, %bb.a ], [ %op.rdx46, %bb.c ], [ true, %bb.b ]
  ret i1 %.023
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4gdcmL12parsejp2_impEPKcmPbS2_(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond85 = icmp ult i64 %1, 8
  br i1 %or.cond85, label %_ZN4gdcmL6read32EPPKcPmPj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4gdcmL6read32EPPKcPmPj.exit19
  %.03587 = phi i64 [ %.136, %_ZN4gdcmL6read32EPPKcPmPj.exit19 ], [ %1, %bb.a ] ; 2 uses
  %.03886 = phi ptr [ %i.y, %_ZN4gdcmL6read32EPPKcPmPj.exit19 ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.03886, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %.03886, align 1 ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i)
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %.03886, i64 8 ; 2 uses
  %i.d = add i64 %.03587, -8                      ; 2 uses
  %i.e = zext i32 %i.b to i64
  %i.f = icmp eq i32 %.sroa.0.0.copyload.i, 16777216
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.d, 7
  br i1 %i.g, label %bb.e, label %_ZN4gdcmL6read64EPPKcPmS3_.exit

_ZN4gdcmL6read64EPPKcPmS3_.exit:                  ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 213, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4gdcmL6read64EPPKcPmS3_.exit
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

bb.d:                                             ; preds = %_ZN4gdcmL6read64EPPKcPmS3_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.c, align 1
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i20)
  %i.k = getelementptr inbounds nuw i8, ptr %.03886, i64 16
  %i.l = add i64 %.03587, -16
  %i.m = add i64 %i.j, -8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.046 = phi i64 [ %i.m, %bb.e ], [ %i.e, %.lr.ph ] ; 3 uses
  %.139 = phi ptr [ %i.k, %bb.e ], [ %i.c, %.lr.ph ] ; 3 uses
  %.136 = phi i64 [ %i.l, %bb.e ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.n = icmp eq i32 %.sroa.0.0.copyload.i18, 1664249962
  br i1 %i.n, label %bb.g, label %_ZN4gdcmL6read32EPPKcPmPj.exit19

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i64 %.046, 0
  %i.o = ptrtoint ptr %.139 to i64
  %i.p = ptrtoint ptr %0 to i64
  %.neg = add i64 %i.p, 8
  %i.q = add i64 %.neg, %1
  %i.r = sub i64 %i.q, %i.o
  %.147 = select i1 %.not, i64 %i.r, i64 %.046    ; 2 uses
  %i.s = icmp ugt i64 %.147, 7
  br i1 %i.s, label %_ZN4gdcmL6read32EPPKcPmPj.exit19.thread70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 223, ptr noundef nonnull @.str.3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #38
  unreachable

bb.j:                                             ; preds = %bb.h
end_hunk_0
